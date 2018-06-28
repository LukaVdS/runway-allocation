%% Author: Sam Hofman
%% Created: 27-06-2018
%% This function will calculate which aircraft has to land where

t = 0
t_end = 3600

while t < t_end
    [t_int, IAF, MTOW] = ac_generator;
    t = t+20
