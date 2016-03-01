%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/20/2015        Original          Jacob Leonard
%}

%Homework #10

g=32.2; %9.81 m/s^2
drag = .3;
alt=13000;%ft  
vPrime_t= @(t,v) g-drag*v;


[t,y] = ode45(vPrime_t,[0,.5],0);
distance = trapz(t,y);

tspanLimit = 0.5;
while distance < alt
    [t,y]=ode45(vPrime_t,[0,tspanLimit],0);
    distance = trapz(t,y);
    %t=t+.5;
    tspanLimit = tspanLimit + 0.5;
end;

%{if distance > alt
% [t,y] = ode45(vPrime_t,[0,.5],0);
%  v=0;
%   distance = trapz(t,y);
%end;

 
area = cumtrapz(t,y);
pos = alt-area;%distance; 
[ax,line1,line2] = plotyy(t,y,t,pos); 
set(line1,'color','blue');
set(line2,'color','green'); 
ylabel(ax(1), 'Velocity(ft/s)');
ylabel(ax(2), 'Altitude (ft)');
set(ax(1),'ycolor','b') 
set(ax(2),'ycolor','g')
xlabel('Time (seconds)'); 
title('Velocity and Altitude for 13k Jump with Air Resistance cd=.3'); 



%{
[plothandle,velocity,position] = plotyy(t,velocity,t,positon);

title('Plot of Velocity vs. Time, and Position vs. Time');
xlabel('Time (s)');

ylabel(plothandle(1),'Velocity (ft/s)');
ylabel(plothandle(2),'Position (ft)');
%}