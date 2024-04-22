% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:58
% Model: nvs04

% Objective
fun = @(x)100*(0.5-(0.6+x(1))^2+x(2))^2+(0.4-x(1))^2;

% Bounds
lb = [0,0]';
ub = [200,200]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'II';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','nvs04');
opts.sense = 'min';
