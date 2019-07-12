% Subject: Electric and Magnetic Fields: Activity 1
% File: Activity1
% Author: Hasana Chaudry
% Date: February 26th, 2018
% Instructor: Dr. Masooma Pirbhai

% Problem 5

% This program calculates and plots the electric fields due to line charges
% of finite symmetrical lengths

clear all;
close all;

% Define constants
syms x y Q L k lambda;
EPSO = 8.85*10^(-12); 

% Field point: r = x 
% Source point: r' = y
% Seperation vector: r = r-r' = x-y
rmag=(x^2+y^2)^(1/2);

% Initialize lambda which is the charge per unit length
lambda=Q/(2*L);

% Split up the integral into components for plugging in later
xintegral =  x/(rmag^3);
yintegral = -y/(rmag^3);

% Plug in the x and y integrals from above to calculate the e-field in the x and y direction
Ex = k*lambda*int(xintegral,y,-L,L);
Ey = k*lambda*int(yintegral,y,-L,L);



% Define k
k = 1/(4*pi*EPSO);

% Get values for Q and L from the user to use in plotting the e-field
Q = input('Enter the total charge of the line in Coulombs: ');
L = input('Enter the total length of the line in meters (which is 2L, not L): ')*(1/2);

% Plug in the user input to get final equation
f = k*Q/(x*(L^2 + x^2)^(1/2));

% Plot the e-field against the x-axis
fplot(f,[0 2.5*10^(10)])
grid on
xlabel('x');
ylabel('Electric Field');
