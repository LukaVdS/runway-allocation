%% Author: Sam Hofman
%% Created: 27-06-2018
%% This script will generate aircraft at random IAFs, with random MTOW class at random times

function [t_int, IAF, MTOW] = ac_generator

    %% Random time interval generator

    t_int_min = input('What is the minimum time interval (s)? ');  %minimum interval time between two generated a/c (s)

    % Check if t_int_min < 20 and a multiple of 20 
    while t_int_min < 20. | rem(t_int_min,20) ~= 0
        t_int_min = input('Minimum time interval cannot be smaller than 20s and has to be divisible by 20. What is the minimum time interval (s)? ');
    end

    t_int_max = input('What is the maximum time interval (s)? ');  % maximum interval time between two generated a/c (s)

    % Check if t_int_min < t_int_max and a multiple of 20

    while t_int_max < t_int_min | rem(t_int_max,20) ~= 0
        t_int_max = input('Maximum time interval cannot be smaller than minimum time interval and has to be divisible by 20. What is the maximum time interval (s)? ');
    end

    t_int_range = t_int_min:20:t_int_max; % intervals to choose from
    t_int_rand = randi(length(t_int_range)); % Get a random cell value
    t_int = t_int_range(t_int_rand); % Get the random interval 

    % Random IAF generator
    IAFs = {'SUGOL','ARTIP','RIVER'};
    r = randi([1, 3], 1); % Get a 1, 2 or 3 randomly.
    IAF = IAFs(r); % Get a random IAF

    % IAF
    % if IAF == "RIVER"
    %     disp('It is River')
    % else
    %     disp('It is not river')
    % end

    % Random MTOW class generator
    MTOWs = {'M','H'};
    r = randi([1, 2], 1); % Get a 1 or 2 randomly.
    MTOW = MTOWs(r); % Get a random IAF
end
