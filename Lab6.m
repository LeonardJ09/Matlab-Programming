%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/18/2015        Original          Jacob Leonard

%}
birthMonth = 0;
birthMonthName = 0;
birthDay = 0;
birthYear = 0;

birthMonth = input('Please Enter You Birth Month: ');
if (birthMonth >= 1) && (birthMonth <= 12)
    birthDay = input('Please Enter You Birth Day: ');
    switch birthMonth
        case 1
            if (birthDay >= 1) && (birthDay <= 31)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on January, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 2
            if (birthDay >= 1) && (birthDay <= 28)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on February, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 4
            if (birthDay >= 1) && (birthDay <= 30)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on April, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 6
            if (birthDay >= 1) && (birthDay <= 30)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on June, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 9
            if (birthDay >= 1) && (birthDay <= 30)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on September, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 11
            if (birthDay >= 1) && (birthDay <= 30)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on November, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 3
            if (birthDay >= 1) && (birthDay <= 31)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on March, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 5
            if (birthDay >= 1) && (birthDay <= 31)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on May, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 7
            if (birthDay >= 1) && (birthDay <= 31)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on July, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 8
            if (birthDay >= 1) && (birthDay <= 31)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on August, %d, %d \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 10
            if (birthDay >= 1) && (birthDay <= 31)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on October, %f, %f \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
        case 12
            if (birthDay >= 1) && (birthDay <= 31)
                birthYear = input('Please Enter You Birth Year: ');
                if birthYear > 0
                    fprintf('Your brithday is on December, %f, %f \n', birthDay, birthYear);
                end
                if birthYear <= 0
                    fprintf('That is not a valid birth year \n');
                end
            else
                fprintf('That is not a valid birthday \n');
            end
    end
end
if (birthMonth < 1) && (birthMonth > 12)
    fprintf('That is an invalid birth month \n')
end
