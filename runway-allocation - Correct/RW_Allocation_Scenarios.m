%addpath('C:\Program Files\IBM\ILOG\CPLEX_Studio128\cplex\matlab\x64_win64'); % Chris 
addpath('C:\Program Files\IBM\ILOG\CPLEX_Studio1271\cplex\matlab\x64_win64'); %Luka
%addpath('C:\Program Files\IBM\ILOG\CPLEX_Studio128\cplex\matlab\x64_win64'); %Sam

% This program will optimize the runway allocation using CPLEX 
% considering fuel consumption.

clearvars
clear all
tic;
%% Use function to input data
%%
tablo = 'Full_Tables.xlsx';
%[t_int, IAF, MTOW] = ac_generator;
testset = xlsread(tablo,'testset','P2:P141');
testset_scen1 = xlsread(tablo,'scenarios','N2:N141');
testset_scen2 = xlsread(tablo,'scenarios','Z2:Z141');

tableaux   =   'Tables.xlsx';
flights         =   xlsread(tableaux, 'flights', 'A1:D11');
flights_scen1   =   xlsread(tableaux, 'Scenario1', 'A1:D11');
flights_scen2   =   xlsread(tableaux, 'Scenario2', 'A1:D11');
t_to_RWY        =   xlsread(tableaux, 't_to_RWY', 'A1:C6');
RWY_dep         =   xlsread(tableaux, 'RWY_DEPENDABILITY', 'A1:P9');

%% Cost Calculations
%% 
%%  Assumptions
alpha = 0;
% Constants
Res     = 20; % Resolution of 20s 
D       = 7; % delay steps (0-13)
%F       = size(flights,1); % Number of flights, normal
%F       = size(flights_scen1,1); % Number of flights, scenario 1
F       = size(flights_scen2,1); % Number of flights, scenario 2
R       = 2;  % runways
FRD     = [F R D];

% Delay
delay = (1:D-1)*Res;
delay = [delay, 0];

% Accoustic Emission Level en Limit (see p45, Eq. 5.17 and 5.18)
AEL = 85;
limit = 65;
Lim_Lden = 10^((limit)/10);
%T_den = xlsread(tablo,'flights','I2:I3');% Min and Max arrival time,normal
%T_den = xlsread(tablo,'flights','I16:I17'); %scenario 1
T_den = xlsread(tablo,'flights','I30:I31'); %scenario 2

L_limit = Lim_Lden * (T_den(2)-T_den(1)); % all is in seconds; normal

%% Fuel and Population cost coefficient
% Has F*D*R elements
%Cost_f = testset; % kg of kerosene/flight, normal
%Cost_f = testset_scen1; %scenario 1
Cost_f = testset_scen2; %scenario 2

% Has R elements
Cost_p = [310;200]; % amount of people affected *10 R1 R2



%% Set up for CPLEX
%%
%% Initiate  CPLEX
%   Create model 

% General model
model                       =   'Opt_Model';    % name of model
cplex_model                 =   Cplex(model);  % define the new model
cplex_model.Model.sense     =   'minimize';

% Optimum noise model
model_noise                       =   'Opt_Model_noise';    % name of model
cplex_model_noise                 =   Cplex(model_noise);  % define the new model
cplex_model_nnoise.Model.sense    =   'minimize';

% Optimum fuel model
model_fuel                        =   'Opt_Model_fuel';    % name of model
cplex_model_fuel                  =   Cplex(model_fuel);  % define the new model
cplex_model_fuel.Model.sense      =   'minimize';

%   Decision variables
DV                          =   D*F*R+R;  % Number of Decision Variables
%   Initialize the objective function column
obj                         =   vertcat(Cost_f, Cost_p); % coefficient of each DV
lb                          =   zeros(DV,1);           % Lower bounds
ub                          =   ones(DV,1)*Inf;             % Upper bounds
ctype                       =   char(ones(1, DV) * ('B'));    % Variable types 'C'=continuous; 'I'=integer; 'B'=binary

%% Naming DV
% Fuel (X)
digit_style = horzcat('%0', int2str(length(int2str(F))),'d'); % Just for fun, it uses the appropriate number of digits w.r.t the numbre of flights (should be max of FRD)
l = 1;                                 % Array with DV names
for f = 1:F % for each flight
    for r = 1:R % for each runway                    
        for d = 1:D % for each delay
            NameDV_fuel (l,:)  = ['X_' num2str(f,digit_style) ',' num2str(r,digit_style) '_' num2str(d,digit_style)];
            l = l + 1;
        end
    end
end
% Noise (G)
l = 1;                                 % Array with DV names
for r = 1:R % for each population area (same as runway)
    NameDV_noise (l,:)  = ['G_' num2str(0,digit_style) ',' num2str(r,digit_style) '_' num2str(0,digit_style)];
    l = l + 1;
end
NameDV = vertcat(NameDV_fuel, NameDV_noise);

% Set up objective function
cplex_model.addCols(obj, [], lb, ub, ctype, NameDV); % define DV with cost coefficients
cplex_model_noise.addCols(obj, [], lb, ub, ctype, NameDV); % define DV with cost coefficients
cplex_model_fuel.addCols(obj, [], lb, ub, ctype, NameDV); % define DV with cost coefficients

%% Calculation of t_at_RWY for every X_00,00_00
t_at_RWY = zeros(F*R*D,1);

%% Normal:
% for f = 1:F
%     for r = 1:R
%         for d = 1:D
%             sel = t_to_RWY(t_to_RWY(:,1)==r & t_to_RWY(:,2)==flights(f,2),:); % Select t_to_RWY to RWY r from RWY flights(f,2)
%             t_at_RWY(Xindex(f,r,d,FRD)) =flights(f,4) + sel(3) + delay(d); % Time at runway = time IAF + time to runway + delay
%         end
%     end
% end

%% Scenario 1:
% for f = 1:F
%     for r = 1:R
%         for d = 1:D
%             sel = t_to_RWY(t_to_RWY(:,1)==r & t_to_RWY(:,2)==flights_scen1(f,2),:); % Select t_to_RWY to RWY r from RWY flights(f,2)
%             t_at_RWY(Xindex(f,r,d,FRD)) =flights_scen1(f,4) + sel(3) + delay(d); % Time at runway = time IAF + time to runway + delay
%         end
%     end
% end

%% Scenario 2:
for f = 1:F
    for r = 1:R
        for d = 1:D
            sel = t_to_RWY(t_to_RWY(:,1)==r & t_to_RWY(:,2)==flights_scen2(f,2),:); % Select t_to_RWY to RWY r from RWY flights(f,2)
            t_at_RWY(Xindex(f,r,d,FRD)) =flights_scen2(f,4) + sel(3) + delay(d); % Time at runway = time IAF + time to runway + delay
        end
    end
end

%%  Constraints
% 1. Always assign flight AAS_f
for f = 1:F % for each flight
    C1 = zeros(1,DV);
    for r = 1:R % for each runway                    
        for d = 1:D % for each delay
            C1(Xindex(f,r,d,FRD)) = 1; % activate that DV
        end
    end
    cplex_model.addRows(1, C1, 1, sprintf('Always_Assign_FLight_%d',f)); % C1 is sum of all activated DV's per f
    cplex_model_noise.addRows(1, C1, 1, sprintf('Always_Assign_FLight_%d',f)); % C1 is sum of all activated DV's per f
    cplex_model_fuel.addRows(1, C1, 1, sprintf('Always_Assign_FLight_%d',f)); % C1 is sum of all activated DV's per f
end

% 2. Runway Occupation RO,r_c,t_c
% %% Normal:
% RWY_dep_pos = RWY_dep(1,4:end); % All occupation periods centered around arrival time
% for t_c = min(t_at_RWY):Res:max(t_at_RWY)  % Between the possible arrivals check every 20 seconds
%     for r_c = 1:R               % Check for both runways
%         C2 = zeros(1, DV);      % Create new constraint, analyze every DV (f,r,d)
%         for f = 1:F % for each flight
%             for r = 1:R % to each runway                    
%                 for d = 1:D % with each delay
%                     % find occupation time range
%                     % select arriving RWY = r, dependant RWY = r_c, and
%                     % flight MTOW = flight(f,3)
%                     sel = RWY_dep(RWY_dep(:,1)==r & RWY_dep(:,2)==r_c & RWY_dep(:,3)==flights(f,3),4:end)==1; 
%                     t_range = RWY_dep_pos(sel) + t_at_RWY(Xindex(f,r,d,FRD)); % select the occupation periods range
%                     if ismember(t_c, t_range) % if the flight (f) landing at runway (r) with delay (d) influences the depending runway (r_c) at that time (t_c)
%                         C2(Xindex(f,r,d,FRD)) = 1; % set its block to one.
%                     end
%                 end
%             end
%         end
%         cplex_model.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
%         cplex_model_noise.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
%         cplex_model_fuel.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
%     end
% end
% M = 10^(AEL/10)*10; 

%% Scenario 1:
% RWY_dep_pos = RWY_dep(1,4:end); % All occupation periods centered around arrival time
% for t_c = min(t_at_RWY):Res:max(t_at_RWY)  % Between the possible arrivals check every 20 seconds
%     for r_c = 1:R               % Check for both runways
%         C2 = zeros(1, DV);      % Create new constraint, analyze every DV (f,r,d)
%         for f = 1:F % for each flight
%             for r = 1:R % to each runway                    
%                 for d = 1:D % with each delay
%                     % find occupation time range
%                     % select arriving RWY = r, dependant RWY = r_c, and
%                     % flight MTOW = flight(f,3)
%                     sel = RWY_dep(RWY_dep(:,1)==r & RWY_dep(:,2)==r_c & RWY_dep(:,3)==flights_scen1(f,3),4:end)==1; 
%                     t_range = RWY_dep_pos(sel) + t_at_RWY(Xindex(f,r,d,FRD)); % select the occupation periods range
%                     if ismember(t_c, t_range) % if the flight (f) landing at runway (r) with delay (d) influences the depending runway (r_c) at that time (t_c)
%                         C2(Xindex(f,r,d,FRD)) = 1; % set its block to one.
%                     end
%                 end
%             end
%         end
%         cplex_model.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
%         cplex_model_noise.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
%         cplex_model_fuel.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
%     end
% end
% M = 10^(AEL/10)*10; 

%% Scenario 2:
RWY_dep_pos = RWY_dep(1,4:end); % All occupation periods centered around arrival time
for t_c = min(t_at_RWY):Res:max(t_at_RWY)  % Between the possible arrivals check every 20 seconds
    for r_c = 1:R               % Check for both runways
        C2 = zeros(1, DV);      % Create new constraint, analyze every DV (f,r,d)
        for f = 1:F % for each flight
            for r = 1:R % to each runway                    
                for d = 1:D % with each delay
                    % find occupation time range
                    % select arriving RWY = r, dependant RWY = r_c, and
                    % flight MTOW = flight(f,3)
                    sel = RWY_dep(RWY_dep(:,1)==r & RWY_dep(:,2)==r_c & RWY_dep(:,3)==flights_scen2(f,3),4:end)==1; 
                    t_range = RWY_dep_pos(sel) + t_at_RWY(Xindex(f,r,d,FRD)); % select the occupation periods range
                    if ismember(t_c, t_range) % if the flight (f) landing at runway (r) with delay (d) influences the depending runway (r_c) at that time (t_c)
                        C2(Xindex(f,r,d,FRD)) = 1; % set its block to one.
                    end
                end
            end
        end
        cplex_model.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
        cplex_model_noise.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
        cplex_model_fuel.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c));
    end
end
M = 10^(AEL/10)*10; 

% 3. Noise Frequency Switch
for r = 1:R
    C31 = zeros(1,DV);
    C32 = zeros(1,DV);
    for f = 1:F
        for d = 1:D
            C31(Xindex(f,r,d, FRD)) = 10^(AEL/10);
        end
    end
    C32(Gindex(r,FRD)) = M;
    C3 = C31 - C32;
    cplex_model.addRows(0, C3, L_limit, sprintf('NLSC_%d',r));
    cplex_model_noise.addRows(0, C3, L_limit, sprintf('NLSC_%d',r));
    cplex_model_fuel.addRows(0, C3, L_limit, sprintf('NLSC_%d',r));
end
        % The sum of all flights per runway (or coordinate) times the AEL
        % (or Accoustic Emission Level) has to be smaller than the limit.
        % M = max cost (if all F use same runway)


%%  Execute model 
%% Parametrization
% Optimize for noise
obj_noise   =   vertcat(zeros(size(Cost_f)), Cost_p); % make costs of fuel 0
cplex_model_noise.Model.obj = obj_noise;
sol_noise   =   cplex_model_noise.solve();
cplex_model_noise.Model.colname(sol_noise.x(1:142)==1,:)

% Optimize for fuel
obj_fuel    =   vertcat(Cost_f, zeros(size(Cost_p))); % make costs of noise 0
cplex_model_fuel.Model.obj = obj_fuel;       
sol_fuel    =   cplex_model_fuel.solve();
cplex_model_fuel.Model.colname(sol_fuel.x(1:142)==1,:)






% Set parametrization factors (see p46, Eq. 5.23 and 5.24)
n_fuel      =   1/(obj_fuel.'*sol_noise.x - obj_fuel.'*sol_fuel.x);
n_noise     =   1/(obj_noise.'*sol_fuel.x - obj_noise.'*sol_noise.x);

% Optimize full problem (incl. parametrization)
obj         =   vertcat(alpha*n_fuel*Cost_f, (1-alpha)*n_noise*Cost_p);
cplex_model.Model.obj = obj;
sol         =   cplex_model.solve();
cplex_model.Model.colname(sol.x(1:142)==1,:)

% Write .lp file
cplex_model.writeModel([model '.lp']);

alpha

time = toc; % so you know how long it all takes

%% Functions 
%%
% To return index of decision variables
function out = Xindex(f,r,d, FRD) % first all d, then r, then f.
    out = (f-1)*FRD(2)*FRD(3) + (r-1)*FRD(3) + d;  % Function given the variable index for each X(i,j,k) [=(m,n,p)]  
end

% To return indexing of DV in math model from CPLEX index

function out = Gindex(r,FRD)
    out = r+FRD(1)*FRD(2)*FRD(3);
end

