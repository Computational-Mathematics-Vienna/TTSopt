% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:59
% Model: nvs10

% Objective
fun = @(x)7*x(1)^2+6*x(2)^2-35*x(1)-80.4*x(2);

% Bounds
lb = [0,0]';
ub = [200,200]';

% Constraints
nlcon = @(x)[(-9*x(1)^2)-10*x(1)*x(2)-8*x(2)^2;
             (-6*x(1)^2)-8*x(1)*x(2)-6*x(2)^2];
cl = [-583,-441]';
cu = [Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'II';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','nvs10');
opts.sense = 'min';
