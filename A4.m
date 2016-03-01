%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/27/2015        Original          Jacob Leonard

%}

play = 'y';
decide = strncmpi(play,'Y',1);
while decide == 1
    fprintf('Series Approximations \n************************* \n');
    selected = input('Please Select and Option: \n     1. Exponent: e^(x) \n     2. Sine: sin(x) \n     3. Cosine: cos(x) \nOption: ');
    switch selected
        case 1
            % exponent series 
            xValue = input('Enter an X value: ');
            iterations = 0;
            while iterations <= 0
            iterations = input('Enter the number of iterations: ');
            if iterations <= 0
            fprintf('Iterations must be greater than 0 \n');
            end
            end
            if iterations > 0
                for i = 1:iterations
                    array(1,i) = (xValue^(i-1))/(factorial(i-1));
                end
                final = sum(array);
                fprintf('Exponent Approximation: \n e^(%.02f) = %.02f \n', xValue, final);
                play = input('Would you like to play again (Y/N): ', 's');
                decide = strncmpi(play,'Y',1);
            end
        case 2
            % sine series
            xValue = input('Enter an X value: ');
            iterations = 0;
            while iterations <= 0
            iterations = input('Enter the number of iterations: ');
            if iterations <= 0
            fprintf('Iterations must be greater than 0 \n');
            end
            end
            if iterations > 0
                for i = 1:iterations
                    array(1,i) = (((-1)^(i-1))/(factorial(2*i-1)))*(xValue^(2*i-1));
                end
                final = sum(array);
                fprintf('Sine Approximation: \n e^(%.02f) = %.02f \n', xValue, final);
                play = input('Would you like to play again (Y/N): ', 's');
                decide = strncmpi(play,'Y',1);
            end
        case 3
            % cosine series
            xValue = input('Enter an X value: ');        
            iterations = 0;
            while iterations <= 0
            iterations = input('Enter the number of iterations: ');
            if iterations <= 0
            fprintf('Iterations must be greater than 0 \n');
            end
            end
            if iterations > 0
                for i = 1:iterations
                    array(1,i) = (((-1)^(i-1))/(factorial(2*i-2)))*(xValue^(2*i-2));
                end
                final = sum(array);
                fprintf('Cosine Approximation: \n e^(%.02f) = %.02f \n', xValue, final);
                play = input('Would you like to play again (Y/N): ', 's');
                decide = strncmpi(play,'Y',1);    
            end
    end
end
