% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 14:33:58
% Model: ex9_2_2

% Objective
fun = @(x)x(1)*x(1)+(-10+x(2))*(-10+x(2));

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,20,20,20,20,20,20,20,20]';

% Constraints
nlcon = @(x)[x(1);
             -x(1)+x(2);
             -x(1);
             x(1)+x(2)+x(3);
             -x(2)+x(4);
             x(2)+x(5);
             x(3)*x(7);
             x(4)*x(8);
             x(5)*x(9);
             x(6)*x(10);
             2*x(1)+4*x(2)+x(7)-x(8)+x(9)];
cl = [-Inf,-Inf,-Inf,20,0,20,0,0,0,0,60]';
cu = [15,0,0,20,0,20,0,0,0,0,60]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex9_2_2');
opts.sense = 'min';