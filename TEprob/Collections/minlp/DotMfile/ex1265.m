% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:35
% Model: ex1265

% Objective
fun = @(x)0.1*x(101)+0.2*x(102)+0.3*x(103)+0.4*x(104)+0.5*x(105)+x(106)+x(107)+x(108)+x(109)+x(110);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,15,12,9,6,6,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(106)*x(1)+x(107)*x(2)+x(108)*x(3)+x(109)*x(4)+x(110)*x(5);
             x(106)*x(6)+x(107)*x(7)+x(108)*x(8)+x(109)*x(9)+x(110)*x(10);
             x(106)*x(11)+x(107)*x(12)+x(108)*x(13)+x(109)*x(14)+x(110)*x(15);
             x(106)*x(16)+x(107)*x(17)+x(108)*x(18)+x(109)*x(19)+x(110)*x(20);
             x(106)*x(21)+x(107)*x(22)+x(108)*x(23)+x(109)*x(24)+x(110)*x(25);
             -330*x(1)-360*x(6)-370*x(11)-415*x(16)-435*x(21)+1800*x(101);
             -330*x(2)-360*x(7)-370*x(12)-415*x(17)-435*x(22)+1800*x(102);
             -330*x(3)-360*x(8)-370*x(13)-415*x(18)-435*x(23)+1800*x(103);
             -330*x(4)-360*x(9)-370*x(14)-415*x(19)-435*x(24)+1800*x(104);
             -330*x(5)-360*x(10)-370*x(15)-415*x(20)-435*x(25)+1800*x(105);
             330*x(1)+360*x(6)+370*x(11)+415*x(16)+435*x(21)-2000*x(101);
             330*x(2)+360*x(7)+370*x(12)+415*x(17)+435*x(22)-2000*x(102);
             330*x(3)+360*x(8)+370*x(13)+415*x(18)+435*x(23)-2000*x(103);
             330*x(4)+360*x(9)+370*x(14)+415*x(19)+435*x(24)-2000*x(104);
             330*x(5)+360*x(10)+370*x(15)+415*x(20)+435*x(25)-2000*x(105);
             -x(1)-x(6)-x(11)-x(16)-x(21)+x(101);
             -x(2)-x(7)-x(12)-x(17)-x(22)+x(102);
             -x(3)-x(8)-x(13)-x(18)-x(23)+x(103);
             -x(4)-x(9)-x(14)-x(19)-x(24)+x(104);
             -x(5)-x(10)-x(15)-x(20)-x(25)+x(105);
             x(1)+x(6)+x(11)+x(16)+x(21)-5*x(101);
             x(2)+x(7)+x(12)+x(17)+x(22)-5*x(102);
             x(3)+x(8)+x(13)+x(18)+x(23)-5*x(103);
             x(4)+x(9)+x(14)+x(19)+x(24)-5*x(104);
             x(5)+x(10)+x(15)+x(20)+x(25)-5*x(105);
             x(101)-x(106);
             x(102)-x(107);
             x(103)-x(108);
             x(104)-x(109);
             x(105)-x(110);
             -15*x(101)+x(106);
             -12*x(102)+x(107);
             -9*x(103)+x(108);
             -6*x(104)+x(109);
             -6*x(105)+x(110);
             x(106)+x(107)+x(108)+x(109)+x(110);
             -x(101)+x(102);
             -x(102)+x(103);
             -x(103)+x(104);
             -x(104)+x(105);
             -x(106)+x(107);
             -x(107)+x(108);
             -x(108)+x(109);
             -x(109)+x(110);
             x(1)-x(26)-2*x(27)-4*x(28);
             x(2)-x(29)-2*x(30)-4*x(31);
             x(3)-x(32)-2*x(33)-4*x(34);
             x(4)-x(35)-2*x(36)-4*x(37);
             x(5)-x(38)-2*x(39)-4*x(40);
             x(6)-x(41)-2*x(42)-4*x(43);
             x(7)-x(44)-2*x(45)-4*x(46);
             x(8)-x(47)-2*x(48)-4*x(49);
             x(9)-x(50)-2*x(51)-4*x(52);
             x(10)-x(53)-2*x(54)-4*x(55);
             x(11)-x(56)-2*x(57)-4*x(58);
             x(12)-x(59)-2*x(60)-4*x(61);
             x(13)-x(62)-2*x(63)-4*x(64);
             x(14)-x(65)-2*x(66)-4*x(67);
             x(15)-x(68)-2*x(69)-4*x(70);
             x(16)-x(71)-2*x(72)-4*x(73);
             x(17)-x(74)-2*x(75)-4*x(76);
             x(18)-x(77)-2*x(78)-4*x(79);
             x(19)-x(80)-2*x(81)-4*x(82);
             x(20)-x(83)-2*x(84)-4*x(85);
             x(21)-x(86)-2*x(87)-4*x(88);
             x(22)-x(89)-2*x(90)-4*x(91);
             x(23)-x(92)-2*x(93)-4*x(94);
             x(24)-x(95)-2*x(96)-4*x(97);
             x(25)-x(98)-2*x(99)-4*x(100);
             x(106)-x(111)-2*x(112)-4*x(113)-8*x(114);
             x(107)-x(115)-2*x(116)-4*x(117)-8*x(118);
             x(108)-x(119)-2*x(120)-4*x(121)-8*x(122);
             x(109)-x(123)-2*x(124)-4*x(125)-8*x(126);
             x(110)-x(127)-2*x(128)-4*x(129)-8*x(130)];
cl = [12,6,15,6,9,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,10,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1265');
opts.sense = 'min';
