%{
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer
-------------------------------------------------
10/23/2015        Original          Jacob Leonard

%}

function deck = initdeck()
%this function will intitialize the deck and put all the cards in their
%correct order by suit and number. Aces come first with a value of 11 to
%keep the values of the cards as similar to the index as possible


%initialize the card structure
card = struct('suit', [], 'number', [], 'value', []);
%produce 52 cards of the same structure in the deck
deck = repmat(card,1,52);
%index the deck to contain all numbers, and suits, in order
%Hearts
for index = 1:13
    deck(index).suit = 'hearts';
    if index == 1
        deck(index).number = 'ace';
        deck(index).value = 11;
    end
    if index == 2
        deck(index).number = 'two';
        deck(index).value = 2;
    end
    if index == 3
        deck(index).number = 'three';
        deck(index).value = 3;
    end
    if index == 4
        deck(index).number = 'four';
        deck(index).value = 4;
    end
    if index == 5
        deck(index).number = 'five';
        deck(index).value = 5;
    end
    if index == 6
        deck(index).number = 'six';
        deck(index).value = 6;
    end
    if index == 7
        deck(index).number = 'seven';
        deck(index).value = 7;
    end
    if index == 8
        deck(index).number = 'eight';
        deck(index).value = 8;
    end
    if index == 9
        deck(index).number = 'nine';
        deck(index).value = 9;
    end
    if index == 10
        deck(index).number = 'ten';
        deck(index).value = 10;
    end
    if index == 11
        deck(index).number = 'jack';
        deck(index).value = 10;
    end
    if index == 12
        deck(index).number = 'queen';
        deck(index).value = 10;
    end
    if index == 13
        deck(index).number = 'king';
        deck(index).value = 10;
    end
end
%Spades
for index = 14:26
    deck(index).suit = 'spades';
    if (index-13) == 1
        deck(index).number = 'ace';
        deck(index).value = 11;
    end
    if (index-13) == 2
        deck(index).number = 'two';
        deck(index).value = 2;
    end
    if (index-13) == 3
        deck(index).number = 'three';
        deck(index).value = 3;
    end
    if (index-13) == 4
        deck(index).number = 'four';
        deck(index).value = 4;
    end
    if (index-13) == 5
        deck(index).number = 'five';
        deck(index).value = 5;
    end
    if (index-13) == 6
        deck(index).number = 'six';
        deck(index).value = 6;
    end
    if (index-13) == 7
        deck(index).number = 'seven';
        deck(index).value = 7;
    end
    if (index-13) == 8
        deck(index).number = 'eight';
        deck(index).value = 8;
    end
    if (index-13) == 9
        deck(index).number = 'nine';
        deck(index).value = 9;
    end
    if (index-13) == 10
        deck(index).number = 'ten';
        deck(index).value = 10;
    end
    if (index-13) == 11
        deck(index).number = 'jack';
        deck(index).value = 10;
    end
    if (index-13) == 12
        deck(index).number = 'queen';
        deck(index).value = 10;
    end
    if (index-13) == 13
        deck(index).number = 'king';
        deck(index).value = 10;
    end
end
%Diamonds
for index = 27:39
    deck(index).suit = 'diamonds';
    if (index-26) == 1
        deck(index).number = 'ace';
        deck(index).value = 11;
    end
    if (index-26) == 2
        deck(index).number = 'two';
        deck(index).value = 2;
    end
    if (index-26) == 3
        deck(index).number = 'three';
        deck(index).value = 3;
    end
    if (index-26) == 4
        deck(index).number = 'four';
        deck(index).value = 4;
    end
    if (index-26) == 5
        deck(index).number = 'five';
        deck(index).value = 5;
    end
    if (index-26) == 6
        deck(index).number = 'six';
        deck(index).value = 6;
    end
    if (index-26) == 7
        deck(index).number = 'seven';
        deck(index).value = 7;
    end
    if (index-26) == 8
        deck(index).number = 'eight';
        deck(index).value = 8;
    end
    if (index-26) == 9
        deck(index).number = 'nine';
        deck(index).value = 9;
    end
    if (index-26) == 10
        deck(index).number = 'ten';
        deck(index).value = 10;
    end
    if (index-26) == 11
        deck(index).number = 'jack';
        deck(index).value = 10;
    end
    if (index-26) == 12
        deck(index).number = 'queen';
        deck(index).value = 10;
    end
    if (index-26) == 13
        deck(index).number = 'king';
        deck(index).value = 10;
    end
end
%Clubs
for index = 40:52
    deck(index).suit = 'clubs';
    if (index-39) == 1
        deck(index).number = 'ace';
        deck(index).value = 11;
    end
    if (index-39) == 2
        deck(index).number = 'two';
        deck(index).value = 2;
    end
    if (index-39) == 3
        deck(index).number = 'three';
        deck(index).value = 3;
    end
    if (index-39) == 4
        deck(index).number = 'four';
        deck(index).value = 4;
    end
    if (index-39) == 5
        deck(index).number = 'five';
        deck(index).value = 5;
    end
    if (index-39) == 6
        deck(index).number = 'six';
        deck(index).value = 6;
    end
    if (index-39) == 7
        deck(index).number = 'seven';
        deck(index).value = 7;
    end
    if (index-39) == 8
        deck(index).number = 'eight';
        deck(index).value = 8;
    end
    if (index-39) == 9
        deck(index).number = 'nine';
        deck(index).value = 9;
    end
    if (index-39) == 10
        deck(index).number = 'ten';
        deck(index).value = 10;
    end
    if (index-39) == 11
        deck(index).number = 'jack';
        deck(index).value = 10;
    end
    if (index-39) == 12
        deck(index).number = 'queen';
        deck(index).value = 10;
    end
    if (index-39) == 13
        deck(index).number = 'king';
        deck(index).value = 10;
    end
end
end

