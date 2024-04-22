% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:54:32
% Model: inf_minlp_305

% Objective
fun = @(x)x(172);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-x(3)-x(4)-x(5)-x(6)-x(7)-x(8)-x(9)-x(10)-x(11)-x(12)+x(13);
             x(1)+x(87);
             x(2)+x(88);
             x(3)+x(89);
             x(4)+x(90);
             x(5)+x(91);
             x(6)+x(92);
             x(7)+x(93);
             x(8)+x(94);
             x(9)+x(95);
             x(10)+x(96);
             x(11)+x(97);
             x(12)+x(98);
             -5.7*x(1)+32.1*x(14)+23.3*x(15)+0.0372*x(16);
             -4.275*x(2)+32.1*x(17)+23.3*x(18)+0.0372*x(19);
             -2.85*x(3)+32.1*x(20)+23.3*x(21)+0.0372*x(22);
             -3.325*x(4)+32.1*x(23)+23.3*x(24)+0.0372*x(25);
             -6.175*x(5)+32.1*x(26)+23.3*x(27)+0.0372*x(28);
             -3.515*x(6)+32.1*x(29)+23.3*x(30)+0.0372*x(31);
             -5.7*x(7)+32.1*x(32)+23.3*x(33)+0.0372*x(34);
             -4.37*x(8)+32.1*x(35)+23.3*x(36)+0.0372*x(37);
             -2.945*x(9)+32.1*x(38)+23.3*x(39)+0.0372*x(40);
             -6.27*x(10)+32.1*x(41)+23.3*x(42)+0.0372*x(43);
             -4.18*x(11)+32.1*x(44)+23.3*x(45)+0.0372*x(46);
             -3.23*x(12)+32.1*x(47)+23.3*x(48)+0.0372*x(49);
             -0.24*x(1)+2.457*x(14)+2.53*x(15)+0.0029*x(16)-x(50)+x(99);
             -0.34*x(2)+2.457*x(17)+2.53*x(18)+0.0029*x(19)-x(51)+x(100);
             -0.54*x(3)+2.457*x(20)+2.53*x(21)+0.0029*x(22)-x(52)+x(101);
             -0.44*x(4)+2.457*x(23)+2.53*x(24)+0.0029*x(25)-x(53)+x(102);
             -0.11*x(5)+2.457*x(26)+2.53*x(27)+0.0029*x(28)-x(54)+x(103);
             -0.39*x(6)+2.457*x(29)+2.53*x(30)+0.0029*x(31)-x(55)+x(104);
             -0.23*x(7)+2.457*x(32)+2.53*x(33)+0.0029*x(34)-x(56)+x(105);
             -0.31*x(8)+2.457*x(35)+2.53*x(36)+0.0029*x(37)-x(57)+x(106);
             -0.52*x(9)+2.457*x(38)+2.53*x(39)+0.0029*x(40)-x(58)+x(107);
             -0.14*x(10)+2.457*x(41)+2.53*x(42)+0.0029*x(43)-x(59)+x(108);
             -0.32*x(11)+2.457*x(44)+2.53*x(45)+0.0029*x(46)-x(60)+x(109);
             -0.41*x(12)+2.457*x(47)+2.53*x(48)+0.0029*x(49)-x(61)+x(110);
             0.5*x(1)-x(172)*(x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12))+0.4*x(2)+0.2*x(3)+0.3*x(4)+0.63*x(5)+0.35*x(6)+0.51*x(7)+0.43*x(8)+0.22*x(9)+0.6*x(10)+0.42*x(11)+0.33*x(12)+2.457*x(14)+2.53*x(15)+0.0029*x(16)+2.457*x(17)+2.53*x(18)+0.0029*x(19)+2.457*x(20)+2.53*x(21)+0.0029*x(22)+2.457*x(23)+2.53*x(24)+0.0029*x(25)+2.457*x(26)+2.53*x(27)+0.0029*x(28)+2.457*x(29)+2.53*x(30)+0.0029*x(31)+2.457*x(32)+2.53*x(33)+0.0029*x(34)+2.457*x(35)+2.53*x(36)+0.0029*x(37)+2.457*x(38)+2.53*x(39)+0.0029*x(40)+2.457*x(41)+2.53*x(42)+0.0029*x(43)+2.457*x(44)+2.53*x(45)+0.0029*x(46)+2.457*x(47)+2.53*x(48)+0.0029*x(49);
             x(172);
             x(172);
             0.00148*x(13)-x(111)+x(270);
             0.002*x(1)+x(63)-0.24*x(75)-x(112)-5.7*x(258)-x(270);
             0.002*x(2)+x(64)-0.34*x(76)-x(113)-4.275*x(259)-x(270);
             0.002*x(3)+x(65)-0.54*x(77)-x(114)-2.85*x(260)-x(270);
             0.002*x(4)+x(66)-0.44*x(78)-x(115)-3.325*x(261)-x(270);
             0.002*x(5)+x(67)-0.11*x(79)-x(116)-6.175*x(262)-x(270);
             0.002*x(6)+x(68)-0.39*x(80)-x(117)-3.515*x(263)-x(270);
             0.002*x(7)+x(69)-0.23*x(81)-x(118)-5.7*x(264)-x(270);
             0.002*x(8)+x(70)-0.31*x(82)-x(119)-4.37*x(265)-x(270);
             0.002*x(9)+x(71)-0.52*x(83)-x(120)-2.945*x(266)-x(270);
             0.002*x(10)+x(72)-0.14*x(84)-x(121)-6.27*x(267)-x(270);
             0.002*x(11)+x(73)-0.32*x(85)-x(122)-4.18*x(268)-x(270);
             0.002*x(12)+x(74)-0.41*x(86)-x(123)-3.23*x(269)-x(270);
             2.457*x(75)-x(124)+32.1*x(258);
             2.53*x(75)-x(125)+23.3*x(258);
             0.0029*x(75)-x(126)+0.0372*x(258);
             2.457*x(76)-x(127)+32.1*x(259);
             2.53*x(76)-x(128)+23.3*x(259);
             0.0029*x(76)-x(129)+0.0372*x(259);
             2.457*x(77)-x(130)+32.1*x(260);
             2.53*x(77)-x(131)+23.3*x(260);
             0.0029*x(77)-x(132)+0.0372*x(260);
             2.457*x(78)-x(133)+32.1*x(261);
             2.53*x(78)-x(134)+23.3*x(261);
             0.0029*x(78)-x(135)+0.0372*x(261);
             2.457*x(79)-x(136)+32.1*x(262);
             2.53*x(79)-x(137)+23.3*x(262);
             0.0029*x(79)-x(138)+0.0372*x(262);
             2.457*x(80)-x(139)+32.1*x(263);
             2.53*x(80)-x(140)+23.3*x(263);
             0.0029*x(80)-x(141)+0.0372*x(263);
             2.457*x(81)-x(142)+32.1*x(264);
             2.53*x(81)-x(143)+23.3*x(264);
             0.0029*x(81)-x(144)+0.0372*x(264);
             2.457*x(82)-x(145)+32.1*x(265);
             2.53*x(82)-x(146)+23.3*x(265);
             0.0029*x(82)-x(147)+0.0372*x(265);
             2.457*x(83)-x(148)+32.1*x(266);
             2.53*x(83)-x(149)+23.3*x(266);
             0.0029*x(83)-x(150)+0.0372*x(266);
             2.457*x(84)-x(151)+32.1*x(267);
             2.53*x(84)-x(152)+23.3*x(267);
             0.0029*x(84)-x(153)+0.0372*x(267);
             2.457*x(85)-x(154)+32.1*x(268);
             2.53*x(85)-x(155)+23.3*x(268);
             0.0029*x(85)-x(156)+0.0372*x(268);
             2.457*x(86)-x(157)+32.1*x(269);
             2.53*x(86)-x(158)+23.3*x(269);
             0.0029*x(86)-x(159)+0.0372*x(269);
             x(62)-x(75)-x(160);
             x(62)-x(76)-x(161);
             x(62)-x(77)-x(162);
             x(62)-x(78)-x(163);
             x(62)-x(79)-x(164);
             x(62)-x(80)-x(165);
             x(62)-x(81)-x(166);
             x(62)-x(82)-x(167);
             x(62)-x(83)-x(168);
             x(62)-x(84)-x(169);
             x(62)-x(85)-x(170);
             x(62)-x(86)-x(171);
             x(87)-100000*x(173);
             x(88)-100000*x(174);
             x(89)-100000*x(175);
             x(90)-100000*x(176);
             x(91)-100000*x(177);
             x(92)-100000*x(178);
             x(93)-100000*x(179);
             x(94)-100000*x(180);
             x(95)-100000*x(181);
             x(96)-100000*x(182);
             x(97)-100000*x(183);
             x(98)-100000*x(184);
             x(63)+100000*x(173);
             x(64)+100000*x(174);
             x(65)+100000*x(175);
             x(66)+100000*x(176);
             x(67)+100000*x(177);
             x(68)+100000*x(178);
             x(69)+100000*x(179);
             x(70)+100000*x(180);
             x(71)+100000*x(181);
             x(72)+100000*x(182);
             x(73)+100000*x(183);
             x(74)+100000*x(184);
             x(99)-100000*x(185);
             x(100)-100000*x(186);
             x(101)-100000*x(187);
             x(102)-100000*x(188);
             x(103)-100000*x(189);
             x(104)-100000*x(190);
             x(105)-100000*x(191);
             x(106)-100000*x(192);
             x(107)-100000*x(193);
             x(108)-100000*x(194);
             x(109)-100000*x(195);
             x(110)-100000*x(196);
             x(75)+100000*x(185);
             x(76)+100000*x(186);
             x(77)+100000*x(187);
             x(78)+100000*x(188);
             x(79)+100000*x(189);
             x(80)+100000*x(190);
             x(81)+100000*x(191);
             x(82)+100000*x(192);
             x(83)+100000*x(193);
             x(84)+100000*x(194);
             x(85)+100000*x(195);
             x(86)+100000*x(196);
             x(111)-100000*x(197);
             x(13)+100000*x(197);
             x(112)-100000*x(198);
             x(113)-100000*x(199);
             x(114)-100000*x(200);
             x(115)-100000*x(201);
             x(116)-100000*x(202);
             x(117)-100000*x(203);
             x(118)-100000*x(204);
             x(119)-100000*x(205);
             x(120)-100000*x(206);
             x(121)-100000*x(207);
             x(122)-100000*x(208);
             x(123)-100000*x(209);
             x(1)+100000*x(198);
             x(2)+100000*x(199);
             x(3)+100000*x(200);
             x(4)+100000*x(201);
             x(5)+100000*x(202);
             x(6)+100000*x(203);
             x(7)+100000*x(204);
             x(8)+100000*x(205);
             x(9)+100000*x(206);
             x(10)+100000*x(207);
             x(11)+100000*x(208);
             x(12)+100000*x(209);
             x(124)-100000*x(210);
             x(125)-100000*x(211);
             x(126)-100000*x(212);
             x(127)-100000*x(213);
             x(128)-100000*x(214);
             x(129)-100000*x(215);
             x(130)-100000*x(216);
             x(131)-100000*x(217);
             x(132)-100000*x(218);
             x(133)-100000*x(219);
             x(134)-100000*x(220);
             x(135)-100000*x(221);
             x(136)-100000*x(222);
             x(137)-100000*x(223);
             x(138)-100000*x(224);
             x(139)-100000*x(225);
             x(140)-100000*x(226);
             x(141)-100000*x(227);
             x(142)-100000*x(228);
             x(143)-100000*x(229);
             x(144)-100000*x(230);
             x(145)-100000*x(231);
             x(146)-100000*x(232);
             x(147)-100000*x(233);
             x(148)-100000*x(234);
             x(149)-100000*x(235);
             x(150)-100000*x(236);
             x(151)-100000*x(237);
             x(152)-100000*x(238);
             x(153)-100000*x(239);
             x(154)-100000*x(240);
             x(155)-100000*x(241);
             x(156)-100000*x(242);
             x(157)-100000*x(243);
             x(158)-100000*x(244);
             x(159)-100000*x(245);
             x(14)+100000*x(210);
             x(15)+100000*x(211);
             x(16)+100000*x(212);
             x(17)+100000*x(213);
             x(18)+100000*x(214);
             x(19)+100000*x(215);
             x(20)+100000*x(216);
             x(21)+100000*x(217);
             x(22)+100000*x(218);
             x(23)+100000*x(219);
             x(24)+100000*x(220);
             x(25)+100000*x(221);
             x(26)+100000*x(222);
             x(27)+100000*x(223);
             x(28)+100000*x(224);
             x(29)+100000*x(225);
             x(30)+100000*x(226);
             x(31)+100000*x(227);
             x(32)+100000*x(228);
             x(33)+100000*x(229);
             x(34)+100000*x(230);
             x(35)+100000*x(231);
             x(36)+100000*x(232);
             x(37)+100000*x(233);
             x(38)+100000*x(234);
             x(39)+100000*x(235);
             x(40)+100000*x(236);
             x(41)+100000*x(237);
             x(42)+100000*x(238);
             x(43)+100000*x(239);
             x(44)+100000*x(240);
             x(45)+100000*x(241);
             x(46)+100000*x(242);
             x(47)+100000*x(243);
             x(48)+100000*x(244);
             x(49)+100000*x(245);
             x(160)-100000*x(246);
             x(161)-100000*x(247);
             x(162)-100000*x(248);
             x(163)-100000*x(249);
             x(164)-100000*x(250);
             x(165)-100000*x(251);
             x(166)-100000*x(252);
             x(167)-100000*x(253);
             x(168)-100000*x(254);
             x(169)-100000*x(255);
             x(170)-100000*x(256);
             x(171)-100000*x(257);
             x(50)+100000*x(246);
             x(51)+100000*x(247);
             x(52)+100000*x(248);
             x(53)+100000*x(249);
             x(54)+100000*x(250);
             x(55)+100000*x(251);
             x(56)+100000*x(252);
             x(57)+100000*x(253);
             x(58)+100000*x(254);
             x(59)+100000*x(255);
             x(60)+100000*x(256);
             x(61)+100000*x(257);
             -x(173)+x(198);
             -x(174)+x(199);
             -x(175)+x(200);
             -x(176)+x(201);
             -x(177)+x(202);
             -x(178)+x(203);
             -x(179)+x(204);
             -x(180)+x(205);
             -x(181)+x(206);
             -x(182)+x(207);
             -x(183)+x(208);
             -x(184)+x(209);
             -x(173)+x(197);
             -x(174)+x(197);
             -x(175)+x(197);
             -x(176)+x(197);
             -x(177)+x(197);
             -x(178)+x(197);
             -x(179)+x(197);
             -x(180)+x(197);
             -x(181)+x(197);
             -x(182)+x(197);
             -x(183)+x(197);
             -x(184)+x(197);
             x(173)+x(210)+x(211)+x(212);
             x(174)+x(213)+x(214)+x(215);
             x(175)+x(216)+x(217)+x(218);
             x(176)+x(219)+x(220)+x(221);
             x(177)+x(222)+x(223)+x(224);
             x(178)+x(225)+x(226)+x(227);
             x(179)+x(228)+x(229)+x(230);
             x(180)+x(231)+x(232)+x(233);
             x(181)+x(234)+x(235)+x(236);
             x(182)+x(237)+x(238)+x(239);
             x(183)+x(240)+x(241)+x(242);
             x(184)+x(243)+x(244)+x(245);
             -x(185)+x(246);
             -x(186)+x(247);
             -x(187)+x(248);
             -x(188)+x(249);
             -x(189)+x(250);
             -x(190)+x(251);
             -x(191)+x(252);
             -x(192)+x(253);
             -x(193)+x(254);
             -x(194)+x(255);
             -x(195)+x(256);
             -x(196)+x(257)];
cl = [0,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,0.75,148,-22,-26,-29,-28,-21,-27.5,-22.3,-25.9,-27.8,-21,-25.9,-27.8,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.74,Inf,148,-22,-26,-29,-28,-21,-27.5,-22.3,-25.9,-27.8,-21,-25.9,-27.8,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,-100,-50,-0.11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,0,0,0,0,0,0,0,0,0,0,0,0,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,0,100000,0,0,0,0,0,0,0,0,0,0,0,0,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,0,0,0,0,0,0,0,0,0,0,0,0,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,100000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_305');
opts.sense = 'min';