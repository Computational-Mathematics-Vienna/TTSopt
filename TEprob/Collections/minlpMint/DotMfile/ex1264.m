% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:34
% Model: ex1264

% Objective
fun = @(x)0.1*x(65)+0.2*x(66)+0.3*x(67)+0.4*x(68)+x(69)+x(70)+x(71)+x(72);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,15,12,9,6,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(69)*x(1)+x(70)*x(2)+x(71)*x(3)+x(72)*x(4);
             x(69)*x(5)+x(70)*x(6)+x(71)*x(7)+x(72)*x(8);
             x(69)*x(9)+x(70)*x(10)+x(71)*x(11)+x(72)*x(12);
             x(69)*x(13)+x(70)*x(14)+x(71)*x(15)+x(72)*x(16);
             -330*x(1)-360*x(5)-385*x(9)-415*x(13)+1700*x(65);
             -330*x(2)-360*x(6)-385*x(10)-415*x(14)+1700*x(66);
             -330*x(3)-360*x(7)-385*x(11)-415*x(15)+1700*x(67);
             -330*x(4)-360*x(8)-385*x(12)-415*x(16)+1700*x(68);
             330*x(1)+360*x(5)+385*x(9)+415*x(13)-1900*x(65);
             330*x(2)+360*x(6)+385*x(10)+415*x(14)-1900*x(66);
             330*x(3)+360*x(7)+385*x(11)+415*x(15)-1900*x(67);
             330*x(4)+360*x(8)+385*x(12)+415*x(16)-1900*x(68);
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
             -15*x(65)+x(69);
             -12*x(66)+x(70);
             -9*x(67)+x(71);
             -6*x(68)+x(72);
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
             x(69)-x(73)-2*x(74)-4*x(75)-8*x(76);
             x(70)-x(77)-2*x(78)-4*x(79)-8*x(80);
             x(71)-x(81)-2*x(82)-4*x(83)-8*x(84);
             x(72)-x(85)-2*x(86)-4*x(87)-8*x(88)];
cl = [9,7,12,11,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,8,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1264');
opts.sense = 'min';
