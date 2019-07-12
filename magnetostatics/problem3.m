% Subject: Electric and Magnetic Fields: Activity 3
% File: problem3
% Author: Hasana Chaudry
% Date: May 8th, 2018
% Instructor: Dr. Masooma Pirbhai

clc
close all

syms A B C I

I = sin(377*t);

emf(4, 1, 10, I, 50);
title('Emf vs. Time');


function Em = emf(a, b, c, i, v)

    syms x t
    
    cm = 10^-2;
    a = a*cm;
    b = b*cm;
    c = c*cm;
    mu = 4*pi * (10^-7);
    
    K = c + v*t;

    Bf = ((mu * i)/(2*pi*x));
    Fl = int(Bf * b, x, K,(K + a));
    Em = -(-diff(Fl, t));
    
    figure
    fplot(Em, [0, 1])
    xlabel('Time (Seconds)');
    ylabel('Emf (Volts)');

end