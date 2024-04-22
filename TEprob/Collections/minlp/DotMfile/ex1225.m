% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:29
% Model: ex1225

% Objective
fun = @(x)7*x(1)+10*x(2);

% Bounds
lb = [1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [5,5,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)^1.2*x(2)^1.7-7*x(1)-9*x(2);
             -x(1)-2*x(2);
             -3*x(1)+x(2);
             4*x(1)-3*x(2);
             x(1)-x(3)-2*x(4)-4*x(5);
             x(2)-x(6)-2*x(7)-4*x(8);
             x(3)+x(5);
             x(6)+x(8);
             x(4)+x(5);
             x(7)+x(8)];
cl = [-Inf,-Inf,-Inf,-Inf,1,1,-Inf,-Inf,-Inf,-Inf]';
cu = [-24,-5,1,11,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCBBBBBB';

% Starting Guess
x0 = [1,1,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1225');
opts.sense = 'min';
