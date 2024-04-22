% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:54
% Model: ex5_2_4

% Objective
fun = @(x)-((9-6*x(1)-16*x(2)-15*x(3))*x(4)+(15-6*x(1)-16*x(2)-15*x(3))*x(5))+x(6)-5*x(7);

% Bounds
lb = [0,0,0,0,0,0,0]';
ub = [1,1,1,100,200,100,200]';

% Constraints
nlcon = @(x)[x(3)*x(4)+x(3)*x(5);
             x(4)+x(6);
             x(5)+x(7);
             (-2.5+3*x(1)+x(2)+x(3))*x(4)-0.5*x(6);
             (-1.5+3*x(1)+x(2)+x(3))*x(5)+0.5*x(7);
             x(1)+x(2)+x(3)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,1]';
cu = [50,100,200,0,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex5_2_4');
opts.sense = 'min';