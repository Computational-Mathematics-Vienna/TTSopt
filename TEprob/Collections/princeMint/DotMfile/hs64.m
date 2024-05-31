% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:47:06
% Model: hs64

% Objective
fun = @(x)50000/x(1)+5*x(1)+72000/x(2)+20*x(2)+144000/x(3)+10*x(3);

% Bounds
lb = [1e-05,1e-05,1e-05]';
ub = [Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-(4/x(1)+32/x(2)+120/x(3))];
cl = -1';
cu = Inf';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [1e-05,1e-05,1e-05]';

% Options
opts = struct('probname','hs64');
opts.sense = 'min';