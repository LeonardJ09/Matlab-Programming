%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/23/2015        Original          Jacob Leonard

%}

%this script will play the game of blackjack. It will use various functions
%that have been created to simulate the playing of blackjack
play = true;

while (play)

%initialize the deck
deck = initdeck();
%shuffle the deck
shuffled = shuffle(deck);

%deal the first card to the player
[cardDealt, shuffled] = dealcard(shuffled);
playerHand(1) = cardDealt;
%deal the second card to the player
[cardDealt, shuffled] = dealcard(shuffled);
playerHand(2) = cardDealt;
%deal the first card to the dealer
[cardDealt, shuffled] = dealcard(shuffled);
dealerHand(1) = cardDealt;
%deal the second card to the dealer
[cardDealt, shuffled] = dealcard(shuffled);
dealerHand(2) = cardDealt;

%display the hands of the player and the dealer
fprintf('Player is dealt:\n');
printcard(playerHand(1));
printcard(playerHand(2));
fprintf('Dealer is dealt:\n');
printcard(dealerHand(1));
printcard(dealerHand(2));

%calculate the scores of the player and the dealer
playerscore = calculatescore(playerHand);
dealerscore = calculatescore(dealerHand);

%the player and dealer were delt 21
if (playerscore == dealerscore) && (playerscore == 21)
    fprintf('Its a tie!\n');
    again = input('Would you like to play again?(Y/N): ','s');
    if strcmpi(again,'Y') == 0
        play = false;
    end
end

%the player has blackjack
if playerscore == 21 && dealerscore ~= 21
    fprintf('Player has Blackjack!\n');
    again = input('Would you like to play again?(Y/N): ','s');
    if strcmpi(again,'Y') == 0
        play = false;
    end
end

%the dealer has blackjack
if dealerscore == 21 && playerscore ~= 21
    fprintf('Dealer has Blackjack!\n');
    again = input('Would you like to play again?(Y/N): ','s');
    if strcmpi(again,'Y') == 0
        play = false;
    end
end

%have the player and the dealer draw cards from the deck
if dealerscore ~= 21 && playerscore ~= 21
    option = true;
    while option
    fprintf('Player Score: %.0f\n',playerscore);
    fprintf('Choose an option:\n\t1. Hit\n\t2.Stand\n');
    choose = input('Choose: ');
    switch choose
        %the player decided to continue playing and take a hit
        case 1
            [cardDealt, shuffled] = dealcard(shuffled);
            playerHand(length(playerHand)+1)= cardDealt;
            fprintf('Player Draws: \n');
            printcard(playerHand(length(playerHand)));
            playerscore = calculatescore(playerHand);
            if playerscore > 21 
                fprintf('Player Loses!!\n');
                again = input('Would you like to play again?(Y/N): ','s');
                if strcmpi(again,'Y') == 0
                    play = false;
                end
                option = false;
            end
        %the player decided to defer playing, and now its the dealers turn
        %to take cards
        case 2
            dealerscore = calculatescore(dealerHand);
            fprintf('Dealer Score: %.0f\n',dealerscore);
            while dealerscore < 18
                [cardDealt, shuffled] = dealcard(shuffled);
                dealerHand(length(dealerHand)+1)= cardDealt;
                printcard(dealerHand(length(dealerHand)));
                dealerscore = calculatescore(dealerHand);
            end
            if dealerscore > 21
                fprintf('Dealer Loses!!\n');
                again = input('Would you like to play again?(Y/N): ','s');
                if strcmpi(again,'Y') == 0
                    play = false;
                end
                option = false;
            end
            if dealerscore == playerscore
                fprintf('Its a tie!!\n');
                again = input('Would you like to play again?(Y/N): ','s');
                if strcmpi(again,'Y') == 0
                    play = false;
                end
                option = false;
            end
             if (21 >= dealerscore) && (dealerscore > playerscore) 
                fprintf('Dealer Wins!!\n');
                again = input('Would you like to play again?(Y/N): ','s');
                if strcmpi(again,'Y') == 0
                    play = false;
                end
                option = false;
             end
             if (21 >= playerscore) && (playerscore > dealerscore) 
                fprintf('Player Wins!!\n');
                again = input('Would you like to play again?(Y/N): ','s');
                if strcmpi(again,'Y') == 0
                    play = false;
                end
                option = false;
             end
    end
    end
end
clear playerHand;
clear dealerhand;
end
                
