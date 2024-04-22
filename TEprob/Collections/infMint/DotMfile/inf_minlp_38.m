% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 11:34:31
% Model: inf_minlp_38

% Objective
fun = @(x)x(189)+x(190)+x(191);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-(1.2*x(107)^0+1.2*x(108)^0+1.2*x(109)^0+1.2*x(110)^0+1.2*x(111)^0+1.2*x(112)^0+1.2*x(113)^0+1.2*x(114)^0+1.2*x(115)^0+1.2*x(116)^0+1.2*x(117)^0+1.2*x(118)^0)+x(189);
             -(1.2*x(107)^0+1.2*x(108)^0+1.2*x(109)^0+1.2*x(110)^0+1.2*x(111)^0+1.2*x(112)^0+1.2*x(113)^0+1.2*x(114)^0+1.2*x(115)^0+1.2*x(116)^0+1.2*x(117)^0+1.2*x(118)^0)+x(190);
             -500*x(13)-2500*x(14)-3750*x(15)-4500*x(16)-2500*x(17)-500*x(18)-2500*x(19)-4500*x(20)-3750*x(21)-4500*x(22)-2500*x(23)-500*x(24)-4500*x(25)-3750*x(26)-3750*x(27)-4500*x(28)-500*x(29)-2500*x(30)-3750*x(31)-4500*x(32)-4500*x(33)-3750*x(34)-4500*x(35)-2500*x(36)-500*x(37)-2500*x(38)-4500*x(39)-3750*x(40)-4500*x(41)-4500*x(42)-3750*x(43)-2500*x(44)-500*x(45)-4500*x(46)-3750*x(47)-3750*x(48)-4500*x(49)-500*x(50)-2500*x(51)-3750*x(52)-4500*x(53)-4500*x(54)-3750*x(55)-4500*x(56)-2500*x(57)-500*x(58)-2500*x(59)-4500*x(60)-3750*x(61)-4500*x(62)-4500*x(63)-3750*x(64)-2500*x(65)-500*x(66)-4500*x(67)-3750*x(68)-3750*x(69)-4500*x(70)-500*x(71)-2500*x(72)-4500*x(73)-3750*x(74)-4500*x(75)-2500*x(76)-500*x(77)-2500*x(78)-4500*x(79)-3750*x(80)-2500*x(81)-500*x(82)-200*x(119)-1000*x(120)-1500*x(121)-1800*x(122)-1000*x(123)-200*x(124)-1000*x(125)-1800*x(126)-1500*x(127)-1800*x(128)-1000*x(129)-200*x(130)-1800*x(131)-1500*x(132)-1500*x(133)-1800*x(134)-200*x(135)-1000*x(136)-1500*x(137)-1800*x(138)-1800*x(139)-1500*x(140)-1800*x(141)-1000*x(142)-200*x(143)-1000*x(144)-1800*x(145)-1500*x(146)-1800*x(147)-1800*x(148)-1500*x(149)-1000*x(150)-200*x(151)-1800*x(152)-1500*x(153)-1500*x(154)-1800*x(155)-200*x(156)-1000*x(157)-1500*x(158)-1800*x(159)-1800*x(160)-1500*x(161)-1800*x(162)-1000*x(163)-200*x(164)-1000*x(165)-1800*x(166)-1500*x(167)-1800*x(168)-1800*x(169)-1500*x(170)-1000*x(171)-200*x(172)-1800*x(173)-1500*x(174)-1500*x(175)-1800*x(176)-200*x(177)-1000*x(178)-1800*x(179)-1500*x(180)-1800*x(181)-1000*x(182)-200*x(183)-1000*x(184)-1800*x(185)-1500*x(186)-1000*x(187)-200*x(188)+x(191);
             x(14)+x(15)+x(16)-x(17)-x(27)-x(33)+x(83)-x(95);
             -x(14)+x(17)+x(19)+x(20)+x(21)+x(22)-x(23)-x(28)-x(34)-x(42)+x(84)-x(96);
             -x(19)+x(23)+x(25)+x(26)-x(35)-x(43)+x(85)-x(97);
             -x(15)-x(20)+x(27)+x(28)+x(30)+x(31)+x(32)-x(36)-x(48)-x(54)+x(86)-x(98);
             -x(16)-x(21)-x(25)-x(30)+x(33)+x(34)+x(35)+x(36)+x(38)+x(39)+x(40)+x(41)-x(44)-x(49)-x(55)-x(63)+x(87)-x(99);
             -x(22)-x(26)-x(38)+x(42)+x(43)+x(44)+x(46)+x(47)-x(56)-x(64)+x(88)-x(100);
             -x(31)-x(39)+x(48)+x(49)+x(51)+x(52)+x(53)-x(57)-x(69)-x(73)+x(89)-x(101);
             -x(32)-x(40)-x(46)-x(51)+x(54)+x(55)+x(56)+x(57)+x(59)+x(60)+x(61)+x(62)-x(65)-x(70)-x(74)-x(79)+x(90)-x(102);
             -x(41)-x(47)-x(59)+x(63)+x(64)+x(65)+x(67)+x(68)-x(75)-x(80)+x(91)-x(103);
             -x(52)-x(60)+x(69)+x(70)+x(72)-x(76)+x(92)-x(104);
             -x(53)-x(61)-x(67)-x(72)+x(73)+x(74)+x(75)+x(76)+x(78)-x(81)+x(93)-x(105);
             -x(62)-x(68)-x(78)+x(79)+x(80)+x(81)+x(94)-x(106);
             x(95);
             x(96);
             x(97);
             x(98);
             x(99);
             x(100);
             x(101);
             x(102);
             x(103);
             x(104);
             x(105);
             x(106);
             -23*x(83)^0+x(107);
             -23*x(84)^0+x(108);
             -23*x(85)^0+x(109);
             -23*x(86)^0+x(110);
             -23*x(87)^0+x(111);
             -23*x(88)^0+x(112);
             -23*x(89)^0+x(113);
             -23*x(90)^0+x(114);
             -23*x(91)^0+x(115);
             -23*x(92)^0+x(116);
             -23*x(93)^0+x(117);
             -23*x(94)^0+x(118);
             -x(107)+x(120)+x(121)+x(122)-x(123)-x(133)-x(139);
             -x(108)-x(120)+x(123)+x(125)+x(126)+x(127)+x(128)-x(129)-x(134)-x(140)-x(148);
             -x(109)-x(125)+x(129)+x(131)+x(132)-x(141)-x(149);
             -x(110)-x(121)-x(126)+x(133)+x(134)+x(136)+x(137)+x(138)-x(142)-x(154)-x(160);
             -x(111)-x(122)-x(127)-x(131)-x(136)+x(139)+x(140)+x(141)+x(142)+x(144)+x(145)+x(146)+x(147)-x(150)-x(155)-x(161)-x(169);
             -x(112)-x(128)-x(132)-x(144)+x(148)+x(149)+x(150)+x(152)+x(153)-x(162)-x(170);
             -x(113)-x(137)-x(145)+x(154)+x(155)+x(157)+x(158)+x(159)-x(163)-x(175)-x(179);
             -x(114)-x(138)-x(146)-x(152)-x(157)+x(160)+x(161)+x(162)+x(163)+x(165)+x(166)+x(167)+x(168)-x(171)-x(176)-x(180)-x(185);
             -x(115)-x(147)-x(153)-x(165)+x(169)+x(170)+x(171)+x(173)+x(174)-x(181)-x(186);
             -x(116)-x(158)-x(166)+x(175)+x(176)+x(178)-x(182);
             -x(117)-x(159)-x(167)-x(173)-x(178)+x(179)+x(180)+x(181)+x(182)+x(184)-x(187);
             -x(118)-x(168)-x(174)-x(184)+x(185)+x(186)+x(187);
             -2000*x(1)+x(107);
             -2000*x(2)+x(108);
             -2000*x(3)+x(109);
             -2000*x(4)+x(110);
             -2000*x(5)+x(111);
             -2000*x(6)+x(112);
             -2000*x(7)+x(113);
             -2000*x(8)+x(114);
             -2000*x(9)+x(115);
             -2000*x(10)+x(116);
             -2000*x(11)+x(117);
             -2000*x(12)+x(118);
             -8000*x(1)+x(107);
             -8000*x(2)+x(108);
             -8000*x(3)+x(109);
             -8000*x(4)+x(110);
             -8000*x(5)+x(111);
             -8000*x(6)+x(112);
             -8000*x(7)+x(113);
             -8000*x(8)+x(114);
             -8000*x(9)+x(115);
             -8000*x(10)+x(116);
             -8000*x(11)+x(117);
             -8000*x(12)+x(118)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,-823000,-588000,-517000,-248000,-461000,-523000,-279000,-1452000,-218000,-366000,-268000,-337000,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,765000,465000,363000,866000,875000,799000,513000,465000,502000,617000,312000,140000,0,0,0,0,0,0,0,0,0,0,0,0,-823000,-588000,-517000,-248000,-461000,-523000,-279000,-1452000,-218000,-366000,-268000,-337000,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_38');
opts.sense = 'min';
