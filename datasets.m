filename = 'Flights.xlsx';
T1 = readtable(filename,'Range','A:B');
T2 = readtable(filename,'Range','D:I');
T = [T1 T2];
variables = T.Properties.VariableNames;

%% Check if 29 July is in flight interval
% for i = 1:height(T)   %Iterate over all rows
%     tlower = T(i, 3); %3rd column is lower time bound
%     tupper = T(i,4);  %4th column is upper time bound
%     t = '29/05/2005';
%     tf = isbetween(t,tlower,tupper)
% end

