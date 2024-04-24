% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:35:49
% Model: hatfldc

% Objective
fun = @(x)(-1+x(1))^2+(x(3)-x(2)^2)^2+(x(4)-x(3)^2)^2+(-1+x(4))^2;

% Bounds
lb = [0,0,0,-Inf]';
ub = [10,10,10,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCC';

% Starting Guess
x0 = [0.9,0.9,0.9,0.9]';

% Options
opts = struct('probname','hatfldc');
opts.sense = 'min';
