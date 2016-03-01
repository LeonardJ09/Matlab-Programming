%{
Jacob Leonard
ITP 168 - Fall 2015
jaleonar@usc.edu
Revision History
Date             Changes           Programmer
-------------------------------------------------
11/10/2015        Original          Jacob Leonard
%}

%Part 1, load the data and establish the variables for further down the
%script file
load('HW9.mat');

%X is the longitudinal values in degrees
%Y is the latitude values in degrees
%ELEV is the elevation value in meters

%define the radius of the earth in meters
RoE = 6371000;

%Part 2, convert X and Y values to meters
xMeters = zeros(1,length(X));
yMeters = zeros(length(Y),1);
xMeters(1) = 0; yMeters(1) = 0;

for j = 2:length(xMeters)
    xMeters(j) = xMeters(j-1)+RoE*tand(X(j-1)-X(j));
end

for i = 2:length(yMeters)
    yMeters(i) = yMeters(i-1)+RoE*tand(Y(i-1)-Y(i));
end

%Part 3, Plot Contour, Surface, and Boundary Box
box = 50;
xStart = 1;
xEnd = box;
yStart = 1;
yEnd = box;
moveFactor = 25;
%top boundary vector
xTop = (xStart:xEnd);
yTop(1:50) = yEnd;
%botom boundary vector
xBottom = (xStart:xEnd);
yBottom(1:50) = yStart;
%left boundary vector
yLeft = (yStart:yEnd);
xLeft(1:50) = xStart;
%right boundary vector
xRight(1:50) = xEnd;
yRight = (yStart:yEnd);

X1 = yLeft;
Y1 = xBottom;
Z1 = ELEV(X1,Y1);
plotHandle = surf(X1,Y1,Z1);
subplot(2,1,1), surf(X1,Y1,Z1)
subplot(2,1,2), contour(ELEV)
hold on
plotHandle1 = plot(xBottom,yBottom,'b-');
plotHandle2 = plot(xTop,yTop,'b-');
plotHandle3 = plot(xLeft,yLeft,'b-');
plotHandle4 = plot(xRight,yRight,'b-');
for i = 1:box
    xB = xBottom(1:i);
    xT = xTop(1:i);
    xL = xLeft(1:i);
    xR = xRight(1:i);
    yB = yBottom(1:i);
    yT = yTop(1:i);
    yL = yLeft(1:i);
    yR = yRight(1:i);
    set(plotHandle1,'XData',xB);
    set(plotHandle2,'XData',xT);
    set(plotHandle3,'XData',xL);
    set(plotHandle4,'XData',xR);
    set(plotHandle1,'YData',yB);
    set(plotHandle2,'YData',yT);
    set(plotHandle3,'YData',yL);
    set(plotHandle4,'YData',yR);
    refreshdata(plotHandle1);
    refreshdata(plotHandle2);
    refreshdata(plotHandle3);
    refreshdata(plotHandle4);
    drawnow;
end
t=1;
while t ~= 0
%part 4: Explore
fprintf('Choose an option:\n\t1. North\n\t2. South\n\t3. East\n\t4. West\n\t0. Quit\n');
choice = input('Choose: ');
switch choice
    case 0
        %quit
        t = 0;
    case 1
        %north
        %check to see how many more rows are left
        if (yEnd+moveFactor) > length(yMeters)
            yStart = length(yMeters)-box;
            yEnd = length(yMeters);
        else
            yStart = yStart+moveFactor;
            yEnd = yEnd +moveFactor;
        end
        %top boundary vector
        xTop = (xStart:xEnd);
        yTop(1:50) = yEnd;
        %botom boundary vector
        xBottom = (xStart:xEnd);
        yBottom(1:50) = yStart;
        %left boundary vector
        yLeft = (yStart:yEnd);
        xLeft(1:50) = xStart;
        %right boundary vector
        xRight(1:50) = xEnd;
        yRight = (yStart:yEnd);
        %call the plots again
        X1 = yLeft;
        Y1 = xBottom;
        Z1 = ELEV(X1,Y1);
        subplot(2,1,1), surf(X1,Y1,Z1)
        subplot(2,1,2), contour(ELEV)
        for i = 1:box
            xB = xBottom(1:i);
            xT = xTop(1:i);
            xL = xLeft(1:i);
            xR = xRight(1:i);
            yB = yBottom(1:i);
            yT = yTop(1:i);
            yL = yLeft(1:i);
            yR = yRight(1:i);
            set(plotHandle1,'XData',xB);
            set(plotHandle2,'XData',xT);
            set(plotHandle3,'XData',xL);
            set(plotHandle4,'XData',xR);
            set(plotHandle1,'YData',yB);
            set(plotHandle2,'YData',yT);
            set(plotHandle3,'YData',yL);
            set(plotHandle4,'YData',yR);
            refreshdata(plotHandle1);
            refreshdata(plotHandle2);
            refreshdata(plotHandle3);
            refreshdata(plotHandle4);
            drawnow;
        end
    case 2
        %South
        %check to see how many more rows are left
        if (yStart-moveFactor) < 1
            yStart = 1;
            yEnd = box;
        else
            yStart = yStart-moveFactor;
            yEnd = yEnd-moveFactor;
        end 
           %top boundary vector
        xTop = (xStart:xEnd);
        yTop(1:50) = yEnd;
        %botom boundary vector
        xBottom = (xStart:xEnd);
        yBottom(1:50) = yStart;
        %left boundary vector
        yLeft = (yStart:yEnd);
        xLeft(1:50) = xStart;
        %right boundary vector
        xRight(1:50) = xEnd;
        yRight = (yStart:yEnd);
        %call the plots again
        X1 = yLeft;
        Y1 = xBottom;
        Z1 = ELEV(X1,Y1);
        subplot(2,1,1), surf(X1,Y1,Z1)
        subplot(2,1,2), contour(ELEV)
        for i = 1:box
            xB = xBottom(1:i);
            xT = xTop(1:i);
            xL = xLeft(1:i);
            xR = xRight(1:i);
            yB = yBottom(1:i);
            yT = yTop(1:i);
            yL = yLeft(1:i);
            yR = yRight(1:i);
            set(plotHandle1,'XData',xB);
            set(plotHandle2,'XData',xT);
            set(plotHandle3,'XData',xL);
            set(plotHandle4,'XData',xR);
            set(plotHandle1,'YData',yB);
            set(plotHandle2,'YData',yT);
            set(plotHandle3,'YData',yL);
            set(plotHandle4,'YData',yR);
            refreshdata(plotHandle1);
            refreshdata(plotHandle2);
            refreshdata(plotHandle3);
            refreshdata(plotHandle4);
            drawnow;
        end
    case 3
        %East
         %check to see how many more columns are left
        if (xEnd+moveFactor) > length(xMeters)
            xStart = length(xMeters)-box;
            xEnd = length(xMeters);
        else
            xStart = xStart+moveFactor;
            xEnd = xEnd +moveFactor;
        end 
            %top boundary vector
        xTop = (xStart:xEnd);
        yTop(1:50) = yEnd;
        %botom boundary vector
        xBottom = (xStart:xEnd);
        yBottom(1:50) = yStart;
        %left boundary vector
        yLeft = (yStart:yEnd);
        xLeft(1:50) = xStart;
        %right boundary vector
        xRight(1:50) = xEnd;
        yRight = (yStart:yEnd);
        %call the plots again
        X1 = yLeft;
        Y1 = xBottom;
        Z1 = ELEV(X1,Y1);
        subplot(2,1,1), surf(X1,Y1,Z1)
        subplot(2,1,2), contour(ELEV)
        for i = 1:box
            xB = xBottom(1:i);
            xT = xTop(1:i);
            xL = xLeft(1:i);
            xR = xRight(1:i);
            yB = yBottom(1:i);
            yT = yTop(1:i);
            yL = yLeft(1:i);
            yR = yRight(1:i);
            set(plotHandle1,'XData',xB);
            set(plotHandle2,'XData',xT);
            set(plotHandle3,'XData',xL);
            set(plotHandle4,'XData',xR);
            set(plotHandle1,'YData',yB);
            set(plotHandle2,'YData',yT);
            set(plotHandle3,'YData',yL);
            set(plotHandle4,'YData',yR);
            refreshdata(plotHandle1);
            refreshdata(plotHandle2);
            refreshdata(plotHandle3);
            refreshdata(plotHandle4);
            drawnow;
        end
    case 4
        %west
          %check to see how many more columns are left
        if (xStart-moveFactor) < 1
            xStart = 1;
            xEnd = box;
        else
            xStart = xStart-moveFactor;
            xEnd = xEnd-moveFactor;
        end 
          %top boundary vector
        xTop = (xStart:xEnd);
        yTop(1:50) = yEnd;
        %botom boundary vector
        xBottom = (xStart:xEnd);
        yBottom(1:50) = yStart;
        %left boundary vector
        yLeft = (yStart:yEnd);
        xLeft(1:50) = xStart;
        %right boundary vector
        xRight(1:50) = xEnd;
        yRight = (yStart:yEnd);
        %call the plots again
        X1 = yLeft;
        Y1 = xBottom;
        Z1 = ELEV(X1,Y1);
        subplot(2,1,1), surf(X1,Y1,Z1)
        subplot(2,1,2), contour(ELEV)
        for i = 1:box
            xB = xBottom(1:i);
            xT = xTop(1:i);
            xL = xLeft(1:i);
            xR = xRight(1:i);
            yB = yBottom(1:i);
            yT = yTop(1:i);
            yL = yLeft(1:i);
            yR = yRight(1:i);
            set(plotHandle1,'XData',xB);
            set(plotHandle2,'XData',xT);
            set(plotHandle3,'XData',xL);
            set(plotHandle4,'XData',xR);
            set(plotHandle1,'YData',yB);
            set(plotHandle2,'YData',yT);
            set(plotHandle3,'YData',yL);
            set(plotHandle4,'YData',yR);
            refreshdata(plotHandle1);
            refreshdata(plotHandle2);
            refreshdata(plotHandle3);
            refreshdata(plotHandle4);
            drawnow;
        end
end
end
        




