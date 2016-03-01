%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/2/2015        Original          Jacob Leonard

%}

fprintf ('Average Calculator \n')
number1 = input('Please Enter First Number: ');
number2 = input('Please Enter Second Number: ');
number3 = input('Please Enter Third Number: ');
number4 = input('Please Enter Fourth Number: ');
number5 = input('Please Enter Fifth Number: ');

avg = (number1 + number2 + number3 + number4 + number5)/5;

fprintf('The Average is: %d\n', avg);

