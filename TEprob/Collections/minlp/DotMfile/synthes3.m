% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:03:37
% Model: synthes3

% Objective
fun = @(x)exp(x(1))-10*x(1)+exp(0.833333*x(2))-15*x(2)-65*log(1+x(3)+x(4))+15*x(3)+80*x(4)-90*log(1+x(5))+25*x(5)-80*log(1+x(6))+35*x(6)-40*x(7)+15*x(8)-35*x(9)+5*x(10)+8*x(11)+6*x(12)+10*x(13)+6*x(14)+7*x(15)+4*x(16)+5*x(17)+120;

% Bounds
lb = [0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [2,2,1,2,2,2,2,1,3,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(-1.5*log(1+x(5)))-log(1+x(6))-x(8);
             -log(1+x(3)+x(4));
             -x(1)-x(2)+x(3)+2*x(4)+0.8*x(5)+0.8*x(6)-0.5*x(7)-x(8)-2*x(9);
             -x(1)-x(2)+2*x(4)+0.8*x(5)+0.8*x(6)-2*x(7)-x(8)-2*x(9);
             -2*x(4)-0.8*x(5)-0.8*x(6)+2*x(7)+x(8)+2*x(9);
             -0.8*x(5)-0.8*x(6)+x(8);
             -x(4)+x(7)+x(9);
             -0.4*x(5)-0.4*x(6)+1.5*x(8);
             0.16*x(5)+0.16*x(6)-1.2*x(8);
             x(3)-0.8*x(4);
             -x(3)+0.4*x(4);
             exp(x(1))-10*x(10);
             exp(0.833333*x(2))-10*x(11);
             x(7)-10*x(12);
             0.8*x(5)+0.8*x(6)-10*x(13);
             2*x(4)-2*x(7)-2*x(9)-10*x(14);
             x(5)-10*x(15);
             x(6)-10*x(16);
             x(3)+x(4)-10*x(17);
             x(10)+x(11);
             x(13)+x(14);
             -x(13)+x(15)+x(16);
             x(12)-x(17)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,-Inf,0,-Inf]';
cu = [0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','synthes3');
opts.sense = 'min';
