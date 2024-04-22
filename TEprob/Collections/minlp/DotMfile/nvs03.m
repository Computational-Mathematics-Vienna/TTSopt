% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:58
% Model: nvs03

% Objective
fun = @(x)(-8+x(1))^2+(-2+x(2))^2;

% Bounds
lb = [0,0]';
ub = [200,200]';

% Constraints
nlcon = @(x)[-0.1*x(1)^2+x(2);
             -0.333333333333333*x(1)-x(2)];
cl = [0,-4.5]';
cu = [Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'II';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','nvs03');
opts.sense = 'min';
