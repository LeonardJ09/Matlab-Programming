%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/23/2015        Original          Jacob Leonard

%}

function score = calculatescore(hand)
%this function takes in the hand of the dealer or the player and loops
%through to find any aces and total up the score
total = 0;
for index = 1:length(hand)
    total = total + hand(index).value;
end
if total > 21
    for index = 1:length(hand)
        if hand(index).value == 11
            total=total-10;
        end
    end
end
score = total;
end