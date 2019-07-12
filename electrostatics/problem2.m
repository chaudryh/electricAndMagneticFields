% Subject: Electric and Magnetic Fields: Activity 2
% File: problem2
% Author: Hasana Chaudry
% Date: April 18th, 2018
% Instructor: Dr. Masooma Pirbhai


% The following program plots the equation for a cycloid motion in 
% the following three circumstances

% E = B
cycloid(10,10);
title('Cycloid Motion, E=B');
% E > B
cycloid(20,5);
title('Cycloid Motion, E>B');
% E < B
cycloid(5,15);
title('Cycloid Motion, E<B');
% This function calculates the cycloid motion of a particle 
% and then plots it
function [x y z] = cycloid(E,B)

    Q = 1; % Charge
    m = 1; % Mass
    syms t 

    % Calculate the angular frequency
    w = (Q*B)/ m; 
    % Set R to be the following
    R = E/(w*B); 

    x = zeros*t;
    y = R*(w*t-sin(w*t));
    z = R*(1-cos(w*t));
    
    % Plotting the x, y, z components
    figure
    fplot3(x, y , z, [0, 4*R*w])
    %title('Cycloid Motion of a Particle');
    xlabel('x-axis');
    ylabel('y-axis');
    zlabel('z-axis');

end
