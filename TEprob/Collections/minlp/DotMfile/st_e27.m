% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:00:59
% Model: st_e27

% Objective
fun = @(x)4*x(3)-x(3)^2-x(4)^2+2*x(4)+2*x(1)+2*x(2)+2;

% Bounds
lb = [-Inf,-Inf,0,0]';
ub = [Inf,Inf,6,5]';

% Constraints
nlcon = @(x)[-x(3)+3*x(4);
             2*x(3)-x(4);
             -2*x(3)+x(4);
             x(3)-3*x(4);
             -6*x(1)+x(3);
             -5*x(2)+x(4)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [5,5,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_e27');
opts.sense = 'min';
