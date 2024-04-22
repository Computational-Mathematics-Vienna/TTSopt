% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:04
% Model: st_test5

% Objective
fun = @(x)5*x(1)*x(1)-20*x(1)+5*x(2)*x(2)-80*x(2)+5*x(3)*x(3)-20*x(3)+5*x(4)*x(4)-50*x(4)+5*x(5)*x(5)-60*x(5)+5*x(6)*x(6)-90*x(6)+5*x(7)*x(7)+10*x(8)+10*x(9)+10*x(10);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0]';
ub = [1,1,1,1,1,1,1,1,1,1]';

% Constraints
nlcon = @(x)[-2*x(1)-6*x(2)-x(3)-3*x(5)-3*x(6)-2*x(7)-6*x(8)-2*x(9)-2*x(10);
             6*x(1)-5*x(2)+8*x(3)-3*x(4)+x(6)+3*x(7)+8*x(8)+9*x(9)-3*x(10);
             -5*x(1)+6*x(2)+5*x(3)+3*x(4)+8*x(5)-8*x(6)+9*x(7)+2*x(8)-9*x(10);
             9*x(1)+5*x(2)-9*x(4)+x(5)-8*x(6)+3*x(7)-9*x(8)-9*x(9)-3*x(10);
             -8*x(1)+7*x(2)-4*x(3)-5*x(4)-9*x(5)+x(6)-7*x(7)-x(8)+3*x(9)-2*x(10);
             -7*x(1)-5*x(2)-2*x(3)-6*x(5)-6*x(6)-7*x(7)-6*x(8)+7*x(9)+7*x(10);
             x(1)-3*x(2)-3*x(3)-4*x(4)-x(5)-4*x(7)+x(8)+6*x(9);
             x(1)-2*x(2)+6*x(3)+9*x(4)-7*x(6)+9*x(7)-9*x(8)-6*x(9)+4*x(10);
             -4*x(1)+6*x(2)+7*x(3)+2*x(4)+2*x(5)+6*x(7)+6*x(8)-7*x(9)+4*x(10);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10);
             -x(1)-x(2)-x(3)-x(4)-x(5)-x(6)-x(7)-x(8)-x(9)-x(10)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [-4,22,-6,-23,-12,-3,1,12,15,9,-1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIIIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_test5');
opts.sense = 'min';
