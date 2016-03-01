%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
9/21/2015        Original          Jacob Leonard

%}
fprintf('Unit Converter \n********************* \n');
selected = input('Please Select and Option: \n     1. Meter/Foot Converter \n     2. Kilogram/LB Converter \n     3. Celsius/Fahrenheit Converter \n');
switch selected
    case 1
        % Meter\Foot Converter
        fprintf('Meter/Foot Converter \n');
        startValue = input('Enter a Value: ');
        unit = input('Enter a unit (m or ft): ','s');
        if strncmpi(unit, 'm',1) == 1
            endValue = startValue*3.28084;
            fprintf('%f m = %f ft \n',startValue, endValue);
        end
        if strncmpi(unit, 'ft',2) == 1
            endValue = startValue/3.28084;
            fprintf('%f ft = %f m \n',startValue, endValue);
        end
        if (strncmpi(unit,'m',1) ~= 1) && (strncmpi(unit,'ft',2) ~= 1)
            fprintf('Invalid Unit! \n');
        end
    case 2
        %  Kilogram\LB Converter
        fprintf('Kilogram/LB Converter \n');
         startValue = input('Enter a Value: ');
        unit = input('Enter a unit (kg or lb): ','s');
        if strncmpi(unit, 'kg',2) == 1
            endValue = startValue* 2.204620;
            fprintf('%f kg = %f lb \n',startValue, endValue);
        end
        if strncmpi(unit, 'lb',2) == 1
            endValue = startValue/2.204620;
            fprintf('%f lb = %f kg \n',startValue, endValue);
        end
        if (strncmpi(unit,'kg',2) ~= 1) && (strncmpi(unit,'lb',2) ~= 1)
            fprintf('Invalid Unit! \n');
        end
    case 3
        %  Celsius\Fahrenheit Converter
        fprintf('Celsius/Fahrenheit Converter \n');
        startValue = input('Enter a Value: ');
        unit = input('Enter a unit (C or F): ','s');
        if strncmpi(unit, 'C',1) == 1
            endValue = startValue*(9/5)+32;
            fprintf('%f C = %f F \n',startValue, endValue);
        end
        if strncmpi(unit, 'F',1) == 1
            endValue = (startValue-32)*(5/9);
            fprintf('%f F = %f C \n',startValue, endValue);
        end
        if (strncmpi(unit,'C',1) ~= 1) && (strncmpi(unit,'F',1) ~= 1)
            fprintf('Invalid Unit! \n');
        end
end