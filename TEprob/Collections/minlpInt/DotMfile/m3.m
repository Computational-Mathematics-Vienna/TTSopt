% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:19:05
% Model: m3

% Objective
fun = @(x)6*x(9)+6*x(10)+6*x(11)+6*x(12);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,2,3,3.8,10,1.8258,2.2361,2.5166,5,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,5.4772,6.7081,7.5498,10,5,5,5,5,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(21)-x(22);
             0.5*x(13)-x(16)+x(21);
             0.5*x(13)-x(21);
             0.5*x(17)-x(20)+x(24);
             0.5*x(17)-x(24);
             0.5*x(14)-x(16)+x(22);
             0.5*x(14)-x(22);
             0.5*x(18)-x(20)+x(25);
             0.5*x(18)-x(25);
             0.5*x(15)-x(16)+x(23);
             0.5*x(15)-x(23);
             0.5*x(19)-x(20)+x(26);
             0.5*x(19)-x(26);
             -x(7)+x(21)-x(22);
             -x(7)-x(21)+x(22);
             -x(8)+x(24)-x(25);
             -x(8)-x(24)+x(25);
             -10*x(1)-10*x(2)+0.5*x(13)+0.5*x(14)-x(21)+x(22);
             -10*x(1)+10*x(2)+0.5*x(13)+0.5*x(14)+x(21)-x(22);
             5*x(1)-5*x(2)+0.5*x(17)+0.5*x(18)-x(24)+x(25);
             5*x(1)+5*x(2)+0.5*x(17)+0.5*x(18)+x(24)-x(25);
             -x(9)+x(21)-x(23);
             -x(9)-x(21)+x(23);
             -x(10)+x(24)-x(26);
             -x(10)-x(24)+x(26);
             -10*x(3)-10*x(4)+0.5*x(13)+0.5*x(15)-x(21)+x(23);
             -10*x(3)+10*x(4)+0.5*x(13)+0.5*x(15)+x(21)-x(23);
             5*x(3)-5*x(4)+0.5*x(17)+0.5*x(19)-x(24)+x(26);
             5*x(3)+5*x(4)+0.5*x(17)+0.5*x(19)+x(24)-x(26);
             -x(11)+x(22)-x(23);
             -x(11)-x(22)+x(23);
             -x(12)+x(25)-x(26);
             -x(12)-x(25)+x(26);
             -10*x(5)-10*x(6)+0.5*x(14)+0.5*x(15)-x(22)+x(23);
             -10*x(5)+10*x(6)+0.5*x(14)+0.5*x(15)+x(22)-x(23);
             5*x(5)-5*x(6)+0.5*x(18)+0.5*x(19)-x(25)+x(26);
             5*x(5)+5*x(6)+0.5*x(18)+0.5*x(19)+x(25)-x(26);
             10/x(13)-x(17);
             10/x(17)-x(13);
             15/x(14)-x(18);
             15/x(18)-x(14);
             19/x(15)-x(19);
             19/x(19)-x(15)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,5,10,0,0,0,0,0,10,5,10,0,0,0,0,0,10,5,10,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,2,3,3.8,10,1.8258,2.2361,2.5166,5,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','m3');
opts.sense = 'min';
