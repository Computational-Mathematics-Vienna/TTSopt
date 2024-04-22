% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:54
% Model: gear2

% Objective
fun = @(x)(0.14427932477276-x(1)*x(2)/(x(3)*x(4)))^2;

% Bounds
lb = [12,12,12,12,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [60,60,60,60,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(5)-2*x(6)-4*x(7)-8*x(8)-16*x(9)-32*x(10);
             x(2)-x(11)-2*x(12)-4*x(13)-8*x(14)-16*x(15)-32*x(16);
             x(3)-x(17)-2*x(18)-4*x(19)-8*x(20)-16*x(21)-32*x(22);
             x(4)-x(23)-2*x(24)-4*x(25)-8*x(26)-16*x(27)-32*x(28)];
cl = [0,0,0,0]';
cu = [0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [12,12,12,12,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','gear2');
opts.sense = 'min';
