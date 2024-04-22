% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:01:07
% Model: stockcycle

% Objective
fun = @(x)30.06/x(1)+32.58/x(2)+56.88/x(3)+81.18/x(4)+92.7/x(5)+121.86/x(6)+141.3/x(7)+179.1/x(8)+257.4/x(9)+313.2/x(10)+622.905/x(11)+705.345/x(12)+1818/x(13)+2089.8/x(14)+2244.6/x(15)+2400/x(16)+2553.6/x(17)+2571.75/x(18)+2805.75/x(19)+2966.7/x(20)+3970.68/x(21)+4715.73/x(22)+6259.5/x(23)+6521.67/x(24)+7375.5/x(25)+7572.45/x(26)+8095.8/x(27)+10038.6/x(28)+10256.4/x(29)+12004.65/x(30)+12674.25/x(31)+13728/x(32)+19854.45/x(33)+20955/x(34)+22991.4/x(35)+24552/x(36)+29647.5/x(37)+30705.45/x(38)+34773.3/x(39)+37539/x(40)+47513.4/x(41)+85101.3/x(42)+103560.6/x(43)+112788/x(44)+145599.75/x(45)+149704.8/x(46)+158976/x(47)+159697.5/x(48);

% Bounds
lb = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,156,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21)+x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+x(42)+x(43)+x(44)+x(45)+x(46)+x(47)+x(48);
             -x(1)+3*x(49)+6*x(50)+9*x(51)+12*x(52)+18*x(53)+36*x(54)+52*x(55)+78*x(56)+156*x(57);
             -x(2)+3*x(58)+6*x(59)+9*x(60)+12*x(61)+18*x(62)+36*x(63)+52*x(64)+78*x(65)+156*x(66);
             -x(3)+3*x(67)+6*x(68)+9*x(69)+12*x(70)+18*x(71)+36*x(72)+52*x(73)+78*x(74)+156*x(75);
             -x(4)+3*x(76)+6*x(77)+9*x(78)+12*x(79)+18*x(80)+36*x(81)+52*x(82)+78*x(83)+156*x(84);
             -x(5)+3*x(85)+6*x(86)+9*x(87)+12*x(88)+18*x(89)+36*x(90)+52*x(91)+78*x(92)+156*x(93);
             -x(6)+3*x(94)+6*x(95)+9*x(96)+12*x(97)+18*x(98)+36*x(99)+52*x(100)+78*x(101)+156*x(102);
             -x(7)+3*x(103)+6*x(104)+9*x(105)+12*x(106)+18*x(107)+36*x(108)+52*x(109)+78*x(110)+156*x(111);
             -x(8)+3*x(112)+6*x(113)+9*x(114)+12*x(115)+18*x(116)+36*x(117)+52*x(118)+78*x(119)+156*x(120);
             -x(9)+3*x(121)+6*x(122)+9*x(123)+12*x(124)+18*x(125)+36*x(126)+52*x(127)+78*x(128)+156*x(129);
             -x(10)+3*x(130)+6*x(131)+9*x(132)+12*x(133)+18*x(134)+36*x(135)+52*x(136)+78*x(137)+156*x(138);
             -x(11)+3*x(139)+6*x(140)+9*x(141)+12*x(142)+18*x(143)+36*x(144)+52*x(145)+78*x(146)+156*x(147);
             -x(12)+3*x(148)+6*x(149)+9*x(150)+12*x(151)+18*x(152)+36*x(153)+52*x(154)+78*x(155)+156*x(156);
             -x(13)+3*x(157)+6*x(158)+9*x(159)+12*x(160)+18*x(161)+36*x(162)+52*x(163)+78*x(164)+156*x(165);
             -x(14)+3*x(166)+6*x(167)+9*x(168)+12*x(169)+18*x(170)+36*x(171)+52*x(172)+78*x(173)+156*x(174);
             -x(15)+3*x(175)+6*x(176)+9*x(177)+12*x(178)+18*x(179)+36*x(180)+52*x(181)+78*x(182)+156*x(183);
             -x(16)+3*x(184)+6*x(185)+9*x(186)+12*x(187)+18*x(188)+36*x(189)+52*x(190)+78*x(191)+156*x(192);
             -x(17)+3*x(193)+6*x(194)+9*x(195)+12*x(196)+18*x(197)+36*x(198)+52*x(199)+78*x(200)+156*x(201);
             -x(18)+3*x(202)+6*x(203)+9*x(204)+12*x(205)+18*x(206)+36*x(207)+52*x(208)+78*x(209)+156*x(210);
             -x(19)+3*x(211)+6*x(212)+9*x(213)+12*x(214)+18*x(215)+36*x(216)+52*x(217)+78*x(218)+156*x(219);
             -x(20)+3*x(220)+6*x(221)+9*x(222)+12*x(223)+18*x(224)+36*x(225)+52*x(226)+78*x(227)+156*x(228);
             -x(21)+3*x(229)+6*x(230)+9*x(231)+12*x(232)+18*x(233)+36*x(234)+52*x(235)+78*x(236)+156*x(237);
             -x(22)+3*x(238)+6*x(239)+9*x(240)+12*x(241)+18*x(242)+36*x(243)+52*x(244)+78*x(245)+156*x(246);
             -x(23)+3*x(247)+6*x(248)+9*x(249)+12*x(250)+18*x(251)+36*x(252)+52*x(253)+78*x(254)+156*x(255);
             -x(24)+3*x(256)+6*x(257)+9*x(258)+12*x(259)+18*x(260)+36*x(261)+52*x(262)+78*x(263)+156*x(264);
             -x(25)+3*x(265)+6*x(266)+9*x(267)+12*x(268)+18*x(269)+36*x(270)+52*x(271)+78*x(272)+156*x(273);
             -x(26)+3*x(274)+6*x(275)+9*x(276)+12*x(277)+18*x(278)+36*x(279)+52*x(280)+78*x(281)+156*x(282);
             -x(27)+3*x(283)+6*x(284)+9*x(285)+12*x(286)+18*x(287)+36*x(288)+52*x(289)+78*x(290)+156*x(291);
             -x(28)+3*x(292)+6*x(293)+9*x(294)+12*x(295)+18*x(296)+36*x(297)+52*x(298)+78*x(299)+156*x(300);
             -x(29)+3*x(301)+6*x(302)+9*x(303)+12*x(304)+18*x(305)+36*x(306)+52*x(307)+78*x(308)+156*x(309);
             -x(30)+3*x(310)+6*x(311)+9*x(312)+12*x(313)+18*x(314)+36*x(315)+52*x(316)+78*x(317)+156*x(318);
             -x(31)+3*x(319)+6*x(320)+9*x(321)+12*x(322)+18*x(323)+36*x(324)+52*x(325)+78*x(326)+156*x(327);
             -x(32)+3*x(328)+6*x(329)+9*x(330)+12*x(331)+18*x(332)+36*x(333)+52*x(334)+78*x(335)+156*x(336);
             -x(33)+3*x(337)+6*x(338)+9*x(339)+12*x(340)+18*x(341)+36*x(342)+52*x(343)+78*x(344)+156*x(345);
             -x(34)+3*x(346)+6*x(347)+9*x(348)+12*x(349)+18*x(350)+36*x(351)+52*x(352)+78*x(353)+156*x(354);
             -x(35)+3*x(355)+6*x(356)+9*x(357)+12*x(358)+18*x(359)+36*x(360)+52*x(361)+78*x(362)+156*x(363);
             -x(36)+3*x(364)+6*x(365)+9*x(366)+12*x(367)+18*x(368)+36*x(369)+52*x(370)+78*x(371)+156*x(372);
             -x(37)+3*x(373)+6*x(374)+9*x(375)+12*x(376)+18*x(377)+36*x(378)+52*x(379)+78*x(380)+156*x(381);
             -x(38)+3*x(382)+6*x(383)+9*x(384)+12*x(385)+18*x(386)+36*x(387)+52*x(388)+78*x(389)+156*x(390);
             -x(39)+3*x(391)+6*x(392)+9*x(393)+12*x(394)+18*x(395)+36*x(396)+52*x(397)+78*x(398)+156*x(399);
             -x(40)+3*x(400)+6*x(401)+9*x(402)+12*x(403)+18*x(404)+36*x(405)+52*x(406)+78*x(407)+156*x(408);
             -x(41)+3*x(409)+6*x(410)+9*x(411)+12*x(412)+18*x(413)+36*x(414)+52*x(415)+78*x(416)+156*x(417);
             -x(42)+3*x(418)+6*x(419)+9*x(420)+12*x(421)+18*x(422)+36*x(423)+52*x(424)+78*x(425)+156*x(426);
             -x(43)+3*x(427)+6*x(428)+9*x(429)+12*x(430)+18*x(431)+36*x(432)+52*x(433)+78*x(434)+156*x(435);
             -x(44)+3*x(436)+6*x(437)+9*x(438)+12*x(439)+18*x(440)+36*x(441)+52*x(442)+78*x(443)+156*x(444);
             -x(45)+3*x(445)+6*x(446)+9*x(447)+12*x(448)+18*x(449)+36*x(450)+52*x(451)+78*x(452)+156*x(453);
             -x(46)+3*x(454)+6*x(455)+9*x(456)+12*x(457)+18*x(458)+36*x(459)+52*x(460)+78*x(461)+156*x(462);
             -x(47)+3*x(463)+6*x(464)+9*x(465)+12*x(466)+18*x(467)+36*x(468)+52*x(469)+78*x(470)+156*x(471);
             -x(48)+3*x(472)+6*x(473)+9*x(474)+12*x(475)+18*x(476)+36*x(477)+52*x(478)+78*x(479)+156*x(480);
             x(49)+x(50)+x(51)+x(52)+x(53)+x(54)+x(55)+x(56)+x(57);
             x(58)+x(59)+x(60)+x(61)+x(62)+x(63)+x(64)+x(65)+x(66);
             x(67)+x(68)+x(69)+x(70)+x(71)+x(72)+x(73)+x(74)+x(75);
             x(76)+x(77)+x(78)+x(79)+x(80)+x(81)+x(82)+x(83)+x(84);
             x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(91)+x(92)+x(93);
             x(94)+x(95)+x(96)+x(97)+x(98)+x(99)+x(100)+x(101)+x(102);
             x(103)+x(104)+x(105)+x(106)+x(107)+x(108)+x(109)+x(110)+x(111);
             x(112)+x(113)+x(114)+x(115)+x(116)+x(117)+x(118)+x(119)+x(120);
             x(121)+x(122)+x(123)+x(124)+x(125)+x(126)+x(127)+x(128)+x(129);
             x(130)+x(131)+x(132)+x(133)+x(134)+x(135)+x(136)+x(137)+x(138);
             x(139)+x(140)+x(141)+x(142)+x(143)+x(144)+x(145)+x(146)+x(147);
             x(148)+x(149)+x(150)+x(151)+x(152)+x(153)+x(154)+x(155)+x(156);
             x(157)+x(158)+x(159)+x(160)+x(161)+x(162)+x(163)+x(164)+x(165);
             x(166)+x(167)+x(168)+x(169)+x(170)+x(171)+x(172)+x(173)+x(174);
             x(175)+x(176)+x(177)+x(178)+x(179)+x(180)+x(181)+x(182)+x(183);
             x(184)+x(185)+x(186)+x(187)+x(188)+x(189)+x(190)+x(191)+x(192);
             x(193)+x(194)+x(195)+x(196)+x(197)+x(198)+x(199)+x(200)+x(201);
             x(202)+x(203)+x(204)+x(205)+x(206)+x(207)+x(208)+x(209)+x(210);
             x(211)+x(212)+x(213)+x(214)+x(215)+x(216)+x(217)+x(218)+x(219);
             x(220)+x(221)+x(222)+x(223)+x(224)+x(225)+x(226)+x(227)+x(228);
             x(229)+x(230)+x(231)+x(232)+x(233)+x(234)+x(235)+x(236)+x(237);
             x(238)+x(239)+x(240)+x(241)+x(242)+x(243)+x(244)+x(245)+x(246);
             x(247)+x(248)+x(249)+x(250)+x(251)+x(252)+x(253)+x(254)+x(255);
             x(256)+x(257)+x(258)+x(259)+x(260)+x(261)+x(262)+x(263)+x(264);
             x(265)+x(266)+x(267)+x(268)+x(269)+x(270)+x(271)+x(272)+x(273);
             x(274)+x(275)+x(276)+x(277)+x(278)+x(279)+x(280)+x(281)+x(282);
             x(283)+x(284)+x(285)+x(286)+x(287)+x(288)+x(289)+x(290)+x(291);
             x(292)+x(293)+x(294)+x(295)+x(296)+x(297)+x(298)+x(299)+x(300);
             x(301)+x(302)+x(303)+x(304)+x(305)+x(306)+x(307)+x(308)+x(309);
             x(310)+x(311)+x(312)+x(313)+x(314)+x(315)+x(316)+x(317)+x(318);
             x(319)+x(320)+x(321)+x(322)+x(323)+x(324)+x(325)+x(326)+x(327);
             x(328)+x(329)+x(330)+x(331)+x(332)+x(333)+x(334)+x(335)+x(336);
             x(337)+x(338)+x(339)+x(340)+x(341)+x(342)+x(343)+x(344)+x(345);
             x(346)+x(347)+x(348)+x(349)+x(350)+x(351)+x(352)+x(353)+x(354);
             x(355)+x(356)+x(357)+x(358)+x(359)+x(360)+x(361)+x(362)+x(363);
             x(364)+x(365)+x(366)+x(367)+x(368)+x(369)+x(370)+x(371)+x(372);
             x(373)+x(374)+x(375)+x(376)+x(377)+x(378)+x(379)+x(380)+x(381);
             x(382)+x(383)+x(384)+x(385)+x(386)+x(387)+x(388)+x(389)+x(390);
             x(391)+x(392)+x(393)+x(394)+x(395)+x(396)+x(397)+x(398)+x(399);
             x(400)+x(401)+x(402)+x(403)+x(404)+x(405)+x(406)+x(407)+x(408);
             x(409)+x(410)+x(411)+x(412)+x(413)+x(414)+x(415)+x(416)+x(417);
             x(418)+x(419)+x(420)+x(421)+x(422)+x(423)+x(424)+x(425)+x(426);
             x(427)+x(428)+x(429)+x(430)+x(431)+x(432)+x(433)+x(434)+x(435);
             x(436)+x(437)+x(438)+x(439)+x(440)+x(441)+x(442)+x(443)+x(444);
             x(445)+x(446)+x(447)+x(448)+x(449)+x(450)+x(451)+x(452)+x(453);
             x(454)+x(455)+x(456)+x(457)+x(458)+x(459)+x(460)+x(461)+x(462);
             x(463)+x(464)+x(465)+x(466)+x(467)+x(468)+x(469)+x(470)+x(471);
             x(472)+x(473)+x(474)+x(475)+x(476)+x(477)+x(478)+x(479)+x(480)];
cl = [-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';
cu = [300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','stockcycle');
opts.sense = 'min';
