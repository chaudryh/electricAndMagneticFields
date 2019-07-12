% Subject: Electric and Magnetic Fields: Activity 2
% File: problem5
% Author: Hasana Chaudry
% Date: April 18th, 2018
% Instructor: Dr. Masooma Pirbhai


% The following program visualizes the magnetic field distribution inside
% and outside a cylinder and finds a symbolic expression for Ampere's law 
% in cartesian coordinates

% Defining given variables
a = 5; % Radius of the cylinder
I = 1; % Current through the cylinder
mu = 4*pi*10^-7;

% Creating the plot grid
[x,y] = meshgrid(-2*a:.2:2*a,-2*a:.2:2*a);

% Magnetic field inside the cylinder
Ci = mu.*I./(2.*pi.*a^2);

% Magnetic field outside the cylinder
Co = mu.*I./(2.*pi);

r = sqrt(x.^2 + y.^2);
f = atan2(y, x);
xhat = -sin(f);
yhat = cos(f);
centers = [0 0];

% X and y component of B-field inside the cylinder
Bix = Ci.*r.*xhat;
Biy = Ci.*r.*yhat;

% X and y component of B-field outside the cylinder
Box = Co./r.*xhat;
Boy =Co./r.*yhat;

% Plotting function for Ampere's Law
figure
quiver(x, y, Bix, Biy)
hold on
quiver(x, y, Box, Boy)
hold off
viscircles(centers, a);

% Testing the function for the given B-field components
mT= 10^(-3);
% Bx = 4*(z-1)^2 ;
% By = 2*x^3 ;
% Bz = x*y ;
% curlCar(Bx, By, Bz)

% The function that calculates the curl of two vectors and takes
% x,y,z parameters that are supposed to be components of the B-field
function c = curlCar(Fx,Fy,Fz)
    syms x y z
    F = [Fx Fy Fz]*mT;
    X = [x y z];
    curl(F, X)
end