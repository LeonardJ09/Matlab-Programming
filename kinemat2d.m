%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/29/2015        Original          Jacob Leonard
11/4/2015         Homework8         Jacob Leonard
%}

function kinemat2d(initial_velocity,angle,mass1,mass2,t_explosion,impulse)
%this function will take in the initial velocity, intial angle, mass of the
%objects being exploded apart, the time of the explosion, and the impulse
%magnitude 
if mass1 <= 0 || mass2 <= 0
    error('The value for mass must be larger than zero');
end
if impulse < 0
    error('The value for impulse must be non-negative');
end
if t_explosion <= 0
    error('The value for the time of explosion must be larger than zero');
end
if angle<=0 || angle>= 90
    error('The starting angle must be 0 < angle < 90');
end


g = 9.81;
total_time = (2*(initial_velocity)*sind(angle))/(g);
if t_explosion > total_time 
    error('the time of explosion must be less than the total time the projectile spends in the air');
end
range = (initial_velocity)*cosd(angle)*(total_time);
t = linspace(0,t_explosion);
x_velocity = (initial_velocity)*cosd(angle);
y_velocity = (initial_velocity)*sind(angle);

%calculate the positions of the x and y in the local function
function [Z] = kinemat1d(t, velocity,a, startPosition)
    Z = startPosition+t.*(velocity)-(1/2)*a.*(t.^2);
end

%calculate the positon vectors for X and Y until the explosion
X = kinemat1d(t,x_velocity,0,0);
Y = kinemat1d(t,y_velocity,g,0);

%generate the plot handle, and start by using the first point
x1 = X(1);
y1 = Y(1);
plotHandle = plot(x1,y1,'bd-');
axis([0 (1.5*range) 0 (max(Y)+10)]);
for i = 1:length(X)
    x1 = X(1:i);
    y1 = Y(1:i);
    set(plotHandle,'XData',x1);
    set(plotHandle,'YData',y1);
    refreshdata(plotHandle);
    drawnow;
end
hold on
t2 = linspace(0,total_time-t_explosion);
%velocity in the y direction at the time of the explosion
velocity_y_explosion = y_velocity-g*t_explosion;
%velocity of mass1 in the x direction after the explosion
mass1_velocity_x_explosion = x_velocity+(impulse/mass1);
%velocity of mass2 in the x direction after the explosion
mass2_velocity_x_explosion = x_velocity-(impulse/mass2);
%create position values for mass1, mass2, and the centroid in the X direction
mass1_x_position = kinemat1d(t2, mass1_velocity_x_explosion,0, X(end));
mass2_x_position = kinemat1d(t2, mass2_velocity_x_explosion,0, X(end));
centroid_x_position = kinemat1d(t2, x_velocity,0, X(end));
%create position values for mass1, mass2 and the centroid in the Y direction
mass1_y_position = kinemat1d(t2, velocity_y_explosion,g, Y(end));
mass2_y_position = kinemat1d(t2, velocity_y_explosion,g, Y(end));
centroid_y_position = kinemat1d(t2, velocity_y_explosion,g, Y(end));

%update the plot
x2 = centroid_x_position(1);
y2 = centroid_y_position(1);
x3 = mass1_x_position(1);
y3 = mass1_y_position(1);
x4 = mass2_x_position(1);
y4 = mass2_y_position(1);
plotHandle1 = plot(x2,y2,'mp--');
plotHandle2 = plot(x3,y3,'ro--');
plotHandle3 = plot(x4,y4,'go--');
axis([0 (1.5*range) 0 (max(Y)+10)]);
for i = 1:length(centroid_x_position)
    x2 = centroid_x_position(1:i);
    y2 = centroid_y_position(1:i);
    x3 = mass1_x_position(1:i);
    y3 = mass1_y_position(1:i);
    x4 = mass2_x_position(1:i);
    y4 = mass2_y_position(1:i);
    set(plotHandle1,'XData',x2);
    set(plotHandle2,'XData',x3);
    set(plotHandle3,'XData',x4);
    set(plotHandle1,'YData',y2);
    set(plotHandle2,'YData',y3);
    set(plotHandle3,'YData',y4);
    refreshdata(plotHandle1);
    refreshdata(plotHandle2);
    refreshdata(plotHandle3);
    drawnow;
end
hold off
legend('Initial Trajectory', 'Centroid Trajectory', 'Mass 1 Trajectory', 'Mass 2 Trajectory');
xlabel('X Location (meters)');
ylabel('Y Location (meters)');
title('Kinematics of Angry Birds')
end

