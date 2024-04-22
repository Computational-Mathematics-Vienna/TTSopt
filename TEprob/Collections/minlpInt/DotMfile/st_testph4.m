% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:05
% Model: st_testph4

% Objective
fun = @(x)3.5*x(1)*x(1)-35*x(1)+0.5*x(2)*x(2)+3*x(2)+2*x(3)*x(3)+4*x(3);

% Bounds
lb = [0,0,0]';
ub = [100,100,100]';

% Constraints
nlcon = @(x)[x(1);
             x(2);
             x(3);
             2*x(1)+3*x(2)+4*x(3);
             2*x(1)+3*x(2)-4*x(3);
             2*x(1)-3*x(2)+4*x(3);
             -2*x(1)+3*x(2)+4*x(3);
             2*x(1)-3*x(2)-4*x(3);
             -2*x(1)-3*x(2)+4*x(3);
             -2*x(1)+3*x(2)-4*x(3)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [4,4,4,35,19,23,27,7,15,11]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'III';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','st_testph4');
opts.sense = 'min';
