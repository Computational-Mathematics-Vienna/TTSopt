% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:35
% Model: s241

% Objective
fun = @(x)x(4)^2+x(5)^2+x(6)^2+x(7)^2+x(8)^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-(x(1)^2+x(2)^2+x(3)^2)+x(4);
             -(x(1)^2+x(2)^2+(-2+x(3))^2)+x(5);
             -x(1)-x(2)-x(3)+x(6);
             -x(1)-x(2)+x(3)+x(7);
             -(x(1)^3+3*x(2)^2+(1-x(1)+5*x(3))^2)+x(8)];
cl = [-1,-1,-1,1,-36]';
cu = [-1,-1,-1,1,-36]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','s241');
opts.sense = 'min';