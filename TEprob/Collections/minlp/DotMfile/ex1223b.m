% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:29
% Model: ex1223b

% Objective
fun = @(x)(-1+x(4))^2+(-2+x(5))^2+(-1+x(6))^2-log(1+x(7))+(-1+x(1))^2+(-2+x(2))^2+(-3+x(3))^2;

% Bounds
lb = [0,0,0,-Inf,-Inf,-Inf,-Inf]';
ub = [10,10,10,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)+x(4)+x(5)+x(6);
             x(6)^2+x(1)^2+x(2)^2+x(3)^2;
             x(1)+x(4);
             x(2)+x(5);
             x(3)+x(6);
             x(1)+x(7);
             x(5)^2+x(2)^2;
             x(6)^2+x(3)^2;
             x(5)^2+x(3)^2];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [5,5.5,1.2,1.8,2.5,1.2,1.64,4.25,4.64]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1223b');
opts.sense = 'min';
