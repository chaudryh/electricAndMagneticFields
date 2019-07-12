% Subject: Electric and Magnetic Fields: Activity 1
% File: Activity1
% Author: Hasana Chaudry
% Date: February 26th, 2018
% Instructor: Dr. Masooma Pirbhai

% Problem 1

% The following program creates a field representation of the function
% f(x) = sin((pi/2)*y)+(sin(pi/2)*x)

% Create grid
[x,y]=meshgrid(-0.5:0.1:0.5, -2.5:0.1:-1.5);

% Split into components
u=sin((pi/2)*y);
v=-sin((pi/2)*x);

% Plot
figure
quiver(x,y,u,v)





