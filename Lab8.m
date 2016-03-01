%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/25/2015        Original          Jacob Leonard

%}

fprintf('Enter a series of numbers >= 0 or a negative number to quit. \n');
user = input('Enter a number or -1 to quit: \n');
if user == -1
    fprintf('Program has quit \n');
end
if user < -1
    fprintf('You did not enter any values! \n');
end
if user >= 0
    largest = user;
    while (user >= 0)
    user = input('Enter a number or -1 to quit: \n');
        if user >= 0
            if user > largest
                largest = user;
            end
            if user < largest
                continue
            end
        end
        if user < 0
        fprintf('The largest number was %f \n', largest);
        end
    end
end
        
        
