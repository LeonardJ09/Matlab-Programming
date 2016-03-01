%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/23/2015        Original          Jacob Leonard

%}

function shuffled = shuffle(deck)
%this function will take in a deck of cards and produce a new deck that has
%been shuffled
index = 1;
while index<1000
    rand1= 1;
    rand2= 1;
    while rand1 == rand2
        rand1 = randi(length(deck));
        rand2 = randi(length(deck));
    end
    X = deck(rand1);
    deck(rand1)=deck(rand2);
    deck(rand2)=X;
    index = index+1;
end
shuffled = deck;
end
