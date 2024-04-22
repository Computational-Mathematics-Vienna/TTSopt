% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 13-May-2015 16:53:37
% Model: inf_lp_20

% Objective
fun = @(x)x(1);

% Bounds
lb = [-1000,-100,-100]';
ub = [1000,100,100]';

% Constraints
nlcon = @(x)[x(1)-2*x(2)+x(3);
             -10*x(2)+4*x(3);
             x(2)+3*x(3);
             x(2);
             x(3)];
cl = [0,-Inf,-Inf,-Inf,1]';
cu = [0,-5,9,0,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_lp_20');
opts.sense = 'min';
