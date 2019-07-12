% Subject: Electric and Magnetic Fields: Activity 3
% File: problem2
% Author: Hasana Chaudry
% Date: May 8th, 2018
% Instructor: Dr. Masooma Pirbhai

clc
close all

syms A B C I

emf(4, 3, 1, 2, 50)
title('Emf vs. Time');

emf(4, 3, 1, 2, 5);
title('Emf vs. Time: I < v');

emf(4, 3, 1, 2, 1);
title('Emf vs. Time: I > v');

function Em = emf(a, b, c, i, v)

    syms x t
    
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

