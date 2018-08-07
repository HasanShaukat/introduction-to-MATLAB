%It makes the x and y coordinated of a circle by entering the origin and
%radius
function [x,y] = getCircle(center,r)
t = 0:pi/50:2*pi;
x = r*cos(t)+center(1);
y = r*sin(t)+center(2);
