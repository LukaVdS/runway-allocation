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


%% Set up for CPLEX
%%
%% FUEL  CPLEX
%   Create model 

model_fuel                   =   'Fuel_Opt_Model';    % name of model
cplex_fuel                   =    Cplex(model_fuel);  % define the new model
cplex_fuel.Model.sense       =   'minimize';

%   Decision variables
DV_fuel                      =  F*R*D;  % Number of Decision Variables (X_f_r_d)
                           % # of F * 2 runways * # of delay steps 
     

%   Initialize the objective function column
obj                     =   [Cost_f] ;      % coefficient of each DV
lb                      =   zeros(DV_fuel, 1);           % Lower bounds
ub                      =   inf(DV_fuel, 1);             % Upper bounds
ctype                   =   char(ones(1, (DV_fuel)) * ('I'));    % Variable types 'C'=continuous; 'I'=integer; 'B'=binary


%% Naming DV's
l = 1;                                 % Array with DV names
for f = 1:F % for each flight
    for r = 1:R % for each runway                    
        for d = 1:D % for each delay
            NameDV_fuel (l,:)  = ['X_' num2str(f,'%02d') ',' num2str(r,'%02d') '_' num2str(d,'%02d')];
            l = l + 1;
        end
    end
end

% Set up objective function
cplex_fuel.addCols(obj, [], lb, ub, ctype, NameDV_fuel);


%%  Constraints
% 1. Always assign flight AAS_f
for f = 1:F % for each flight
    C1 = zeros(1,DV_fuel);
    for r = 1:R % for each runway                    
        for d = 1:D % for each delay
            C1(Xindex(f,r,d)) = 1; % activate that DV
        end
    end
    cplex_fuel.addRows(1, C1, 1, sprintf('Always_Assign_FLight_%d_%d',r,d)); % C1 is sum of all activated DV's per f
end 

% % 2. Runway Occupation RO_r,t
% for t = 1:T % ???
%     for r = 1:numel(R)
%         C3 = zeros(1,DV_fuel);
%         for f = 1:numel(F) % should be F_dep
%             for d = 1:D
%                 C3(Xindex(f,r,d)) = n(f, r,t); % of the dependency matrix n ?
%             end
%         end
%         cplex_fuel.addRows(0, C3, 1, sprintf('Runway_Occupation_%d_%d',f,d));
%     end
% end



%% NOISE CPLEX
%   Create model 

model_noise                   =   'Noise_Opt_Model';    % name of model
cplex_noise                   =    Cplex(model_noise);  % define the new model
cplex_noise.Model.sense       =   'minimize';

%   Decision variables
DV_noise                      =  F*R;  % Number of Decision Variables (X_f_r_d en Gxy)
                           % + # of F * 2 locations for noise        

%   Initialize the objective function column
obj                     =   Cost_p ;      % coefficient of each DV
lb                      =   zeros(DV_noise, 1);           % Lower bounds
ub                      =   inf(DV_noise, 1);             % Upper bounds
ctype                   =   char(ones(1, (DV_noise)) * ('I'));    % Variable types 'C'=continuous; 'I'=integer; 'B'=binary


%% Naming DV's
l = 1;                                 % Array with DV names
for ff = 1:F % for each flight                   
    for rr = 1:R % for each population area (same as runway)
        NameDV_noise (l,:)  = ['G_' num2str(ff,'%02d') ',' num2str(rr,'%02d') '_' num2str(0,'%02d')];
        l = l + 1;
    end
end
% Set up objective function
cplex_noise.addCols(obj, [], lb, ub, ctype, NameDV_noise);


%%  Constraints
% 3. Noise Limit Switching Constraint
for r = 1:R
    for f = 1:F
        C33 = zeros(1,DV_noise);
        d = D; 
        C31 = time(f)+delay(d);
        if f ~= F
            C32 = time(f+1) + delay(d);     
        end
        C33(Gindex(f,r)) = 1;
        C3 = - C31 + C32 - t_lim + 1000 * C33;
        cplex_noise.addRows(0, C3, 1000, sprintf('NLSC_%d_%d',f,r)); 
    end
end

 
%%  Execute model 
%%
    sol_fuel = cplex_fuel.solve();
    cplex_fuel.writeModel([model_fuel '.lp']);
    
    sol_noise = cplex_noise.solve();
    cplex_noise.writeModel([model_noise '.lp']);
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

