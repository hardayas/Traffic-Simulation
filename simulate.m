function [ returnArray ] = simulate(L,N,p,vmax,T,seed,phase,carPos)

clc
TePhase = 1;
TrPhase = 0;

carVelocity = zeros(size(carPos));

if phase == TePhase
    trafficflow = zeros(T,N);
    trafficflow(1,:) = carPos';
end

s = rng(42);



for run = 1:T    
    
    speedCheck = carVelocity < vmax;
    carVelocity(speedCheck) = carVelocity(speedCheck) + 1;
    
    dist = distance(carPos, L);
    
    distCheck = dist <= carVelocity;
    carVelocity(distCheck) = dist(distCheck) - 1;
    
    %stochastic part
    if seed
        rng(s);
    end
    prob = binornd(1,p,N,1);
    moving = carVelocity>0;
    carVelocity(prob & moving) = carVelocity(prob & moving) - 1;
    
    carPos = move(carPos, carVelocity, L);
    
    if phase == TePhase
        trafficflow(run+1,:) = carPos';
    end
end

if phase == TrPhase
    returnArray = carPos;
else
    returnArray = trafficflow;
end

end

