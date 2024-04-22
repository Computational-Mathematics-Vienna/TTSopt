% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:54
% Model: gear3

% Objective
fun = @(x)(0.14427932477276-x(1)*x(2)/(x(3)*x(4)))^2;

% Bounds
lb = [12,12,12,12,12,12,12,12]';
ub = [60,60,60,60,60,60,60,60]';

% Constraints
nlcon = @(x)[x(1)-x(5);
             x(2)-x(6);
             x(3)-x(7);
             x(4)-x(8)];
cl = [0,0,0,0]';
cu = [0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCIIII';

% Starting Guess
x0 = [12,12,12,12,12,12,12,12]';

% Options
opts = struct('probname','gear3');
opts.sense = 'min';
