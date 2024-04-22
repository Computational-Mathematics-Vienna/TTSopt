% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:59
% Model: nvs09

% Objective
fun = @(x)log((-2)+x(1))^2+log(10-x(1))^2+log((-2)+x(2))^2+log(10-x(2))^2+log((-2)+x(3))^2+log(10-x(3))^2+log((-2)+x(4))^2+log(10-x(4))^2+log((-2)+x(5))^2+log(10-x(5))^2+log((-2)+x(6))^2+log(10-x(6))^2+log((-2)+x(7))^2+log(10-x(7))^2+log((-2)+x(8))^2+log(10-x(8))^2+log((-2)+x(9))^2+log(10-x(9))^2+log((-2)+x(10))^2+log(10-x(10))^2-(x(1)*x(2)*x(3)*x(4)*x(5)*x(6)*x(7)*x(8)*x(9)*x(10))^0.2;

% Bounds
lb = [3,3,3,3,3,3,3,3,3,3]';
ub = [9,9,9,9,9,9,9,9,9,9]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIIIIIII';

% Starting Guess
x0 = [3,3,3,3,3,3,3,3,3,3]';

% Options
opts = struct('probname','nvs09');
opts.sense = 'min';
