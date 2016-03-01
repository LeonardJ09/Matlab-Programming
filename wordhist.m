%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
12/2/2015        Original          Jacob Leonard

%}

%lab

%{
Requirements
Your function should take in only one parameter, a string. If the number of rows in the string is greater
than 1, you should process each row as its own string.
First, take the rows of strings and create a cell array of individual words using regular expressions. For
each row, perform the following task:
1. Grab a word in the cell array
2. If the word is the empty string, move on to Step 7
3. Start the number of occurrences at 1
4. If the next word is the same as the first word (case-sensitive), then increase the number of
occurrences by 1, and change that word (not the original one) to be the empty string.
5. Repeat Step 4 for the rest of the words in the cell array
6. Print out the original word and the number of occurrences like this:
Word: Occurrences
7. Repeat Step 1 for the rest of the words in the cell array
If there is more than one row, first tell the user the number of strings they input, and tell them the
histogram of each string. See sample output.
%}
function wordhist(str)
%first take the input and segment into cells
data = cellstr(str);
index = length(data);
for i = 1:index
    fprintf('String %.0f\n',index);
    C = strsplit(data{index});
    for j = 1:length(C)
        if isempty(C{j}) == 1;
            continue
        end
        quantifier(j) = 1;
        for u = j:length(C)
            if strcmpi(C{j},C{u})==1
                quantifier(j) = quantifier(j)+1;
                C{u}=[];
            end
        end
    end
    fprintf('%s: %.0f\n',C{j},quantifier(j));
end



    