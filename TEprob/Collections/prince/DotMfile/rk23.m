% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 15:19:30
% Model: rk23

% Objective
fun = @(x)x(12)+x(13)+x(14)+x(15)+x(16)+x(17);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)+x(2);
             -x(3)+x(4)+x(5);
             x(6)+x(7)+x(8);
             x(9)+x(10)+x(11);
             x(7)*x(1)+x(8)*x(3);
             x(10)*x(1)+x(11)*x(3);
             x(10)*x(1)*x(1)+x(11)*x(3)*x(3);
             x(11)*x(5)*x(1);
             4*x(10)*x(1)*x(1)*x(1)+4*x(11)*x(3)*x(3)*x(3)+x(12)-x(15);
             8*x(11)*x(3)*x(5)*x(1)+x(14)-x(15);
             12*x(11)*x(5)*x(1)*x(1)+x(16)-x(17)];
cl = [0,0,1,1,0.5,0.5,0.333333333333333,0.166666666666667,1,1,1]';
cu = [0,0,1,1,0.5,0.5,0.333333333333333,0.166666666666667,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [1,1,0.5,0.25,0.25,0.5,0.5,NaN,0.166666666666667,0.166666666666667,0.666666666666667,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','rk23');
opts.sense = 'min';