% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:59
% Model: nvs11

% Objective
fun = @(x)7*x(1)^2+6*x(2)^2-15.8*x(1)-93.2*x(2)+8*x(3)^2-6*x(3)*x(1)+4*x(3)*x(2)-63*x(3);

% Bounds
lb = [0,0,0]';
ub = [200,200,200]';

% Constraints
nlcon = @(x)[(-9*x(1)^2)-10*x(1)*x(2)-8*x(2)^2-5*x(3)^2-6*x(3)*x(1)-10*x(3)*x(2);
             (-6*x(1)^2)-8*x(1)*x(2)-6*x(2)^2-4*x(3)^2-2*x(3)*x(1)-2*x(3)*x(2);
             (-9*x(1)^2)-6*x(2)^2-8*x(3)^2+2*x(2)*x(1)+2*x(3)*x(2)];
cl = [-1000,-550,-340]';
cu = [Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'III';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','nvs11');
opts.sense = 'min';
