% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:42
% Model: hs060

% Objective
fun = @(x)(-1+x(1))^2+(x(1)-x(2))^2+(x(2)-x(3))^4;

% Bounds
lb = [-10,-10,-10]';
ub = [10,10,10]';

% Constraints
nlcon = @(x)[(1+x(2)^2)*x(1)+x(3)^4];
cl = 8.24264068711929';
cu = 8.24264068711929';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','hs060');
opts.sense = 'min';
