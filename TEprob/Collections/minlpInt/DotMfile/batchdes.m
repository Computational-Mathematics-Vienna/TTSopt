% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:13:23
% Model: batchdes

% Objective
fun = @(x)x(20);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,5.52146091786225,5.52146091786225,5.52146091786225,5.40367788220586,4.60517018598809,1.89711998488588,1.38629436111989,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,7.82404601085629,7.82404601085629,7.82404601085629,6.4377516497364,6.03228654162824,2.99573227355399,2.484906649788,1.09861228866811,1.09861228866811,1.09861228866811,Inf]';

% Constraints
nlcon = @(x)[x(10)-x(13);
             x(11)-x(13);
             x(12)-x(13);
             x(10)-x(14);
             x(11)-x(14);
             x(12)-x(14);
             x(15)+x(17);
             x(15)+x(18);
             x(15)+x(19);
             x(16)+x(17);
             x(16)+x(18);
             x(16)+x(19);
             200000*exp(x(15)-x(13))+150000*exp(x(16)-x(14));
             -0.693147180559945*x(4)-1.09861228866811*x(7)+x(17);
             -0.693147180559945*x(5)-1.09861228866811*x(8)+x(18);
             -0.693147180559945*x(6)-1.09861228866811*x(9)+x(19);
             x(1)+x(4)+x(7);
             x(2)+x(5)+x(8);
             x(3)+x(6)+x(9);
             -(250*exp(0.6*x(10)+x(17))+500*exp(0.6*x(11)+x(18))+340*exp(0.6*x(12)+x(19)))+x(20)];
cl = [0.693147180559945,1.09861228866811,1.38629436111989,1.38629436111989,1.79175946922805,1.09861228866811,2.07944154167984,2.99573227355399,1.38629436111989,2.30258509299405,2.484906649788,1.09861228866811,-Inf,0,0,0,1,1,1,0]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,6000,0,0,0,1,1,1,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBBCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,5.52146091786225,5.52146091786225,5.52146091786225,5.40367788220586,4.60517018598809,1.89711998488588,1.38629436111989,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','batchdes');
opts.sense = 'min';