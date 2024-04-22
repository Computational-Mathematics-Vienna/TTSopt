% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:02
% Model: st_e38

% Objective
fun = @(x)0.0389*x(1)*x(3)*x(4)+0.1111312*x(3)^2*x(2)+0.012348046875*x(1)^2*x(4)+0.0775*x(1)^2*x(3);

% Bounds
lb = [18,10,40,20]';
ub = [100,100,80,60]';

% Constraints
nlcon = @(x)[-0.0625*x(1)+0.0193*x(3);
             -0.0625*x(2)+0.00954*x(3);
             3.1415927*(x(3)^2*x(4)+1.33333333333333*x(3)^3)];
cl = [-Inf,-Inf,1296000]';
cu = [0,0,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IICC';

% Starting Guess
x0 = [18,10,40,20]';

% Options
opts = struct('probname','st_e38');
opts.sense = 'min';
