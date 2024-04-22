% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:58
% Model: nvs07

% Objective
fun = @(x)2*x(2)^2+x(1)+5*x(3);

% Bounds
lb = [0,0,0]';
ub = [200,200,200]';

% Constraints
nlcon = @(x)[x(3)^2*x(2)+5*x(3)+3*x(1);
             x(1)-x(3)];
cl = [10,2.66]';
cu = [Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'III';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','nvs07');
opts.sense = 'min';
