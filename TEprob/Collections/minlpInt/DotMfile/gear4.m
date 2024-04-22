% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:54
% Model: gear4

% Objective
fun = @(x)x(5)+x(6);

% Bounds
lb = [12,12,12,12,0,0]';
ub = [60,60,60,60,Inf,Inf]';

% Constraints
nlcon = @(x)[-1000000*x(1)*x(2)/(x(3)*x(4))-x(5)+x(6)];
cl = -144279.32477276';
cu = -144279.32477276';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIICC';

% Starting Guess
x0 = [12,12,12,12,NaN,NaN]';

% Options
opts = struct('probname','gear4');
opts.sense = 'min';
