% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:20
% Model: SLay05H

% Objective
fun = @(x)150*((-4+x(1))^2+(-10+x(6))^2)+390*((-10+x(2))^2+(-15+x(7))^2)+240*((-7+x(3))^2+(-9+x(8))^2)+70*((-3+x(4))^2+(-3+x(9))^2)+165*((-20+x(5))^2+(-17+x(10))^2)+300*x(211)+240*x(212)+210*x(213)+140*x(214)+100*x(215)+150*x(216)+220*x(217)+120*x(218)+300*x(219)+100*x(220)+300*x(221)+240*x(222)+210*x(223)+140*x(224)+100*x(225)+150*x(226)+220*x(227)+120*x(228)+300*x(229)+100*x(230);

% Bounds
lb = [2.5,3.5,1.5,1,2,3,2.5,1.5,1.5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [27.5,26.5,28.5,29,28,27,27.5,28.5,28.5,28,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)+x(2)+x(211);
             -x(1)+x(3)+x(212);
             -x(1)+x(4)+x(213);
             -x(1)+x(5)+x(214);
             -x(2)+x(3)+x(215);
             -x(2)+x(4)+x(216);
             -x(2)+x(5)+x(217);
             -x(3)+x(4)+x(218);
             -x(3)+x(5)+x(219);
             -x(4)+x(5)+x(220);
             x(1)-x(2)+x(211);
             x(1)-x(3)+x(212);
             x(1)-x(4)+x(213);
             x(1)-x(5)+x(214);
             x(2)-x(3)+x(215);
             x(2)-x(4)+x(216);
             x(2)-x(5)+x(217);
             x(3)-x(4)+x(218);
             x(3)-x(5)+x(219);
             x(4)-x(5)+x(220);
             -x(6)+x(7)+x(221);
             -x(6)+x(8)+x(222);
             -x(6)+x(9)+x(223);
             -x(6)+x(10)+x(224);
             -x(7)+x(8)+x(225);
             -x(7)+x(9)+x(226);
             -x(7)+x(10)+x(227);
             -x(8)+x(9)+x(228);
             -x(8)+x(10)+x(229);
             -x(9)+x(10)+x(230);
             x(6)-x(7)+x(221);
             x(6)-x(8)+x(222);
             x(6)-x(9)+x(223);
             x(6)-x(10)+x(224);
             x(7)-x(8)+x(225);
             x(7)-x(9)+x(226);
             x(7)-x(10)+x(227);
             x(8)-x(9)+x(228);
             x(8)-x(10)+x(229);
             x(9)-x(10)+x(230);
             x(1)-x(11)-x(15)-x(19)-x(23);
             x(1)-x(12)-x(16)-x(20)-x(24);
             x(1)-x(13)-x(17)-x(21)-x(25);
             x(1)-x(14)-x(18)-x(22)-x(26);
             x(2)-x(27)-x(31)-x(35)-x(39);
             x(2)-x(28)-x(32)-x(36)-x(40);
             x(2)-x(29)-x(33)-x(37)-x(41);
             x(2)-x(30)-x(34)-x(38)-x(42);
             x(3)-x(43)-x(47)-x(51)-x(55);
             x(3)-x(44)-x(48)-x(52)-x(56);
             x(3)-x(45)-x(49)-x(53)-x(57);
             x(3)-x(46)-x(50)-x(54)-x(58);
             x(4)-x(59)-x(63)-x(67)-x(71);
             x(4)-x(60)-x(64)-x(68)-x(72);
             x(4)-x(61)-x(65)-x(69)-x(73);
             x(4)-x(62)-x(66)-x(70)-x(74);
             x(5)-x(75)-x(79)-x(83)-x(87);
             x(5)-x(76)-x(80)-x(84)-x(88);
             x(5)-x(77)-x(81)-x(85)-x(89);
             x(5)-x(78)-x(82)-x(86)-x(90);
             x(6)-x(91)-x(95)-x(99)-x(103);
             x(6)-x(92)-x(96)-x(100)-x(104);
             x(6)-x(93)-x(97)-x(101)-x(105);
             x(6)-x(94)-x(98)-x(102)-x(106);
             x(7)-x(107)-x(111)-x(115)-x(119);
             x(7)-x(108)-x(112)-x(116)-x(120);
             x(7)-x(109)-x(113)-x(117)-x(121);
             x(7)-x(110)-x(114)-x(118)-x(122);
             x(8)-x(123)-x(127)-x(131)-x(135);
             x(8)-x(124)-x(128)-x(132)-x(136);
             x(8)-x(125)-x(129)-x(133)-x(137);
             x(8)-x(126)-x(130)-x(134)-x(138);
             x(9)-x(139)-x(143)-x(147)-x(151);
             x(9)-x(140)-x(144)-x(148)-x(152);
             x(9)-x(141)-x(145)-x(149)-x(153);
             x(9)-x(142)-x(146)-x(150)-x(154);
             x(10)-x(155)-x(159)-x(163)-x(167);
             x(10)-x(156)-x(160)-x(164)-x(168);
             x(10)-x(157)-x(161)-x(165)-x(169);
             x(10)-x(158)-x(162)-x(166)-x(170);
             x(11)-27.5*x(171);
             x(12)-27.5*x(172);
             x(13)-27.5*x(173);
             x(14)-27.5*x(174);
             x(15)-27.5*x(181);
             x(16)-27.5*x(182);
             x(17)-27.5*x(183);
             x(18)-27.5*x(184);
             x(19)-27.5*x(191);
             x(20)-27.5*x(192);
             x(21)-27.5*x(193);
             x(22)-27.5*x(194);
             x(23)-27.5*x(201);
             x(24)-27.5*x(202);
             x(25)-27.5*x(203);
             x(26)-27.5*x(204);
             x(27)-27.5*x(171);
             x(28)-26.5*x(175);
             x(29)-26.5*x(176);
             x(30)-26.5*x(177);
             x(31)-27.5*x(181);
             x(32)-26.5*x(185);
             x(33)-26.5*x(186);
             x(34)-26.5*x(187);
             x(35)-27.5*x(191);
             x(36)-26.5*x(195);
             x(37)-26.5*x(196);
             x(38)-26.5*x(197);
             x(39)-27.5*x(201);
             x(40)-26.5*x(205);
             x(41)-26.5*x(206);
             x(42)-26.5*x(207);
             x(43)-27.5*x(172);
             x(44)-26.5*x(175);
             x(45)-28.5*x(178);
             x(46)-28.5*x(179);
             x(47)-27.5*x(182);
             x(48)-26.5*x(185);
             x(49)-28.5*x(188);
             x(50)-28.5*x(189);
             x(51)-27.5*x(192);
             x(52)-26.5*x(195);
             x(53)-28.5*x(198);
             x(54)-28.5*x(199);
             x(55)-27.5*x(202);
             x(56)-26.5*x(205);
             x(57)-28.5*x(208);
             x(58)-28.5*x(209);
             x(59)-27.5*x(173);
             x(60)-26.5*x(176);
             x(61)-28.5*x(178);
             x(62)-29*x(180);
             x(63)-27.5*x(183);
             x(64)-26.5*x(186);
             x(65)-28.5*x(188);
             x(66)-29*x(190);
             x(67)-27.5*x(193);
             x(68)-26.5*x(196);
             x(69)-28.5*x(198);
             x(70)-29*x(200);
             x(71)-27.5*x(203);
             x(72)-26.5*x(206);
             x(73)-28.5*x(208);
             x(74)-29*x(210);
             x(75)-27.5*x(174);
             x(76)-26.5*x(177);
             x(77)-28.5*x(179);
             x(78)-29*x(180);
             x(79)-27.5*x(184);
             x(80)-26.5*x(187);
             x(81)-28.5*x(189);
             x(82)-29*x(190);
             x(83)-27.5*x(194);
             x(84)-26.5*x(197);
             x(85)-28.5*x(199);
             x(86)-29*x(200);
             x(87)-27.5*x(204);
             x(88)-26.5*x(207);
             x(89)-28.5*x(209);
             x(90)-29*x(210);
             x(91)-27*x(171);
             x(92)-27*x(172);
             x(93)-27*x(173);
             x(94)-27*x(174);
             x(95)-27*x(181);
             x(96)-27*x(182);
             x(97)-27*x(183);
             x(98)-27*x(184);
             x(99)-27*x(191);
             x(100)-27*x(192);
             x(101)-27*x(193);
             x(102)-27*x(194);
             x(103)-27*x(201);
             x(104)-27*x(202);
             x(105)-27*x(203);
             x(106)-27*x(204);
             x(107)-27*x(171);
             x(108)-27.5*x(175);
             x(109)-27.5*x(176);
             x(110)-27.5*x(177);
             x(111)-27*x(181);
             x(112)-27.5*x(185);
             x(113)-27.5*x(186);
             x(114)-27.5*x(187);
             x(115)-27*x(191);
             x(116)-27.5*x(195);
             x(117)-27.5*x(196);
             x(118)-27.5*x(197);
             x(119)-27*x(201);
             x(120)-27.5*x(205);
             x(121)-27.5*x(206);
             x(122)-27.5*x(207);
             x(123)-27*x(172);
             x(124)-27.5*x(175);
             x(125)-28.5*x(178);
             x(126)-28.5*x(179);
             x(127)-27*x(182);
             x(128)-27.5*x(185);
             x(129)-28.5*x(188);
             x(130)-28.5*x(189);
             x(131)-27*x(192);
             x(132)-27.5*x(195);
             x(133)-28.5*x(198);
             x(134)-28.5*x(199);
             x(135)-27*x(202);
             x(136)-27.5*x(205);
             x(137)-28.5*x(208);
             x(138)-28.5*x(209);
             x(139)-27*x(173);
             x(140)-27.5*x(176);
             x(141)-28.5*x(178);
             x(142)-28.5*x(180);
             x(143)-27*x(183);
             x(144)-27.5*x(186);
             x(145)-28.5*x(188);
             x(146)-28.5*x(190);
             x(147)-27*x(193);
             x(148)-27.5*x(196);
             x(149)-28.5*x(198);
             x(150)-28.5*x(200);
             x(151)-27*x(203);
             x(152)-27.5*x(206);
             x(153)-28.5*x(208);
             x(154)-28.5*x(210);
             x(155)-27*x(174);
             x(156)-27.5*x(177);
             x(157)-28.5*x(179);
             x(158)-28.5*x(180);
             x(159)-27*x(184);
             x(160)-27.5*x(187);
             x(161)-28.5*x(189);
             x(162)-28.5*x(190);
             x(163)-27*x(194);
             x(164)-27.5*x(197);
             x(165)-28.5*x(199);
             x(166)-28.5*x(200);
             x(167)-27*x(204);
             x(168)-27.5*x(207);
             x(169)-28.5*x(209);
             x(170)-28.5*x(210);
             x(11)-x(27)+6*x(171);
             x(12)-x(43)+4*x(172);
             x(13)-x(59)+3.5*x(173);
             x(14)-x(75)+4.5*x(174);
             x(28)-x(44)+5*x(175);
             x(29)-x(60)+4.5*x(176);
             x(30)-x(76)+5.5*x(177);
             x(45)-x(61)+2.5*x(178);
             x(46)-x(77)+3.5*x(179);
             x(62)-x(78)+3*x(180);
             -x(15)+x(31)+6*x(181);
             -x(16)+x(47)+4*x(182);
             -x(17)+x(63)+3.5*x(183);
             -x(18)+x(79)+4.5*x(184);
             -x(32)+x(48)+5*x(185);
             -x(33)+x(64)+4.5*x(186);
             -x(34)+x(80)+5.5*x(187);
             -x(49)+x(65)+2.5*x(188);
             -x(50)+x(81)+3.5*x(189);
             -x(66)+x(82)+3*x(190);
             x(99)-x(115)+5.5*x(191);
             x(100)-x(131)+4.5*x(192);
             x(101)-x(147)+4.5*x(193);
             x(102)-x(163)+5*x(194);
             x(116)-x(132)+4*x(195);
             x(117)-x(148)+4*x(196);
             x(118)-x(164)+4.5*x(197);
             x(133)-x(149)+3*x(198);
             x(134)-x(165)+3.5*x(199);
             x(150)-x(166)+3.5*x(200);
             -x(103)+x(119)+5.5*x(201);
             -x(104)+x(135)+4.5*x(202);
             -x(105)+x(151)+4.5*x(203);
             -x(106)+x(167)+5*x(204);
             -x(120)+x(136)+4*x(205);
             -x(121)+x(152)+4*x(206);
             -x(122)+x(168)+4.5*x(207);
             -x(137)+x(153)+3*x(208);
             -x(138)+x(169)+3.5*x(209);
             -x(154)+x(170)+3.5*x(210);
             x(171)+x(181)+x(191)+x(201);
             x(172)+x(182)+x(192)+x(202);
             x(173)+x(183)+x(193)+x(203);
             x(174)+x(184)+x(194)+x(204);
             x(175)+x(185)+x(195)+x(205);
             x(176)+x(186)+x(196)+x(206);
             x(177)+x(187)+x(197)+x(207);
             x(178)+x(188)+x(198)+x(208);
             x(179)+x(189)+x(199)+x(209);
             x(180)+x(190)+x(200)+x(210)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [2.5,3.5,1.5,1,2,3,2.5,1.5,1.5,2,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','SLay05H');
opts.sense = 'min';
