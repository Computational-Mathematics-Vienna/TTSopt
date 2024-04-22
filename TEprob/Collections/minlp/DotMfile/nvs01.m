% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:58
% Model: nvs01

% Objective
fun = @(x)0.04712385*(900+x(1)^2)^0.5*x(2);

% Bounds
lb = [0,0,0]';
ub = [200,200,100]';

% Constraints
nlcon = @(x)[420.169404664517*(900+x(1)^2)^0.5-x(3)*x(1)*x(2);
             -x(3);
             (2960.87631843+18505.4769901875*x(2)^2)/(7200+x(1)^2)-x(3)];
cl = [0,-100,0]';
cu = [0,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','nvs01');
opts.sense = 'min';
