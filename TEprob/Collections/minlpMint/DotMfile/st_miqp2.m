% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:02
% Model: st_miqp2

% Objective
fun = @(x)4*x(3)*x(3)-3*x(3)+2*x(4)*x(4)-10*x(4)+4*x(1)+5*x(2);

% Bounds
lb = [0,0,0,0]';
ub = [1,1,10000000000,10000000000]';

% Constraints
nlcon = @(x)[-10*x(1)+x(3);
             -20*x(2)+x(4);
             x(3)+x(4)];
cl = [-Inf,-Inf,5]';
cu = [0,0,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_miqp2');
opts.sense = 'min';
