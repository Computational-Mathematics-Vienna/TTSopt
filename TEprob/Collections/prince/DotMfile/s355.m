% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:42
% Model: s355

% Objective
fun = @(x)x(1)^2+x(2)^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,0.1,0.1,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-(-x(5)*x(8)-x(6)*x(8)+x(7)*x(8))+x(1);
             -(x(6)*x(8)*(x(7)-x(5))+x(5)+10*x(6)-x(7)+x(8))+x(2);
             -(-4*x(5)*x(8)-4*x(6)*x(8)+x(7)*x(8))+x(3);
             -(2*x(6)*x(8)*(x(7)-4*x(5))+2*x(5)+20*x(6)-0.5*x(7)+2*x(8))+x(4);
             x(1)^2+x(2)^2-x(3)^2-x(4)^2];
cl = [11,0,11,0,0]';
cu = [11,0,11,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,0.1,0.1,NaN,NaN]';

% Options
opts = struct('probname','s355');
opts.sense = 'min';