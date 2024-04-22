% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:29
% Model: ex1222

% Objective
fun = @(x)5*(-0.5+x(1))^2-0.7*x(3)+0.8;

% Bounds
lb = [0.2,-2.22554,-Inf]';
ub = [1,-1,Inf]';

% Constraints
nlcon = @(x)[-exp((-0.2)+x(1))-x(2);
             x(2)+1.1*x(3);
             x(1)-1.2*x(3)];
cl = [-Inf,-Inf,-Inf]';
cu = [0,-1,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCB';

% Starting Guess
x0 = [0.2,-1,NaN]';

% Options
opts = struct('probname','ex1222');
opts.sense = 'min';
