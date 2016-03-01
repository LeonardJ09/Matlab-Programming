%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/18/2015        Original          Jacob Leonard
%}

%define the A and B matricies 
A = [1,2,0;3,2,4;-2,1,-2];
b = [1;7;-1];
%calculate the size
d = size(A);
%create the augemented matrix
C = [A,b];
col = size(A,2);

%if there is a solution, the rank of A and the augmented marix will be
%the same

if rank(A) ~= rank(C)
    fprintf('There is no solution for the system');
end

%rank of A and C are the same, meaning there is a solution
if rank(A) > size(A,2)
    nFree = col - rank(A);
    xH = null(A,'r');
    xP = pinv(A)*b;
    xTP = xP - xH*xP((end-nFree+1):end);
    X = [xTP xH];
    fprintf('Infinite Solutions: \n');
    disp(X);
    fprintf('Free Parameters: %.0f\n',nFree);
end
if rank(A) == size(A,2)
    %there is one solution
    I = inv(A);
    X = I*b;
    fprintf('One Solution:\n');
    disp(X);
end
