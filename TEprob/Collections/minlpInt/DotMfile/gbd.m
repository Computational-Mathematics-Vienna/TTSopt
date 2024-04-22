% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:54
% Model: gbd

% Objective
fun = @(x)5*x(1)^2+x(2)+x(3)+x(4);

% Bounds
lb = [0.2,-Inf,-Inf,-Inf]';
ub = [1,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[3*x(1)-x(2)-x(3);
             -x(1)+0.1*x(3)+0.25*x(4);
             x(2)+x(3)+x(4);
             x(2)+x(3)+2*x(4)];
cl = [-Inf,-Inf,2,2]';
cu = [0,0,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CBBB';

% Starting Guess
x0 = [0.2,NaN,NaN,NaN]';

% Options
opts = struct('probname','gbd');
opts.sense = 'min';
