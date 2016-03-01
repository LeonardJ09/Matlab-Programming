function g = stdev(X,Y)
%this function will take in a matrix, vector, or scalar and calculate the
%std dev of the columns, vectors or scalar

d = size(X);
%determine if X is a scalar, and not a column vector
if (d(1)==1) && (d(2) == 1)
    g = 0;
    return
end

%determine if X is a matrix
if (d(1) > 1) && (d(2) > 1)
   if nargin == 1
        Y = 1;
    end
    for index = 1:d(2)
        avg(1,index) = sum(X(:,index)/d(1));
    end
    for index = 1:d(2)
        for i = 1:d(1)
            difference(i,index) = (X(i,index)-avg(1,index)).^2;
        end
    end
    for j = 1:d(2)
        SUM(1,j) = sum(difference(:,j))/(d(1)-Y);
    end
    for j = 1:d(2)
        g(1,j) = sqrt(SUM);
    end
end

%X is a row vector
if d(1) == 1 && d(2) ~= 1
    
%otherwise X is a vector
else
    if nargin == 1
        Y = 1;
    end
    for index = 1:d(2)
        avg(1,index) = sum(X(:,index)/d(1));
    end
    for i = 1:d(1)
        for index = 1:d(2)
            difference(i,index) = (X(i,index)-avg(1,index)).^2;
        end
    end
    for j = 1:d(2)
        SUM(1,j) = sum(difference(:,j))/(d(1)-Y);
    end
    g = sqrt(SUM);
end

