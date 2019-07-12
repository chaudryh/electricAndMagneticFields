% Subject: Electric and Magnetic Fields: Activity 2
% File: problem3
% Author: Hasana Chaudry
% Date: April 18th, 2018
% Instructor: Dr. Masooma Pirbhai

% The following program calculates the magnetic field between two
% moving charges

% Part 1
% Testing the cross_product function with given vectors a and b

a = [1, 1, 2];
b = [3, 2, 4];
cross_product(a, b)

% Part 2
% Testing the magnetic force program using the given quanitites

mu = 4*pi*10^(-7);
Q1 = 10*(10^-9);
Q2 = -10*(10^-9);
V1 = [1, 3, 4];
V2 = [6, 3, 2];
% Source point
P1 = [0, 0, 0];
% Field point
P2 = [0.02, 0.01, -0.005];

% Calculate the seperation vector, R = P2 - P1
R = P2-P1;
% Calculate the magnitude of the position vector
Rmag = norm(R);
% Calculate V2 x V1
V = cross_product(V2, V1);
% Calculate V x R = V2 x V1 x R
T = cross_product(V, R);
% Calculate the magnetic Force
% Note that Rhat= R/Rmag
F = (mu*Q1*Q2*T)/(4*pi*Rmag^3)

% This function that calculates the cross product of two vectors
% that are passed as parameters to the function. The product vectors
% are passed as parameters to the function and it returns a 3D vector 
% as the resultant

function [result]=cross_product(X,Y)
    %Cross Product
    i=(X(2)*Y(3) - Y(2)*X(3));
    j=(X(3)*Y(1) - Y(3)*X(1));
    k=(X(1)*Y(2) - Y(1)*X(2));

    %returns a 3D vector
    result=[i,j,k]; 
end





