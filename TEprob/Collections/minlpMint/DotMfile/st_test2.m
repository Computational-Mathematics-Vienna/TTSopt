% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:03
% Model: st_test2

% Objective
fun = @(x)0.5*x(1)*x(1)+10.5*x(1)+0.25*x(2)*x(2)-7.5*x(2)+1.5*x(3)*x(3)-3.5*x(3)+0.5*x(4)*x(4)+2.5*x(4)+0.5*x(5)*x(5)-1.5*x(5)+10*x(6);

% Bounds
lb = [0,0,0,0,0,0]';
ub = [1,1,1,1,1,1e+15]';

% Constraints
nlcon = @(x)[6*x(1)+3*x(2)+3*x(3)+2*x(4)+x(5);
             10*x(1)+10*x(3)+x(6)];
cl = [-Inf,-Inf]';
cu = [6.5,20]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_test2');
opts.sense = 'min';
