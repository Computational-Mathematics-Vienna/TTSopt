% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:45:15
% Model: prob03

% Objective
fun = @(x)3*x(1)+2*x(2);

% Bounds
lb = [1,1]';
ub = [5,5]';

% Constraints
nlcon = @(x)[-x(1)*x(2)];
cl = -Inf';
cu = -3.5';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'II';

% Starting Guess
x0 = [1,1]';

% Options
opts = struct('probname','prob03');
opts.sense = 'min';
