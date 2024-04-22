% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:54
% Model: gkocis

% Objective
fun = @(x)1.8*x(1)+7*x(5)+x(6)+1.2*x(7)-11*x(8)+3.5*x(9)+x(10)+1.5*x(11);

% Bounds
lb = [0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,5,Inf,1,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-log(1+x(2))+x(6);
             -1.2*log(1+x(3))+x(7);
             -0.9*x(4)+x(8);
             -x(4)+x(5)+x(6)+x(7);
             x(1)-x(2)-x(3);
             x(4)-5*x(9);
             x(2)-5*x(10);
             x(3)-5*x(11)];
cl = [0,0,0,0,0,-Inf,-Inf,-Inf]';
cu = [0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','gkocis');
opts.sense = 'min';
