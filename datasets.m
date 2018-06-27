%% Author: Sam Hofman
%% Created: 27-06-2018
%% This MATLAB file will load all the necessary tables, and contains all the fixed values

tables = 'Tables.xlsx';

%% 1) Runway dependencies
% The strucure of the dependencies is as follows:
% Row 1: Nr.
% Row 2: Time (s)
% Row 3: Step number (from -6 to 6)
% Row 4: RWY 06 dependencies (0 or 1)
% Row 5: RWY 24 dependencies (0 or 1)

R06_Arr_M = readtable(tables,'Sheet','R06_Arr_M','ReadVariableNames',false,'ReadRowNames',true);
R06_Arr_H = readtable(tables,'Sheet','R06_Arr_H','ReadVariableNames',false,'ReadRowNames',true);
R24_Arr_M = readtable(tables,'Sheet','R24_Arr_M','ReadVariableNames',false,'ReadRowNames',true);
R24_Arr_H = readtable(tables,'Sheet','R24_Arr_H','ReadVariableNames',false,'ReadRowNames',true);

%% 2) Time to runway and time to taxi
% The strucure of the time tables is as follows:
% Row 1: Time from SUGOL to RWY (s)
% Row 2: Time from ARTIP to RWY (s)
% Row 3: Time from RIVER to RWY (s)

t_to_RWY= readtable(tables,'Sheet','t_to_RWY','ReadRowNames',true);
t_to_taxi = readtable(tables,'Sheet','t_to_taxi','ReadRowNames',true);

%% 2) Speed limits

