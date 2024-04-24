% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 01-Feb-2014 23:50:34
% Model: zecevic4

% Objective
fun = @(x)6*x(1)^2+x(2)^2-60*x(1)-8*x(2)+166;

% Bounds
lb = [0,0]';
ub = [10,10]';

% Constraints
nlcon = @(x)[x(1)*x(2)-x(1)-x(2);
             -x(1)-x(2)];
cl = [-Inf,-Inf]';
cu = [0,-3]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [0.1,NaN]';

% Options
opts = struct('probname','zecevic4');
opts.sense = 'min';