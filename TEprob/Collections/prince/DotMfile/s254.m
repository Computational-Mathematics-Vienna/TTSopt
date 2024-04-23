% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:36
% Model: s254

% Objective
fun = @(x)log(x(3))-x(2);

% Bounds
lb = [-Inf,-Inf,0.0001]';
ub = [Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(2)^2+x(3)^2;
             -x(1)^2+x(3)];
cl = [4,1]';
cu = [4,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,0.0001]';

% Options
opts = struct('probname','s254');
opts.sense = 'min';
