% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:40:54
% Model: mifflin2

% Objective
fun = @(x)x(3);

% Bounds
lb = [-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[3.75*(x(1)^2+x(2)^2)-x(1)-x(3);
             0.25*(x(1)^2+x(2)^2)-x(1)-x(3)];
cl = [-Inf,-Inf]';
cu = [3.75,0.25]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [-1,-1,NaN]';

% Options
opts = struct('probname','mifflin2');
opts.sense = 'min';