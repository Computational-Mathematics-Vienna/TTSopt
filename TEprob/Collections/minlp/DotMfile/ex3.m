% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:37
% Model: ex3

% Objective
fun = @(x)8*x(1)+6*x(2)+10*x(3)+6*x(4)+7*x(5)+4*x(6)+5*x(7)+5*x(8)+x(9)-10*x(10)+x(11)-15*x(12)-40*x(16)+15*x(17)+15*x(21)+80*x(24)-65*x(25)+25*x(26)-60*x(27)+35*x(28)-80*x(29)-35*x(32)+122;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,2,Inf,2,Inf,Inf,Inf,2,1,Inf,Inf,Inf,1,Inf,Inf,2,Inf,2,Inf,2,Inf,Inf,Inf,3]';

% Constraints
nlcon = @(x)[exp(x(10))-x(9);
             exp(0.833333333333333*x(12))-x(11);
             -x(15)+1.5*x(16)+x(17);
             1.25*x(19)-x(20)+1.25*x(21);
             x(22)-2*x(23);
             exp(0.666666666666667*x(27))-x(26);
             exp(x(29))-x(28);
             exp(x(25))-x(17)-x(24);
             x(20)-x(26)-x(28);
             -x(16)-x(23)+x(24)-x(32);
             x(18)-x(19)-x(22);
             x(10)+x(12)-x(13)-x(18);
             x(13)-x(14)-x(15);
             -x(27)-x(29)+x(30);
             -x(21)+x(30)-x(31);
             x(17)-0.8*x(24);
             x(17)-0.4*x(24);
             x(19)-5*x(21);
             x(19)-2*x(21);
             -10*x(8)+x(9);
             -10*x(1)+x(11);
             -10*x(2)+x(16);
             -10*x(3)+x(19)+x(21);
             -10*x(4)+x(22);
             -10*x(5)+x(26);
             -10*x(6)+x(28);
             -10*x(7)+x(17)+x(24);
             x(1)+x(8);
             x(3)+x(4);
             -x(3)+x(5)+x(6);
             x(2)-x(7)];
cl = [1,1,0,0,0,1,1,1,0,0,0,0,0,0,0,-Inf,0,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,-Inf,0,-Inf]';
cu = [1,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,Inf,0,Inf,0,0,0,0,0,0,0,0,1,1,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex3');
opts.sense = 'min';
