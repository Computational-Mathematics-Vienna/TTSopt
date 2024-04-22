% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:45:15
% Model: procsel

% Objective
fun = @(x)1.8*x(1)+1.8*x(2)+x(3)+1.2*x(4)+7*x(5)-11*x(7)+3.5*x(8)+x(9)+1.5*x(10);

% Bounds
lb = [0,0,0,0,0,0,0,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,1,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-0.9*x(6)+x(7);
             exp(x(3))-x(1);
             exp(0.833333333333333*x(4))-x(2);
             -x(3)-x(4)-x(5)+x(6);
             x(7)-2*x(8);
             x(3)-4*x(9);
             x(4)-5*x(10)];
cl = [0,1,1,0,-Inf,-Inf,-Inf]';
cu = [0,1,1,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','procsel');
opts.sense = 'min';
