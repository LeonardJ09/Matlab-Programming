%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/11/2015        Original          Jacob Leonard

%}

load('L4.mat'); 

xavg = sum(valArray(1,:))/(length(valArray));
yavg = sum(valArray(2,:))/(length(valArray));

r = (sum((valArray(1,:)-xavg).*(valArray(2,:)-yavg)))/(((sum((valArray(1,:)-xavg).^2))*(sum((valArray(2,:)-yavg).^2)))^.5);

fprintf('The product-moment correlation coefficient is %.2f \n', r);
    

