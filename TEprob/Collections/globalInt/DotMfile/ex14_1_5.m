% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:51
% Model: ex14_1_5

% Objective
fun = @(x)x(6);

% Bounds
lb = [-2,-2,-2,-2,-2,-Inf]';
ub = [2,2,2,2,2,Inf]';

% Constraints
nlcon = @(x)[2*x(1)+x(2)+x(3)+x(4)+x(5);
             x(1)+2*x(2)+x(3)+x(4)+x(5);
             x(1)+x(2)+2*x(3)+x(4)+x(5);
             x(1)+x(2)+x(3)+2*x(4)+x(5);
             x(1)*x(2)*x(3)*x(4)*x(5)-x(6);
             -x(1)*x(2)*x(3)*x(4)*x(5)-x(6)];
cl = [6,6,6,6,-Inf,-Inf]';
cu = [6,6,6,6,1,-1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex14_1_5');
opts.sense = 'min';