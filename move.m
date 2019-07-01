function [ moved ] = move( currPos, moveby, max )
%just a small function to move the car
moved = currPos+moveby;
check = max<currPos+moveby; %check to stay within a loop
moved(check) = moved(check)-max;

end
