% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:04
% Model: st_testgr1

% Objective
fun = @(x)0.00055*x(1)*x(1)-0.0583*x(1)+0.0019*x(2)*x(2)+0.2318*x(2)+0.0002*x(3)*x(3)-0.0108*x(3)+0.00095*x(4)*x(4)+0.1634*x(4)+0.0046*x(5)*x(5)-0.138*x(5)+0.0035*x(6)*x(6)+0.357*x(6)+0.00315*x(7)*x(7)-0.1953*x(7)+0.00475*x(8)*x(8)-0.361*x(8)+0.0048*x(9)*x(9)+0.1824*x(9)+0.003*x(10)*x(10)-0.162*x(10);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0]';
ub = [100,100,100,100,100,100,100,100,100,100]';

% Constraints
nlcon = @(x)[8*x(1)+7*x(2)+9*x(3)+9*x(5)+8*x(6)+2*x(7)+4*x(9)+x(10);
             3*x(1)+4*x(2)+6*x(3)+9*x(4)+6*x(6)+9*x(7)+x(8)+x(10);
             2*x(2)+x(3)+5*x(4)+5*x(5)+7*x(7)+4*x(8)+2*x(9);
             5*x(1)+7*x(3)+x(4)+7*x(5)+5*x(6)+7*x(8)+9*x(9)+5*x(10);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [530,395,350,405,200]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIIIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_testgr1');
opts.sense = 'min';
