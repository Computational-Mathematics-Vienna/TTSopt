% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 14:33:20
% Model: polak1

% Objective
fun = @(x)x(3);

% Bounds
lb = [-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[exp(0.001*x(1)^2+(-1+x(2))^2)-x(3);
             exp(0.001*x(1)^2+(1+x(2))^2)-x(3)];
cl = [-Inf,-Inf]';
cu = [0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [50,0.05,NaN]';

% Options
opts = struct('probname','polak1');
opts.sense = 'min';
