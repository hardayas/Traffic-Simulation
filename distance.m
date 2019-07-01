function [ dist ] = distance( val, max )
%this function takes positions for all cars as val and
%then calculates the distance of each car to next
%car while preserving the loop structure.

[sort_val,idx] = sort(val);
sorted_dist = [ diff(sort_val ) ;
                (max + sort_val(1)) - sort_val(length(sort_val))
                %above line calculates dist for last car in loop
               ];

[~,idx1] = sort(idx); % sort index to put it in right order

dist = sorted_dist(idx1,:); % put dist in order of initial matrix

end