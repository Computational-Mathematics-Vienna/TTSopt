% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:52
% Model: fuel

% Objective
fun = @(x)0.0025*x(7)^2+6*x(7)+0.0025*x(8)^2+6*x(8)+0.0025*x(9)^2+6*x(9)+900;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,50,50,50,0,0,0,0,0,2000]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,700,700,700,Inf,Inf,Inf,4000,4000,4000]';

% Constraints
nlcon = @(x)[-100*x(1)+x(4);
             -100*x(2)+x(5);
             -100*x(3)+x(6);
             -500*x(1)+x(4);
             -500*x(2)+x(5);
             -500*x(3)+x(6);
             x(10)+x(13);
             x(11)-x(13)+x(14);
             x(12)-x(14)+x(15);
             x(4)+x(7);
             x(5)+x(8);
             x(6)+x(9);
             -(0.005*x(4)^2+x(4))-50*x(1)+x(10);
             -(0.005*x(5)^2+x(5))-50*x(2)+x(11);
             -(0.005*x(6)^2+x(6))-50*x(3)+x(12)];
cl = [0,0,0,-Inf,-Inf,-Inf,3500,500,500,400,900,700,0,0,0]';
cu = [Inf,Inf,Inf,0,0,0,3500,500,500,Inf,Inf,Inf,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,50,50,50,NaN,NaN,NaN,NaN,NaN,2000]';

% Options
opts = struct('probname','fuel');
opts.sense = 'min';
