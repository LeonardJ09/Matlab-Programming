%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/9/2015        Original          Jacob Leonard

%}

fprintf('Average Calculator \n')
trials = [1:10];
trials(1,1) = input('Trial 1: ');
trials(1,2) = input('Trial 2: ');
trials(1,3) = input('Trial 3: ');
trials(1,4) = input('Trial 4: ');
trials(1,5) = input('Trial 5: ');
trials(1,6) = input('Trial 6: ');
trials(1,7) = input('Trial 7: ');
trials(1,8) = input('Trial 8: ');
trials(1,9) = input('Trial 9: ');
trials(1,10) = input('Trial 10: ');

avg = (sum(trials)/10);

fprintf('The Average Distance Traveled was %.2f inches \n', avg);
