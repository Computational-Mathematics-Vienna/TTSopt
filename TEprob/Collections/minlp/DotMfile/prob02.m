% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:45:15
% Model: prob02

% Objective
fun = @(x)8000*x(1)-330*x(2)-360*x(3)-370*x(4)-415*x(5)-435*x(6);

% Bounds
lb = [1,1,1,1,1,1]';
ub = [100,100,100,100,100,100]';

% Constraints
nlcon = @(x)[330*x(2)+360*x(3)+370*x(4)+415*x(5)+435*x(6);
             330*x(2)+360*x(3)+370*x(4)+415*x(5)+435*x(6);
             x(2)+x(3)+x(4)+x(5)+x(6);
             -x(1)*x(2);
             -x(1)*x(3);
             -x(1)*x(4);
             -x(1)*x(5);
             -x(1)*x(6)];
cl = [-Inf,7700,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [8000,Inf,20,-60,-30,-75,-30,-100]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIII';

% Starting Guess
x0 = [1,1,1,1,1,1]';

% Options
opts = struct('probname','prob02');
opts.sense = 'min';
