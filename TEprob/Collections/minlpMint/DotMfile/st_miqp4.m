% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:03
% Model: st_miqp4

% Objective
fun = @(x)5*x(4)*x(4)+2*x(4)+5*x(5)*x(5)+3*x(5)+10*x(6)*x(6)-500*x(6)+10*x(1)-4*x(2)+5*x(3);

% Bounds
lb = [0,0,0,0,0,0]';
ub = [1,1,1,1e+15,1e+15,1e+15]';

% Constraints
nlcon = @(x)[x(4)+x(5)-x(6);
             -5*x(1)+x(4);
             -10*x(2)+x(5);
             -30*x(3)+x(6)];
cl = [0,-Inf,-Inf,-Inf]';
cu = [Inf,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIICCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_miqp4');
opts.sense = 'min';
