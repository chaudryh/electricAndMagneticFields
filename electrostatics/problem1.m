% Subject: Electric and Magnetic Fields: Activity 2
% File: problem1
% Author: Hasana Chaudry
% Date: April 18th, 2018
% Instructor: Dr. Masooma Pirbhai


% The following program calculates the electric field inside and 
% outside a sphere and plots the dependence of the radial distance 
% from a sphere's center on the electric field.

syms r % Initiating radius enclosed
ep = 8.854*10^-12; % Defining epsilon
p = input('Enter a uniform volume density:  '); % Uniform charge density
a = input('Enter the total radius of the sphere:  '); % Total radius of sphere


% For r < a
Ein = (p*r)/(3*ep);
    
% For r > a
Eout = (p*a^3)/(3*ep*r^2);

% Plot the fields
figure

% Gaussian surface inside: [0, a]
fplot(Ein, [0,a]) 
hold on       

% Gaussian surface outside [a, inf]
fplot(Eout,[a,a.*6])    
hold off
grid on 
title('Electric Field of the Sphere');
xlabel('Radius of the Gaussian (meters)');
ylabel('E-field');


