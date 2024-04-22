% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:00:58
% Model: st_e13

% Objective
fun = @(x)x(1)+2*x(2);

% Bounds
lb = [-Inf,0]';
ub = [Inf,1.6]';

% Constraints
nlcon = @(x)[-x(2)^2-x(1);
             x(1)+x(2)];
cl = [-Inf,-Inf]';
cu = [-1.25,1.6]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','st_e13');
opts.sense = 'min';
