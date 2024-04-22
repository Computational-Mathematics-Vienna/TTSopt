% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:51
% Model: Syn05M02M

% Objective
fun = @(x)-x(1)-x(2)+5*x(13)+10*x(14)-2*x(23)-x(24)+80*x(25)+90*x(26)+285*x(27)+390*x(28)+290*x(29)+405*x(30)-5*x(41)-4*x(42)-8*x(43)-7*x(44)-6*x(45)-9*x(46)-10*x(47)-9*x(48)-6*x(49)-10*x(50);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [40,40,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,30,30,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(3)-x(5);
             x(2)-x(4)-x(6);
             -x(7)-x(9)+x(11);
             -x(8)-x(10)+x(12);
             x(11)-x(13)-x(15);
             x(12)-x(14)-x(16);
             x(15)-x(17)-x(19)-x(21);
             x(16)-x(18)-x(20)-x(22);
             -log(1+x(3))+x(7)+x(31);
             -log(1+x(4))+x(8)+x(32);
             x(3)-40*x(31);
             x(4)-40*x(32);
             x(7)-3.71357206670431*x(31);
             x(8)-3.71357206670431*x(32);
             -1.2*log(1+x(5))+x(9)+x(33);
             -1.2*log(1+x(6))+x(10)+x(34);
             x(5)-40*x(33);
             x(6)-40*x(34);
             x(9)-4.45628648004517*x(33);
             x(10)-4.45628648004517*x(34);
             -0.75*x(17)+x(25)+x(35);
             -0.75*x(18)+x(26)+x(36);
             -0.75*x(17)+x(25)-x(35);
             -0.75*x(18)+x(26)-x(36);
             x(17)-4.45628648004517*x(35);
             x(18)-4.45628648004517*x(36);
             x(25)-3.34221486003388*x(35);
             x(26)-3.34221486003388*x(36);
             -1.5*log(1+x(19))+x(27)+x(37);
             -1.5*log(1+x(20))+x(28)+x(38);
             x(19)-4.45628648004517*x(37);
             x(20)-4.45628648004517*x(38);
             x(27)-2.54515263975353*x(37);
             x(28)-2.54515263975353*x(38);
             -x(21)+x(29)+x(39);
             -x(22)+x(30)+x(40);
             -x(21)+x(29)-x(39);
             -x(22)+x(30)-x(40);
             -0.5*x(23)+x(29)+x(39);
             -0.5*x(24)+x(30)+x(40);
             -0.5*x(23)+x(29)-x(39);
             -0.5*x(24)+x(30)-x(40);
             x(21)-4.45628648004517*x(39);
             x(22)-4.45628648004517*x(40);
             x(23)-30*x(39);
             x(24)-30*x(40);
             x(29)-15*x(39);
             x(30)-15*x(40);
             5*x(41)+x(51);
             4*x(42)+x(52);
             8*x(43)+x(53);
             7*x(44)+x(54);
             6*x(45)+x(55);
             9*x(46)+x(56);
             10*x(47)+x(57);
             9*x(48)+x(58);
             6*x(49)+x(59);
             10*x(50)+x(60);
             5*x(41)+x(51);
             4*x(42)+x(52);
             8*x(43)+x(53);
             7*x(44)+x(54);
             6*x(45)+x(55);
             9*x(46)+x(56);
             10*x(47)+x(57);
             9*x(48)+x(58);
             6*x(49)+x(59);
             10*x(50)+x(60);
             x(31)-x(32);
             x(33)-x(34);
             x(35)-x(36);
             x(37)-x(38);
             x(39)-x(40);
             x(41)+x(42);
             x(41)+x(42);
             x(43)+x(44);
             x(43)+x(44);
             x(45)+x(46);
             x(45)+x(46);
             x(47)+x(48);
             x(47)+x(48);
             x(49)+x(50);
             x(49)+x(50);
             x(31)-x(41);
             -x(31)+x(32)-x(42);
             x(33)-x(43);
             -x(33)+x(34)-x(44);
             x(35)-x(45);
             -x(35)+x(36)-x(46);
             x(37)-x(47);
             -x(37)+x(38)-x(48);
             x(39)-x(49);
             -x(39)+x(40)-x(50);
             x(31)+x(33);
             x(32)+x(34);
             x(31)+x(33)-x(35);
             x(32)+x(34)-x(36);
             x(31)+x(33)-x(37);
             x(32)+x(34)-x(38);
             x(31)+x(33)-x(39);
             x(32)+x(34)-x(40)];
cl = [0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-Inf,-Inf,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,Inf,Inf,0,0,0,0,1,1,0,0,0,0,1,1,Inf,Inf,1,1,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Syn05M02M');
opts.sense = 'max';
