% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:42
% Model: hs054

% Objective
fun = @(x)1.04166666666667*(x(1)^2+0.4*x(1)*x(2)+x(2)^2)+x(3)^2+x(4)^2+x(5)^2+x(6)^2;

% Bounds
lb = [-1.25,-11,-0.285714285714286,-0.2,-20.02,-0.2]';
ub = [1.25,9,1.14285714285714,0.2,19.98,0.2]';

% Constraints
nlcon = @(x)[x(1)+0.5*x(2);
             x(1)+0.5*x(2);
             x(1)+0.5*x(2);
             x(1)+0.5*x(2);
             x(1)+0.5*x(2);
             x(1)+0.5*x(2)];
cl = [0.45,0.45,0.45,0.45,0.45,0.45]';
cu = [0.45,0.45,0.45,0.45,0.45,0.45]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs054');
opts.sense = 'min';