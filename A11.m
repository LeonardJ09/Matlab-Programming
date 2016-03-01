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

%start the loop that will loop through the rows of the A, and zero out the
%first column
for i = 2:n
    %define the dividing factor
    dividingFactor = -UT(i,1)/UT(1,1);
    %loop through the columns to change the entries in U
    for j = 1:m
        %define the new values of U in each column
        UT(i,j) = UT(i,j)+dividingFactor*UT(1,j);
        %temporary identity matrix
        L = eye(n);
        %modify the identity matrix
        L(i,j) = L(i,j)+dividingFactor*(L(1,j);
    end
    LT = LT\L;
end
    
    


