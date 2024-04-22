% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:02
% Model: st_e36

% Objective
fun = @(x)2*x(2)^2+0.008*x(1)^3-3.2*x(2)*x(1)-2*x(1);

% Bounds
lb = [15,3]';
ub = [25,5.5]';

% Constraints
nlcon = @(x)[(-11+x(2)^2-6*x(2)+0.8*x(1))*((3.25*x(2)-0.62*x(1))^2+(-6.35+0.2*x(1)+x(2))^2)*((3.55*x(2)-0.66*x(1))^2+(-6.85+0.2*x(1)+x(2))^2)*((3.6*x(2)-0.7*x(1))^2+(-7.1+0.2*x(1)+x(2))^2)*((3.8*x(2)-0.82*x(1))^2+(-7.9+0.2*x(1)+x(2))^2);
             0.6*x(1)-0.2*x(2)*x(1)+exp((-3)+x(2))];
cl = [0,-Inf]';
cu = [0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IC';

% Starting Guess
x0 = [15,3]';

% Options
opts = struct('probname','st_e36');
opts.sense = 'min';
