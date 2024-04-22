% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:02:58
% Model: inf_minlp_157

% Objective
fun = @(x)x(31);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(2)+x(4)+7.1*x(35)+3.6*x(42)-3.6*x(49)+3.6*x(56)+190*x(79);
             -x(3)+x(4)+7.1*x(35)+3.6*x(42)-3.6*x(49)+3.6*x(56)+190*x(80);
             7.1*x(35)+3.6*x(42)-3.6*x(49)+3.6*x(56)+190*x(81);
             x(4)-x(5)+7.1*x(35)+3.6*x(42)-3.6*x(49)+3.6*x(56)+190*x(82);
             x(4)-x(6)+7.1*x(35)+3.6*x(42)-3.6*x(49)+3.6*x(56)+190*x(83);
             x(4)-x(7)+7.1*x(35)+3.6*x(42)-3.6*x(49)+3.6*x(56)+190*x(84);
             -x(1)+x(5)+5.11*x(36)+4.86*x(43)-4.86*x(50)+4.86*x(57)+190*x(85);
             -x(3)+x(5)+5.11*x(36)+4.86*x(43)-4.86*x(50)+4.86*x(57)+190*x(87);
             -x(4)+x(5)+5.11*x(36)+4.86*x(43)-4.86*x(50)+4.86*x(57)+190*x(88);
             5.11*x(36)+4.86*x(43)-4.86*x(50)+4.86*x(57)+190*x(89);
             x(5)-x(6)+5.11*x(36)+4.86*x(43)-4.86*x(50)+4.86*x(57)+190*x(90);
             x(5)-x(7)+5.11*x(36)+4.86*x(43)-4.86*x(50)+4.86*x(57)+190*x(91);
             -x(1)+x(6)+7.325*x(37)+4*x(44)-4*x(51)+4*x(58)+190*x(92);
             -x(2)+x(6)+7.325*x(37)+4*x(44)-4*x(51)+4*x(58)+190*x(93);
             -x(4)+x(6)+7.325*x(37)+4*x(44)-4*x(51)+4*x(58)+190*x(95);
             -x(5)+x(6)+7.325*x(37)+4*x(44)-4*x(51)+4*x(58)+190*x(96);
             7.325*x(37)+4*x(44)-4*x(51)+4*x(58)+190*x(97);
             x(6)-x(7)+7.325*x(37)+4*x(44)-4*x(51)+4*x(58)+190*x(98);
             -x(1)+x(7)+6.7975*x(38)+4.16*x(45)-4.16*x(52)+4.16*x(59)+190*x(99);
             -x(2)+x(7)+6.7975*x(38)+4.16*x(45)-4.16*x(52)+4.16*x(59)+190*x(100);
             -x(3)+x(7)+6.7975*x(38)+4.16*x(45)-4.16*x(52)+4.16*x(59)+190*x(101);
             -x(5)+x(7)+6.7975*x(38)+4.16*x(45)-4.16*x(52)+4.16*x(59)+190*x(103);
             -x(6)+x(7)+6.7975*x(38)+4.16*x(45)-4.16*x(52)+4.16*x(59)+190*x(104);
             6.7975*x(38)+4.16*x(45)-4.16*x(52)+4.16*x(59)+190*x(105);
             x(22)*x(32)+x(25)*(x(39)-x(46)+x(53))+x(28)*(1-x(32)-x(39)+x(46)-x(53))+x(1)-x(2)+190*x(60);
             x(22)*x(32)+x(25)*(x(39)-x(46)+x(53))+x(28)*(1-x(32)-x(39)+x(46)-x(53))+x(1)-x(3)+190*x(61);
             x(22)*x(32)+x(25)*(x(39)-x(46)+x(53))+x(28)*(1-x(32)-x(39)+x(46)-x(53))+x(1)-x(4)+190*x(62);
             x(22)*x(32)+x(25)*(x(39)-x(46)+x(53))+x(28)*(1-x(32)-x(39)+x(46)-x(53))+x(1)-x(5)+190*x(63);
             x(22)*x(32)+x(25)*(x(39)-x(46)+x(53))+x(28)*(1-x(32)-x(39)+x(46)-x(53))+x(1)-x(6)+190*x(64);
             x(22)*x(32)+x(25)*(x(39)-x(46)+x(53))+x(28)*(1-x(32)-x(39)+x(46)-x(53))+x(1)-x(7)+190*x(65);
             x(23)*x(33)+x(26)*(x(40)-x(47)+x(54))+x(29)*(1-x(33)-x(40)+x(47)-x(54))-x(1)+x(2)+190*x(66);
             x(23)*x(33)+x(26)*(x(40)-x(47)+x(54))+x(29)*(1-x(33)-x(40)+x(47)-x(54))+x(2)-x(3)+190*x(67);
             x(23)*x(33)+x(26)*(x(40)-x(47)+x(54))+x(29)*(1-x(33)-x(40)+x(47)-x(54))+x(2)-x(4)+190*x(68);
             x(23)*x(33)+x(26)*(x(40)-x(47)+x(54))+x(29)*(1-x(33)-x(40)+x(47)-x(54))+x(2)-x(5)+190*x(69);
             x(23)*x(33)+x(26)*(x(40)-x(47)+x(54))+x(29)*(1-x(33)-x(40)+x(47)-x(54))+x(2)-x(6)+190*x(70);
             x(23)*x(33)+x(26)*(x(40)-x(47)+x(54))+x(29)*(1-x(33)-x(40)+x(47)-x(54))+x(2)-x(7)+190*x(71);
             x(24)*x(34)+x(27)*(x(41)-x(48)+x(55))+x(30)*(1-x(34)-x(41)+x(48)-x(55))-x(1)+x(3)+190*x(72);
             x(24)*x(34)+x(27)*(x(41)-x(48)+x(55))+x(30)*(1-x(34)-x(41)+x(48)-x(55))-x(2)+x(3)+190*x(73);
             x(24)*x(34)+x(27)*(x(41)-x(48)+x(55))+x(30)*(1-x(34)-x(41)+x(48)-x(55))+x(3)-x(4)+190*x(74);
             x(24)*x(34)+x(27)*(x(41)-x(48)+x(55))+x(30)*(1-x(34)-x(41)+x(48)-x(55))+x(3)-x(5)+190*x(75);
             x(24)*x(34)+x(27)*(x(41)-x(48)+x(55))+x(30)*(1-x(34)-x(41)+x(48)-x(55))+x(3)-x(6)+190*x(76);
             x(24)*x(34)+x(27)*(x(41)-x(48)+x(55))+x(30)*(1-x(34)-x(41)+x(48)-x(55))+x(3)-x(7)+190*x(77);
             -x(9)+x(11)-7.1*x(35)-7.1*x(42)+3.6*x(49)+190*x(125);
             -x(10)+x(11)-7.1*x(35)-7.1*x(42)+3.6*x(49)+190*x(126);
             -7.1*x(35)-7.1*x(42)+3.6*x(49)+190*x(127);
             x(11)-x(12)-7.1*x(35)-7.1*x(42)+3.6*x(49)+190*x(128);
             x(11)-x(13)-7.1*x(35)-7.1*x(42)+3.6*x(49)+190*x(129);
             x(11)-x(14)-7.1*x(35)-7.1*x(42)+3.6*x(49)+190*x(130);
             -x(8)+x(12)-5.11*x(36)-5.11*x(43)+4.86*x(50)+190*x(131);
             -x(10)+x(12)-5.11*x(36)-5.11*x(43)+4.86*x(50)+190*x(133);
             -x(11)+x(12)-5.11*x(36)-5.11*x(43)+4.86*x(50)+190*x(134);
             -5.11*x(36)-5.11*x(43)+4.86*x(50)+190*x(135);
             x(12)-x(13)-5.11*x(36)-5.11*x(43)+4.86*x(50)+190*x(136);
             x(12)-x(14)-5.11*x(36)-5.11*x(43)+4.86*x(50)+190*x(137);
             -x(8)+x(13)-7.325*x(37)-7.325*x(44)+4*x(51)+190*x(138);
             -x(9)+x(13)-7.325*x(37)-7.325*x(44)+4*x(51)+190*x(139);
             -x(11)+x(13)-7.325*x(37)-7.325*x(44)+4*x(51)+190*x(141);
             -x(12)+x(13)-7.325*x(37)-7.325*x(44)+4*x(51)+190*x(142);
             -7.325*x(37)-7.325*x(44)+4*x(51)+190*x(143);
             x(13)-x(14)-7.325*x(37)-7.325*x(44)+4*x(51)+190*x(144);
             -x(8)+x(14)-6.7975*x(38)-6.7975*x(45)+4.16*x(52)+190*x(145);
             -x(9)+x(14)-6.7975*x(38)-6.7975*x(45)+4.16*x(52)+190*x(146);
             -x(10)+x(14)-6.7975*x(38)-6.7975*x(45)+4.16*x(52)+190*x(147);
             -x(12)+x(14)-6.7975*x(38)-6.7975*x(45)+4.16*x(52)+190*x(149);
             -x(13)+x(14)-6.7975*x(38)-6.7975*x(45)+4.16*x(52)+190*x(150);
             -6.7975*x(38)-6.7975*x(45)+4.16*x(52)+190*x(151);
             x(25)*x(46)+x(22)*(1-x(32)-x(39))+x(28)*(x(32)+x(39)-x(46))+x(8)-x(9)+190*x(106);
             x(25)*x(46)+x(22)*(1-x(32)-x(39))+x(28)*(x(32)+x(39)-x(46))+x(8)-x(10)+190*x(107);
             x(25)*x(46)+x(22)*(1-x(32)-x(39))+x(28)*(x(32)+x(39)-x(46))+x(8)-x(11)+190*x(108);
             x(25)*x(46)+x(22)*(1-x(32)-x(39))+x(28)*(x(32)+x(39)-x(46))+x(8)-x(12)+190*x(109);
             x(25)*x(46)+x(22)*(1-x(32)-x(39))+x(28)*(x(32)+x(39)-x(46))+x(8)-x(13)+190*x(110);
             x(25)*x(46)+x(22)*(1-x(32)-x(39))+x(28)*(x(32)+x(39)-x(46))+x(8)-x(14)+190*x(111);
             x(26)*x(47)+x(23)*(1-x(33)-x(40))+x(29)*(x(33)+x(40)-x(47))-x(8)+x(9)+190*x(112);
             x(26)*x(47)+x(23)*(1-x(33)-x(40))+x(29)*(x(33)+x(40)-x(47))+x(9)-x(10)+190*x(113);
             x(26)*x(47)+x(23)*(1-x(33)-x(40))+x(29)*(x(33)+x(40)-x(47))+x(9)-x(11)+190*x(114);
             x(26)*x(47)+x(23)*(1-x(33)-x(40))+x(29)*(x(33)+x(40)-x(47))+x(9)-x(12)+190*x(115);
             x(26)*x(47)+x(23)*(1-x(33)-x(40))+x(29)*(x(33)+x(40)-x(47))+x(9)-x(13)+190*x(116);
             x(26)*x(47)+x(23)*(1-x(33)-x(40))+x(29)*(x(33)+x(40)-x(47))+x(9)-x(14)+190*x(117);
             x(27)*x(48)+x(24)*(1-x(34)-x(41))+x(30)*(x(34)+x(41)-x(48))-x(8)+x(10)+190*x(118);
             x(27)*x(48)+x(24)*(1-x(34)-x(41))+x(30)*(x(34)+x(41)-x(48))-x(9)+x(10)+190*x(119);
             x(27)*x(48)+x(24)*(1-x(34)-x(41))+x(30)*(x(34)+x(41)-x(48))+x(10)-x(11)+190*x(120);
             x(27)*x(48)+x(24)*(1-x(34)-x(41))+x(30)*(x(34)+x(41)-x(48))+x(10)-x(12)+190*x(121);
             x(27)*x(48)+x(24)*(1-x(34)-x(41))+x(30)*(x(34)+x(41)-x(48))+x(10)-x(13)+190*x(122);
             x(27)*x(48)+x(24)*(1-x(34)-x(41))+x(30)*(x(34)+x(41)-x(48))+x(10)-x(14)+190*x(123);
             -x(16)+x(18)+3.5*x(42)-3.6*x(56)+190*x(171);
             -x(17)+x(18)+3.5*x(42)-3.6*x(56)+190*x(172);
             3.5*x(42)-3.6*x(56)+190*x(173);
             x(18)-x(19)+3.5*x(42)-3.6*x(56)+190*x(174);
             x(18)-x(20)+3.5*x(42)-3.6*x(56)+190*x(175);
             x(18)-x(21)+3.5*x(42)-3.6*x(56)+190*x(176);
             -x(15)+x(19)+0.25*x(43)-4.86*x(57)+190*x(177);
             -x(17)+x(19)+0.25*x(43)-4.86*x(57)+190*x(179);
             -x(18)+x(19)+0.25*x(43)-4.86*x(57)+190*x(180);
             0.25*x(43)-4.86*x(57)+190*x(181);
             x(19)-x(20)+0.25*x(43)-4.86*x(57)+190*x(182);
             x(19)-x(21)+0.25*x(43)-4.86*x(57)+190*x(183);
             -x(15)+x(20)+3.325*x(44)-4*x(58)+190*x(184);
             -x(16)+x(20)+3.325*x(44)-4*x(58)+190*x(185);
             -x(18)+x(20)+3.325*x(44)-4*x(58)+190*x(187);
             -x(19)+x(20)+3.325*x(44)-4*x(58)+190*x(188);
             3.325*x(44)-4*x(58)+190*x(189);
             x(20)-x(21)+3.325*x(44)-4*x(58)+190*x(190);
             -x(15)+x(21)+2.6375*x(45)-4.16*x(59)+190*x(191);
             -x(16)+x(21)+2.6375*x(45)-4.16*x(59)+190*x(192);
             -x(17)+x(21)+2.6375*x(45)-4.16*x(59)+190*x(193);
             -x(19)+x(21)+2.6375*x(45)-4.16*x(59)+190*x(195);
             -x(20)+x(21)+2.6375*x(45)-4.16*x(59)+190*x(196);
             2.6375*x(45)-4.16*x(59)+190*x(197);
             x(28)*x(53)+x(25)*(1-x(39)-x(53))+x(22)*x(39)+x(15)-x(16)+190*x(152);
             x(28)*x(53)+x(25)*(1-x(39)-x(53))+x(22)*x(39)+x(15)-x(17)+190*x(153);
             x(28)*x(53)+x(25)*(1-x(39)-x(53))+x(22)*x(39)+x(15)-x(18)+190*x(154);
             x(28)*x(53)+x(25)*(1-x(39)-x(53))+x(22)*x(39)+x(15)-x(19)+190*x(155);
             x(28)*x(53)+x(25)*(1-x(39)-x(53))+x(22)*x(39)+x(15)-x(20)+190*x(156);
             x(28)*x(53)+x(25)*(1-x(39)-x(53))+x(22)*x(39)+x(15)-x(21)+190*x(157);
             x(29)*x(54)+x(26)*(1-x(40)-x(54))+x(23)*x(40)-x(15)+x(16)+190*x(158);
             x(29)*x(54)+x(26)*(1-x(40)-x(54))+x(23)*x(40)+x(16)-x(17)+190*x(159);
             x(29)*x(54)+x(26)*(1-x(40)-x(54))+x(23)*x(40)+x(16)-x(18)+190*x(160);
             x(29)*x(54)+x(26)*(1-x(40)-x(54))+x(23)*x(40)+x(16)-x(19)+190*x(161);
             x(29)*x(54)+x(26)*(1-x(40)-x(54))+x(23)*x(40)+x(16)-x(20)+190*x(162);
             x(29)*x(54)+x(26)*(1-x(40)-x(54))+x(23)*x(40)+x(16)-x(21)+190*x(163);
             x(30)*x(55)+x(27)*(1-x(41)-x(55))+x(24)*x(41)-x(15)+x(17)+190*x(164);
             x(30)*x(55)+x(27)*(1-x(41)-x(55))+x(24)*x(41)-x(16)+x(17)+190*x(165);
             x(30)*x(55)+x(27)*(1-x(41)-x(55))+x(24)*x(41)+x(17)-x(18)+190*x(166);
             x(30)*x(55)+x(27)*(1-x(41)-x(55))+x(24)*x(41)+x(17)-x(19)+190*x(167);
             x(30)*x(55)+x(27)*(1-x(41)-x(55))+x(24)*x(41)+x(17)-x(20)+190*x(168);
             x(30)*x(55)+x(27)*(1-x(41)-x(55))+x(24)*x(41)+x(17)-x(21)+190*x(169);
             x(60)+x(66)+x(106)+x(112)+x(152)+x(158);
             x(61)+x(72)+x(107)+x(118)+x(153)+x(164);
             x(62)+x(78)+x(108)+x(124)+x(154)+x(170);
             x(63)+x(85)+x(109)+x(131)+x(155)+x(177);
             x(64)+x(92)+x(110)+x(138)+x(156)+x(184);
             x(65)+x(99)+x(111)+x(145)+x(157)+x(191);
             x(60)+x(66)+x(106)+x(112)+x(152)+x(158);
             x(67)+x(73)+x(113)+x(119)+x(159)+x(165);
             x(68)+x(79)+x(114)+x(125)+x(160)+x(171);
             x(69)+x(86)+x(115)+x(132)+x(161)+x(178);
             x(70)+x(93)+x(116)+x(139)+x(162)+x(185);
             x(71)+x(100)+x(117)+x(146)+x(163)+x(192);
             x(61)+x(72)+x(107)+x(118)+x(153)+x(164);
             x(67)+x(73)+x(113)+x(119)+x(159)+x(165);
             x(74)+x(80)+x(120)+x(126)+x(166)+x(172);
             x(75)+x(87)+x(121)+x(133)+x(167)+x(179);
             x(76)+x(94)+x(122)+x(140)+x(168)+x(186);
             x(77)+x(101)+x(123)+x(147)+x(169)+x(193);
             x(62)+x(78)+x(108)+x(124)+x(154)+x(170);
             x(68)+x(79)+x(114)+x(125)+x(160)+x(171);
             x(74)+x(80)+x(120)+x(126)+x(166)+x(172);
             x(82)+x(88)+x(128)+x(134)+x(174)+x(180);
             x(83)+x(95)+x(129)+x(141)+x(175)+x(187);
             x(84)+x(102)+x(130)+x(148)+x(176)+x(194);
             x(63)+x(85)+x(109)+x(131)+x(155)+x(177);
             x(69)+x(86)+x(115)+x(132)+x(161)+x(178);
             x(75)+x(87)+x(121)+x(133)+x(167)+x(179);
             x(82)+x(88)+x(128)+x(134)+x(174)+x(180);
             x(90)+x(96)+x(136)+x(142)+x(182)+x(188);
             x(91)+x(103)+x(137)+x(149)+x(183)+x(195);
             x(64)+x(92)+x(110)+x(138)+x(156)+x(184);
             x(70)+x(93)+x(116)+x(139)+x(162)+x(185);
             x(76)+x(94)+x(122)+x(140)+x(168)+x(186);
             x(83)+x(95)+x(129)+x(141)+x(175)+x(187);
             x(90)+x(96)+x(136)+x(142)+x(182)+x(188);
             x(98)+x(104)+x(144)+x(150)+x(190)+x(196);
             x(65)+x(99)+x(111)+x(145)+x(157)+x(191);
             x(71)+x(100)+x(117)+x(146)+x(163)+x(192);
             x(77)+x(101)+x(123)+x(147)+x(169)+x(193);
             x(84)+x(102)+x(130)+x(148)+x(176)+x(194);
             x(91)+x(103)+x(137)+x(149)+x(183)+x(195);
             x(98)+x(104)+x(144)+x(150)+x(190)+x(196);
             x(4)-x(31)+7.1*x(35)+3.6*x(42)-3.6*x(49)+3.6*x(56);
             x(5)-x(31)+5.11*x(36)+4.86*x(43)-4.86*x(50)+4.86*x(57);
             x(6)-x(31)+7.325*x(37)+4*x(44)-4*x(51)+4*x(58);
             x(7)-x(31)+6.7975*x(38)+4.16*x(45)-4.16*x(52)+4.16*x(59);
             x(11)-7.1*x(35)-7.1*x(42)+3.6*x(49);
             x(12)-5.11*x(36)-5.11*x(43)+4.86*x(50);
             x(13)-7.325*x(37)-7.325*x(44)+4*x(51);
             x(14)-6.7975*x(38)-6.7975*x(45)+4.16*x(52);
             x(18)+3.5*x(42)-3.6*x(56);
             x(19)+0.25*x(43)-4.86*x(57);
             x(20)+3.325*x(44)-4*x(58);
             x(21)+2.6375*x(45)-4.16*x(59);
             x(22)*x(32)+x(25)*(x(39)-x(46)+x(53))+x(28)*(1-x(32)-x(39)+x(46)-x(53))+x(1)-x(31);
             x(23)*x(33)+x(26)*(x(40)-x(47)+x(54))+x(29)*(1-x(33)-x(40)+x(47)-x(54))+x(2)-x(31);
             x(24)*x(34)+x(27)*(x(41)-x(48)+x(55))+x(30)*(1-x(34)-x(41)+x(48)-x(55))+x(3)-x(31);
             x(25)*x(46)+x(22)*(1-x(32)-x(39))+x(28)*(x(32)+x(39)-x(46))+x(8);
             x(26)*x(47)+x(23)*(1-x(33)-x(40))+x(29)*(x(33)+x(40)-x(47))+x(9);
             x(27)*x(48)+x(24)*(1-x(34)-x(41))+x(30)*(x(34)+x(41)-x(48))+x(10);
             x(28)*x(53)+x(25)*(1-x(39)-x(53))+x(22)*x(39)+x(15);
             x(29)*x(54)+x(26)*(1-x(40)-x(54))+x(23)*x(40)+x(16);
             x(30)*x(55)+x(27)*(1-x(41)-x(55))+x(24)*x(41)+x(17);
             x(32)+x(39);
             x(33)+x(40);
             x(34)+x(41);
             x(35)+x(42);
             x(36)+x(43);
             x(37)+x(44);
             x(38)+x(45);
             x(39)+x(53);
             x(40)+x(54);
             x(41)+x(55);
             x(42)+x(56);
             x(43)+x(57);
             x(44)+x(58);
             x(45)+x(59);
             x(39)-x(46)+x(53);
             x(40)-x(47)+x(54);
             x(41)-x(48)+x(55);
             x(42)-x(49)+x(56);
             x(43)-x(50)+x(57);
             x(44)-x(51)+x(58);
             x(45)-x(52)+x(59);
             x(39)-x(46)+x(53);
             x(40)-x(47)+x(54);
             x(41)-x(48)+x(55);
             x(42)-x(49)+x(56);
             x(43)-x(50)+x(57);
             x(44)-x(51)+x(58);
             x(45)-x(52)+x(59);
             -x(32)-x(39)+x(46)-x(53);
             -x(33)-x(40)+x(47)-x(54);
             -x(34)-x(41)+x(48)-x(55);
             -x(35)-x(42)+x(49)-x(56);
             -x(36)-x(43)+x(50)-x(57);
             -x(37)-x(44)+x(51)-x(58);
             -x(38)-x(45)+x(52)-x(59);
             -x(32)-x(39)+x(46)-x(53);
             -x(33)-x(40)+x(47)-x(54);
             -x(34)-x(41)+x(48)-x(55);
             -x(35)-x(42)+x(49)-x(56);
             -x(36)-x(43)+x(50)-x(57);
             -x(37)-x(44)+x(51)-x(58);
             -x(38)-x(45)+x(52)-x(59);
             x(32)+x(39)-x(46);
             x(33)+x(40)-x(47);
             x(34)+x(41)-x(48);
             x(35)+x(42)-x(49);
             x(36)+x(43)-x(50);
             x(37)+x(44)-x(51);
             x(38)+x(45)-x(52);
             x(32)+x(39)-x(46);
             x(33)+x(40)-x(47);
             x(34)+x(41)-x(48);
             x(35)+x(42)-x(49);
             x(36)+x(43)-x(50);
             x(37)+x(44)-x(51);
             x(38)+x(45)-x(52);
             x(22)-190*x(198);
             x(22)-190*x(199);
             x(22)-190*x(200);
             x(23)-190*x(201);
             x(23)-190*x(202);
             x(23)-190*x(203);
             x(24)-190*x(204);
             x(24)-190*x(205);
             x(24)-190*x(206);
             x(22)+190*x(198);
             x(22)+190*x(199);
             x(22)+190*x(200);
             x(23)+190*x(201);
             x(23)+190*x(202);
             x(23)+190*x(203);
             x(24)+190*x(204);
             x(24)+190*x(205);
             x(24)+190*x(206);
             x(25)-190*x(198);
             x(25)-190*x(199);
             x(25)-190*x(200);
             x(26)-190*x(201);
             x(26)-190*x(202);
             x(26)-190*x(203);
             x(27)-190*x(204);
             x(27)-190*x(205);
             x(27)-190*x(206);
             x(25)+190*x(198);
             x(25)+190*x(199);
             x(25)+190*x(200);
             x(26)+190*x(201);
             x(26)+190*x(202);
             x(26)+190*x(203);
             x(27)+190*x(204);
             x(27)+190*x(205);
             x(27)+190*x(206);
             x(28)-190*x(198);
             x(28)-190*x(199);
             x(28)-190*x(200);
             x(29)-190*x(201);
             x(29)-190*x(202);
             x(29)-190*x(203);
             x(30)-190*x(204);
             x(30)-190*x(205);
             x(30)-190*x(206);
             x(28)+190*x(198);
             x(28)+190*x(199);
             x(28)+190*x(200);
             x(29)+190*x(201);
             x(29)+190*x(202);
             x(29)+190*x(203);
             x(30)+190*x(204);
             x(30)+190*x(205);
             x(30)+190*x(206);
             x(198)+x(199)+x(200);
             x(201)+x(202)+x(203);
             x(204)+x(205)+x(206)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-1,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,-184.5,-185.875,-186.75,-185,-187.625,-185.3,-184.5,-186,-182,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-187.625,-187.875,-188.75,-185.875,-185.75,-189.43,-184,-184,-185.3,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-189.625,-189,-188.75,-189.75,-189.625,-189.71,-189.5,-188.625,-189.2,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1]';
cu = [189,189,189,189,189,189,189.3,189.3,189.3,189.3,189.3,189.3,189.2,189.2,189.2,189.2,189.2,189.2,189.36,189.36,189.36,189.36,189.36,189.36,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,181.9,181.9,181.9,181.9,181.9,181.9,184.19,184.19,184.19,184.19,184.19,184.19,181.875,181.875,181.875,181.875,181.875,181.875,182.5625,182.5625,182.5625,182.5625,182.5625,182.5625,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,185.4,185.4,185.4,185.4,185.4,185.4,184.44,184.44,184.44,184.44,184.44,184.44,185.2,185.2,185.2,185.2,185.2,185.2,185.2,185.2,185.2,185.2,185.2,185.2,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,-1,-0.7,-0.8,-0.64,-2.92,-0.63,-2.945,-2.2575,-1.56,-2.52,-1.76,-1.76,0,0,0,5.18,5.18,5.18,3.04,3.04,3.04,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1,1,1,1,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,195.5,194.125,193.25,195,192.375,194.7,195.5,194,198,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,192.375,192.125,191.25,194.125,194.25,190.57,196,196,194.7,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,190.375,191,191.25,190.25,190.375,190.29,190.5,191.375,190.8,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_157');
opts.sense = 'min';