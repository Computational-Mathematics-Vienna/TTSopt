% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:43
% Model: hs065

% Objective
fun = @(x)(x(1)-x(2))^2+0.111111111111111*(-10+x(1)+x(2))^2+(-5+x(3))^2;

% Bounds
lb = [-4.5,-4.5,-5]';
ub = [4.5,4.5,5]';

% Constraints
nlcon = @(x)[x(1)^2+x(2)^2+x(3)^2];
cl = -Inf';
cu = 48';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','hs065');
opts.sense = 'min';