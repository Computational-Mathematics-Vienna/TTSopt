% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:44:07
% Model: oaer

% Objective
fun = @(x)1.8*x(1)+1.8*x(2)+7*x(3)+x(4)+1.2*x(5)-11*x(6)+3.5*x(7)+x(8)+1.5*x(9);

% Bounds
lb = [0,0,0,0,0,0,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-log(1+x(1))+x(4);
             -1.2*log(1+x(2))+x(5);
             -0.9*x(3)-0.9*x(4)-0.9*x(5)+x(6);
             x(6)-x(7);
             x(4)-1.111111*x(8);
             x(5)-1.111111*x(9);
             x(8)+x(9)];
cl = [0,0,0,-Inf,-Inf,-Inf,-Inf]';
cu = [0,0,0,0,0,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','oaer');
opts.sense = 'min';
