%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/30/2015        Original          Jacob Leonard

%}

parent1 = 't';
while length(parent1)~=2
    parent1 = input('Enter the first parents genes in a 2 character pair: ', 's');
    if length(parent1)~=2
        fprintf('Error! Try again! \n');
    end
end
parent2 = 's';
while length(parent2)~=2
    parent2 = input('Enter the second parents genes in a 2 character pair: ', 's');
    if length(parent2)~=2
        fprintf('Error! Try again! \n');
    end
end
pS = cell(3,3);
P1 = {[], parent1(1), parent1(2)};
P2 = {[]; parent2(1); parent2(2)};
pS(1,2) = P1(2);
pS(1,3) = P1(3);
pS(2,1) = P2(2);
pS(3,1) = P2(3);
for i = 2:3
    for j = 2:3
        pS(i,j) = strcat(P1(i),P2(j));
    end
end
str = str2mat
for i = 1:3
    for j = 1:3
        fprintf('%s', pS(i,j));
    end
end

