% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 04:56:55
% Model: maratos

% Objective
fun = @(x)1e-6*(x(1)^2+x(2)^2)-x(1)-1e-6;

% Bounds
lb = [-Inf,-Inf]';
ub = [Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)^2+x(2)^2];
cl = 1';
cu = 1';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','maratos');
opts.sense = 'min';