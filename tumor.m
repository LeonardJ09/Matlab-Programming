%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/4/2015        Original          Jacob Leonard
%}

function tumor(m,n)
%tumor graphs a tumor given by "essential calculus" by Stewarts Model
%inputs M and N are positive scalar values

%check inputs
if length(m)~=1 || length(n)~=1
    error('Inputs must be scalars');
end
if m<0 || n<0
    error('Tnputs must be positive scalars');
end

%rho = 1+ (1/5)*sin(m*theta)*sin(n*phi)
theta = linspace(0,2*pi);
phi = linspace(0,pi);
[thetaGrid,phiGrid] = meshgrid(theta,phi);

rho = 1+(1/5)*sin(m*thetaGrid).*sin(n*phiGrid);

X = rho.*sin(phiGrid).*cos(thetaGrid);
Y = rho.*sin(phiGrid).*sin(thetaGrid);
Z = rho.*cos(phiGrid);

surf(X,Y,Z);



end