
%% Option 1
n(f,r,tc) % There should be a way to take into account delay as well.
          % Here it is a pre-made 3D matrix, where you can call up 1 or 0.
          % When considering delay, it might become 4D.

for t = 0:20:T
    for r = 1:R
        C2 = zeros(1,DV);
        for f = 1:F
            for d = 1:D
                tc = t + delay(d); % for every delay, you go furthur in time
                                   % otherwise n(frt)does not take into
                                   % account delay time.
                C2(Xindex(f,r,d)) = n(f,r,tc);
            end
        end
        cplex.addRows(0, C2, 1, sprintf('Runway_Occupation_%d_%d',r,t));
    end
end


%% Option 2
t_dep_max(f,r) % 2D matrix with telling it is H or M. 
               % only problem, you need to know runway of next f as well,
               % this is not implemented yet.

for r = 1:R
    for f = 1:F
        C21 = zeros(1,DV);   
        C22 = zeros(1,DV); 
        for d = 1:D 
                C21(Xindex(f,r,d)) = time(f)+delay(d);
            if f ~= F
                C22(Xindex(f+1,r,d)) = time(f+1) + delay(d);     
            end
        end
        C2 = - C21 + C22 - t_dep_max(f,r);
        cplex.addRows(80, C2, inf, sprintf('NLSC_%d_%d',f,r)); % C1 is sum of all activated DV's per f
    end
end