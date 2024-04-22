% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:29
% Model: ex1224

% Objective
fun = @(x)-x(1)*x(2)*x(3);

% Bounds
lb = [0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [0.997,0.9985,0.9988,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-log(1-x(1))-2.30258509299405*x(4)-1.6094379124341*x(5)-1.89711998488588*x(6);
             -log(1-x(2))-2.99573227355399*x(7)-1.6094379124341*x(8)-1.89711998488588*x(9);
             -log(1-x(3))-3.91202300542815*x(10)-2.81341071676004*x(11);
             -x(4)-x(5)-x(6);
             -x(7)-x(8)-x(9);
             -x(10)-x(11);
             3*x(4)+x(5)+2*x(6)+3*x(7)+2*x(8)+x(9)+3*x(10)+2*x(11)];
cl = [0,0,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [0,0,0,-1,-1,-1,10]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1224');
opts.sense = 'min';
