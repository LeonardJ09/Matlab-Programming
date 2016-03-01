%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/2/2015        Original          Jacob Leonard

%}
validInput = false;
while (~validInput)
    numContact = input('Initial Contact Size: ');
    if numContact < 1
        fprintf('You must create at least one contact!');
    else 
        validInput = true;
    end
end

%numContact
contact = struct('last', [], 'first', [], 'phone', [],'ID', []);
student = repmat(student,1,numContact);
for index = 1:numContact
    student(index).last = input('Last Name: ','s');
    student(index).first = input('First Name: ');
    student(index).phone = input('PH: ');
    student(index).ID = index;
end;

keepGoing = true;
while (keepGoing)
    fprintf('Choose one of the following options:\n');
    fprintf('1. Print the contact list \n     2. Add contact \n     3. Delete contact \n     4. Quit\nOption: ');
    choice = input('Choose: ');
    numContacts = length(contact);
    switch choice
        case 1 
            if (numContacts == 0)
                fprintf('No Contacts to Print!\n');
            else
                for index = 1:numContacts
                    fprintf('%.0f. %s, %s\n %.0f\n', contact(index).ID,contact(index).last, contact(index).first, contact(index),phone);
                end
            end
        case 2
            contact(numContacts + 1).last = input('Last Name: ', 's');
            contact(numContacts + 1).first = input('First Name: ', 's');
            contact(numContacts + 1).phone = input('PH: ');
            contact(numContacts + 1).ID = numContacts + 1;
        case 3
            if (numContacts == 0)
                fprintf('No Contacts to Delete!\n');
            else
                for index = 1:numContacts
                    fprintf('%.0f. %s, %s\n', contact(index).ID,contact(index).last, contact(index).first);
                end
                validDelete = false;
                while (~validDelete)
                    toDelete = input('Select an ID to delete: ');
                    if (toDelete >= 1) && (toDelete <= numContacts)
                        validDelete = true;
                    else
                        fprintf('Invalid ID Number\n');
                    end
                end
                contact(toDelete) = [];
                for index = 1:(numContacts-1)
                    contact(index).ID = index;
                end
            end
        case 4
            frpintf('Quitting!\n');
            keepGoing = false;
        otherwise
            fprintf('Invalid Option\n');
    end
end
