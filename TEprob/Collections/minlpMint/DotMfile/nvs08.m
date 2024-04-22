% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:59
% Model: nvs08

% Objective
fun = @(x)(-3+x(1))^2+(-2+x(2))^2+(4+x(3))^2;

% Bounds
lb = [0,0,0.001]';
ub = [200,200,200]';

% Constraints
nlcon = @(x)[x(3)^0.5+x(1)+2*x(2);
             0.240038406144983*x(1)^2-x(2)+0.255036980362153*x(3);
             x(2)^2-1/(x(3)^3*x(3)^0.5)-4*x(1)];
cl = [10,-3,-12]';
cu = [Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIC';

% Starting Guess
x0 = [NaN,NaN,0.001]';

% Options
opts = struct('probname','nvs08');
opts.sense = 'min';
