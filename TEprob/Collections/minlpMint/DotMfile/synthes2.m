% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:03:37
% Model: synthes2

% Objective
fun = @(x)exp(x(1))-10*x(1)+exp(0.833333*x(2))-15*x(2)-60*log(1+x(4)+x(5))+15*x(4)+5*x(5)-15*x(3)-20*x(6)+5*x(7)+8*x(8)+6*x(9)+10*x(10)+6*x(11)+140;

% Bounds
lb = [0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [2,2,2,Inf,Inf,3,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-log(1+x(4)+x(5));
             exp(x(1))-10*x(7);
             exp(0.833333*x(2))-10*x(8);
             1.25*x(3)-10*x(9);
             x(4)+x(5)-10*x(10);
             -2*x(3)+2*x(6)-10*x(11);
             -x(1)-x(2)-2*x(3)+x(4)+2*x(6);
             -x(1)-x(2)-0.75*x(3)+x(4)+2*x(6);
             x(3)-x(6);
             2*x(3)-x(4)-2*x(6);
             -0.5*x(4)+x(5);
             -0.2*x(4)-x(5);
             x(7)+x(8);
             x(10)+x(11)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,-Inf]';
cu = [0,1,1,0,0,0,0,0,0,0,0,0,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','synthes2');
opts.sense = 'min';
