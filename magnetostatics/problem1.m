% Subject: Electric and Magnetic Fields: Activity 3
% File: problem1
% Author: Hasana Chaudry
% Date: May 8th, 2018
% Instructor: Dr. Masooma Pirbhai

clc
close all

syms A B C I t

I = sin(377*t);

% A = input('Enter the length of A:   ');
% B = input('Enter the length of B:   ');
% C = input('Enter the length of C:   ');
% I = input('Enter the current:   ');
% 
% emf(A, B, C, I);
% title('Emf vs. Time');

emf(4, 3, 1, I)
title('Emf vs. Time');

function Em = emf(a, b, c, i)
    syms x t

    mu = 4*pi * (10^-7);
    
    Bf = ((mu * i)/(2*pi*x));
    Fl = int(Bf * b, x, c,(c + a));
    Em = -(-diff(Fl, t))
    
    figure
    fplot(Em, [0, 0.05])
    xlabel('Time (Seconds)');
    ylabel('Emf (Volts)');

end

