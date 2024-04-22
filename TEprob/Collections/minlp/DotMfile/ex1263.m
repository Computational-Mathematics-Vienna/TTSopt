% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:33
% Model: ex1263

% Objective
fun = @(x)0.1*x(65)+0.2*x(66)+0.3*x(67)+0.4*x(68)+x(69)+x(70)+x(71)+x(72);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,30,30,30,30,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(69)*x(1)+x(70)*x(2)+x(71)*x(3)+x(72)*x(4);
             x(69)*x(5)+x(70)*x(6)+x(71)*x(7)+x(72)*x(8);
             x(69)*x(9)+x(70)*x(10)+x(71)*x(11)+x(72)*x(12);
             x(69)*x(13)+x(70)*x(14)+x(71)*x(15)+x(72)*x(16);
             -290*x(1)-315*x(5)-350*x(9)-455*x(13)+1750*x(65);
             -290*x(2)-315*x(6)-350*x(10)-455*x(14)+1750*x(66);
             -290*x(3)-315*x(7)-350*x(11)-455*x(15)+1750*x(67);
             -290*x(4)-315*x(8)-350*x(12)-455*x(16)+1750*x(68);
             290*x(1)+315*x(5)+350*x(9)+455*x(13)-1850*x(65);
             290*x(2)+315*x(6)+350*x(10)+455*x(14)-1850*x(66);
             290*x(3)+315*x(7)+350*x(11)+455*x(15)-1850*x(67);
             290*x(4)+315*x(8)+350*x(12)+455*x(16)-1850*x(68);
             -x(1)-x(5)-x(9)-x(13)+x(65);
             -x(2)-x(6)-x(10)-x(14)+x(66);
             -x(3)-x(7)-x(11)-x(15)+x(67);
             -x(4)-x(8)-x(12)-x(16)+x(68);
             x(1)+x(5)+x(9)+x(13)-5*x(65);
             x(2)+x(6)+x(10)+x(14)-5*x(66);
             x(3)+x(7)+x(11)+x(15)-5*x(67);
             x(4)+x(8)+x(12)+x(16)-5*x(68);
             x(65)-x(69);
             x(66)-x(70);
             x(67)-x(71);
             x(68)-x(72);
             -30*x(65)+x(69);
             -30*x(66)+x(70);
             -30*x(67)+x(71);
             -30*x(68)+x(72);
             x(69)+x(70)+x(71)+x(72);
             -x(65)+x(66);
             -x(66)+x(67);
             -x(67)+x(68);
             -x(69)+x(70);
             -x(70)+x(71);
             -x(71)+x(72);
             x(1)-x(17)-2*x(18)-4*x(19);
             x(2)-x(20)-2*x(21)-4*x(22);
             x(3)-x(23)-2*x(24)-4*x(25);
             x(4)-x(26)-2*x(27)-4*x(28);
             x(5)-x(29)-2*x(30)-4*x(31);
             x(6)-x(32)-2*x(33)-4*x(34);
             x(7)-x(35)-2*x(36)-4*x(37);
             x(8)-x(38)-2*x(39)-4*x(40);
             x(9)-x(41)-2*x(42)-4*x(43);
             x(10)-x(44)-2*x(45)-4*x(46);
             x(11)-x(47)-2*x(48)-4*x(49);
             x(12)-x(50)-2*x(51)-4*x(52);
             x(13)-x(53)-2*x(54)-4*x(55);
             x(14)-x(56)-2*x(57)-4*x(58);
             x(15)-x(59)-2*x(60)-4*x(61);
             x(16)-x(62)-2*x(63)-4*x(64);
             x(69)-x(73)-2*x(74)-4*x(75)-8*x(76)-16*x(77);
             x(70)-x(78)-2*x(79)-4*x(80)-8*x(81)-16*x(82);
             x(71)-x(83)-2*x(84)-4*x(85)-8*x(86)-16*x(87);
             x(72)-x(88)-2*x(89)-4*x(90)-8*x(91)-16*x(92)];
cl = [15,28,21,30,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,19,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1263');
opts.sense = 'min';
