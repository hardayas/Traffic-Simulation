function [ trafficflow ] = trafficSim(L,N,p,vmax,Tr,Te,seed)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
TePhase = 1;
TrPhase = 0;

carPos = randsample(L,N);
carPos = simulate(L,N,p,vmax,Tr,seed,TrPhase,carPos);
trafficflow = simulate(L,N,p,vmax,Te,seed,TePhase,carPos);

end

