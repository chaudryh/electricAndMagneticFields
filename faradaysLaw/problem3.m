% Subject: Electric and Magnetic Fields: Activity 1
% File: Activity1
% Author: Hasana Chaudry
% Date: February 26th, 2018
% Instructor: Dr. Masooma Pirbhai

% Problem 3

% This program calculates and plots the electric field due to N other point charges in free space.

clear all;
close all;

% Define constants
EPSO = 8.85*10^(-12);
k = 1/(4*pi*EPSO);

% User inputs field point coordinates and number of charges
x_f = input('Enter the X coordinate of the field point in cm : ');
y_f = input('Enter the Y coordinate of the field point in cm : ');
z_f = input('Enter the Z coordinate of the field point in cm : ');
N=input('Enter the number of positive charges: ');
 
% Create arrays to store the user input in
xcoord=[];
ycoord=[];
zcoord=[];
q=[];

% Gather user input on charge locations
for i = 1:N
      x(i) = input('Enter the X coordinate in cm : ');
      xcoord=[x];
      y(i) = input('Enter the Y coordinate in cm : ');
      ycoord=[y];
      z(i) = input('Enter the Z coordinate in cm : ');
      zcoord=[z];
      Q(i)=  input('Enter the source charge in nC: ');
      q=[Q];
end


% Unit conversions of user input
xcoord = xcoord.*(0.01);
ycoord = ycoord.*(0.01);
zcoord = zcoord.*(0.01);
q = q.*(10^-9);
x_f = x_f.*(0.01);
y_f = y_f.*(0.01);
z_f = z_f.*(0.01);

% Initialize X, Y, Z
X = 0;
Y = 0;
Z = 0;

%Calculate the r for each source point with the field point
%Due to superposition, we can add all of them up

for i = 1:N
    X = (x_f - x(i));
    X = X + X;
    Yu = (y_f-y(i));
    Y = Y + Yu;
    Zu = (z_f-z(i));
    Z = Z + Zu;
end

% Calculate the magnitude 
mag = sqrt(X^2 + Y^2 + Z^2);

% Create unit vectors for each direction
u_x = X./mag;
u_y = Y./mag;
u_z = Z./mag;
uVec = [u_x; u_y; u_z]; 

% Calculating the E-field
E = (ones(3,1).*(Q./(4.*pi.*EPSO.*mag.^2))).*uVec;

% Create grid 
[u_x, u_y, u_z] = meshgrid(X, Y, Z);
[x, y, z] = meshgrid(X, Y, Z);

% Plot
quiver3(x_f, y_f, z_f, u_x, u_y, u_z);
xlabel('x');
ylabel('y');
zlabel('z');

% Print total electric field
Etot = sum(E, 2)