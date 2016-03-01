%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/13/2015        Original          Jacob Leonard
%}

%Lab 21

%velocity is -3.*t.^2 + 30.*t

t = [.01,.02];
y = -3*t.^2 + 30*t;
area = trapz(t,y);

while area > 0
    tEnd=t(length(t));
    t = [t,(tEnd+.01)];
    y = -3*t.^2 + 30*t;
    area = trapz(t,y);
end

if area <0 
    t = t(1:(length(t)-1));
    y = y(1:(length(y)-1));
end

plot(t,y)
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('Projectile Time vs. Velocity');

fprintf('Time before object reaches the ground: %.02f seconds',t(length(t)));





