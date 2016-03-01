%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/9/2015        Original          Jacob Leonard

%}

fprintf ('Auto Loan Calculator \n\n')
purchasePrice = input('Please Enter the Purchase Price of the Car: $');
downPayment = input('Please Enter the Down Payment as a Percentage of the Purchase Price e.g. 10% is 10: ');
principle = purchasePrice - purchasePrice*(downPayment/100);
fprintf('Your Principle is: $%d\n', principle);
apr1 = input('Please Enter the APR e.g. 3% is 3: ');
apr2 = apr1/100;
length = input('Please Enter the Length of the Loan in Years: ');

payments = (principle*(apr2/12))/(1-(1+(apr2/12))^((-1)*length*12));

fprintf('Your Payments will be: $%.2f/month \n', payments);


