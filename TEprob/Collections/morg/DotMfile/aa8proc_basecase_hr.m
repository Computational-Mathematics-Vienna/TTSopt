% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:12:26
% Model: 8proc_basecase_hr

% Objective
fun = @(x)x(10)-10*x(11)+x(12)-15*x(13)-40*x(17)+15*x(18)+15*x(22)+80*x(25)-65*x(26)+25*x(27)-60*x(28)+35*x(29)-80*x(30)-35*x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+122;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,2,Inf,2,Inf,Inf,Inf,2,1,Inf,Inf,Inf,1,Inf,Inf,2,Inf,2,Inf,2,Inf,Inf,Inf,3,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(21)-x(27)-x(29);
             -x(17)-x(24)+x(25)-x(33);
             x(19)-x(20)-x(23);
             x(11)+x(13)-x(14)-x(19);
             x(14)-x(15)-x(16);
             -x(28)-x(30)+x(31);
             -x(22)+x(31)-x(32);
             x(9)-x(10)-x(12);
             x(18)-0.8*x(25);
             x(18)-0.4*x(25);
             x(20)-5*x(22);
             x(20)-2*x(22);
             exp(x(11))-x(10);
             x(10);
             x(11);
             x(34);
             exp(0.833333333333333*x(13))-x(12);
             x(12);
             x(13);
             x(35);
             -x(16)+1.5*x(17)+x(18);
             x(17);
             x(36);
             1.25*x(20)-x(21)+1.25*x(22);
             x(20);
             x(21);
             x(22);
             x(37);
             x(23)-2*x(24);
             x(23);
             x(24);
             x(38);
             exp(0.666666666666667*x(28))-x(27);
             x(27);
             x(28);
             x(39);
             exp(x(30))-x(29);
             x(29);
             x(30);
             x(40);
             exp(x(26))-x(18)-x(25);
             x(18);
             x(25);
             x(26);
             x(33);
             x(41);
             x(1)+x(2);
             x(4)+x(5);
             x(6)+x(7);
             -x(1)+x(3)+x(4)+x(5);
             -x(2)+x(3)+x(4)+x(5);
             -x(3)+x(8);
             x(1)+x(2)-x(3);
             x(1)+x(2)-x(4);
             -x(4)+x(6)+x(7);
             x(1)+x(2)-x(5);
             -x(5)+x(8);
             x(4)-x(6);
             x(4)-x(7)];
cl = [0,0,0,0,0,0,0,0,-Inf,0,-Inf,0,-Inf,0,0,5,-Inf,0,0,8,0,0,6,0,0,0,0,10,0,0,0,6,-Inf,0,0,7,-Inf,0,0,4,-Inf,0,0,0,0,5,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,Inf,0,Inf,1,0,0,5,1,0,0,8,0,0,6,0,0,0,0,10,0,0,0,6,1,0,0,7,1,0,0,4,1,0,0,0,0,5,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','8proc_basecase_hr');
opts.sense = 'min';
