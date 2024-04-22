% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:54
% Model: gear

% Objective
fun = @(x)(0.14427932477276-x(1)*x(2)/(x(3)*x(4)))^2;

% Bounds
lb = [12,12,12,12]';
ub = [60,60,60,60]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIII';

% Starting Guess
x0 = [12,12,12,12]';

% Options
opts = struct('probname','gear');
opts.sense = 'min';
