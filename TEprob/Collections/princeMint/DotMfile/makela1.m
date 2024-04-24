% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 04:56:54
% Model: makela1

% Objective
fun = @(x)x(1);

% Bounds
lb = [-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-x(3);
             x(2)^2-x(2)+x(3)^2-x(3)-x(1)];
cl = [-Inf,-Inf]';
cu = [0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','makela1');
opts.sense = 'min';
