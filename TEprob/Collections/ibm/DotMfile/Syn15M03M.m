% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:10:10
% Model: Syn15M03M

% Objective
fun = @(x)-x(1)-x(2)-x(3)+5*x(19)+10*x(20)+5*x(21)-2*x(34)-x(35)-2*x(36)+500*x(73)+600*x(74)+350*x(75)+350*x(76)+400*x(77)+450*x(78)-10*x(85)-5*x(86)-5*x(87)-5*x(88)-5*x(89)-5*x(90)+80*x(109)+130*x(110)+215*x(111)+110*x(112)+120*x(113)+125*x(114)+110*x(115)+130*x(116)+140*x(117)+80*x(118)+90*x(119)+120*x(120)-5*x(166)-4*x(167)-6*x(168)-8*x(169)-7*x(170)-6*x(171)-6*x(172)-9*x(173)-4*x(174)-10*x(175)-9*x(176)-5*x(177)-6*x(178)-10*x(179)-6*x(180)-7*x(181)-7*x(182)-4*x(183)-4*x(184)-3*x(185)-2*x(186)-5*x(187)-6*x(188)-7*x(189)-2*x(190)-5*x(191)-2*x(192)-4*x(193)-7*x(194)-4*x(195)-3*x(196)-9*x(197)-3*x(198)-7*x(199)-2*x(200)-9*x(201)-3*x(202)-x(203)-9*x(204)-2*x(205)-6*x(206)-3*x(207)-4*x(208)-8*x(209)-x(210);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [40,40,40,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,30,30,30,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,20,20,20,20,20,20,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(4)-x(7);
             x(2)-x(5)-x(8);
             x(3)-x(6)-x(9);
             -x(10)-x(13)+x(16);
             -x(11)-x(14)+x(17);
             -x(12)-x(15)+x(18);
             x(16)-x(19)-x(22);
             x(17)-x(20)-x(23);
             x(18)-x(21)-x(24);
             x(22)-x(25)-x(28)-x(31);
             x(23)-x(26)-x(29)-x(32);
             x(24)-x(27)-x(30)-x(33);
             x(37)-x(46)-x(49);
             x(38)-x(47)-x(50);
             x(39)-x(48)-x(51);
             x(43)-x(52)-x(55)-x(58);
             x(44)-x(53)-x(56)-x(59);
             x(45)-x(54)-x(57)-x(60);
             x(67)-x(79)-x(82);
             x(68)-x(80)-x(83);
             x(69)-x(81)-x(84);
             -x(70)-x(88)+x(91);
             -x(71)-x(89)+x(92);
             -x(72)-x(90)+x(93);
             x(73)-x(94)-x(97);
             x(74)-x(95)-x(98);
             x(75)-x(96)-x(99);
             x(76)-x(100)-x(103)-x(106);
             x(77)-x(101)-x(104)-x(107);
             x(78)-x(102)-x(105)-x(108);
             -log(1+x(4))+x(10)+x(121);
             -log(1+x(5))+x(11)+x(122);
             -log(1+x(6))+x(12)+x(123);
             x(4)-40*x(121);
             x(5)-40*x(122);
             x(6)-40*x(123);
             x(10)-3.71357206670431*x(121);
             x(11)-3.71357206670431*x(122);
             x(12)-3.71357206670431*x(123);
             -1.2*log(1+x(7))+x(13)+x(124);
             -1.2*log(1+x(8))+x(14)+x(125);
             -1.2*log(1+x(9))+x(15)+x(126);
             x(7)-40*x(124);
             x(8)-40*x(125);
             x(9)-40*x(126);
             x(13)-4.45628648004517*x(124);
             x(14)-4.45628648004517*x(125);
             x(15)-4.45628648004517*x(126);
             -0.75*x(25)+x(37)+x(127);
             -0.75*x(26)+x(38)+x(128);
             -0.75*x(27)+x(39)+x(129);
             -0.75*x(25)+x(37)-x(127);
             -0.75*x(26)+x(38)-x(128);
             -0.75*x(27)+x(39)-x(129);
             x(25)-4.45628648004517*x(127);
             x(26)-4.45628648004517*x(128);
             x(27)-4.45628648004517*x(129);
             x(37)-3.34221486003388*x(127);
             x(38)-3.34221486003388*x(128);
             x(39)-3.34221486003388*x(129);
             -1.5*log(1+x(28))+x(40)+x(130);
             -1.5*log(1+x(29))+x(41)+x(131);
             -1.5*log(1+x(30))+x(42)+x(132);
             x(28)-4.45628648004517*x(130);
             x(29)-4.45628648004517*x(131);
             x(30)-4.45628648004517*x(132);
             x(40)-2.54515263975353*x(130);
             x(41)-2.54515263975353*x(131);
             x(42)-2.54515263975353*x(132);
             -x(31)+x(43)+x(133);
             -x(32)+x(44)+x(134);
             -x(33)+x(45)+x(135);
             -x(31)+x(43)-x(133);
             -x(32)+x(44)-x(134);
             -x(33)+x(45)-x(135);
             -0.5*x(34)+x(43)+x(133);
             -0.5*x(35)+x(44)+x(134);
             -0.5*x(36)+x(45)+x(135);
             -0.5*x(34)+x(43)-x(133);
             -0.5*x(35)+x(44)-x(134);
             -0.5*x(36)+x(45)-x(135);
             x(31)-4.45628648004517*x(133);
             x(32)-4.45628648004517*x(134);
             x(33)-4.45628648004517*x(135);
             x(34)-30*x(133);
             x(35)-30*x(134);
             x(36)-30*x(135);
             x(43)-15*x(133);
             x(44)-15*x(134);
             x(45)-15*x(135);
             -1.25*log(1+x(46))+x(61)+x(136);
             -1.25*log(1+x(47))+x(62)+x(137);
             -1.25*log(1+x(48))+x(63)+x(138);
             x(46)-3.34221486003388*x(136);
             x(47)-3.34221486003388*x(137);
             x(48)-3.34221486003388*x(138);
             x(61)-1.83548069293539*x(136);
             x(62)-1.83548069293539*x(137);
             x(63)-1.83548069293539*x(138);
             -0.9*log(1+x(49))+x(64)+x(139);
             -0.9*log(1+x(50))+x(65)+x(140);
             -0.9*log(1+x(51))+x(66)+x(141);
             x(49)-3.34221486003388*x(139);
             x(50)-3.34221486003388*x(140);
             x(51)-3.34221486003388*x(141);
             x(64)-1.32154609891348*x(139);
             x(65)-1.32154609891348*x(140);
             x(66)-1.32154609891348*x(141);
             -log(1+x(40))+x(67)+x(142);
             -log(1+x(41))+x(68)+x(143);
             -log(1+x(42))+x(69)+x(144);
             x(40)-2.54515263975353*x(142);
             x(41)-2.54515263975353*x(143);
             x(42)-2.54515263975353*x(144);
             x(67)-1.26558121681553*x(142);
             x(68)-1.26558121681553*x(143);
             x(69)-1.26558121681553*x(144);
             -0.9*x(52)+x(70)+x(145);
             -0.9*x(53)+x(71)+x(146);
             -0.9*x(54)+x(72)+x(147);
             -0.9*x(52)+x(70)-x(145);
             -0.9*x(53)+x(71)-x(146);
             -0.9*x(54)+x(72)-x(147);
             x(52)-15*x(145);
             x(53)-15*x(146);
             x(54)-15*x(147);
             x(70)-13.5*x(145);
             x(71)-13.5*x(146);
             x(72)-13.5*x(147);
             -0.6*x(55)+x(73)+x(148);
             -0.6*x(56)+x(74)+x(149);
             -0.6*x(57)+x(75)+x(150);
             -0.6*x(55)+x(73)-x(148);
             -0.6*x(56)+x(74)-x(149);
             -0.6*x(57)+x(75)-x(150);
             x(55)-15*x(148);
             x(56)-15*x(149);
             x(57)-15*x(150);
             x(73)-9*x(148);
             x(74)-9*x(149);
             x(75)-9*x(150);
             -1.1*log(1+x(58))+x(76)+x(151);
             -1.1*log(1+x(59))+x(77)+x(152);
             -1.1*log(1+x(60))+x(78)+x(153);
             x(58)-15*x(151);
             x(59)-15*x(152);
             x(60)-15*x(153);
             x(76)-3.04984759446376*x(151);
             x(77)-3.04984759446376*x(152);
             x(78)-3.04984759446376*x(153);
             -0.9*x(61)+x(109)+x(154);
             -0.9*x(62)+x(110)+x(155);
             -0.9*x(63)+x(111)+x(156);
             -0.9*x(61)+x(109)-x(154);
             -0.9*x(62)+x(110)-x(155);
             -0.9*x(63)+x(111)-x(156);
             -x(85)+x(109)+x(154);
             -x(86)+x(110)+x(155);
             -x(87)+x(111)+x(156);
             -x(85)+x(109)-x(154);
             -x(86)+x(110)-x(155);
             -x(87)+x(111)-x(156);
             x(61)-1.83548069293539*x(154);
             x(62)-1.83548069293539*x(155);
             x(63)-1.83548069293539*x(156);
             x(85)-20*x(154);
             x(86)-20*x(155);
             x(87)-20*x(156);
             x(109)-20*x(154);
             x(110)-20*x(155);
             x(111)-20*x(156);
             -log(1+x(64))+x(112)+x(157);
             -log(1+x(65))+x(113)+x(158);
             -log(1+x(66))+x(114)+x(159);
             x(64)-1.32154609891348*x(157);
             x(65)-1.32154609891348*x(158);
             x(66)-1.32154609891348*x(159);
             x(112)-0.842233385663186*x(157);
             x(113)-0.842233385663186*x(158);
             x(114)-0.842233385663186*x(159);
             -0.7*log(1+x(79))+x(115)+x(160);
             -0.7*log(1+x(80))+x(116)+x(161);
             -0.7*log(1+x(81))+x(117)+x(162);
             x(79)-1.26558121681553*x(160);
             x(80)-1.26558121681553*x(161);
             x(81)-1.26558121681553*x(162);
             x(115)-0.572481933717686*x(160);
             x(116)-0.572481933717686*x(161);
             x(117)-0.572481933717686*x(162);
             -0.65*log(1+x(82))+x(118)+x(163);
             -0.65*log(1+x(83))+x(119)+x(164);
             -0.65*log(1+x(84))+x(120)+x(165);
             -0.65*log(1+x(91))+x(118)+x(163);
             -0.65*log(1+x(92))+x(119)+x(164);
             -0.65*log(1+x(93))+x(120)+x(165);
             x(82)-1.26558121681553*x(163);
             x(83)-1.26558121681553*x(164);
             x(84)-1.26558121681553*x(165);
             x(91)-33.5*x(163);
             x(92)-33.5*x(164);
             x(93)-33.5*x(165);
             x(118)-2.30162356062425*x(163);
             x(119)-2.30162356062425*x(164);
             x(120)-2.30162356062425*x(165);
             5*x(166)+x(211);
             4*x(167)+x(212);
             6*x(168)+x(213);
             8*x(169)+x(214);
             7*x(170)+x(215);
             6*x(171)+x(216);
             6*x(172)+x(217);
             9*x(173)+x(218);
             4*x(174)+x(219);
             10*x(175)+x(220);
             9*x(176)+x(221);
             5*x(177)+x(222);
             6*x(178)+x(223);
             10*x(179)+x(224);
             6*x(180)+x(225);
             7*x(181)+x(226);
             7*x(182)+x(227);
             4*x(183)+x(228);
             4*x(184)+x(229);
             3*x(185)+x(230);
             2*x(186)+x(231);
             5*x(187)+x(232);
             6*x(188)+x(233);
             7*x(189)+x(234);
             2*x(190)+x(235);
             5*x(191)+x(236);
             2*x(192)+x(237);
             4*x(193)+x(238);
             7*x(194)+x(239);
             4*x(195)+x(240);
             3*x(196)+x(241);
             9*x(197)+x(242);
             3*x(198)+x(243);
             7*x(199)+x(244);
             2*x(200)+x(245);
             9*x(201)+x(246);
             3*x(202)+x(247);
             x(203)+x(248);
             9*x(204)+x(249);
             2*x(205)+x(250);
             6*x(206)+x(251);
             3*x(207)+x(252);
             4*x(208)+x(253);
             8*x(209)+x(254);
             x(210)+x(255);
             5*x(166)+x(211);
             4*x(167)+x(212);
             6*x(168)+x(213);
             8*x(169)+x(214);
             7*x(170)+x(215);
             6*x(171)+x(216);
             6*x(172)+x(217);
             9*x(173)+x(218);
             4*x(174)+x(219);
             10*x(175)+x(220);
             9*x(176)+x(221);
             5*x(177)+x(222);
             6*x(178)+x(223);
             10*x(179)+x(224);
             6*x(180)+x(225);
             7*x(181)+x(226);
             7*x(182)+x(227);
             4*x(183)+x(228);
             4*x(184)+x(229);
             3*x(185)+x(230);
             2*x(186)+x(231);
             5*x(187)+x(232);
             6*x(188)+x(233);
             7*x(189)+x(234);
             2*x(190)+x(235);
             5*x(191)+x(236);
             2*x(192)+x(237);
             4*x(193)+x(238);
             7*x(194)+x(239);
             4*x(195)+x(240);
             3*x(196)+x(241);
             9*x(197)+x(242);
             3*x(198)+x(243);
             7*x(199)+x(244);
             2*x(200)+x(245);
             9*x(201)+x(246);
             3*x(202)+x(247);
             x(203)+x(248);
             9*x(204)+x(249);
             2*x(205)+x(250);
             6*x(206)+x(251);
             3*x(207)+x(252);
             4*x(208)+x(253);
             8*x(209)+x(254);
             x(210)+x(255);
             x(121)-x(122);
             x(121)-x(123);
             x(122)-x(123);
             x(124)-x(125);
             x(124)-x(126);
             x(125)-x(126);
             x(127)-x(128);
             x(127)-x(129);
             x(128)-x(129);
             x(130)-x(131);
             x(130)-x(132);
             x(131)-x(132);
             x(133)-x(134);
             x(133)-x(135);
             x(134)-x(135);
             x(136)-x(137);
             x(136)-x(138);
             x(137)-x(138);
             x(139)-x(140);
             x(139)-x(141);
             x(140)-x(141);
             x(142)-x(143);
             x(142)-x(144);
             x(143)-x(144);
             x(145)-x(146);
             x(145)-x(147);
             x(146)-x(147);
             x(148)-x(149);
             x(148)-x(150);
             x(149)-x(150);
             x(151)-x(152);
             x(151)-x(153);
             x(152)-x(153);
             x(154)-x(155);
             x(154)-x(156);
             x(155)-x(156);
             x(157)-x(158);
             x(157)-x(159);
             x(158)-x(159);
             x(160)-x(161);
             x(160)-x(162);
             x(161)-x(162);
             x(163)-x(164);
             x(163)-x(165);
             x(164)-x(165);
             x(166)+x(167);
             x(166)+x(168);
             x(166)+x(167);
             x(167)+x(168);
             x(166)+x(168);
             x(167)+x(168);
             x(169)+x(170);
             x(169)+x(171);
             x(169)+x(170);
             x(170)+x(171);
             x(169)+x(171);
             x(170)+x(171);
             x(172)+x(173);
             x(172)+x(174);
             x(172)+x(173);
             x(173)+x(174);
             x(172)+x(174);
             x(173)+x(174);
             x(175)+x(176);
             x(175)+x(177);
             x(175)+x(176);
             x(176)+x(177);
             x(175)+x(177);
             x(176)+x(177);
             x(178)+x(179);
             x(178)+x(180);
             x(178)+x(179);
             x(179)+x(180);
             x(178)+x(180);
             x(179)+x(180);
             x(181)+x(182);
             x(181)+x(183);
             x(181)+x(182);
             x(182)+x(183);
             x(181)+x(183);
             x(182)+x(183);
             x(184)+x(185);
             x(184)+x(186);
             x(184)+x(185);
             x(185)+x(186);
             x(184)+x(186);
             x(185)+x(186);
             x(187)+x(188);
             x(187)+x(189);
             x(187)+x(188);
             x(188)+x(189);
             x(187)+x(189);
             x(188)+x(189);
             x(190)+x(191);
             x(190)+x(192);
             x(190)+x(191);
             x(191)+x(192);
             x(190)+x(192);
             x(191)+x(192);
             x(193)+x(194);
             x(193)+x(195);
             x(193)+x(194);
             x(194)+x(195);
             x(193)+x(195);
             x(194)+x(195);
             x(196)+x(197);
             x(196)+x(198);
             x(196)+x(197);
             x(197)+x(198);
             x(196)+x(198);
             x(197)+x(198);
             x(199)+x(200);
             x(199)+x(201);
             x(199)+x(200);
             x(200)+x(201);
             x(199)+x(201);
             x(200)+x(201);
             x(202)+x(203);
             x(202)+x(204);
             x(202)+x(203);
             x(203)+x(204);
             x(202)+x(204);
             x(203)+x(204);
             x(205)+x(206);
             x(205)+x(207);
             x(205)+x(206);
             x(206)+x(207);
             x(205)+x(207);
             x(206)+x(207);
             x(208)+x(209);
             x(208)+x(210);
             x(208)+x(209);
             x(209)+x(210);
             x(208)+x(210);
             x(209)+x(210);
             x(121)-x(166);
             -x(121)+x(122)-x(167);
             -x(121)-x(122)+x(123)-x(168);
             x(124)-x(169);
             -x(124)+x(125)-x(170);
             -x(124)-x(125)+x(126)-x(171);
             x(127)-x(172);
             -x(127)+x(128)-x(173);
             -x(127)-x(128)+x(129)-x(174);
             x(130)-x(175);
             -x(130)+x(131)-x(176);
             -x(130)-x(131)+x(132)-x(177);
             x(133)-x(178);
             -x(133)+x(134)-x(179);
             -x(133)-x(134)+x(135)-x(180);
             x(136)-x(181);
             -x(136)+x(137)-x(182);
             -x(136)-x(137)+x(138)-x(183);
             x(139)-x(184);
             -x(139)+x(140)-x(185);
             -x(139)-x(140)+x(141)-x(186);
             x(142)-x(187);
             -x(142)+x(143)-x(188);
             -x(142)-x(143)+x(144)-x(189);
             x(145)-x(190);
             -x(145)+x(146)-x(191);
             -x(145)-x(146)+x(147)-x(192);
             x(148)-x(193);
             -x(148)+x(149)-x(194);
             -x(148)-x(149)+x(150)-x(195);
             x(151)-x(196);
             -x(151)+x(152)-x(197);
             -x(151)-x(152)+x(153)-x(198);
             x(154)-x(199);
             -x(154)+x(155)-x(200);
             -x(154)-x(155)+x(156)-x(201);
             x(157)-x(202);
             -x(157)+x(158)-x(203);
             -x(157)-x(158)+x(159)-x(204);
             x(160)-x(205);
             -x(160)+x(161)-x(206);
             -x(160)-x(161)+x(162)-x(207);
             x(163)-x(208);
             -x(163)+x(164)-x(209);
             -x(163)-x(164)+x(165)-x(210);
             x(121)+x(124);
             x(122)+x(125);
             x(123)+x(126);
             -x(127)+x(136)+x(139);
             -x(128)+x(137)+x(140);
             -x(129)+x(138)+x(141);
             -x(136)+x(154);
             -x(137)+x(155);
             -x(138)+x(156);
             -x(139)+x(157);
             -x(140)+x(158);
             -x(141)+x(159);
             -x(130)+x(142);
             -x(131)+x(143);
             -x(132)+x(144);
             -x(142)+x(160)+x(163);
             -x(143)+x(161)+x(164);
             -x(144)+x(162)+x(165);
             -x(133)+x(145)+x(148)+x(151);
             -x(134)+x(146)+x(149)+x(152);
             -x(135)+x(147)+x(150)+x(153);
             -x(145)+x(163);
             -x(146)+x(164);
             -x(147)+x(165);
             x(121)+x(124)-x(127);
             x(122)+x(125)-x(128);
             x(123)+x(126)-x(129);
             x(121)+x(124)-x(130);
             x(122)+x(125)-x(131);
             x(123)+x(126)-x(132);
             x(121)+x(124)-x(133);
             x(122)+x(125)-x(134);
             x(123)+x(126)-x(135);
             x(127)-x(136);
             x(128)-x(137);
             x(129)-x(138);
             x(127)-x(139);
             x(128)-x(140);
             x(129)-x(141);
             x(130)-x(142);
             x(131)-x(143);
             x(132)-x(144);
             x(133)-x(145);
             x(134)-x(146);
             x(135)-x(147);
             x(133)-x(148);
             x(134)-x(149);
             x(135)-x(150);
             x(133)-x(151);
             x(134)-x(152);
             x(135)-x(153);
             x(136)-x(154);
             x(137)-x(155);
             x(138)-x(156);
             x(139)-x(157);
             x(140)-x(158);
             x(141)-x(159);
             x(142)-x(160);
             x(143)-x(161);
             x(144)-x(162);
             x(142)-x(163);
             x(143)-x(164);
             x(144)-x(165)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,Inf,Inf,Inf,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,Inf,Inf,Inf,1,1,1,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,Inf,Inf,Inf,0,0,0,0,0,0,1,1,1,Inf,Inf,Inf,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,Inf,Inf,Inf,1,1,1,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Syn15M03M');
opts.sense = 'max';