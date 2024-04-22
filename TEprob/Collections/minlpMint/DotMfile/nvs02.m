% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:58
% Model: nvs02

% Objective
fun = @(x)9.99999999999999e-5*(5.3578547*x(3)^2+0.8356891*x(1)*x(5)+37.293239*x(1))+5.9207859;

% Bounds
lb = [0,0,0,0,0,0,90,20]';
ub = [200,200,200,200,200,92,110,25]';

% Constraints
nlcon = @(x)[-(0.0056858*x(2)*x(5)+0.0006262*x(1)*x(4)-0.0022053*x(3)*x(5))+x(6);
             -(0.0071317*x(2)*x(5)+0.0029955*x(1)*x(2)+0.0021813*x(3)^2)+x(7);
             -(0.0047026*x(3)*x(5)+0.0012547*x(1)*x(3)+0.0019085*x(3)*x(4))+x(8)];
cl = [85.334407,80.51249,9.300961]';
cu = [85.334407,80.51249,9.300961]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIICCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,90,20]';

% Options
opts = struct('probname','nvs02');
opts.sense = 'min';
