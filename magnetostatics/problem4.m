% Subject: Electric and Magnetic Fields: Activity 3
% File: problem4
% Author: Hasana Chaudry
% Date: May 8th, 2018
% Instructor: Dr. Masooma Pirbhai

clc
close all

syms k x y v

Vtot = 0;

for n = 1:2:10
    k = n*pi/10;
    Cn = 25/(pi*n);
    V = Cn*(sinh(k*x)+exp(-n*pi))*sin(k*y);
    Vtot = Vtot+V;
end

fsurf(Vtot,[0 15 0 5],'ShowContours','on')
title('Potential vs. Time');
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');



