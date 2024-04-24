% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:35
% Model: s230

% Objective
fun = @(x)x(2);

% Bounds
lb = [-Inf,-Inf]';
ub = [Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)^3-2*x(1)^2+x(2);
             (1-x(1))^3-2*(1-x(1))^2+x(2)];
cl = [0,0]';
cu = [Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','s230');
opts.sense = 'min';