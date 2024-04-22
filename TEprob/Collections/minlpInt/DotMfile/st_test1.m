% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:03
% Model: st_test1

% Objective
fun = @(x)50*x(1)*x(1)+42*x(1)+50*x(2)*x(2)-44*x(2)+50*x(4)*x(4)-47*x(4)+50*x(5)*x(5)-47.5*x(5)+45*x(3);

% Bounds
lb = [0,0,0,0,0]';
ub = [1,1,1,1,1]';

% Constraints
nlcon = @(x)[20*x(1)+12*x(2)+11*x(3)+7*x(4)+4*x(5)];
cl = -Inf';
cu = 40';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_test1');
opts.sense = 'min';
