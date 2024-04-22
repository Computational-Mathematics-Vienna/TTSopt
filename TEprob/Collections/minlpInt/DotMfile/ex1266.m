% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:37
% Model: ex1266

% Objective
fun = @(x)0.1*x(145)+0.2*x(146)+0.3*x(147)+0.4*x(148)+0.5*x(149)+x(151)+x(152)+x(153)+x(154)+x(155)+x(156);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,15,12,8,7,4,2,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(151)*x(1)+x(152)*x(2)+x(153)*x(3)+x(154)*x(4)+x(155)*x(5)+x(156)*x(6);
             x(151)*x(7)+x(152)*x(8)+x(153)*x(9)+x(154)*x(10)+x(155)*x(11)+x(156)*x(12);
             x(151)*x(13)+x(152)*x(14)+x(153)*x(15)+x(154)*x(16)+x(155)*x(17)+x(156)*x(18);
             x(151)*x(19)+x(152)*x(20)+x(153)*x(21)+x(154)*x(22)+x(155)*x(23)+x(156)*x(24);
             x(151)*x(25)+x(152)*x(26)+x(153)*x(27)+x(154)*x(28)+x(155)*x(29)+x(156)*x(30);
             x(151)*x(31)+x(152)*x(32)+x(153)*x(33)+x(154)*x(34)+x(155)*x(35)+x(156)*x(36);
             -330*x(1)-360*x(7)-380*x(13)-430*x(19)-490*x(25)-530*x(31)+2100*x(145);
             -330*x(2)-360*x(8)-380*x(14)-430*x(20)-490*x(26)-530*x(32)+2100*x(146);
             -330*x(3)-360*x(9)-380*x(15)-430*x(21)-490*x(27)-530*x(33)+2100*x(147);
             -330*x(4)-360*x(10)-380*x(16)-430*x(22)-490*x(28)-530*x(34)+2100*x(148);
             -330*x(5)-360*x(11)-380*x(17)-430*x(23)-490*x(29)-530*x(35)+2100*x(149);
             -330*x(6)-360*x(12)-380*x(18)-430*x(24)-490*x(30)-530*x(36)+2100*x(150);
             330*x(1)+360*x(7)+380*x(13)+430*x(19)+490*x(25)+530*x(31)-2200*x(145);
             330*x(2)+360*x(8)+380*x(14)+430*x(20)+490*x(26)+530*x(32)-2200*x(146);
             330*x(3)+360*x(9)+380*x(15)+430*x(21)+490*x(27)+530*x(33)-2200*x(147);
             330*x(4)+360*x(10)+380*x(16)+430*x(22)+490*x(28)+530*x(34)-2200*x(148);
             330*x(5)+360*x(11)+380*x(17)+430*x(23)+490*x(29)+530*x(35)-2200*x(149);
             330*x(6)+360*x(12)+380*x(18)+430*x(24)+490*x(30)+530*x(36)-2200*x(150);
             -x(1)-x(7)-x(13)-x(19)-x(25)-x(31)+x(145);
             -x(2)-x(8)-x(14)-x(20)-x(26)-x(32)+x(146);
             -x(3)-x(9)-x(15)-x(21)-x(27)-x(33)+x(147);
             -x(4)-x(10)-x(16)-x(22)-x(28)-x(34)+x(148);
             -x(5)-x(11)-x(17)-x(23)-x(29)-x(35)+x(149);
             -x(6)-x(12)-x(18)-x(24)-x(30)-x(36)+x(150);
             x(1)+x(7)+x(13)+x(19)+x(25)+x(31)-5*x(145);
             x(2)+x(8)+x(14)+x(20)+x(26)+x(32)-5*x(146);
             x(3)+x(9)+x(15)+x(21)+x(27)+x(33)-5*x(147);
             x(4)+x(10)+x(16)+x(22)+x(28)+x(34)-5*x(148);
             x(5)+x(11)+x(17)+x(23)+x(29)+x(35)-5*x(149);
             x(6)+x(12)+x(18)+x(24)+x(30)+x(36)-5*x(150);
             x(145)-x(151);
             x(146)-x(152);
             x(147)-x(153);
             x(148)-x(154);
             x(149)-x(155);
             x(150)-x(156);
             -15*x(145)+x(151);
             -12*x(146)+x(152);
             -8*x(147)+x(153);
             -7*x(148)+x(154);
             -4*x(149)+x(155);
             -2*x(150)+x(156);
             x(151)+x(152)+x(153)+x(154)+x(155)+x(156);
             -x(145)+x(146);
             -x(146)+x(147);
             -x(147)+x(148);
             -x(148)+x(149);
             -x(149)+x(150);
             -x(151)+x(152);
             -x(152)+x(153);
             -x(153)+x(154);
             -x(154)+x(155);
             -x(155)+x(156);
             x(1)-x(37)-2*x(38)-4*x(39);
             x(2)-x(40)-2*x(41)-4*x(42);
             x(3)-x(43)-2*x(44)-4*x(45);
             x(4)-x(46)-2*x(47)-4*x(48);
             x(5)-x(49)-2*x(50)-4*x(51);
             x(6)-x(52)-2*x(53)-4*x(54);
             x(7)-x(55)-2*x(56)-4*x(57);
             x(8)-x(58)-2*x(59)-4*x(60);
             x(9)-x(61)-2*x(62)-4*x(63);
             x(10)-x(64)-2*x(65)-4*x(66);
             x(11)-x(67)-2*x(68)-4*x(69);
             x(12)-x(70)-2*x(71)-4*x(72);
             x(13)-x(73)-2*x(74)-4*x(75);
             x(14)-x(76)-2*x(77)-4*x(78);
             x(15)-x(79)-2*x(80)-4*x(81);
             x(16)-x(82)-2*x(83)-4*x(84);
             x(17)-x(85)-2*x(86)-4*x(87);
             x(18)-x(88)-2*x(89)-4*x(90);
             x(19)-x(91)-2*x(92)-4*x(93);
             x(20)-x(94)-2*x(95)-4*x(96);
             x(21)-x(97)-2*x(98)-4*x(99);
             x(22)-x(100)-2*x(101)-4*x(102);
             x(23)-x(103)-2*x(104)-4*x(105);
             x(24)-x(106)-2*x(107)-4*x(108);
             x(25)-x(109)-2*x(110)-4*x(111);
             x(26)-x(112)-2*x(113)-4*x(114);
             x(27)-x(115)-2*x(116)-4*x(117);
             x(28)-x(118)-2*x(119)-4*x(120);
             x(29)-x(121)-2*x(122)-4*x(123);
             x(30)-x(124)-2*x(125)-4*x(126);
             x(31)-x(127)-2*x(128)-4*x(129);
             x(32)-x(130)-2*x(131)-4*x(132);
             x(33)-x(133)-2*x(134)-4*x(135);
             x(34)-x(136)-2*x(137)-4*x(138);
             x(35)-x(139)-2*x(140)-4*x(141);
             x(36)-x(142)-2*x(143)-4*x(144);
             x(151)-x(157)-2*x(158)-4*x(159)-8*x(160);
             x(152)-x(161)-2*x(162)-4*x(163)-8*x(164);
             x(153)-x(165)-2*x(166)-4*x(167)-8*x(168);
             x(154)-x(169)-2*x(170)-4*x(171)-8*x(172);
             x(155)-x(173)-2*x(174)-4*x(175)-8*x(176);
             x(156)-x(177)-2*x(178)-4*x(179)-8*x(180)];
cl = [8,16,12,7,14,16,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,16,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1266');
opts.sense = 'min';
