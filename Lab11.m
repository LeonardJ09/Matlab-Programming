%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/7/2015        Original          Jacob Leonard

%}

A = importdata('matrix.txt',',');
rows = size(A,1);
columns = size(A,2);
B = zeros(1,rows*columns);
n = 1;
for i = 1:rows
    for j = 1:columns
        B(1,n) = A(i,j);
        n = n+1;
    end
end

%values have been sorted and now the bubble algorithm must be implemented
t = 1;
while t ~= 0
for h = 2:length(B)
    if B(1,h-1)>B(1,h)
        a = B(1,h);
        B(1,h) = B(1,h-1);
        B(1,h-1) = a;
        t = t+1;
    end
end
t = t-1;
end

%put the values back into a matrix of the original size
C = zeros(rows, columns);
for i = 1:(length(B)/rows)
    C(i,:) = B(1,(1+10*(i-1):(10+10*(i-1))));
end

csvwrite('sorted.txt',C);



