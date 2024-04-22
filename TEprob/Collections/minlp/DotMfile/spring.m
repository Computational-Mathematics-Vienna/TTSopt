% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:00:58
% Model: spring

% Objective
fun = @(x)(1.570796327+0.7853981635*x(4))*x(1)*x(2)^2;

% Bounds
lb = [0.414,0.207,0.00178571428571429,1,1.1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,0.02,100,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)/x(2)+x(5);
             -((-1+4*x(5))/(-4+4*x(5))+0.615/x(5))+x(6);
             2546.47908913782*x(6)*x(5)/x(2)^2;
             -6.95652173913044e-7*x(5)^3*x(4)/x(2)+x(3);
             (2.1+1.05*x(4))*x(2)+1000*x(3);
             x(1)+x(2);
             x(2)-0.207*x(7)-0.225*x(8)-0.244*x(9)-0.263*x(10)-0.283*x(11)-0.307*x(12)-0.331*x(13)-0.362*x(14)-0.394*x(15)-0.4375*x(16)-0.5*x(17);
             x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)];
cl = [0,0,-Inf,0,-Inf,-Inf,0,1]';
cu = [0,0,189000,0,14,3,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCICCBBBBBBBBBBB';

% Starting Guess
x0 = [0.414,0.207,0.00178571428571429,1,1.1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','spring');
opts.sense = 'min';
