%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/28/2015        Original          Jacob Leonard

%}

%take in the data
M = dlmread('stats.txt','\n');

%sort the data
t = 1;
while t ~= 0
for h = 2:length(M)
    if M(1,h-1)>M(1,h)
        a = M(1,h);
        M(1,h) = M(1,h-1);
        M(1,h-1) = a;
        t = t+1;
    end
end
t = t-1;
end

%plot the data
figure(1);
hist(M);
figure(2);
plot(M,'b+--');
