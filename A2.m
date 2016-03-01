%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/14/2015        Original          Jacob Leonard

%}

A = input('Enter a 3x3 matrix using bracket notation: \n');
d1 = A(1,1)*(A(2,2)*A(3,3)-A(3,2)*A(2,3))-A(1,2)*(A(2,1)*A(3,3)-A(3,1)*A(2,3))+A(1,3)*(A(2,1)*A(3,2)-A(3,1)*A(2,2));
if d1 == 0
    fprintf('This matrix is not invertible \n');
end
if d1 ~= 0
    m1 = (A(2,2)*A(3,3)-A(3,2)*A(2,3));
    m2 = -(A(2,1)*A(3,3)-A(3,1)*A(2,3));
    m3 = (A(2,1)*A(3,2)-A(3,1)*A(2,2));
    m4 = -(A(1,2)*A(3,3)-A(3,2)*A(1,3));
    m5 = (A(1,1)*A(3,3)-A(3,1)*A(1,3));
    m6 = -(A(1,1)*A(3,2)-A(3,1)*A(1,2));
    m7 = (A(1,2)*A(2,3)-A(2,2)*A(2,3));
    m8 = -(A(1,1)*A(2,3)-A(2,1)*A(1,3));
    m9 = (A(1,1)*A(2,2)-A(2,1)*A(1,2));
end
    
coFactor = [m1, m2, m3; m4, m5, m6; m7, m8, m9];
A3 = zeros(3,3);
for i = 1:3;
    for j = 1:3
        A3(i,j) = coFactor(j,i);
    end
end
inverse = (1/d1)*A3;
disp(inverse)
