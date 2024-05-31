% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 22:28:45
% Model: dittert

% Objective
fun = @(x)(-exp(log(x(312))+log(x(314))+log(x(316))+log(x(318))+log(x(320))+log(x(322))+log(x(324))+log(x(326))))-exp(log(x(313))+log(x(315))+log(x(317))+log(x(319))+log(x(321))+log(x(323))+log(x(325))+log(x(327)))+x(247);

% Bounds
lb = [1e-06,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(262)*x(255)+x(263)*x(254)-x(1);
             x(261)*x(255)+x(263)*x(253)-x(2);
             x(261)*x(254)+x(262)*x(253)-x(3);
             x(269)*x(1)+x(270)*x(2)+x(271)*x(3)-x(4);
             x(260)*x(255)+x(263)*x(252)-x(5);
             x(260)*x(254)+x(262)*x(252)-x(6);
             x(268)*x(1)+x(270)*x(5)+x(271)*x(6)-x(7);
             x(260)*x(253)+x(261)*x(252)-x(8);
             x(268)*x(2)+x(269)*x(5)+x(271)*x(8)-x(9);
             x(268)*x(3)+x(269)*x(6)+x(270)*x(8)-x(10);
             x(276)*x(4)+x(277)*x(7)+x(278)*x(9)+x(279)*x(10)-x(11);
             x(259)*x(255)+x(263)*x(251)-x(12);
             x(259)*x(254)+x(262)*x(251)-x(13);
             x(267)*x(1)+x(270)*x(12)+x(271)*x(13)-x(14);
             x(259)*x(253)+x(261)*x(251)-x(15);
             x(267)*x(2)+x(269)*x(12)+x(271)*x(15)-x(16);
             x(267)*x(3)+x(269)*x(13)+x(270)*x(15)-x(17);
             x(275)*x(4)+x(277)*x(14)+x(278)*x(16)+x(279)*x(17)-x(18);
             x(259)*x(252)+x(260)*x(251)-x(19);
             x(267)*x(5)+x(268)*x(12)+x(271)*x(19)-x(20);
             x(267)*x(6)+x(268)*x(13)+x(270)*x(19)-x(21);
             x(275)*x(7)+x(276)*x(14)+x(278)*x(20)+x(279)*x(21)-x(22);
             x(267)*x(8)+x(268)*x(15)+x(269)*x(19)-x(23);
             x(275)*x(9)+x(276)*x(16)+x(277)*x(20)+x(279)*x(23)-x(24);
             x(275)*x(10)+x(276)*x(17)+x(277)*x(21)+x(278)*x(23)-x(25);
             x(283)*x(11)+x(284)*x(18)+x(285)*x(22)+x(286)*x(24)+x(287)*x(25)-x(26);
             x(258)*x(255)+x(263)*x(250)-x(27);
             x(258)*x(254)+x(262)*x(250)-x(28);
             x(266)*x(1)+x(270)*x(27)+x(271)*x(28)-x(29);
             x(258)*x(253)+x(261)*x(250)-x(30);
             x(266)*x(2)+x(269)*x(27)+x(271)*x(30)-x(31);
             x(266)*x(3)+x(269)*x(28)+x(270)*x(30)-x(32);
             x(274)*x(4)+x(277)*x(29)+x(278)*x(31)+x(279)*x(32)-x(33);
             x(258)*x(252)+x(260)*x(250)-x(34);
             x(266)*x(5)+x(268)*x(27)+x(271)*x(34)-x(35);
             x(266)*x(6)+x(268)*x(28)+x(270)*x(34)-x(36);
             x(274)*x(7)+x(276)*x(29)+x(278)*x(35)+x(279)*x(36)-x(37);
             x(266)*x(8)+x(268)*x(30)+x(269)*x(34)-x(38);
             x(274)*x(9)+x(276)*x(31)+x(277)*x(35)+x(279)*x(38)-x(39);
             x(274)*x(10)+x(276)*x(32)+x(277)*x(36)+x(278)*x(38)-x(40);
             x(282)*x(11)+x(284)*x(33)+x(285)*x(37)+x(286)*x(39)+x(287)*x(40)-x(41);
             x(258)*x(251)+x(259)*x(250)-x(42);
             x(266)*x(12)+x(267)*x(27)+x(271)*x(42)-x(43);
             x(266)*x(13)+x(267)*x(28)+x(270)*x(42)-x(44);
             x(274)*x(14)+x(275)*x(29)+x(278)*x(43)+x(279)*x(44)-x(45);
             x(266)*x(15)+x(267)*x(30)+x(269)*x(42)-x(46);
             x(274)*x(16)+x(275)*x(31)+x(277)*x(43)+x(279)*x(46)-x(47);
             x(274)*x(17)+x(275)*x(32)+x(277)*x(44)+x(278)*x(46)-x(48);
             x(282)*x(18)+x(283)*x(33)+x(285)*x(45)+x(286)*x(47)+x(287)*x(48)-x(49);
             x(266)*x(19)+x(267)*x(34)+x(268)*x(42)-x(50);
             x(274)*x(20)+x(275)*x(35)+x(276)*x(43)+x(279)*x(50)-x(51);
             x(274)*x(21)+x(275)*x(36)+x(276)*x(44)+x(278)*x(50)-x(52);
             x(282)*x(22)+x(283)*x(37)+x(284)*x(45)+x(286)*x(51)+x(287)*x(52)-x(53);
             x(274)*x(23)+x(275)*x(38)+x(276)*x(46)+x(277)*x(50)-x(54);
             x(282)*x(24)+x(283)*x(39)+x(284)*x(47)+x(285)*x(51)+x(287)*x(54)-x(55);
             x(282)*x(25)+x(283)*x(40)+x(284)*x(48)+x(285)*x(52)+x(286)*x(54)-x(56);
             x(290)*x(26)+x(291)*x(41)+x(292)*x(49)+x(293)*x(53)+x(294)*x(55)+x(295)*x(56)-x(57);
             x(257)*x(255)+x(263)*x(249)-x(58);
             x(257)*x(254)+x(262)*x(249)-x(59);
             x(265)*x(1)+x(270)*x(58)+x(271)*x(59)-x(60);
             x(257)*x(253)+x(261)*x(249)-x(61);
             x(265)*x(2)+x(269)*x(58)+x(271)*x(61)-x(62);
             x(265)*x(3)+x(269)*x(59)+x(270)*x(61)-x(63);
             x(273)*x(4)+x(277)*x(60)+x(278)*x(62)+x(279)*x(63)-x(64);
             x(257)*x(252)+x(260)*x(249)-x(65);
             x(265)*x(5)+x(268)*x(58)+x(271)*x(65)-x(66);
             x(265)*x(6)+x(268)*x(59)+x(270)*x(65)-x(67);
             x(273)*x(7)+x(276)*x(60)+x(278)*x(66)+x(279)*x(67)-x(68);
             x(265)*x(8)+x(268)*x(61)+x(269)*x(65)-x(69);
             x(273)*x(9)+x(276)*x(62)+x(277)*x(66)+x(279)*x(69)-x(70);
             x(273)*x(10)+x(276)*x(63)+x(277)*x(67)+x(278)*x(69)-x(71);
             x(281)*x(11)+x(284)*x(64)+x(285)*x(68)+x(286)*x(70)+x(287)*x(71)-x(72);
             x(257)*x(251)+x(259)*x(249)-x(73);
             x(265)*x(12)+x(267)*x(58)+x(271)*x(73)-x(74);
             x(265)*x(13)+x(267)*x(59)+x(270)*x(73)-x(75);
             x(273)*x(14)+x(275)*x(60)+x(278)*x(74)+x(279)*x(75)-x(76);
             x(265)*x(15)+x(267)*x(61)+x(269)*x(73)-x(77);
             x(273)*x(16)+x(275)*x(62)+x(277)*x(74)+x(279)*x(77)-x(78);
             x(273)*x(17)+x(275)*x(63)+x(277)*x(75)+x(278)*x(77)-x(79);
             x(281)*x(18)+x(283)*x(64)+x(285)*x(76)+x(286)*x(78)+x(287)*x(79)-x(80);
             x(265)*x(19)+x(267)*x(65)+x(268)*x(73)-x(81);
             x(273)*x(20)+x(275)*x(66)+x(276)*x(74)+x(279)*x(81)-x(82);
             x(273)*x(21)+x(275)*x(67)+x(276)*x(75)+x(278)*x(81)-x(83);
             x(281)*x(22)+x(283)*x(68)+x(284)*x(76)+x(286)*x(82)+x(287)*x(83)-x(84);
             x(273)*x(23)+x(275)*x(69)+x(276)*x(77)+x(277)*x(81)-x(85);
             x(281)*x(24)+x(283)*x(70)+x(284)*x(78)+x(285)*x(82)+x(287)*x(85)-x(86);
             x(281)*x(25)+x(283)*x(71)+x(284)*x(79)+x(285)*x(83)+x(286)*x(85)-x(87);
             x(289)*x(26)+x(291)*x(72)+x(292)*x(80)+x(293)*x(84)+x(294)*x(86)+x(295)*x(87)-x(88);
             x(257)*x(250)+x(258)*x(249)-x(89);
             x(265)*x(27)+x(266)*x(58)+x(271)*x(89)-x(90);
             x(265)*x(28)+x(266)*x(59)+x(270)*x(89)-x(91);
             x(273)*x(29)+x(274)*x(60)+x(278)*x(90)+x(279)*x(91)-x(92);
             x(265)*x(30)+x(266)*x(61)+x(269)*x(89)-x(93);
             x(273)*x(31)+x(274)*x(62)+x(277)*x(90)+x(279)*x(93)-x(94);
             x(273)*x(32)+x(274)*x(63)+x(277)*x(91)+x(278)*x(93)-x(95);
             x(281)*x(33)+x(282)*x(64)+x(285)*x(92)+x(286)*x(94)+x(287)*x(95)-x(96);
             x(265)*x(34)+x(266)*x(65)+x(268)*x(89)-x(97);
             x(273)*x(35)+x(274)*x(66)+x(276)*x(90)+x(279)*x(97)-x(98);
             x(273)*x(36)+x(274)*x(67)+x(276)*x(91)+x(278)*x(97)-x(99);
             x(281)*x(37)+x(282)*x(68)+x(284)*x(92)+x(286)*x(98)+x(287)*x(99)-x(100);
             x(273)*x(38)+x(274)*x(69)+x(276)*x(93)+x(277)*x(97)-x(101);
             x(281)*x(39)+x(282)*x(70)+x(284)*x(94)+x(285)*x(98)+x(287)*x(101)-x(102);
             x(281)*x(40)+x(282)*x(71)+x(284)*x(95)+x(285)*x(99)+x(286)*x(101)-x(103);
             x(289)*x(41)+x(290)*x(72)+x(292)*x(96)+x(293)*x(100)+x(294)*x(102)+x(295)*x(103)-x(104);
             x(265)*x(42)+x(266)*x(73)+x(267)*x(89)-x(105);
             x(273)*x(43)+x(274)*x(74)+x(275)*x(90)+x(279)*x(105)-x(106);
             x(273)*x(44)+x(274)*x(75)+x(275)*x(91)+x(278)*x(105)-x(107);
             x(281)*x(45)+x(282)*x(76)+x(283)*x(92)+x(286)*x(106)+x(287)*x(107)-x(108);
             x(273)*x(46)+x(274)*x(77)+x(275)*x(93)+x(277)*x(105)-x(109);
             x(281)*x(47)+x(282)*x(78)+x(283)*x(94)+x(285)*x(106)+x(287)*x(109)-x(110);
             x(281)*x(48)+x(282)*x(79)+x(283)*x(95)+x(285)*x(107)+x(286)*x(109)-x(111);
             x(289)*x(49)+x(290)*x(80)+x(291)*x(96)+x(293)*x(108)+x(294)*x(110)+x(295)*x(111)-x(112);
             x(273)*x(50)+x(274)*x(81)+x(275)*x(97)+x(276)*x(105)-x(113);
             x(281)*x(51)+x(282)*x(82)+x(283)*x(98)+x(284)*x(106)+x(287)*x(113)-x(114);
             x(281)*x(52)+x(282)*x(83)+x(283)*x(99)+x(284)*x(107)+x(286)*x(113)-x(115);
             x(289)*x(53)+x(290)*x(84)+x(291)*x(100)+x(292)*x(108)+x(294)*x(114)+x(295)*x(115)-x(116);
             x(281)*x(54)+x(282)*x(85)+x(283)*x(101)+x(284)*x(109)+x(285)*x(113)-x(117);
             x(289)*x(55)+x(290)*x(86)+x(291)*x(102)+x(292)*x(110)+x(293)*x(114)+x(295)*x(117)-x(118);
             x(289)*x(56)+x(290)*x(87)+x(291)*x(103)+x(292)*x(111)+x(293)*x(115)+x(294)*x(117)-x(119);
             x(297)*x(57)+x(298)*x(88)+x(299)*x(104)+x(300)*x(112)+x(301)*x(116)+x(302)*x(118)+x(303)*x(119)-x(120);
             x(256)*x(255)+x(263)*x(248)-x(121);
             x(256)*x(254)+x(262)*x(248)-x(122);
             x(264)*x(1)+x(270)*x(121)+x(271)*x(122)-x(123);
             x(256)*x(253)+x(261)*x(248)-x(124);
             x(264)*x(2)+x(269)*x(121)+x(271)*x(124)-x(125);
             x(264)*x(3)+x(269)*x(122)+x(270)*x(124)-x(126);
             x(272)*x(4)+x(277)*x(123)+x(278)*x(125)+x(279)*x(126)-x(127);
             x(256)*x(252)+x(260)*x(248)-x(128);
             x(264)*x(5)+x(268)*x(121)+x(271)*x(128)-x(129);
             x(264)*x(6)+x(268)*x(122)+x(270)*x(128)-x(130);
             x(272)*x(7)+x(276)*x(123)+x(278)*x(129)+x(279)*x(130)-x(131);
             x(264)*x(8)+x(268)*x(124)+x(269)*x(128)-x(132);
             x(272)*x(9)+x(276)*x(125)+x(277)*x(129)+x(279)*x(132)-x(133);
             x(272)*x(10)+x(276)*x(126)+x(277)*x(130)+x(278)*x(132)-x(134);
             x(280)*x(11)+x(284)*x(127)+x(285)*x(131)+x(286)*x(133)+x(287)*x(134)-x(135);
             x(256)*x(251)+x(259)*x(248)-x(136);
             x(264)*x(12)+x(267)*x(121)+x(271)*x(136)-x(137);
             x(264)*x(13)+x(267)*x(122)+x(270)*x(136)-x(138);
             x(272)*x(14)+x(275)*x(123)+x(278)*x(137)+x(279)*x(138)-x(139);
             x(264)*x(15)+x(267)*x(124)+x(269)*x(136)-x(140);
             x(272)*x(16)+x(275)*x(125)+x(277)*x(137)+x(279)*x(140)-x(141);
             x(272)*x(17)+x(275)*x(126)+x(277)*x(138)+x(278)*x(140)-x(142);
             x(280)*x(18)+x(283)*x(127)+x(285)*x(139)+x(286)*x(141)+x(287)*x(142)-x(143);
             x(264)*x(19)+x(267)*x(128)+x(268)*x(136)-x(144);
             x(272)*x(20)+x(275)*x(129)+x(276)*x(137)+x(279)*x(144)-x(145);
             x(272)*x(21)+x(275)*x(130)+x(276)*x(138)+x(278)*x(144)-x(146);
             x(280)*x(22)+x(283)*x(131)+x(284)*x(139)+x(286)*x(145)+x(287)*x(146)-x(147);
             x(272)*x(23)+x(275)*x(132)+x(276)*x(140)+x(277)*x(144)-x(148);
             x(280)*x(24)+x(283)*x(133)+x(284)*x(141)+x(285)*x(145)+x(287)*x(148)-x(149);
             x(280)*x(25)+x(283)*x(134)+x(284)*x(142)+x(285)*x(146)+x(286)*x(148)-x(150);
             x(288)*x(26)+x(291)*x(135)+x(292)*x(143)+x(293)*x(147)+x(294)*x(149)+x(295)*x(150)-x(151);
             x(256)*x(250)+x(258)*x(248)-x(152);
             x(264)*x(27)+x(266)*x(121)+x(271)*x(152)-x(153);
             x(264)*x(28)+x(266)*x(122)+x(270)*x(152)-x(154);
             x(272)*x(29)+x(274)*x(123)+x(278)*x(153)+x(279)*x(154)-x(155);
             x(264)*x(30)+x(266)*x(124)+x(269)*x(152)-x(156);
             x(272)*x(31)+x(274)*x(125)+x(277)*x(153)+x(279)*x(156)-x(157);
             x(272)*x(32)+x(274)*x(126)+x(277)*x(154)+x(278)*x(156)-x(158);
             x(280)*x(33)+x(282)*x(127)+x(285)*x(155)+x(286)*x(157)+x(287)*x(158)-x(159);
             x(264)*x(34)+x(266)*x(128)+x(268)*x(152)-x(160);
             x(272)*x(35)+x(274)*x(129)+x(276)*x(153)+x(279)*x(160)-x(161);
             x(272)*x(36)+x(274)*x(130)+x(276)*x(154)+x(278)*x(160)-x(162);
             x(280)*x(37)+x(282)*x(131)+x(284)*x(155)+x(286)*x(161)+x(287)*x(162)-x(163);
             x(272)*x(38)+x(274)*x(132)+x(276)*x(156)+x(277)*x(160)-x(164);
             x(280)*x(39)+x(282)*x(133)+x(284)*x(157)+x(285)*x(161)+x(287)*x(164)-x(165);
             x(280)*x(40)+x(282)*x(134)+x(284)*x(158)+x(285)*x(162)+x(286)*x(164)-x(166);
             x(288)*x(41)+x(290)*x(135)+x(292)*x(159)+x(293)*x(163)+x(294)*x(165)+x(295)*x(166)-x(167);
             x(264)*x(42)+x(266)*x(136)+x(267)*x(152)-x(168);
             x(272)*x(43)+x(274)*x(137)+x(275)*x(153)+x(279)*x(168)-x(169);
             x(272)*x(44)+x(274)*x(138)+x(275)*x(154)+x(278)*x(168)-x(170);
             x(280)*x(45)+x(282)*x(139)+x(283)*x(155)+x(286)*x(169)+x(287)*x(170)-x(171);
             x(272)*x(46)+x(274)*x(140)+x(275)*x(156)+x(277)*x(168)-x(172);
             x(280)*x(47)+x(282)*x(141)+x(283)*x(157)+x(285)*x(169)+x(287)*x(172)-x(173);
             x(280)*x(48)+x(282)*x(142)+x(283)*x(158)+x(285)*x(170)+x(286)*x(172)-x(174);
             x(288)*x(49)+x(290)*x(143)+x(291)*x(159)+x(293)*x(171)+x(294)*x(173)+x(295)*x(174)-x(175);
             x(272)*x(50)+x(274)*x(144)+x(275)*x(160)+x(276)*x(168)-x(176);
             x(280)*x(51)+x(282)*x(145)+x(283)*x(161)+x(284)*x(169)+x(287)*x(176)-x(177);
             x(280)*x(52)+x(282)*x(146)+x(283)*x(162)+x(284)*x(170)+x(286)*x(176)-x(178);
             x(288)*x(53)+x(290)*x(147)+x(291)*x(163)+x(292)*x(171)+x(294)*x(177)+x(295)*x(178)-x(179);
             x(280)*x(54)+x(282)*x(148)+x(283)*x(164)+x(284)*x(172)+x(285)*x(176)-x(180);
             x(288)*x(55)+x(290)*x(149)+x(291)*x(165)+x(292)*x(173)+x(293)*x(177)+x(295)*x(180)-x(181);
             x(288)*x(56)+x(290)*x(150)+x(291)*x(166)+x(292)*x(174)+x(293)*x(178)+x(294)*x(180)-x(182);
             x(296)*x(57)+x(298)*x(151)+x(299)*x(167)+x(300)*x(175)+x(301)*x(179)+x(302)*x(181)+x(303)*x(182)-x(183);
             x(256)*x(249)+x(257)*x(248)-x(184);
             x(264)*x(58)+x(265)*x(121)+x(271)*x(184)-x(185);
             x(264)*x(59)+x(265)*x(122)+x(270)*x(184)-x(186);
             x(272)*x(60)+x(273)*x(123)+x(278)*x(185)+x(279)*x(186)-x(187);
             x(264)*x(61)+x(265)*x(124)+x(269)*x(184)-x(188);
             x(272)*x(62)+x(273)*x(125)+x(277)*x(185)+x(279)*x(188)-x(189);
             x(272)*x(63)+x(273)*x(126)+x(277)*x(186)+x(278)*x(188)-x(190);
             x(280)*x(64)+x(281)*x(127)+x(285)*x(187)+x(286)*x(189)+x(287)*x(190)-x(191);
             x(264)*x(65)+x(265)*x(128)+x(268)*x(184)-x(192);
             x(272)*x(66)+x(273)*x(129)+x(276)*x(185)+x(279)*x(192)-x(193);
             x(272)*x(67)+x(273)*x(130)+x(276)*x(186)+x(278)*x(192)-x(194);
             x(280)*x(68)+x(281)*x(131)+x(284)*x(187)+x(286)*x(193)+x(287)*x(194)-x(195);
             x(272)*x(69)+x(273)*x(132)+x(276)*x(188)+x(277)*x(192)-x(196);
             x(280)*x(70)+x(281)*x(133)+x(284)*x(189)+x(285)*x(193)+x(287)*x(196)-x(197);
             x(280)*x(71)+x(281)*x(134)+x(284)*x(190)+x(285)*x(194)+x(286)*x(196)-x(198);
             x(288)*x(72)+x(289)*x(135)+x(292)*x(191)+x(293)*x(195)+x(294)*x(197)+x(295)*x(198)-x(199);
             x(264)*x(73)+x(265)*x(136)+x(267)*x(184)-x(200);
             x(272)*x(74)+x(273)*x(137)+x(275)*x(185)+x(279)*x(200)-x(201);
             x(272)*x(75)+x(273)*x(138)+x(275)*x(186)+x(278)*x(200)-x(202);
             x(280)*x(76)+x(281)*x(139)+x(283)*x(187)+x(286)*x(201)+x(287)*x(202)-x(203);
             x(272)*x(77)+x(273)*x(140)+x(275)*x(188)+x(277)*x(200)-x(204);
             x(280)*x(78)+x(281)*x(141)+x(283)*x(189)+x(285)*x(201)+x(287)*x(204)-x(205);
             x(280)*x(79)+x(281)*x(142)+x(283)*x(190)+x(285)*x(202)+x(286)*x(204)-x(206);
             x(288)*x(80)+x(289)*x(143)+x(291)*x(191)+x(293)*x(203)+x(294)*x(205)+x(295)*x(206)-x(207);
             x(272)*x(81)+x(273)*x(144)+x(275)*x(192)+x(276)*x(200)-x(208);
             x(280)*x(82)+x(281)*x(145)+x(283)*x(193)+x(284)*x(201)+x(287)*x(208)-x(209);
             x(280)*x(83)+x(281)*x(146)+x(283)*x(194)+x(284)*x(202)+x(286)*x(208)-x(210);
             x(288)*x(84)+x(289)*x(147)+x(291)*x(195)+x(292)*x(203)+x(294)*x(209)+x(295)*x(210)-x(211);
             x(280)*x(85)+x(281)*x(148)+x(283)*x(196)+x(284)*x(204)+x(285)*x(208)-x(212);
             x(288)*x(86)+x(289)*x(149)+x(291)*x(197)+x(292)*x(205)+x(293)*x(209)+x(295)*x(212)-x(213);
             x(288)*x(87)+x(289)*x(150)+x(291)*x(198)+x(292)*x(206)+x(293)*x(210)+x(294)*x(212)-x(214);
             x(296)*x(88)+x(297)*x(151)+x(299)*x(199)+x(300)*x(207)+x(301)*x(211)+x(302)*x(213)+x(303)*x(214)-x(215);
             x(264)*x(89)+x(265)*x(152)+x(266)*x(184)-x(216);
             x(272)*x(90)+x(273)*x(153)+x(274)*x(185)+x(279)*x(216)-x(217);
             x(272)*x(91)+x(273)*x(154)+x(274)*x(186)+x(278)*x(216)-x(218);
             x(280)*x(92)+x(281)*x(155)+x(282)*x(187)+x(286)*x(217)+x(287)*x(218)-x(219);
             x(272)*x(93)+x(273)*x(156)+x(274)*x(188)+x(277)*x(216)-x(220);
             x(280)*x(94)+x(281)*x(157)+x(282)*x(189)+x(285)*x(217)+x(287)*x(220)-x(221);
             x(280)*x(95)+x(281)*x(158)+x(282)*x(190)+x(285)*x(218)+x(286)*x(220)-x(222);
             x(288)*x(96)+x(289)*x(159)+x(290)*x(191)+x(293)*x(219)+x(294)*x(221)+x(295)*x(222)-x(223);
             x(272)*x(97)+x(273)*x(160)+x(274)*x(192)+x(276)*x(216)-x(224);
             x(280)*x(98)+x(281)*x(161)+x(282)*x(193)+x(284)*x(217)+x(287)*x(224)-x(225);
             x(280)*x(99)+x(281)*x(162)+x(282)*x(194)+x(284)*x(218)+x(286)*x(224)-x(226);
             x(288)*x(100)+x(289)*x(163)+x(290)*x(195)+x(292)*x(219)+x(294)*x(225)+x(295)*x(226)-x(227);
             x(280)*x(101)+x(281)*x(164)+x(282)*x(196)+x(284)*x(220)+x(285)*x(224)-x(228);
             x(288)*x(102)+x(289)*x(165)+x(290)*x(197)+x(292)*x(221)+x(293)*x(225)+x(295)*x(228)-x(229);
             x(288)*x(103)+x(289)*x(166)+x(290)*x(198)+x(292)*x(222)+x(293)*x(226)+x(294)*x(228)-x(230);
             x(296)*x(104)+x(297)*x(167)+x(298)*x(199)+x(300)*x(223)+x(301)*x(227)+x(302)*x(229)+x(303)*x(230)-x(231);
             x(272)*x(105)+x(273)*x(168)+x(274)*x(200)+x(275)*x(216)-x(232);
             x(280)*x(106)+x(281)*x(169)+x(282)*x(201)+x(283)*x(217)+x(287)*x(232)-x(233);
             x(280)*x(107)+x(281)*x(170)+x(282)*x(202)+x(283)*x(218)+x(286)*x(232)-x(234);
             x(288)*x(108)+x(289)*x(171)+x(290)*x(203)+x(291)*x(219)+x(294)*x(233)+x(295)*x(234)-x(235);
             x(280)*x(109)+x(281)*x(172)+x(282)*x(204)+x(283)*x(220)+x(285)*x(232)-x(236);
             x(288)*x(110)+x(289)*x(173)+x(290)*x(205)+x(291)*x(221)+x(293)*x(233)+x(295)*x(236)-x(237);
             x(288)*x(111)+x(289)*x(174)+x(290)*x(206)+x(291)*x(222)+x(293)*x(234)+x(294)*x(236)-x(238);
             x(296)*x(112)+x(297)*x(175)+x(298)*x(207)+x(299)*x(223)+x(301)*x(235)+x(302)*x(237)+x(303)*x(238)-x(239);
             x(280)*x(113)+x(281)*x(176)+x(282)*x(208)+x(283)*x(224)+x(284)*x(232)-x(240);
             x(288)*x(114)+x(289)*x(177)+x(290)*x(209)+x(291)*x(225)+x(292)*x(233)+x(295)*x(240)-x(241);
             x(288)*x(115)+x(289)*x(178)+x(290)*x(210)+x(291)*x(226)+x(292)*x(234)+x(294)*x(240)-x(242);
             x(296)*x(116)+x(297)*x(179)+x(298)*x(211)+x(299)*x(227)+x(300)*x(235)+x(302)*x(241)+x(303)*x(242)-x(243);
             x(288)*x(117)+x(289)*x(180)+x(290)*x(212)+x(291)*x(228)+x(292)*x(236)+x(293)*x(240)-x(244);
             x(296)*x(118)+x(297)*x(181)+x(298)*x(213)+x(299)*x(229)+x(300)*x(237)+x(301)*x(241)+x(303)*x(244)-x(245);
             x(296)*x(119)+x(297)*x(182)+x(298)*x(214)+x(299)*x(230)+x(300)*x(238)+x(301)*x(242)+x(302)*x(244)-x(246);
             x(304)*x(120)+x(305)*x(183)+x(306)*x(215)+x(307)*x(231)+x(308)*x(239)+x(309)*x(243)+x(310)*x(245)+x(311)*x(246)-x(247);
             x(248)+x(249)+x(250)+x(251)+x(252)+x(253)+x(254)+x(255)-x(312);
             x(248)+x(256)+x(264)+x(272)+x(280)+x(288)+x(296)+x(304)-x(313);
             x(249)+x(257)+x(265)+x(273)+x(281)+x(289)+x(297)+x(305)-x(315);
             x(250)+x(258)+x(266)+x(274)+x(282)+x(290)+x(298)+x(306)-x(317);
             x(251)+x(259)+x(267)+x(275)+x(283)+x(291)+x(299)+x(307)-x(319);
             x(252)+x(260)+x(268)+x(276)+x(284)+x(292)+x(300)+x(308)-x(321);
             x(253)+x(261)+x(269)+x(277)+x(285)+x(293)+x(301)+x(309)-x(323);
             x(254)+x(262)+x(270)+x(278)+x(286)+x(294)+x(302)+x(310)-x(325);
             x(255)+x(263)+x(271)+x(279)+x(287)+x(295)+x(303)+x(311)-x(327);
             x(256)+x(257)+x(258)+x(259)+x(260)+x(261)+x(262)+x(263)-x(314);
             x(264)+x(265)+x(266)+x(267)+x(268)+x(269)+x(270)+x(271)-x(316);
             x(272)+x(273)+x(274)+x(275)+x(276)+x(277)+x(278)+x(279)-x(318);
             x(280)+x(281)+x(282)+x(283)+x(284)+x(285)+x(286)+x(287)-x(320);
             x(288)+x(289)+x(290)+x(291)+x(292)+x(293)+x(294)+x(295)-x(322);
             x(296)+x(297)+x(298)+x(299)+x(300)+x(301)+x(302)+x(303)-x(324);
             x(304)+x(305)+x(306)+x(307)+x(308)+x(309)+x(310)+x(311)-x(326);
             x(312)+x(314)+x(316)+x(318)+x(320)+x(322)+x(324)+x(326)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [1e-06,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06,1e-06]';

% Options
opts = struct('probname','dittert');
opts.sense = 'min';