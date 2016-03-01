%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/23/2015        Original          Jacob Leonard

%}

number = -1;
while number<0
number = input('Enter a number >= 0 to calculate the factorial: ');
if number<0
    fprintf('Invalid input! \n');
end
end
if number > 0
    factorial = 1;
    for j = 1:number
        factorial = factorial*j;
    end
    fprintf('%.0f! = %.0f \n', number, factorial);
end
if number == 0
    fprintf('0! = 0 \n');
end