% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:38
% Model: fac1

% Objective
fun = @(x)50*(x(1)+x(2)+x(3)+x(4)+x(9)+x(10)+x(11)+x(12))^2.5+70*(x(5)+x(6)+x(7)+x(8)+x(13)+x(14)+x(15)+x(16))^2.5+10*x(1)+15*x(2)+20*x(3)+10*x(4)+5*x(5)+5*x(6)+30*x(7)+10*x(8)+25*x(9)+20*x(10)+15*x(11)+20*x(12)+30*x(13)+10*x(14)+10*x(15)+30*x(16)+2000*x(21)+2500*x(22);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [300,300,300,300,300,300,300,300,300,300,300,300,300,300,300,300,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(3)+x(5)+x(7);
             x(2)+x(4)+x(6)+x(8);
             x(9)+x(11)+x(13)+x(15);
             x(10)+x(12)+x(14)+x(16);
             x(1)+x(9)-120*x(17);
             x(2)+x(10)-140*x(17);
             x(3)+x(11)-130*x(18);
             x(4)+x(12)-180*x(18);
             x(5)+x(13)-120*x(19);
             x(6)+x(14)-140*x(19);
             x(7)+x(15)-130*x(20);
             x(8)+x(16)-180*x(20);
             260*x(17)+310*x(18)-2500*x(21);
             260*x(19)+310*x(20)-3200*x(22);
             260*x(17)+310*x(18)-50*x(21);
             260*x(19)+310*x(20)-50*x(22);
             x(17)+x(19);
             x(18)+x(20)];
cl = [-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,-Inf,-Inf,0,0,1,1]';
cu = [100,200,150,120,0,0,0,0,0,0,0,0,0,0,Inf,Inf,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','fac1');
opts.sense = 'min';
