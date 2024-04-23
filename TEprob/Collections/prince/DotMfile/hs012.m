% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:39
% Model: hs012

% Objective
fun = @(x)0.5*x(1)^2+x(2)^2-x(1)*x(2)-7*x(1)-7*x(2);

% Bounds
lb = [-Inf,-Inf]';
ub = [Inf,Inf]';

% Constraints
nlcon = @(x)[-(4*x(1)^2+x(2)^2)];
cl = -25';
cu = Inf';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','hs012');
opts.sense = 'min';
