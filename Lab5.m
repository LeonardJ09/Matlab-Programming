%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/16/2015        Original          Jacob Leonard

%}

fprintf('Do the follow calculations as quickly as possible. Good Luck!\n');
num1 = randi(10);
num2 = randi(10);
operation = randi(3);
switch operation
    case 1
       fprintf('%.0f + %.0f = ', num1, num2);
       startTime = tic;
       correct = num1 + num2;
       userAnswer = input('');
       if correct == userAnswer
           elapsedTime = toc(startTime);
           fprintf('Correct! Your elapsed time was %.2f \n', elapsedTime);
       end
       if correct ~= userAnswer
           fprintf('That answer is incorrect :( \n');
       end
    case 2
       fprintf('%.0f - %.0f = ', num1, num2);
       startTime = tic;
       correct = num1 - num2;
       userAnswer = input('');
       if correct == userAnswer
           elapsedTime = toc(startTime);
           fprintf('Correct! Your elapsed time was %.2f \n', elapsedTime);
       end
       if correct ~= userAnswer
           fprintf('That answer is incorrect :( \n');
       end
    case 3
        fprintf('%.0f * %.0f = ', num1, num2);
        startTime = tic;
        correct = num1 * num2;
        userAnswer = input('');
       if correct == userAnswer
           elapsedTime = toc(startTime);
           fprintf('Correct! Your elapsed time was %.2f \n', elapsedTime);
       end
       if correct ~= userAnswer
           fprintf('That answer is incorrect :( \n');
       end
end
