% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:03
% Model: st_test4

% Objective
fun = @(x)0.5*x(1)*x(1)+6.5*x(1)+7*x(6)*x(6)-x(6)-x(2)-2*x(3)+3*x(4)-2*x(5);

% Bounds
lb = [0,0,0,0,0,0]';
ub = [1e+15,1e+15,1e+15,1,1,2]';

% Constraints
nlcon = @(x)[x(1)+2*x(2)+8*x(3)+x(4)+3*x(5)+5*x(6);
             -8*x(1)-4*x(2)-2*x(3)+2*x(4)+4*x(5)-x(6);
             2*x(1)+0.5*x(2)+0.2*x(3)-3*x(4)-x(5)-4*x(6);
             0.2*x(1)+2*x(2)+0.1*x(3)-4*x(4)+2*x(5)+2*x(6);
             -0.1*x(1)-0.5*x(2)+2*x(3)+5*x(4)-5*x(5)+3*x(6)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [16,-1,24,12,3]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_test4');
opts.sense = 'min';
