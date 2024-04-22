% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:53
% Model: ex4_1_3

% Objective
fun = @(x)8.9248e-5*x(1)-0.0218343*x(1)^2+0.998266*x(1)^3-1.6995*x(1)^4+0.2*x(1)^5;

% Bounds
lb = 0';
ub = 10';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'C';

% Starting Guess
x0 = 6.325';

% Options
opts = struct('probname','ex4_1_3');
opts.sense = 'min';