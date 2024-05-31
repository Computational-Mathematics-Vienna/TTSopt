% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 14:44:49
% Model: powellbs

% Objective
fun = @(x)-0;

% Bounds
lb = [-Inf,-Inf]';
ub = [Inf,Inf]';

% Constraints
nlcon = @(x)[10000*x(1)*x(2);
             exp(-x(1))+exp(-x(2))];
cl = [1,1.0001]';
cu = [1,1.0001]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,1]';

% Options
opts = struct('probname','powellbs');
opts.sense = 'min';