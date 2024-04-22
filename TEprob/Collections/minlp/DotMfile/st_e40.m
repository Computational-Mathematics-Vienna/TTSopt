% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:02
% Model: st_e40

% Objective
fun = @(x)2*x(1)+x(2)+1.4142135*x(3);

% Bounds
lb = [1,1,1,-Inf]';
ub = [12,12,12,Inf]';

% Constraints
nlcon = @(x)[(-0.15*x(1)*x(2))-0.14142135*x(2)*x(3)-0.1319*x(1)*x(3)+x(4);
             1.7317*x(2)+1.03366*x(3)-x(4);
             0.634*x(1)+2.828*x(3)-x(4);
             0.5*x(1)-2*x(2)-x(4);
             -0.5*x(1)+2*x(2)-x(4);
             (-1+x(1))*(-2+x(1))*(-3+x(1))*(-5+x(1))*(-8+x(1))*(-10+x(1))*(-12+x(1));
             (-1+x(2))*(-2+x(2))*(-3+x(2))*(-5+x(2))*(-8+x(2))*(-10+x(2))*(-12+x(2));
             (-1+x(3))*(-2+x(3))*(-3+x(3))*(-5+x(3))*(-8+x(3))*(-10+x(3))*(-12+x(3))];
cl = [0,-Inf,-Inf,-Inf,-Inf,0,0,0]';
cu = [0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIC';

% Starting Guess
x0 = [1,1,1,NaN]';

% Options
opts = struct('probname','st_e40');
opts.sense = 'min';
opts.brvarpr = [0.1         0.1         0.1         NaN]';
