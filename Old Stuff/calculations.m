%% Author: Sam Hofman
%% Created: 27-06-2018
%% This function will calculate which aircraft has to land where

n = 0;           % s
A = [];    

while n < 10
    [t_int, IAF, MTOW] = ac_generator;
    A = [A ; t_int, IAF, MTOW];
    n = n+1;
    end