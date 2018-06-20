addpath('C:\Program Files\IBM\ILOG\CPLEX_Studio1271\cplex\matlab\x64_win64'); %Luka

% This program will optimize the runway allocation using CPLEX 
% considering fuel consumption. 

%% Use function to input data
%%




%% Extra???
%%



%% Set up for CPLEX
%%
%%  Initiate CPLEX model
%   Create model 

model                   =   'RW_Allocation_Model';    % name of model
cplex                   =    Cplex(model);  % define the new model
cplex.Model.sense       =   'minimize';

%   Decision variables
DV                      =  numel(F)+numel;  % Number of Decision Variables (x_i_j_k)

%%  Objective Function
cost_OF       =   reshape(nw.cost', nw.N*nw.N,1);

% As the cost is not dependent on k, but it should be Nodes*Nodes*K long,
% each element is repeated K times.

cost_OF       =   repelem(cost_OF,nw.K);        

% Initialize the objective function column
obj                     =   cost_OF ;
lb                      =   zeros(DV, 1);                                 %Lower bounds
ub                      =   inf(DV, 1);                                   %Upper bounds
ctype                   =   char(ones(1, (DV)) * ('I'));                  %Variable types 'C'=continuous; 'I'=integer; 'B'=binary

l = 1;                                      % Array with DV names
for i = 1:nw.N
    for j = 1:nw.N                     % of the x_{ij}^k variables
        for k = 1:nw.K
            NameDV (l,:)  = ['X_' num2str(i,'%02d') ',' num2str(j,'%02d') '_' num2str(k,'%02d')];
            l = l + 1;
        end
    end
end

% Set up objective function
cplex.addCols(obj, [], lb, ub); %ctype, NameDV);


%%  Constraints




%% Solve CPLEX
%%