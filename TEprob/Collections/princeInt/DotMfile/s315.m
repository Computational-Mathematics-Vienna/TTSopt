% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:39
% Model: s315

% Objective
fun = @(x)-x(2);

% Bounds
lb = [-1,-1]';
ub = [1,1]';

% Constraints
nlcon = @(x)[x(1)-2*x(2);
             (-x(1)^2)-x(2)^2;
             x(1)^2+x(2)^2];
cl = [-1,-1,0]';
cu = [Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','s315');
opts.sense = 'min';
