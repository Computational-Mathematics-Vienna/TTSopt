% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:30
% Model: ex1226

% Objective
fun = @(x)-5*x(1)+3*x(2);

% Bounds
lb = [1,1,-Inf,-Inf,-Inf]';
ub = [10,6,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[8*x(1)-2*x(1)^0.5*x(2)^2+11*x(2)+2*x(2)^2-2*x(2)^0.5;
             x(1)-x(2);
             3*x(1)+2*x(2);
             x(2)-x(3)-2*x(4)-4*x(5);
             x(4)+x(5)];
cl = [-Inf,-Inf,-Inf,1,-Inf]';
cu = [39,3,24,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCBBB';

% Starting Guess
x0 = [1,1,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1226');
opts.sense = 'min';
