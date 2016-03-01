%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/6/2015        Original          Jacob Leonard

%}

M = dlmread('Lab19.txt');
% this is the brake horsepower
X = M(:,1);
%this is the fuel efficiency 
Y = M(:,2);
%ask the user for the order of the polynomial
p = input('Please enter the order of the polynomial fit: ');
%determine the coefficients for the polynomail
g = polyfit(X,Y,p);
%determine the X and Y for the new function
xPlot = linspace(min(X),max(X),length(X));
yPlot = polyval(g,xPlot);

plot(X,Y,'+',xPlot,yPlot);
legend('Original Data', 'Polynomial Fit');
xlabel('Brake Horsepower');
ylabel('Fuel Efficiency (MPG)');
title('Brake Horsepower vs. MPG')


