  addpath('C:\Program Files\IBM\ILOG\CPLEX_Studio1271\cplex\matlab\x64_win64'); %Luka

% This program will optimize the runway allocation using CPLEX 
% considering fuel consumption. 

%% Use function to input data
%%
tables = 'Tables.xlsx';
[t_int, IAF, MTOW] = ac_generator;
testset = readtable(tables,'Sheet','testset','Range','J1:J281');

%% Cost Calculations
%% 
%%  Assumptions
% f = 10; % flights
% r = 2; % runways
% d = 14; % delay steps (0-13)
%     % first all delay steps per runway per flight, then for other runway
%     % only then to next flight

D = 14;
F = 10;
    
%% Fuel cost coefficient
Cost_f = testset; % kg of kerosene/flight
% Distance * MassFlow / Vtas ?





%% Population cost coefficient
Cost_p = []; 
Cost_p = [ones(10, 1)*500; ones(10,1)*600]; % amount of people affected

%% Alpha and Beta and Normalisation
alpha = 1;
beta = alpha-1;
 
nf = 1;
nn = 1;

%% All together
Cost_f = Cost_f * alpha * nf;
Cost_p = Cost_p * beta * nn;


%% Set up for CPLEX
%%
%%  Initiate CPLEX model
%   Create model 

model                   =   'RW_Allocation_Model';    % name of model
cplex                   =    Cplex(model);  % define the new model
cplex.Model.sense       =   'minimize';

%   Decision variables
DV                      =  F*2*D + F*2;  % Number of Decision Variables (X_f_r_d en Gxy)
                           % # of F * 2 runways * # of delay steps 
                           % + # of F * 2 locations for noise        

%   Initialize the objective function column
obj                     =   [Cost_f; Cost_p] ;      % coefficient of each DV
lb                      =   zeros(DV, 1);           % Lower bounds
ub                      =   inf(DV, 1);             % Upper bounds
ctype                   =   char(ones(1, (DV)) * ('C'));    % Variable types 'C'=continuous; 'I'=integer; 'B'=binary


%% Naming DV's
l = 1;                                 % Array with DV names
for f = 1:numel(F) % for each flight
    for r = 1:numel(R) % for each runway                    
        for d = 1:D % for each delay
            NameDV (l,:)  = ['X_' num2str(f,'%02d') ',' num2str(r,'%02d') '_' num2str(d,'%02d')];
            l = l + 1;
        end
    end
end
for f = 1:numel(F) % for each flight                   
    for xy = 1:numel(R) % for each population area (same as runway)
        NameDV (l,:)  = ['G_' num2str(f,'%02d') ',' num2str(g,'%02d')];
        l = l + 1;
    end
end
% Set up objective function
cplex.addCols(obj, [], lb, ub, ctype, NameDV);


%%  Constraints
% 1. Always assign flight AAS_f
for f = 1:numel(F) % for each flight
    C1 = zeros(1,DV);
    for r = 1:numel(R) % for each runway                    
        for d = 1:D % for each delay
            C1(Xindex(f,r,d)) = 1; % activate that DV
        end
    end
    cplex.addRows(1, C1, 1, sprintf('Always_Assign_FLight_%d_%d',r,d)); % C1 is sum of all activated DV's per f
end 

% 2. Runway Restriction RR_r
    % Needs to change, only for set of restricted runways???
for r = 1:numel(R) % should be R_res
    C2 = zeros(1,DV);
    for f = 1:numel(F)
        for d = 1:D
            C2(Xindex(f,r,d)) = 1;
        end
    end
    cplex.addRows(0, C2, 0, sprintf('Restricted_Runway_%d_%d',f,d));
end

% 3. Runway Occupation RO_r,t
for t = 1:T % ???
    for r = 1:numel(R)
        C3 = zeros(1,DV);
        for f = 1:numel(F) % should be F_dep
            for d = 1:D
                C3(Xindex(f,r,d)) = n(f, r,t); % of the dependency matrix n ?
            end
        end
        cplex.addRows(0, C3, 1, sprintf('Runway_Occupation_%d_%d',f,d));
    end
end

% 4. Noise Limit Switching Constraint

% missing xy, L_lim, C_noise
C4 = zeros(1,DV);
for f = 1:numel(F) 
    for r = 1:numel(R)                     
        for d = 1:D 
            C4(Xindex(f,r,d)) = C_noise(xy,f,r,d); % noise grid coeff?????
        end
    end
end
C4 = C4 - 10000 * G(xy);
cplex.addRows(0, C4, L_lim, sprintf('NLSC_%d',xy)); % C1 is sum of all activated DV's per f 


%%  Execute model 
%%
    sol = cplex.solve();
    xplex.writeModel([model '.lp']);
%     OV = [];
%     OV = [OV;IFAM.Solution.objval];
%     dual    = IFAM.Solution.dual;
%     %RMP.writeModel([model '.lp']);
%     constraints = size(IFAM.Model.A,1);
%     Alist = [IFAM.Model.A];

%% Functions 
%%
% To return index of decision variables

function out = Xindex(f,r,d)
    dmax = 14;
    rmax = 2;
    out = (f-1)*rmax*dmax + (r-1)*dmax + d;  % Function given the variable index for each X(i,j,k) [=(m,n,p)]  
end

% To return indexing of DV in math model from CPLEX index

function out = Gindex(xy)
    out = xy;
end


