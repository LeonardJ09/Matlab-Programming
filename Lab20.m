%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/11/2015        Original          Jacob Leonard
%}

%read in the altitude values
M = transpose(dlmread('traj.txt'));
%develop the time vector that corresponds to the altitudes
t = linspace(0,510,52);

%calculate the first derivative between each point using backward
%difference
for i = 2:52
    d1(i) = (M(i)-M(i-1))/10;
end

%calculate the second derivative between each velocity point using backward difference
for i = 3:52
    d2(i) = (d1(i)-d1(i-1))/10;
end

%generate the plots but supress the ouputs
subplot(3,3,1:3), plot(t,M)
title('Atlantis Shuttle Launch Data')
xlabel('Time (s)');
ylabel('Altitude (ft)');
subplot(3,3,4:6), plot(t,d1)
xlabel('Time (s)');
ylabel('Velocity (ft/s)');
subplot(3,3,7:9), plot(t,d2)
xlabel('Time (s)');
ylabel('Acceleration (ft/s*2)');


