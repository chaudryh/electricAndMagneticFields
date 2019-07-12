% Subject: Electric and Magnetic Fields: Activity 1
% File: Activity1
% Author: Hasana Chaudry
% Date: February 26th, 2018
% Instructor: Dr. Masooma Pirbhai

% Problem 2

% The following are examples of fields that have zero divergence and curl

% Example 1: f(x) = y+x

[x,y]=meshgrid(-5:0.5:5, -5:0.5:5);
u=y
v=x
figure
quiver(x,y,u,v)
xlabel('x');
ylabel('y');

% Example 2: f(x) = yz+xz+xy

[x,y,z]=meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);
a=y.*z;
b=x.*z;
c=x.*y;
figure
quiver3(x,y,z,a,b,c)
xlabel('x');
ylabel('y');
zlabel('z');

%Example 3: f(x) = sin(x)*cos(y)-cos(x)*sin(y)

[x,y]=meshgrid(-2:0.5:2, -2:0.5:2);
a=sin(x).*cos(y);
b=-cos(x).*sin(y);
figure
quiver(x,y,a,b)
xlabel('x');
ylabel('y');






