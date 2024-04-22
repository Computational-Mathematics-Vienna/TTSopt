% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:44:00
% Model: nvs21

% Objective
fun = @(x)-0.00201*x(1)^4*x(2)*x(3)^2;

% Bounds
lb = [0,0,0]';
ub = [200,200,0.2]';

% Constraints
nlcon = @(x)[-x(1)^2*x(2);
             -0.1*x(1)^2*x(3)^2];
cl = [-675,-0.419]';
cu = [Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','nvs21');
opts.sense = 'min';
