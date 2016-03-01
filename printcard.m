%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/23/2015        Original          Jacob Leonard

%}

function printcard(cardDealt)
%this function takes in the card structure (the card that was dealt) and 
%prints out the attributes of the card passed into it

fprintf('\t%s of %s\n',cardDealt.number, cardDealt.suit);

end