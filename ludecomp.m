%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
11/22/2015        Original          Jacob Leonard
%}

%Homework #11

%LU decompositon 

function [LT,UT] = ludecomp(A)

%number of columns
m = size(A,2);
%number of rows
n = size(A,1);
%determine if the matrix can be decomposed
if size(A,1)>size(A,2)
    error('The number of rows must be less than or equal to the number of columns');
end

%define the matrix for the upper trainagular
UT = A;

%define the identity matrix for L
LT = eye(n);
%this is the temporary matrix
L = eye(n);

%start the loop that will loop through the rows of the A, and zero out the
%first column

for j = 1:n
    for i = j+1:n
        %write the equation for the dividing factor
        f = -UT(i,j)/UT(j,j);
        for p = 1:m
            UT(i,p) = UT(i,p)+f*UT(j,p);
        end
        for r = 1:n
            L(i,r) = L(i,r)+f*L(j,r);
        end
        LT = inv(L)*LT;
    end
end
        

