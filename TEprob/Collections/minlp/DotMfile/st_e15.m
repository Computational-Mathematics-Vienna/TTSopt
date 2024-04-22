% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:00:59
% Model: st_e15

% Objective
fun = @(x)2*x(1)+3*x(2)+1.5*x(3)+2*x(4)-0.5*x(5);

% Bounds
lb = [0,0,-Inf,-Inf,-Inf]';
ub = [10,10,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)^2+x(3);
             x(2)^1.5+1.5*x(4);
             x(1)+x(3);
             1.333*x(2)+x(4);
             -x(3)-x(4)+x(5)];
cl = [1.25,3,-Inf,-Inf,-Inf]';
cu = [1.25,3,1.6,3,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_e15');
opts.sense = 'min';
