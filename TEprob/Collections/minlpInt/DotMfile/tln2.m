% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:03:38
% Model: tln2

% Objective
fun = @(x)0.1*x(1)+0.2*x(2)+x(3)+x(4);

% Bounds
lb = [-Inf,-Inf,0,0,0,0,0,0]';
ub = [Inf,Inf,15,15,5,5,5,5]';

% Constraints
nlcon = @(x)[460*x(5)+570*x(7);
             460*x(6)+570*x(8);
             -460*x(5)-570*x(7);
             -460*x(6)-570*x(8);
             x(5)+x(7);
             x(6)+x(8);
             x(1)-x(3);
             x(2)-x(4);
             -15*x(1)+x(3);
             -15*x(2)+x(4);
             -(x(3)*x(5)+x(4)*x(6));
             -(x(3)*x(7)+x(4)*x(8))];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1900,1900,-1700,-1700,5,5,0,0,0,0,-8,-7]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBIIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','tln2');
opts.sense = 'min';
