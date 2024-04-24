% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 18:26:02
% Model: bqp1var

% Objective
fun = @(x)x(1)^2+x(1);

% Bounds
lb = 0';
ub = 0.5';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'C';

% Starting Guess
x0 = NaN';

% Options
opts = struct('probname','bqp1var');
opts.sense = 'min';
