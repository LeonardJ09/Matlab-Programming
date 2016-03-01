%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/30/2015        Original          Jacob Leonard

%}

%Lab 17

function orbiter(radius,numOrbits)
%orbiter makes an animation of a specific number of orbits of a point
%around an axis

if nargin == 1
    numOrbits = 1;
end
if length(radius)>1 || length(numOrbits)>1 || radius <0 || numOrbits<0
    error('The input values must be positive scalars');
end
final_degree = numOrbits*360;
for i = 0:final_degree
    X(i) = radius*cosd(i);
    Y(i) = radius*sind(i);
    hold on
    xyplot(x,y,'b*');
    hold off
    axis([-1.5*radius 1.5*radius -1.5*radius 1.5*radius]);
    M(i) = getframe;
end

Movie(M);


end