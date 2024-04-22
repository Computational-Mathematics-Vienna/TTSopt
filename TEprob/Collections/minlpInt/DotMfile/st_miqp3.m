% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:03
% Model: st_miqp3

% Objective
fun = @(x)6*x(1)*x(1)-3*x(2);

% Bounds
lb = [0,0]';
ub = [3,1e+15]';

% Constraints
nlcon = @(x)[-4*x(1)+x(2)];
cl = -Inf';
cu = 0';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'II';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','st_miqp3');
opts.sense = 'min';
