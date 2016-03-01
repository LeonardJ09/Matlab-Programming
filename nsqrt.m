%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/20/2015        Original          Jacob Leonard
%}

%Lab23

function x = nsqrt(number, guessValue, iterations)
if nargin == 1
    error('Not enought input parameters. The intial number and intial guess must be provided');
end
if nargin == 2
    iterations = 10;
end
%define the intial guess value
    x0(1) = guessValue;
for i = 1:iterations
    %define the jacobian
    jac = (2*x0(i));
    %define the intial function value
    f0 = x0(i)^2-number;
    %define the change in X
    deltaX = (-f0)/jac;
    x0(i+1) = x0(i)+deltaX;
end
x = x0(i);
disp(x);
end