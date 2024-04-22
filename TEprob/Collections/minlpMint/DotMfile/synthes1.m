% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:03:36
% Model: synthes1

% Objective
fun = @(x)(-18*log(1+x(2)))-19.2*log(1+x(1)-x(2))+10*x(1)-7*x(3)+5*x(4)+6*x(5)+8*x(6)+10;

% Bounds
lb = [0,0,0,-Inf,-Inf,-Inf]';
ub = [2,2,1,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[0.8*log(1+x(2))+0.96*log(1+x(1)-x(2))-0.8*x(3);
             log(1+x(2))+1.2*log(1+x(1)-x(2))-x(3)-2*x(6);
             -x(1)+x(2);
             x(2)-2*x(4);
             x(1)-x(2)-2*x(5);
             x(4)+x(5)];
cl = [0,-2,-Inf,-Inf,-Inf,-Inf]';
cu = [Inf,Inf,0,0,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','synthes1');
opts.sense = 'min';
