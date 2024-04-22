% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:59
% Model: nvs16

% Objective
fun = @(x)(1.5-x(1)*(1-x(2)))^2+(2.25-(1-x(2)^2)*x(1))^2+(2.625-(1-x(2)^3)*x(1))^2;

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
opts = struct('probname','nvs16');
opts.sense = 'min';
