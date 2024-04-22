% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:12:25
% Model: 10proc_basecase_hr

% Objective
fun = @(x)x(12)-10*x(13)+x(14)-15*x(15)-40*x(19)+15*x(20)+15*x(24)+80*x(27)-65*x(28)+25*x(29)-60*x(30)+35*x(31)-80*x(32)-35*x(35)-70*x(37)-65*x(39)+x(40)+x(41)+x(42)+x(43)+x(44)+x(45)+x(46)+x(47)+x(48)+x(49)+80;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,2,Inf,2,Inf,Inf,Inf,2,1,Inf,Inf,Inf,1,Inf,Inf,2,Inf,2,Inf,2,Inf,Inf,Inf,3,1,3,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(23)-x(29)-x(31)-x(36);
             -x(19)-x(26)+x(27)-x(35);
             x(21)-x(22)-x(25)-x(38);
             x(13)+x(15)-x(16)-x(21);
             x(16)-x(17)-x(18);
             -x(30)-x(32)+x(33)-x(37)-x(39);
             -x(24)+x(33)-x(34);
             x(11)-x(12)-x(14);
             x(20)-0.8*x(27);
             x(20)-0.4*x(27);
             x(22)-5*x(24);
             x(22)-2*x(24);
             exp(x(13))-x(12);
             x(12);
             x(13);
             x(40);
             exp(0.833333333333333*x(15))-x(14);
             x(14);
             x(15);
             x(41);
             -x(18)+1.5*x(19)+x(20);
             x(19);
             x(42);
             1.25*x(22)-x(23)+1.25*x(24);
             x(22);
             x(23);
             x(24);
             x(43);
             x(25)-2*x(26);
             x(25);
             x(26);
             x(44);
             exp(0.666666666666667*x(30))-x(29);
             x(29);
             x(30);
             x(45);
             exp(x(32))-x(31);
             x(31);
             x(32);
             x(46);
             exp(x(28))-x(20)-x(27);
             x(20);
             x(27);
             x(28);
             x(35);
             x(47);
             exp(0.833333333333333*x(37))-x(36);
             x(36);
             x(37);
             x(48);
             exp(0.526315789473684*x(39))-x(38);
             x(39);
             x(38);
             x(49);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)];
cl = [0,0,0,0,0,0,0,0,-Inf,0,-Inf,0,1,0,0,32,1,0,0,18,0,0,12,0,0,0,0,14,0,0,0,2,1,0,0,41,1,0,0,32,1,0,0,0,0,25,1,0,0,6,1,0,0,1,-Inf]';
cu = [0,0,0,0,0,0,0,0,0,Inf,0,Inf,1,0,0,32,1,0,0,18,0,0,12,0,0,0,0,14,0,0,0,2,1,0,0,41,1,0,0,32,1,0,0,0,0,25,1,0,0,6,1,0,0,1,12]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','10proc_basecase_hr');
opts.sense = 'min';
