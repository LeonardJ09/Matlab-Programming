%{ 
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer 
-------------------------------------------------
10/7/2015        Original          Jacob Leonard

%}
%make the structures that will hold the information for the shapes
shape = struct('circle',[],'triangle',[],'square',[]);
circle = struct('radius',[],'center', [], 'area', []);
triangle = struct('sides', [], 'center', [],'area', []);
square = struct('side', [], 'center', [], 'area', []);
%ask for the shapes that they would like to create
c = input('Would you like to create a circle? (Y/N): ','s');
t = input('Would you like to create a triangle? (Y/N): ','s');
s = input('Would you like to create a square? (Y/N): ','s');

sum = strcmpi(c,'y')+strcmpi(t,'y')+strcmpi(s,'y');
switch sum
    case 0
    %the user did not create any shapes
    if strcmpi(c,'y')==strcmpi(t,'y')==strcmpi(s,'y')==0
        fprintf('No shapes created\n');
    end
    %this case is complete
    case 1
    %the user only created one shape
    if (strcmpi(c,'y')==1) && (strcmpi(t,'y')==strcmpi(s,'y'))
        fprintf('You only created a single shape: circle\n');
    end
    if (strcmpi(t,'y')==1) && (strcmpi(c,'y')==strcmpi(s,'y'))
        fprintf('You only created a single shape: triangle\n');
    end
    if (strcmpi(s,'y')==1) && (strcmpi(c,'y')==strcmpi(t,'y'))
        fprintf('You only created a single shape: square\n');
    end
    %this case is complete
    case 2
    %the user created two shapes
    if strcmpi(c,'y')==0 && strcmpi(t,'y')==strcmpi(s,'y')==1
        fprintf('You creates these shapes:\n triangle\n square\n');
        %calculate the sides, center, and area for the traingle and square
        %---triangle
        shape.triangle.sides = [randi(10),randi(10)];
        shape.triangle.center = [randi(10),randi(10)];
        shape.triangle.area = .5*(shape.triangle.sides(1))*(shape.triangle.sides(2));
        %---square
        shape.square.side = randi(10);
        shape.square.center = [randi(10),randi(10)];
        shape.square.area = (shape.square.side)^2;
        %ask the user which two shapes they would like to calculate the
        %distance between the centers
        fprintf('Choose two shapes to calculate the distance between centers\nYou must spell them EXACTLY as they were written\n');
        move1 = 1;
        while (move1 == 1)
        shape1 = input('First Shape: ', 's');
        if strcmp(shape1,'triangle')==strcmp(shape1,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape1,'triangle')==1 || strcmp(shape1,'square')==1
            move1 = 0;
        end
        end
        move2 = 1;
        while (move2 == 1)
        shape2 = input('Second Shape: ', 's');
        if strcmp(shape2,'triangle')==strcmp(shape2,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape2,'triangle')==1 || strcmp(shape2,'square')==1
            move2 = 0;
        end
        end
        %-----calculate the distance between the centers
        x1 = shape.(shape1).center(1);
        x2 = shape.(shape2).center(1);
        y1 = shape.(shape1).center(2);
        y2 = shape.(shape2).center(2);
        distance = (((x2-x1)^2)+(y2-y1)^2)^.5;
        fprintf('The Distance between the %s and the %s is %f\n',shape1, shape2, distance);
        %ask the user which two shapes they would like to calculate the
        %ratio between the areas
        fprintf('Choose two shapes to calculate the distance between areas\nYou must spell them EXACTLY as they were written\n');
         move3 = 1;
        while (move3 == 1)
        shape3 = input('First Shape: ', 's');
        if strcmp(shape3,'triangle')==strcmp(shape3,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape3,'triangle')==1 || strcmp(shape3,'square')==1
            move3 = 0;
        end
        end
        move4 = 1;
        while (move4 == 1)
        shape4 = input('Second Shape: ', 's');
        if strcmp(shape4,'triangle')==strcmp(shape4,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape4,'triangle')==1 || strcmp(shape4,'square')==1
            move4 = 0;
        end
        end
        %-----calculate the ratio between the areas
        ratio = (shape.(shape3).area)/(shape.(shape4).area);
        fprintf('The ratio of the areas (%s:%s) is %f\n', shape3, shape4, ratio);
        %end
    end
    if strcmpi(t,'y')==0 && strcmpi(c,'y')==strcmpi(s,'y')==1
        fprintf('You creates these shapes:\n circle\n square\n');
        %calculate the radius, side, center and area for the circle and
        %square
        %---circle
        shape.circle.radius = randi(10);
        shape.circle.center = [randi(10),randi(10)];
        shape.circle.area = 2*pi*(shape.circle.radius)^2;
        %---square
        shape.square.side = randi(10);
        shape.square.center = [randi(10),randi(10)];
        shape.square.area = (shape.square.side)^2;
        %ask the user which two shapes they would like to calculate the
        %distance between the centers
        fprintf('Choose two shapes to calculate the distance between centers\nYou must spell them EXACTLY as they were written\n');
        move1 = 1;
        while (move1 == 1)
        shape1 = input('First Shape: ', 's');
        if strcmp(shape1,'circle')==strcmp(shape1,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape1,'circle')==1 || strcmp(shape1,'square')==1
            move1 = 0;
        end
        end
        move2 = 1;
        while (move2 == 1)
        shape2 = input('Second Shape: ', 's');
        if strcmp(shape2,'circle')==strcmp(shape2,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape2,'circle')==1 || strcmp(shape2,'square')==1
            move2 = 0;
        end
        end
        %-----calculate the distance between the centers
        x1 = shape.(shape1).center(1);
        x2 = shape.(shape2).center(1);
        y1 = shape.(shape1).center(2);
        y2 = shape.(shape2).center(2);
        distance = (((x2-x1)^2)+(y2-y1)^2)^.5;
        fprintf('The Distance between the %s and the %s is %f\n',shape1, shape2, distance);
        %ask the user which two shapes they would like to calculate the
        %ratio between the areas
        fprintf('Choose two shapes to calculate the distance between areas\nYou must spell them EXACTLY as they were written\n');
         move3 = 1;
        while (move3 == 1)
        shape3 = input('First Shape: ', 's');
        if strcmp(shape3,'circle')==strcmp(shape3,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape3,'circle')==1 || strcmp(shape3,'square')==1
            move3 = 0;
        end
        end
        move4 = 1;
        while (move4 == 1)
        shape4 = input('Second Shape: ', 's');
        if strcmp(shape4,'circle')==strcmp(shape4,'square')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape4,'circle')==1 || strcmp(shape4,'square')==1
            move4 = 0;
        end
        end
        %-----calculate the ratio between the areas
        ratio = (shape.(shape3).area)/(shape.(shape4).area);
        fprintf('The ratio of the areas (%s:%s) is %f\n', shape3, shape4, ratio);
        %end
    end
    if strcmpi(s,'y')==0 && strcmpi(c,'y')==strcmpi(t,'y')==1
        fprintf('You creates these shapes:\n circle\n triangle\n');
        %calculate the radius, sides, center and area for the circle and
        %triangle
        %---circle
        shape.circle.radius = randi(10);
        shape.circle.center = [randi(10),randi(10)];
        shape.circle.area = 2*pi*(shape.circle.radius)^2;
        %---triangle
        shape.triangle.sides = [randi(10),randi(10)];
        shape.triangle.center = [randi(10),randi(10)];
        shape.triangle.area = .5*(shape.triangle.sides(1))*(shape.triangle.sides(2));
        %ask the user which two shapes they would like to calculate the
        %distance between the centers
        fprintf('Choose two shapes to calculate the distance between centers\nYou must spell them EXACTLY as they were written\n');
        move1 = 1;
        while (move1 == 1)
        shape1 = input('First Shape: ', 's');
        if strcmp(shape1,'triangle')==strcmp(shape1,'circle')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape1,'triangle')==1 || strcmp(shape1,'circle')==1
            move1 = 0;
        end
        end
        move2 = 1;
        while (move2 == 1)
        shape2 = input('Second Shape: ', 's');
        if strcmp(shape2,'triangle')==strcmp(shape2,'circle')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape2,'triangle')==1 || strcmp(shape2,'circle')==1
            move2 = 0;
        end
        end
        %-----calculate the distance between the centers
        x1 = shape.(shape1).center(1);
        x2 = shape.(shape2).center(1);
        y1 = shape.(shape1).center(2);
        y2 = shape.(shape2).center(2);
        distance = (((x2-x1)^2)+(y2-y1)^2)^.5;
        fprintf('The Distance between the %s and the %s is %f\n',shape1, shape2, distance);
        %ask the user which two shapes they would like to calculate the
        %ratio between the areas
        fprintf('Choose two shapes to calculate the distance between areas\nYou must spell them EXACTLY as they were written\n');
         move3 = 1;
        while (move3 == 1)
        shape3 = input('First Shape: ', 's');
        if strcmp(shape3,'triangle')==strcmp(shape3,'circle')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape3,'triangle')==1 || strcmp(shape3,'circle')==1
            move3 = 0;
        end
        end
        move4 = 1;
        while (move4 == 1)
        shape4 = input('Second Shape: ', 's');
        if strcmp(shape4,'triangle')==strcmp(shape4,'circle')
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape4,'triangle')==1 || strcmp(shape4,'circle')==1
            move4 = 0;
        end
        end
        %-----calculate the ratio between the areas
        ratio = (shape.(shape3).area)/(shape.(shape4).area);
        fprintf('The ratio of the areas (%s:%s) is %f\n', shape3, shape4, ratio);
        %end
    end
    case 3
    %the user created all three shapes
    if strcmpi(s,'y')==strcmpi(c,'y')==strcmpi(t,'y')==1
        fprintf('You creates these shapes:\n circle\n triangle\n square\n');
        %calculate the radius, sides, center and area of the circle,
        %triangle and square
        %---circle
        shape.circle.radius = randi(10);
        shape.circle.center = [randi(10),randi(10)];
        shape.circle.area = 2*pi*(shape.circle.radius)^2;
        %---triangle
        shape.triangle.sides = [randi(10),randi(10)];
        shape.triangle.center = [randi(10),randi(10)];
        shape.triangle.area = .5*(shape.triangle.sides(1))*(shape.triangle.sides(2));
        %---square
        shape.square.side = randi(10);
        shape.square.center = [randi(10),randi(10)];
        shape.square.area = (shape.square.side)^2;
        %ask the user which two shapes they would like to calculate the
        %distance between the centers
        fprintf('Choose two shapes to calculate the distance between centers\nYou must spell them EXACTLY as they were written\n');
        move1 = 1;
        while (move1 == 1)
        shape1 = input('First Shape: ', 's');
        if (strcmp(shape1,'triangle')== 0) && (strcmp(shape1,'circle')==0) && (strcmp(shape1,'square')==0)
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape1,'triangle')==1 || strcmp(shape1,'circle')==1 || strcmp(shape1,'square')==1
            move1 = 0;
        end
        end
        move2 = 1;
        while (move2 == 1)
        shape2 = input('Second Shape: ', 's');
        if (strcmp(shape2,'triangle')== 0) && (strcmp(shape2,'circle')==0) && (strcmp(shape2,'square')==0)
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape2,'triangle')==1 || strcmp(shape2,'circle')==1 || strcmp(shape2,'square')==1
            move2 = 0;
        end
        end
        %-----calculate the distance between the centers
        x1 = shape.(shape1).center(1);
        x2 = shape.(shape2).center(1);
        y1 = shape.(shape1).center(2);
        y2 = shape.(shape2).center(2);
        distance = (((x2-x1)^2)+(y2-y1)^2)^.5;
        fprintf('The Distance between the %s and the %s is %f\n',shape1, shape2, distance);
        %ask the user which two shapes they would like to calculate the
        %ratio between the areas
        fprintf('Choose two shapes to calculate the distance between areas\nYou must spell them EXACTLY as they were written\n');
         move3 = 1;
        while (move3 == 1)
        shape3 = input('First Shape: ', 's');
        if (strcmp(shape3,'triangle')== 0) && (strcmp(shape3,'circle')==0) && (strcmp(shape3,'square')==0)
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape3,'triangle')==1 || strcmp(shape3,'circle')==1 || strcmp(shape3,'square')==1
            move3 = 0;
        end
        end
        move4 = 1;
        while (move4 == 1)
        shape4 = input('Second Shape: ', 's');
        if (strcmp(shape4,'triangle')== 0) && (strcmp(shape4,'circle')==0) && (strcmp(shape4,'square')==0)
            fprintf('No shape by that name!\n');
        end
        if strcmp(shape4,'triangle')==1 || strcmp(shape4,'circle')==1 || strcmp(shape4,'square')==1
            move4 = 0;
        end
        end
        %-----calculate the ratio between the areas
        ratio = (shape.(shape3).area)/(shape.(shape4).area);
        fprintf('The ratio of the areas (%s:%s) is %f\n', shape3, shape4, ratio);
        %end
    end
end
