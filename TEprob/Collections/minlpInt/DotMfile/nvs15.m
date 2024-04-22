% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:59
% Model: nvs15

% Objective
fun = @(x)2*x(1)^2-8*x(1)+2*x(2)^2-6*x(2)+x(3)^2-4*x(3)+2*x(1)*x(2)+2*x(1)*x(3)+9;

% Bounds
lb = [0,0,0]';
ub = [200,200,200]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-2*x(3)];
cl = -3';
cu = Inf';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'III';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','nvs15');
opts.sense = 'min';
