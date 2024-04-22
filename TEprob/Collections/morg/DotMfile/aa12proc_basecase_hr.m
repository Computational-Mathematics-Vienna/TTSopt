% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:12:26
% Model: 12proc_basecase_hr

% Objective
fun = @(x)x(14)-10*x(15)+x(16)-15*x(17)-40*x(21)+15*x(22)+15*x(26)+80*x(29)-65*x(30)+25*x(31)-60*x(32)+35*x(33)-80*x(34)-35*x(37)-70*x(39)-65*x(41)+1.2*x(43)-2*x(44)+x(45)+x(46)+x(47)+x(48)+x(49)+x(50)+x(51)+x(52)+x(53)+x(54)+x(55)+x(56)+122;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,2,Inf,2,Inf,Inf,Inf,2,1,Inf,Inf,Inf,1,Inf,Inf,2,Inf,2,Inf,2,Inf,Inf,Inf,3,1,3,1,1,2,3,2,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(25)-x(31)-x(33)-x(38);
             -x(21)-x(28)+x(29)-x(37);
             x(23)-x(24)-x(27)-x(40);
             x(15)+x(17)-x(18)-x(23)+x(43);
             x(18)-x(19)-x(20);
             -x(32)-x(34)+x(35)-x(39)-x(41);
             -x(26)+x(35)-x(36);
             x(13)-x(14)-x(16)-x(42);
             x(22)-0.8*x(29);
             x(22)-0.4*x(29);
             x(24)-5*x(26);
             x(24)-2*x(26);
             exp(x(15))-x(14);
             x(14);
             x(15);
             x(45);
             exp(0.833333333333333*x(17))-x(16);
             x(16);
             x(17);
             x(46);
             -x(20)+1.5*x(21)+x(22);
             x(21);
             x(47);
             1.25*x(24)-x(25)+1.25*x(26);
             x(24);
             x(25);
             x(26);
             x(48);
             x(27)-2*x(28);
             x(27);
             x(28);
             x(49);
             exp(0.666666666666667*x(32))-x(31);
             x(31);
             x(32);
             x(50);
             exp(x(34))-x(33);
             x(33);
             x(34);
             x(51);
             exp(x(30))-x(22)-x(29);
             x(22);
             x(29);
             x(30);
             x(37);
             x(52);
             exp(0.833333333333333*x(39))-x(38);
             x(38);
             x(39);
             x(53);
             exp(x(44))-x(19);
             x(44);
             x(19);
             x(54);
             exp(0.526315789473684*x(41))-x(40);
             x(41);
             x(40);
             x(55);
             exp(0.909090909090909*x(43))-x(42);
             x(43);
             x(42);
             x(56);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)];
cl = [0,0,0,0,0,0,0,0,-Inf,0,-Inf,0,1,0,0,5,1,0,0,8,0,0,6,0,0,0,0,10,0,0,0,6,1,0,0,7,1,0,0,4,1,0,0,0,0,5,1,0,0,6,1,0,0,3,1,0,0,1,1,0,0,7,-Inf]';
cu = [0,0,0,0,0,0,0,0,0,Inf,0,Inf,1,0,0,5,1,0,0,8,0,0,6,0,0,0,0,10,0,0,0,6,1,0,0,7,1,0,0,4,1,0,0,0,0,5,1,0,0,6,1,0,0,3,1,0,0,1,1,0,0,7,12]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','12proc_basecase_hr');
opts.sense = 'min';
