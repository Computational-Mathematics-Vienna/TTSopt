% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:47:06
% Model: hs35mod

% Objective
fun = @(x)2*x(1)^2-8*x(1)+2*x(2)^2-6*x(2)+x(3)^2-4*x(3)+2*x(1)*x(2)+2*x(1)*x(3)+9;

% Bounds
lb = [0,0.5,0]';
ub = [Inf,0.5,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-2*x(3)];
cl = -3';
cu = Inf';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,0.5,NaN]';

% Options
opts = struct('probname','hs35mod');
opts.sense = 'min';