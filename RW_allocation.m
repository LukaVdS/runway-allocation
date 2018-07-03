  addpath('C:\Program Files\IBM\ILOG\CPLEX_Studio1271\cplex\matlab\x64_win64'); %Luka

% This program will optimize the runway allocation using CPLEX 
% considering fuel consumption.

clearvars
clear all

%% Use function to input data
%%
tablaux = 'Tables.xlsx';
[t_int, IAF, MTOW] = ac_generator;
testset = xlsread(tablaux,'testset','P2:P141');
time = xlsread(tablaux,'flights','E2:E11');

%% CHRIS
tablaux_chris = 'Tables_christophe.xlsx';
flights_chris = xlsread(tablaux_chris, 'flights', 'A1:D11');
t_to_RWY_chris = xlsread(tablaux_chris, 't_to_RWY', 'A1:C6');
RWY_dependability = xlsread(tablaux_chris, 'RWY_DEPENDABILITY', 'A1:P9');
%% Chris END

%% Cost Calculations
%% 
%%  Assumptions

% Constants
%     % first all delay steps per runway per flight, then for other runway
%     % only then to next flight

D = 7; % delay steps (0-13)
F = 10; % flights
R = 2;  % runways

% Delay
delay = [1:6]*20;
delay = [delay, 0];

% Interval limit between 2 aircraft
t_lim = 150; %seconden



%% Fuel and Populatio cost coefficient
Cost_f = testset; % kg of kerosene/flight
% Distance * MassFlow / Vtas ?

Cost_p = [310; 200]; % amount of people affected *10
Cost_p = repmat(Cost_p,F,1);

% %% Alpha and Beta and Normalisation
% alpha = 1;
% beta = alpha-1;
%  
% nf = 1;
% nn = 1;
% 
% %% All together
% Cost_f = Cost_f * alpha * nf;
% Cost_p = Cost_p * beta * nn;


%% Set up for CPLEX
%%


%%  FULL CPLEX model
%   Create model 

model                   =   'RW_Allocation_Model';    % name of model
cplex                   =    Cplex(model);  % define the new model
cplex.Model.sense       =   'minimize';

%   Decision variables
DV                      =  F*R*D + F*R;  % Number of Decision Variables (X_f_r_d en Gxy)
                           % # of F * 2 runways * # of delay steps 
                           % + # of F * 2 locations for noise        

%   Initialize the objective function column
obj                     =   [Cost_f; Cost_p] ;      % coefficient of each DV
lb                      =   zeros(DV, 1);           % Lower bounds
ub                      =   inf(DV, 1);             % Upper bounds
ctype                   =   char(ones(1, (DV)) * ('I'));    % Variable types 'C'=continuous; 'I'=integer; 'B'=binary


%% Naming DV's
l = 1;                                 % Array with DV names
for f = 1:F % for each flight
    for r = 1:R % for each runway                    
        for d = 1:D % for each delay
            NameDV (l,:)  = ['X_' num2str(f,'%02d') ',' num2str(r,'%02d') '_' num2str(d,'%02d')];
            l = l + 1;
        end
    end
end
for ff = 1:F % for each flight                   
    for rr = 1:R % for each population area (same as runway)
        NameDV (l,:)  = ['G_' num2str(ff,'%02d') ',' num2str(rr,'%02d') '_' num2str(0,'%02d')];
        l = l + 1;
    end
end
% Set up objective function
cplex.addCols(obj, [], lb, ub, ctype, NameDV);


%%  Constraints
% 1. Always assign flight AAS_f
for f = 1:F % for each flight
    C1 = zeros(1,DV);
    for r = 1:R % for each runway                    
        for d = 1:D % for each delay
            C1(Xindex(f,r,d)) = 1; % activate that DV
        end
    end
    cplex.addRows(1, C1, 1, sprintf('Always_Assign_FLight_%d_%d',r,d)); % C1 is sum of all activated DV's per f
end 

% % 2. Runway Occupation RO_r,t

%% Chris
t_RO_min = min(flights_chris(:, 4)) + min(delay) + min(t_to_RWY_chris); % Calculates earliest possible arrival
t_RO_max = max(flights_chris(:, 4)) + max(delay) + max(t_to_RWY_chris); % Calculates latest possible arrival

for t_c = t_RO_min:20:t_RO_max % Between the possible arrivals check every 20 seconds
    for r_c = 1:R              % Check for both runways
        C2 = zeros(1, DV);% Create new constraint, analyze every DV (f,r,d)
        for f = 1:F % for each flight
            for r = 1:R % to each runway                    
                for d = delay % with each delay
                    % find t_at_RWY for f,r,d
                    temp = t_to_RWY_chris; % temp will become the time to runway for the IAF and runway
                    temp = temp(temp(:,1)==r,2:end); % Select correct Arrival Runway (=r)             
                    temp = temp(temp(:,1)==flights_chris(f,2),2); % Select correct IAF (=flights_chris(f,2)
                    t_at_RWY_f_r_d = flights_chris(f,4) + temp + d; % Time at runway = time IAF + time to runway + delay
                    % find times around t_at_RWY occupied based on r, r_c,
                    % type
                    temp = RWY_dependability; % temp will become the dependability row for the arrival RWY, dependent RWY, and type
                    temp = temp(temp(:,1)==r,2:end); % Select correct Arrival RWY (=r)
                    temp = temp(temp(:,1)==r_c,2:end); % Select correct Dependent RWY (=r_c)
                    temp = temp(temp(:,1)==flights_chris(f,3),2:end); % Select correct Weight Class (=flights_chris(f,3))
                    t_around_all = RWY_dependability(1,4:end); % These are all possible blocking ranges around the arrival time (=-120:20:120)
                    t_around = t_around_all(temp==1); % Select blocking range corresonding to dependability row (=temp)
                    t_range = t_around + t_at_RWY_f_r_d; % The time occupying the runway is the time of arrival around the range where it influences the runway
                    if ismember(t_c, t_range) % if the flight (f) landing at runway (r) with delay (d) influences the depending runway (r_c) at that time (t_c)
                        C2(Xindex(f,r,d)) = 1; % set its block to one.
                    end
                end
            end
        end
        cplex.addRows(0, C2, 1, sprintf('Runway_Occupation_RW_%d_t_%d',r_c,t_c))
    end
end


% 3. Noise Limit Switching Constraint
for r = 1:R
    for f = 1:F
        for f2 = 1:F
        C31 = zeros(1,DV);   
        C32 = zeros(1,DV); 
        C33 = zeros(1,DV);
        for d = 1:D 
                C31(Xindex(f,r,d)) = time(f)+delay(d);
            if f ~= f2 
                C32(Xindex(f2,r,d)) = time(f2)+delay(d);     
            end
        end
        C33(Gindex(f,r)) = 1;
        C3 = abs(- C31 + C32) - t_lim + 10000 * C33;
        cplex.addRows(0, C3, 10000, sprintf('NLSC_%d_%d',f,r)); % C1 is sum of all activated DV's per f
        end
    end
end

 
%%  Execute model 
%%
    sol = cplex.solve();
    cplex.writeModel([model '.lp']);
%     OV = [];
%     OV = [OV;IFAM.Solution.objval];
%     dual    = IFAM.Solution.dual;
%     %RMP.writeModel([model '.lp']);
%     constraints = size(IFAM.Model.A,1);
%     Alist = [IFAM.Model.A];

%% Functions 
%%
% To return index of decision variables

function out = Xindex(f,r,d) % first all d, then r, then f.
    dmax = 7;
    rmax = 2;
    out = (f-1)*rmax*dmax + (r-1)*dmax + d;  % Function given the variable index for each X(i,j,k) [=(m,n,p)]  
end

% To return indexing of DV in math model from CPLEX index

function out = Gindex(f,r) % first all f, then r
    fmax = 10;
    out = (r-1)*fmax + f;
end


