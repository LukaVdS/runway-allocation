% This script has been used to verify the code of the second constraint,
% Runway Occupation.



% runway_occupied(600, 1, 1, 1, 0)
% runway_occupied(620, 1, 1, 1, 0)
% runway_occupied(620, 1, 1, 1, 20)
% runway_occupied(660, 1, 1, 2, 20)
% runway_occupied(1200, 1, 1, 2, 20)
% runway_occupied(1220, 1, 1, 2, 20)
% runway_occupied(1320, 1, 1, 2, 20)
% runway_occupied(1240, 2, 1, 2, 20)
runway_occupied(1400, 2, 3, 2, 20)

function out = runway_occupied(t_c, r_c, f, r, d)
tableaux = 'Tables.xlsx';
t_to_RWY = xlsread(tableaux, 't_to_RWY', 'A1:C6');
RWY_dependability = xlsread(tableaux, 'RWY_DEPENDABILITY', 'A1:P9');
flights = xlsread(tableaux, 'flights', 'A1:D11');

out = 0;
% find t_at_RWY for f,r,d
temp = t_to_RWY; % temp will become the time to runway for the IAF and runway
temp = temp(temp(:,1)==r,2:end); % Select correct Arrival Runway (=r)
temp = temp(temp(:,1)==flights(f,2),2); % Select correct IAF (=flights (f,2) )
't_to_RWY'
temp
t_at_RWY_f_r_d = flights(f,4) + temp + d; % Time at runway = time IAF + time to runway + delay
t_at_RWY_f_r_d
% find times around t_at_RWY occupied based on r, r_c,
% type
temp = RWY_dependability; % temp will become the dependability row for the arrival RWY, dependent RWY, and type
temp = temp(temp(:,1)==r,2:end); % Select correct Arrival RWY (=r)
temp = temp(temp(:,1)==r_c,2:end); % Select correct Dependent RWY (=r_c)
temp = temp(temp(:,1)==flights(f,3),2:end); % Select correct Weight Class (=flights (f,3))
t_around_all = RWY_dependability(1,4:end); % These are all possible blocking ranges around the arrival time (=-120:20:120)
t_around = t_around_all(temp==1); % Select blocking range corresonding to dependability row (=temp)
t_around
t_range = t_around + t_at_RWY_f_r_d; % The time occupying the runway is the time of arrival around the range where it influences the runway
t_range
if ismember(t_c, t_range) % if the flight (f) landing at runway (r) with delay (d) influences the depending runway (r_c) at that time (t_c)
   out = 1; % set its block to one.
end
end