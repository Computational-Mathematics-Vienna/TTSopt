% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:25
% Model: SLay07H

% Objective
fun = @(x)150*((-4+x(1))^2+(-10+x(8))^2)+390*((-10+x(2))^2+(-15+x(9))^2)+240*((-7+x(3))^2+(-9+x(10))^2)+70*((-3+x(4))^2+(-3+x(11))^2)+165*((-20+x(5))^2+(-17+x(12))^2)+100*((-18+x(6))^2+(-8+x(13))^2)+200*((-30+x(7))^2+(-20+x(14))^2)+300*x(435)+240*x(436)+210*x(437)+140*x(438)+300*x(439)+250*x(440)+100*x(441)+150*x(442)+220*x(443)+200*x(444)+300*x(445)+120*x(446)+300*x(447)+150*x(448)+150*x(449)+100*x(450)+120*x(451)+180*x(452)+130*x(453)+190*x(454)+220*x(455)+300*x(456)+240*x(457)+210*x(458)+140*x(459)+300*x(460)+250*x(461)+100*x(462)+150*x(463)+220*x(464)+200*x(465)+300*x(466)+120*x(467)+300*x(468)+150*x(469)+150*x(470)+100*x(471)+120*x(472)+180*x(473)+130*x(474)+190*x(475)+220*x(476);

% Bounds
lb = [2.5,3.5,1.5,1,2,2.5,4,3,2.5,1.5,1.5,2,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [37.5,36.5,38.5,39,38,37.5,36,37,37.5,38.5,38.5,38,39,37,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)+x(2)+x(435);
             -x(1)+x(3)+x(436);
             -x(1)+x(4)+x(437);
             -x(1)+x(5)+x(438);
             -x(1)+x(6)+x(439);
             -x(1)+x(7)+x(440);
             -x(2)+x(3)+x(441);
             -x(2)+x(4)+x(442);
             -x(2)+x(5)+x(443);
             -x(2)+x(6)+x(444);
             -x(2)+x(7)+x(445);
             -x(3)+x(4)+x(446);
             -x(3)+x(5)+x(447);
             -x(3)+x(6)+x(448);
             -x(3)+x(7)+x(449);
             -x(4)+x(5)+x(450);
             -x(4)+x(6)+x(451);
             -x(4)+x(7)+x(452);
             -x(5)+x(6)+x(453);
             -x(5)+x(7)+x(454);
             -x(6)+x(7)+x(455);
             x(1)-x(2)+x(435);
             x(1)-x(3)+x(436);
             x(1)-x(4)+x(437);
             x(1)-x(5)+x(438);
             x(1)-x(6)+x(439);
             x(1)-x(7)+x(440);
             x(2)-x(3)+x(441);
             x(2)-x(4)+x(442);
             x(2)-x(5)+x(443);
             x(2)-x(6)+x(444);
             x(2)-x(7)+x(445);
             x(3)-x(4)+x(446);
             x(3)-x(5)+x(447);
             x(3)-x(6)+x(448);
             x(3)-x(7)+x(449);
             x(4)-x(5)+x(450);
             x(4)-x(6)+x(451);
             x(4)-x(7)+x(452);
             x(5)-x(6)+x(453);
             x(5)-x(7)+x(454);
             x(6)-x(7)+x(455);
             -x(8)+x(9)+x(456);
             -x(8)+x(10)+x(457);
             -x(8)+x(11)+x(458);
             -x(8)+x(12)+x(459);
             -x(8)+x(13)+x(460);
             -x(8)+x(14)+x(461);
             -x(9)+x(10)+x(462);
             -x(9)+x(11)+x(463);
             -x(9)+x(12)+x(464);
             -x(9)+x(13)+x(465);
             -x(9)+x(14)+x(466);
             -x(10)+x(11)+x(467);
             -x(10)+x(12)+x(468);
             -x(10)+x(13)+x(469);
             -x(10)+x(14)+x(470);
             -x(11)+x(12)+x(471);
             -x(11)+x(13)+x(472);
             -x(11)+x(14)+x(473);
             -x(12)+x(13)+x(474);
             -x(12)+x(14)+x(475);
             -x(13)+x(14)+x(476);
             x(8)-x(9)+x(456);
             x(8)-x(10)+x(457);
             x(8)-x(11)+x(458);
             x(8)-x(12)+x(459);
             x(8)-x(13)+x(460);
             x(8)-x(14)+x(461);
             x(9)-x(10)+x(462);
             x(9)-x(11)+x(463);
             x(9)-x(12)+x(464);
             x(9)-x(13)+x(465);
             x(9)-x(14)+x(466);
             x(10)-x(11)+x(467);
             x(10)-x(12)+x(468);
             x(10)-x(13)+x(469);
             x(10)-x(14)+x(470);
             x(11)-x(12)+x(471);
             x(11)-x(13)+x(472);
             x(11)-x(14)+x(473);
             x(12)-x(13)+x(474);
             x(12)-x(14)+x(475);
             x(13)-x(14)+x(476);
             x(1)-x(15)-x(21)-x(27)-x(33);
             x(1)-x(16)-x(22)-x(28)-x(34);
             x(1)-x(17)-x(23)-x(29)-x(35);
             x(1)-x(18)-x(24)-x(30)-x(36);
             x(1)-x(19)-x(25)-x(31)-x(37);
             x(1)-x(20)-x(26)-x(32)-x(38);
             x(2)-x(39)-x(45)-x(51)-x(57);
             x(2)-x(40)-x(46)-x(52)-x(58);
             x(2)-x(41)-x(47)-x(53)-x(59);
             x(2)-x(42)-x(48)-x(54)-x(60);
             x(2)-x(43)-x(49)-x(55)-x(61);
             x(2)-x(44)-x(50)-x(56)-x(62);
             x(3)-x(63)-x(69)-x(75)-x(81);
             x(3)-x(64)-x(70)-x(76)-x(82);
             x(3)-x(65)-x(71)-x(77)-x(83);
             x(3)-x(66)-x(72)-x(78)-x(84);
             x(3)-x(67)-x(73)-x(79)-x(85);
             x(3)-x(68)-x(74)-x(80)-x(86);
             x(4)-x(87)-x(93)-x(99)-x(105);
             x(4)-x(88)-x(94)-x(100)-x(106);
             x(4)-x(89)-x(95)-x(101)-x(107);
             x(4)-x(90)-x(96)-x(102)-x(108);
             x(4)-x(91)-x(97)-x(103)-x(109);
             x(4)-x(92)-x(98)-x(104)-x(110);
             x(5)-x(111)-x(117)-x(123)-x(129);
             x(5)-x(112)-x(118)-x(124)-x(130);
             x(5)-x(113)-x(119)-x(125)-x(131);
             x(5)-x(114)-x(120)-x(126)-x(132);
             x(5)-x(115)-x(121)-x(127)-x(133);
             x(5)-x(116)-x(122)-x(128)-x(134);
             x(6)-x(135)-x(141)-x(147)-x(153);
             x(6)-x(136)-x(142)-x(148)-x(154);
             x(6)-x(137)-x(143)-x(149)-x(155);
             x(6)-x(138)-x(144)-x(150)-x(156);
             x(6)-x(139)-x(145)-x(151)-x(157);
             x(6)-x(140)-x(146)-x(152)-x(158);
             x(7)-x(159)-x(165)-x(171)-x(177);
             x(7)-x(160)-x(166)-x(172)-x(178);
             x(7)-x(161)-x(167)-x(173)-x(179);
             x(7)-x(162)-x(168)-x(174)-x(180);
             x(7)-x(163)-x(169)-x(175)-x(181);
             x(7)-x(164)-x(170)-x(176)-x(182);
             x(8)-x(183)-x(189)-x(195)-x(201);
             x(8)-x(184)-x(190)-x(196)-x(202);
             x(8)-x(185)-x(191)-x(197)-x(203);
             x(8)-x(186)-x(192)-x(198)-x(204);
             x(8)-x(187)-x(193)-x(199)-x(205);
             x(8)-x(188)-x(194)-x(200)-x(206);
             x(9)-x(207)-x(213)-x(219)-x(225);
             x(9)-x(208)-x(214)-x(220)-x(226);
             x(9)-x(209)-x(215)-x(221)-x(227);
             x(9)-x(210)-x(216)-x(222)-x(228);
             x(9)-x(211)-x(217)-x(223)-x(229);
             x(9)-x(212)-x(218)-x(224)-x(230);
             x(10)-x(231)-x(237)-x(243)-x(249);
             x(10)-x(232)-x(238)-x(244)-x(250);
             x(10)-x(233)-x(239)-x(245)-x(251);
             x(10)-x(234)-x(240)-x(246)-x(252);
             x(10)-x(235)-x(241)-x(247)-x(253);
             x(10)-x(236)-x(242)-x(248)-x(254);
             x(11)-x(255)-x(261)-x(267)-x(273);
             x(11)-x(256)-x(262)-x(268)-x(274);
             x(11)-x(257)-x(263)-x(269)-x(275);
             x(11)-x(258)-x(264)-x(270)-x(276);
             x(11)-x(259)-x(265)-x(271)-x(277);
             x(11)-x(260)-x(266)-x(272)-x(278);
             x(12)-x(279)-x(285)-x(291)-x(297);
             x(12)-x(280)-x(286)-x(292)-x(298);
             x(12)-x(281)-x(287)-x(293)-x(299);
             x(12)-x(282)-x(288)-x(294)-x(300);
             x(12)-x(283)-x(289)-x(295)-x(301);
             x(12)-x(284)-x(290)-x(296)-x(302);
             x(13)-x(303)-x(309)-x(315)-x(321);
             x(13)-x(304)-x(310)-x(316)-x(322);
             x(13)-x(305)-x(311)-x(317)-x(323);
             x(13)-x(306)-x(312)-x(318)-x(324);
             x(13)-x(307)-x(313)-x(319)-x(325);
             x(13)-x(308)-x(314)-x(320)-x(326);
             x(14)-x(327)-x(333)-x(339)-x(345);
             x(14)-x(328)-x(334)-x(340)-x(346);
             x(14)-x(329)-x(335)-x(341)-x(347);
             x(14)-x(330)-x(336)-x(342)-x(348);
             x(14)-x(331)-x(337)-x(343)-x(349);
             x(14)-x(332)-x(338)-x(344)-x(350);
             x(15)-37.5*x(351);
             x(16)-37.5*x(352);
             x(17)-37.5*x(353);
             x(18)-37.5*x(354);
             x(19)-37.5*x(355);
             x(20)-37.5*x(356);
             x(21)-37.5*x(372);
             x(22)-37.5*x(373);
             x(23)-37.5*x(374);
             x(24)-37.5*x(375);
             x(25)-37.5*x(376);
             x(26)-37.5*x(377);
             x(27)-37.5*x(393);
             x(28)-37.5*x(394);
             x(29)-37.5*x(395);
             x(30)-37.5*x(396);
             x(31)-37.5*x(397);
             x(32)-37.5*x(398);
             x(33)-37.5*x(414);
             x(34)-37.5*x(415);
             x(35)-37.5*x(416);
             x(36)-37.5*x(417);
             x(37)-37.5*x(418);
             x(38)-37.5*x(419);
             x(39)-37.5*x(351);
             x(40)-36.5*x(357);
             x(41)-36.5*x(358);
             x(42)-36.5*x(359);
             x(43)-36.5*x(360);
             x(44)-36.5*x(361);
             x(45)-37.5*x(372);
             x(46)-36.5*x(378);
             x(47)-36.5*x(379);
             x(48)-36.5*x(380);
             x(49)-36.5*x(381);
             x(50)-36.5*x(382);
             x(51)-37.5*x(393);
             x(52)-36.5*x(399);
             x(53)-36.5*x(400);
             x(54)-36.5*x(401);
             x(55)-36.5*x(402);
             x(56)-36.5*x(403);
             x(57)-37.5*x(414);
             x(58)-36.5*x(420);
             x(59)-36.5*x(421);
             x(60)-36.5*x(422);
             x(61)-36.5*x(423);
             x(62)-36.5*x(424);
             x(63)-37.5*x(352);
             x(64)-36.5*x(357);
             x(65)-38.5*x(362);
             x(66)-38.5*x(363);
             x(67)-38.5*x(364);
             x(68)-38.5*x(365);
             x(69)-37.5*x(373);
             x(70)-36.5*x(378);
             x(71)-38.5*x(383);
             x(72)-38.5*x(384);
             x(73)-38.5*x(385);
             x(74)-38.5*x(386);
             x(75)-37.5*x(394);
             x(76)-36.5*x(399);
             x(77)-38.5*x(404);
             x(78)-38.5*x(405);
             x(79)-38.5*x(406);
             x(80)-38.5*x(407);
             x(81)-37.5*x(415);
             x(82)-36.5*x(420);
             x(83)-38.5*x(425);
             x(84)-38.5*x(426);
             x(85)-38.5*x(427);
             x(86)-38.5*x(428);
             x(87)-37.5*x(353);
             x(88)-36.5*x(358);
             x(89)-38.5*x(362);
             x(90)-39*x(366);
             x(91)-39*x(367);
             x(92)-39*x(368);
             x(93)-37.5*x(374);
             x(94)-36.5*x(379);
             x(95)-38.5*x(383);
             x(96)-39*x(387);
             x(97)-39*x(388);
             x(98)-39*x(389);
             x(99)-37.5*x(395);
             x(100)-36.5*x(400);
             x(101)-38.5*x(404);
             x(102)-39*x(408);
             x(103)-39*x(409);
             x(104)-39*x(410);
             x(105)-37.5*x(416);
             x(106)-36.5*x(421);
             x(107)-38.5*x(425);
             x(108)-39*x(429);
             x(109)-39*x(430);
             x(110)-39*x(431);
             x(111)-37.5*x(354);
             x(112)-36.5*x(359);
             x(113)-38.5*x(363);
             x(114)-39*x(366);
             x(115)-38*x(369);
             x(116)-38*x(370);
             x(117)-37.5*x(375);
             x(118)-36.5*x(380);
             x(119)-38.5*x(384);
             x(120)-39*x(387);
             x(121)-38*x(390);
             x(122)-38*x(391);
             x(123)-37.5*x(396);
             x(124)-36.5*x(401);
             x(125)-38.5*x(405);
             x(126)-39*x(408);
             x(127)-38*x(411);
             x(128)-38*x(412);
             x(129)-37.5*x(417);
             x(130)-36.5*x(422);
             x(131)-38.5*x(426);
             x(132)-39*x(429);
             x(133)-38*x(432);
             x(134)-38*x(433);
             x(135)-37.5*x(355);
             x(136)-36.5*x(360);
             x(137)-38.5*x(364);
             x(138)-39*x(367);
             x(139)-38*x(369);
             x(140)-37.5*x(371);
             x(141)-37.5*x(376);
             x(142)-36.5*x(381);
             x(143)-38.5*x(385);
             x(144)-39*x(388);
             x(145)-38*x(390);
             x(146)-37.5*x(392);
             x(147)-37.5*x(397);
             x(148)-36.5*x(402);
             x(149)-38.5*x(406);
             x(150)-39*x(409);
             x(151)-38*x(411);
             x(152)-37.5*x(413);
             x(153)-37.5*x(418);
             x(154)-36.5*x(423);
             x(155)-38.5*x(427);
             x(156)-39*x(430);
             x(157)-38*x(432);
             x(158)-37.5*x(434);
             x(159)-37.5*x(356);
             x(160)-36.5*x(361);
             x(161)-38.5*x(365);
             x(162)-39*x(368);
             x(163)-38*x(370);
             x(164)-37.5*x(371);
             x(165)-37.5*x(377);
             x(166)-36.5*x(382);
             x(167)-38.5*x(386);
             x(168)-39*x(389);
             x(169)-38*x(391);
             x(170)-37.5*x(392);
             x(171)-37.5*x(398);
             x(172)-36.5*x(403);
             x(173)-38.5*x(407);
             x(174)-39*x(410);
             x(175)-38*x(412);
             x(176)-37.5*x(413);
             x(177)-37.5*x(419);
             x(178)-36.5*x(424);
             x(179)-38.5*x(428);
             x(180)-39*x(431);
             x(181)-38*x(433);
             x(182)-37.5*x(434);
             x(183)-37*x(351);
             x(184)-37*x(352);
             x(185)-37*x(353);
             x(186)-37*x(354);
             x(187)-37*x(355);
             x(188)-37*x(356);
             x(189)-37*x(372);
             x(190)-37*x(373);
             x(191)-37*x(374);
             x(192)-37*x(375);
             x(193)-37*x(376);
             x(194)-37*x(377);
             x(195)-37*x(393);
             x(196)-37*x(394);
             x(197)-37*x(395);
             x(198)-37*x(396);
             x(199)-37*x(397);
             x(200)-37*x(398);
             x(201)-37*x(414);
             x(202)-37*x(415);
             x(203)-37*x(416);
             x(204)-37*x(417);
             x(205)-37*x(418);
             x(206)-37*x(419);
             x(207)-37*x(351);
             x(208)-37.5*x(357);
             x(209)-37.5*x(358);
             x(210)-37.5*x(359);
             x(211)-37.5*x(360);
             x(212)-37.5*x(361);
             x(213)-37*x(372);
             x(214)-37.5*x(378);
             x(215)-37.5*x(379);
             x(216)-37.5*x(380);
             x(217)-37.5*x(381);
             x(218)-37.5*x(382);
             x(219)-37*x(393);
             x(220)-37.5*x(399);
             x(221)-37.5*x(400);
             x(222)-37.5*x(401);
             x(223)-37.5*x(402);
             x(224)-37.5*x(403);
             x(225)-37*x(414);
             x(226)-37.5*x(420);
             x(227)-37.5*x(421);
             x(228)-37.5*x(422);
             x(229)-37.5*x(423);
             x(230)-37.5*x(424);
             x(231)-37*x(352);
             x(232)-37.5*x(357);
             x(233)-38.5*x(362);
             x(234)-38.5*x(363);
             x(235)-38.5*x(364);
             x(236)-38.5*x(365);
             x(237)-37*x(373);
             x(238)-37.5*x(378);
             x(239)-38.5*x(383);
             x(240)-38.5*x(384);
             x(241)-38.5*x(385);
             x(242)-38.5*x(386);
             x(243)-37*x(394);
             x(244)-37.5*x(399);
             x(245)-38.5*x(404);
             x(246)-38.5*x(405);
             x(247)-38.5*x(406);
             x(248)-38.5*x(407);
             x(249)-37*x(415);
             x(250)-37.5*x(420);
             x(251)-38.5*x(425);
             x(252)-38.5*x(426);
             x(253)-38.5*x(427);
             x(254)-38.5*x(428);
             x(255)-37*x(353);
             x(256)-37.5*x(358);
             x(257)-38.5*x(362);
             x(258)-38.5*x(366);
             x(259)-38.5*x(367);
             x(260)-38.5*x(368);
             x(261)-37*x(374);
             x(262)-37.5*x(379);
             x(263)-38.5*x(383);
             x(264)-38.5*x(387);
             x(265)-38.5*x(388);
             x(266)-38.5*x(389);
             x(267)-37*x(395);
             x(268)-37.5*x(400);
             x(269)-38.5*x(404);
             x(270)-38.5*x(408);
             x(271)-38.5*x(409);
             x(272)-38.5*x(410);
             x(273)-37*x(416);
             x(274)-37.5*x(421);
             x(275)-38.5*x(425);
             x(276)-38.5*x(429);
             x(277)-38.5*x(430);
             x(278)-38.5*x(431);
             x(279)-37*x(354);
             x(280)-37.5*x(359);
             x(281)-38.5*x(363);
             x(282)-38.5*x(366);
             x(283)-38*x(369);
             x(284)-38*x(370);
             x(285)-37*x(375);
             x(286)-37.5*x(380);
             x(287)-38.5*x(384);
             x(288)-38.5*x(387);
             x(289)-38*x(390);
             x(290)-38*x(391);
             x(291)-37*x(396);
             x(292)-37.5*x(401);
             x(293)-38.5*x(405);
             x(294)-38.5*x(408);
             x(295)-38*x(411);
             x(296)-38*x(412);
             x(297)-37*x(417);
             x(298)-37.5*x(422);
             x(299)-38.5*x(426);
             x(300)-38.5*x(429);
             x(301)-38*x(432);
             x(302)-38*x(433);
             x(303)-37*x(355);
             x(304)-37.5*x(360);
             x(305)-38.5*x(364);
             x(306)-38.5*x(367);
             x(307)-38*x(369);
             x(308)-39*x(371);
             x(309)-37*x(376);
             x(310)-37.5*x(381);
             x(311)-38.5*x(385);
             x(312)-38.5*x(388);
             x(313)-38*x(390);
             x(314)-39*x(392);
             x(315)-37*x(397);
             x(316)-37.5*x(402);
             x(317)-38.5*x(406);
             x(318)-38.5*x(409);
             x(319)-38*x(411);
             x(320)-39*x(413);
             x(321)-37*x(418);
             x(322)-37.5*x(423);
             x(323)-38.5*x(427);
             x(324)-38.5*x(430);
             x(325)-38*x(432);
             x(326)-39*x(434);
             x(327)-37*x(356);
             x(328)-37.5*x(361);
             x(329)-38.5*x(365);
             x(330)-38.5*x(368);
             x(331)-38*x(370);
             x(332)-39*x(371);
             x(333)-37*x(377);
             x(334)-37.5*x(382);
             x(335)-38.5*x(386);
             x(336)-38.5*x(389);
             x(337)-38*x(391);
             x(338)-39*x(392);
             x(339)-37*x(398);
             x(340)-37.5*x(403);
             x(341)-38.5*x(407);
             x(342)-38.5*x(410);
             x(343)-38*x(412);
             x(344)-39*x(413);
             x(345)-37*x(419);
             x(346)-37.5*x(424);
             x(347)-38.5*x(428);
             x(348)-38.5*x(431);
             x(349)-38*x(433);
             x(350)-39*x(434);
             x(15)-x(39)+6*x(351);
             x(16)-x(63)+4*x(352);
             x(17)-x(87)+3.5*x(353);
             x(18)-x(111)+4.5*x(354);
             x(19)-x(135)+5*x(355);
             x(20)-x(159)+6.5*x(356);
             x(40)-x(64)+5*x(357);
             x(41)-x(88)+4.5*x(358);
             x(42)-x(112)+5.5*x(359);
             x(43)-x(136)+6*x(360);
             x(44)-x(160)+7.5*x(361);
             x(65)-x(89)+2.5*x(362);
             x(66)-x(113)+3.5*x(363);
             x(67)-x(137)+4*x(364);
             x(68)-x(161)+5.5*x(365);
             x(90)-x(114)+3*x(366);
             x(91)-x(138)+3.5*x(367);
             x(92)-x(162)+5*x(368);
             x(115)-x(139)+4.5*x(369);
             x(116)-x(163)+6*x(370);
             x(140)-x(164)+6.5*x(371);
             -x(21)+x(45)+6*x(372);
             -x(22)+x(69)+4*x(373);
             -x(23)+x(93)+3.5*x(374);
             -x(24)+x(117)+4.5*x(375);
             -x(25)+x(141)+5*x(376);
             -x(26)+x(165)+6.5*x(377);
             -x(46)+x(70)+5*x(378);
             -x(47)+x(94)+4.5*x(379);
             -x(48)+x(118)+5.5*x(380);
             -x(49)+x(142)+6*x(381);
             -x(50)+x(166)+7.5*x(382);
             -x(71)+x(95)+2.5*x(383);
             -x(72)+x(119)+3.5*x(384);
             -x(73)+x(143)+4*x(385);
             -x(74)+x(167)+5.5*x(386);
             -x(96)+x(120)+3*x(387);
             -x(97)+x(144)+3.5*x(388);
             -x(98)+x(168)+5*x(389);
             -x(121)+x(145)+4.5*x(390);
             -x(122)+x(169)+6*x(391);
             -x(146)+x(170)+6.5*x(392);
             x(195)-x(219)+5.5*x(393);
             x(196)-x(243)+4.5*x(394);
             x(197)-x(267)+4.5*x(395);
             x(198)-x(291)+5*x(396);
             x(199)-x(315)+4*x(397);
             x(200)-x(339)+6*x(398);
             x(220)-x(244)+4*x(399);
             x(221)-x(268)+4*x(400);
             x(222)-x(292)+4.5*x(401);
             x(223)-x(316)+3.5*x(402);
             x(224)-x(340)+5.5*x(403);
             x(245)-x(269)+3*x(404);
             x(246)-x(293)+3.5*x(405);
             x(247)-x(317)+2.5*x(406);
             x(248)-x(341)+4.5*x(407);
             x(270)-x(294)+3.5*x(408);
             x(271)-x(318)+2.5*x(409);
             x(272)-x(342)+4.5*x(410);
             x(295)-x(319)+3*x(411);
             x(296)-x(343)+5*x(412);
             x(320)-x(344)+4*x(413);
             -x(201)+x(225)+5.5*x(414);
             -x(202)+x(249)+4.5*x(415);
             -x(203)+x(273)+4.5*x(416);
             -x(204)+x(297)+5*x(417);
             -x(205)+x(321)+4*x(418);
             -x(206)+x(345)+6*x(419);
             -x(226)+x(250)+4*x(420);
             -x(227)+x(274)+4*x(421);
             -x(228)+x(298)+4.5*x(422);
             -x(229)+x(322)+3.5*x(423);
             -x(230)+x(346)+5.5*x(424);
             -x(251)+x(275)+3*x(425);
             -x(252)+x(299)+3.5*x(426);
             -x(253)+x(323)+2.5*x(427);
             -x(254)+x(347)+4.5*x(428);
             -x(276)+x(300)+3.5*x(429);
             -x(277)+x(324)+2.5*x(430);
             -x(278)+x(348)+4.5*x(431);
             -x(301)+x(325)+3*x(432);
             -x(302)+x(349)+5*x(433);
             -x(326)+x(350)+4*x(434);
             x(351)+x(372)+x(393)+x(414);
             x(352)+x(373)+x(394)+x(415);
             x(353)+x(374)+x(395)+x(416);
             x(354)+x(375)+x(396)+x(417);
             x(355)+x(376)+x(397)+x(418);
             x(356)+x(377)+x(398)+x(419);
             x(357)+x(378)+x(399)+x(420);
             x(358)+x(379)+x(400)+x(421);
             x(359)+x(380)+x(401)+x(422);
             x(360)+x(381)+x(402)+x(423);
             x(361)+x(382)+x(403)+x(424);
             x(362)+x(383)+x(404)+x(425);
             x(363)+x(384)+x(405)+x(426);
             x(364)+x(385)+x(406)+x(427);
             x(365)+x(386)+x(407)+x(428);
             x(366)+x(387)+x(408)+x(429);
             x(367)+x(388)+x(409)+x(430);
             x(368)+x(389)+x(410)+x(431);
             x(369)+x(390)+x(411)+x(432);
             x(370)+x(391)+x(412)+x(433);
             x(371)+x(392)+x(413)+x(434)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [2.5,3.5,1.5,1,2,2.5,4,3,2.5,1.5,1.5,2,1,3,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','SLay07H');
opts.sense = 'min';