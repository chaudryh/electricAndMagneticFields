% Subject: Electric and Magnetic Fields: Activity 2
% File: problem4
% Author: Hasana Chaudry
% Date: April 18th, 2018
% Instructor: Dr. Masooma Pirbhai

% The following program calculates the magnetic field of a solenoid 
% and plots it.

% At the center of the Solenoid
Bz(1000, 50, 1, 500)
title('B-Field, 500th Turn');
% At the 250th of the Solenoid
Bz(1000, 50, 1, 250)
title('B-Field, 250th Turn');
% At the 750th of the Solenoid
Bz(1000, 50, 1, 750)
title('B-Field, 750th Turn');

% The  function that calculates the B-field
function [B] = Bz(n, l, i, c)
    mu = 1.257 * 10^-6;
    if c == 1
        B = mu * (n / l*10^-2) * i;
    else
        l2 = (l*10^-2 * c)/ n;
        B = mu * (c / l2) * i;
    end
    % Plot the B-field
    figure
    fplot(B, [-1000.*6, 1000.*6])    
    grid on 
    xlabel('z-axis');
    ylabel('B-field');
end 
