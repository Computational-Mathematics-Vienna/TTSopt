% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:13:23
% Model: alan

% Objective
fun = @(x)x(1)*(4*x(1)+3*x(2)-x(3))+x(2)*(3*x(1)+6*x(2)+x(3))+x(3)*(x(2)-x(1)+10*x(3));

% Bounds
lb = [0,0,0,0,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)+x(4);
             8*x(1)+9*x(2)+12*x(3)+7*x(4);
             x(1)-x(5);
             x(2)-x(6);
             x(3)-x(7);
             x(4)-x(8);
             x(5)+x(6)+x(7)+x(8)];
cl = [1,10,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1,10,0,0,0,0,3]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','alan');
opts.sense = 'min';
