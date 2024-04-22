% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:03
% Model: st_test3

% Objective
fun = @(x)5*x(1)*x(1)+5*x(1)+5*x(2)*x(2)-5*x(2)+5*x(3)*x(3)+5*x(3)+5*x(4)*x(4)+5*x(4)+9*x(10)*x(10)-x(10)-x(5)+x(6)-x(7)-x(8)-x(9)-x(11)-x(12)-x(13);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [1,1,1,1,1,1,1,1,1,1e+15,1e+15,1e+15,1]';

% Constraints
nlcon = @(x)[2*x(1)+2*x(2)+x(10)+x(11);
             2*x(1)+2*x(3)+x(10)+x(12);
             2*x(2)+2*x(3)+x(11)+x(12);
             -8*x(1)+x(10);
             -8*x(2)+x(11);
             -8*x(3)+x(12);
             -2*x(4)-x(5)+x(10);
             -2*x(6)-x(7)+x(11);
             -2*x(8)-x(9)+x(12);
             x(13)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [10,10,10,0,0,0,0,0,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIIIIIIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_test3');
opts.sense = 'min';
