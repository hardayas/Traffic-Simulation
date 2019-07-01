%% 1 (e)(i)
trafficflow = trafficSim(100,1,.3,5,250,100,true);
plot(trafficflow)
% I couldn't quite get the image on the assignment but you
% can similar behaviour in the above plot as the car moves 
% in clear traffic

%% 1 (e)(ii)
trafficflow35 = trafficSim(100,35,.3,5,250,100,true);

figure
plot(trafficflow35)
title('Single Car')
xlabel('time')
ylabel('position')

%% 1 (f)
trafficflow10 = trafficSim(1000,100,1/3,5,2500,1000,false);
trafficflow15 = trafficSim(1000,150,1/3,5,2500,1000,false);
trafficflow20 = trafficSim(1000,200,1/3,5,2500,1000,false);
trafficflow25 = trafficSim(1000,250,1/3,5,2500,1000,false);

figure
plot(trafficflow10)
title('\rho = 0.10')
xlabel('time')
ylabel('position')

figure
plot(trafficflow15)
title('\rho = 0.10')
xlabel('time')
ylabel('position')

figure
plot(trafficflow20)
title('\rho = 0.20')
xlabel('time')
ylabel('position')

figure
plot(trafficflow25)
title('\rho = 0.25')
xlabel('time')
ylabel('position')

% as density increases the waves of traffic increase,
% we see more jams(maximise window for visibility).
% In the plots different colours show differeent cars
% and straight line indicates car starting from the start
% the loop in next iteration.