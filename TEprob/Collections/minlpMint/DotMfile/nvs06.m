% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:58
% Model: nvs06

% Objective
fun = @(x)0.1*(x(1)^2+(1+x(2)^2)/x(1)^2+(100+x(1)^2*x(2)^2)/(x(1)*x(2))^4)+1.2;

% Bounds
lb = [1,1]';
ub = [200,200]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'II';

% Starting Guess
x0 = [1,1]';

% Options
opts = struct('probname','nvs06');
opts.sense = 'min';
