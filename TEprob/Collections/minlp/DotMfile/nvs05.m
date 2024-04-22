% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:58
% Model: nvs05

% Objective
fun = @(x)1.10471*x(3)^2*x(4)+0.04811*x(1)*x(2)*(14+x(4));

% Bounds
lb = [1,1,0.01,0.01,-Inf,-Inf,-Inf,-Inf]';
ub = [200,200,200,200,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-4243.28147100424/(x(3)*x(4))+x(5);
             -(0.25*x(4)^2+(0.5*x(1)+0.5*x(3))^2)^0.5+x(7);
             -(59405.9405940594+2121.64073550212*x(4))*x(7)/(x(3)*x(4)*(0.0833333333333333*x(4)^2+(0.5*x(1)+0.5*x(3))^2))+x(6);
             -0.5*x(4)/x(7)+x(8);
             -(x(5)^2+2*x(5)*x(6)*x(8)+x(6)^2)^0.5;
             -504000/(x(1)^2*x(2));
             x(2)-x(3);
             0.0204744897959184*(1e15*x(2)^3*x(1)*x(1)*x(2)^3)^0.5*(1-0.0282346219657891*x(1));
             -0.21952/(x(1)^3*x(2))];
cl = [0,0,0,0,-13600,-30000,0,6000,-0.25]';
cu = [0,0,0,0,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IICCCCCC';

% Starting Guess
x0 = [1,1,1,1,1,1,2,1]';

% Options
opts = struct('probname','nvs05');
opts.sense = 'min';
