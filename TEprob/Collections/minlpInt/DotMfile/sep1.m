% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:55:08
% Model: sep1

% Objective
fun = @(x)-35*x(1)-30*x(4)+10*x(5)+8*x(6)+x(9)+x(10)+4*x(11)+4*x(12)+50*x(28)+2*x(29);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf]';
ub = [50,50,50,50,25,25,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,1,1,1,Inf,Inf]';

% Constraints
nlcon = @(x)[-0.55*x(5)-0.5*x(6)+x(7);
             -0.45*x(5)-0.5*x(6)+x(8);
             -x(25)*x(7)+x(9);
             -x(25)*x(8)+x(10);
             -x(26)*x(7)+x(11);
             -x(26)*x(8)+x(12);
             -x(27)*x(7)+x(13);
             -x(27)*x(8)+x(14);
             -x(7)+x(9)+x(11)+x(13)+x(15);
             -x(8)+x(10)+x(12)+x(14)+x(16);
             -0.85*x(9)+x(17);
             -0.2*x(10)+x(18);
             -0.15*x(9)+x(19);
             -0.8*x(10)+x(20);
             -0.975*x(11)+x(21);
             -0.05*x(12)+x(22);
             -0.025*x(11)+x(23);
             -0.95*x(12)+x(24);
             x(1)-x(13)-x(17)-x(21);
             x(2)-x(14)-x(18)-x(22);
             x(3)-x(15)-x(19)-x(23);
             x(4)-x(16)-x(20)-x(24);
             x(9)+x(10)-2.5*x(29);
             x(9)+x(10)-25*x(29);
             x(11)+x(12)-2.5*x(28);
             x(11)+x(12)-25*x(28);
             x(1)-4*x(2);
             -3*x(3)+x(4);
             x(1)+x(2);
             x(3)+x(4);
             x(28)+x(29)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,0,-Inf,0,0,-Inf,-Inf,1]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,0,Inf,0,Inf,Inf,15,18,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','sep1');
opts.sense = 'min';
