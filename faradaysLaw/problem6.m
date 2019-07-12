% Subject: Electric and Magnetic Fields: Activity 1
% File: Activity1
% Author: Hasana Chaudry
% Date: February 26th, 2018
% Instructor: Dr. Masooma Pirbhai

% Problem 6

clear all;
close all;

% Define constants
syms x  Q L k lambda;

% Get input from user
N=input('Enter the number of charges in the distribution: ');

% Split the total charge of the distribution over N
q = Q/N;

% Initialize field points to 0.
x_f = x; y_f = 0; 

% The total field starts out as 0 in both directions before we consider any charges.
% The total field in the x-direction will always be zero since our charge
% distribution is along the y-axis only
Etot=[0 0]; 
Ex=0; 
Ey=0;

for i= 0:N

    % Space the charges evenly over the length
    y = linspace(-L,L,N)
    dx= x_f; dy= y_f-y;
    % magnitude of the separation vector
    rmag=(dx^2+dy^2)^(1/2);
    % rvec is the separation vector
    rvec=[dx dy];
    E = k*q*rvec/(rmag^3);
    Ex=Ex+E(1); Ey=Ey+E(2);

end

Ex
Ey
     
    
        
        
        
    