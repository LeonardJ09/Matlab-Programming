%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/23/2015        Original          Jacob Leonard

%}

function[cardDealt, shuffled] = dealcard(shuffled)
%this function takes in the shuffled deck, deals the first card, and then
%takes one card away from the total deck

cardDealt = shuffled(1);
shuffled = shuffled(2:length(shuffled));
end
