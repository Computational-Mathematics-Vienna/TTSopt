% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 20:48:54
% Model: catenary

% Objective
fun = @(x)44.3222891566265*x(168)+29.5481927710843*x(169)+29.5481927710843*x(170)+29.5481927710843*x(171)+29.5481927710843*x(172)+29.5481927710843*x(173)+29.5481927710843*x(174)+29.5481927710843*x(175)+29.5481927710843*x(176)+29.5481927710843*x(177)+29.5481927710843*x(178)+29.5481927710843*x(179)+29.5481927710843*x(180)+29.5481927710843*x(181)+29.5481927710843*x(182)+29.5481927710843*x(183)+29.5481927710843*x(184)+29.5481927710843*x(185)+29.5481927710843*x(186)+29.5481927710843*x(187)+29.5481927710843*x(188)+29.5481927710843*x(189)+29.5481927710843*x(190)+29.5481927710843*x(191)+29.5481927710843*x(192)+29.5481927710843*x(193)+29.5481927710843*x(194)+29.5481927710843*x(195)+29.5481927710843*x(196)+29.5481927710843*x(197)+29.5481927710843*x(198)+29.5481927710843*x(199)+29.5481927710843*x(200)+29.5481927710843*x(201)+29.5481927710843*x(202)+29.5481927710843*x(203)+29.5481927710843*x(204)+29.5481927710843*x(205)+29.5481927710843*x(206)+29.5481927710843*x(207)+29.5481927710843*x(208)+29.5481927710843*x(209)+29.5481927710843*x(210)+29.5481927710843*x(211)+29.5481927710843*x(212)+29.5481927710843*x(213)+29.5481927710843*x(214)+29.5481927710843*x(215)+29.5481927710843*x(216)+29.5481927710843*x(217)+29.5481927710843*x(218)+29.5481927710843*x(219)+29.5481927710843*x(220)+29.5481927710843*x(221)+29.5481927710843*x(222)+29.5481927710843*x(223)+29.5481927710843*x(224)+29.5481927710843*x(225)+29.5481927710843*x(226)+29.5481927710843*x(227)+29.5481927710843*x(228)+29.5481927710843*x(229)+29.5481927710843*x(230)+29.5481927710843*x(231)+29.5481927710843*x(232)+29.5481927710843*x(233)+29.5481927710843*x(234)+29.5481927710843*x(235)+29.5481927710843*x(236)+29.5481927710843*x(237)+29.5481927710843*x(238)+29.5481927710843*x(239)+29.5481927710843*x(240)+29.5481927710843*x(241)+29.5481927710843*x(242)+29.5481927710843*x(243)+29.5481927710843*x(244)+29.5481927710843*x(245)+29.5481927710843*x(246)+29.5481927710843*x(247)+29.5481927710843*x(248)+29.5481927710843*x(249)+29.5481927710843*x(250)+29.5481927710843*x(251)+29.5481927710843*x(252)+29.5481927710843*x(253)+29.5481927710843*x(254)+29.5481927710843*x(255)+29.5481927710843*x(256)+29.5481927710843*x(257)+29.5481927710843*x(258)+29.5481927710843*x(259)+29.5481927710843*x(260)+29.5481927710843*x(261)+29.5481927710843*x(262)+29.5481927710843*x(263)+29.5481927710843*x(264)+29.5481927710843*x(265)+29.5481927710843*x(266)+29.5481927710843*x(267)+29.5481927710843*x(268)+29.5481927710843*x(269)+29.5481927710843*x(270)+29.5481927710843*x(271)+29.5481927710843*x(272)+29.5481927710843*x(273)+29.5481927710843*x(274)+29.5481927710843*x(275)+29.5481927710843*x(276)+29.5481927710843*x(277)+29.5481927710843*x(278)+29.5481927710843*x(279)+29.5481927710843*x(280)+29.5481927710843*x(281)+29.5481927710843*x(282)+29.5481927710843*x(283)+29.5481927710843*x(284)+29.5481927710843*x(285)+29.5481927710843*x(286)+29.5481927710843*x(287)+29.5481927710843*x(288)+29.5481927710843*x(289)+29.5481927710843*x(290)+29.5481927710843*x(291)+29.5481927710843*x(292)+29.5481927710843*x(293)+29.5481927710843*x(294)+29.5481927710843*x(295)+29.5481927710843*x(296)+29.5481927710843*x(297)+29.5481927710843*x(298)+29.5481927710843*x(299)+29.5481927710843*x(300)+29.5481927710843*x(301)+29.5481927710843*x(302)+29.5481927710843*x(303)+29.5481927710843*x(304)+29.5481927710843*x(305)+29.5481927710843*x(306)+29.5481927710843*x(307)+29.5481927710843*x(308)+29.5481927710843*x(309)+29.5481927710843*x(310)+29.5481927710843*x(311)+29.5481927710843*x(312)+29.5481927710843*x(313)+29.5481927710843*x(314)+29.5481927710843*x(315)+29.5481927710843*x(316)+29.5481927710843*x(317)+29.5481927710843*x(318)+29.5481927710843*x(319)+29.5481927710843*x(320)+29.5481927710843*x(321)+29.5481927710843*x(322)+29.5481927710843*x(323)+29.5481927710843*x(324)+29.5481927710843*x(325)+29.5481927710843*x(326)+29.5481927710843*x(327)+29.5481927710843*x(328)+29.5481927710843*x(329)+29.5481927710843*x(330)+29.5481927710843*x(331)+29.5481927710843*x(332)+29.5481927710843*x(333)+14.7740963855422*x(334);

% Bounds
lb = [0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,99.6,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,99.6,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(x(2)-x(1))^2+(x(169)-x(168))^2+(x(2)-x(335))^2;
             (x(3)-x(2))^2+(x(170)-x(169))^2+(x(3)-x(336))^2;
             (x(4)-x(3))^2+(x(171)-x(170))^2+(x(4)-x(337))^2;
             (x(5)-x(4))^2+(x(172)-x(171))^2+(x(5)-x(338))^2;
             (x(6)-x(5))^2+(x(173)-x(172))^2+(x(6)-x(339))^2;
             (x(7)-x(6))^2+(x(174)-x(173))^2+(x(7)-x(340))^2;
             (x(8)-x(7))^2+(x(175)-x(174))^2+(x(8)-x(341))^2;
             (x(9)-x(8))^2+(x(176)-x(175))^2+(x(9)-x(342))^2;
             (x(10)-x(9))^2+(x(177)-x(176))^2+(x(10)-x(343))^2;
             (x(11)-x(10))^2+(x(178)-x(177))^2+(x(11)-x(344))^2;
             (x(12)-x(11))^2+(x(179)-x(178))^2+(x(12)-x(345))^2;
             (x(13)-x(12))^2+(x(180)-x(179))^2+(x(13)-x(346))^2;
             (x(14)-x(13))^2+(x(181)-x(180))^2+(x(14)-x(347))^2;
             (x(15)-x(14))^2+(x(182)-x(181))^2+(x(15)-x(348))^2;
             (x(16)-x(15))^2+(x(183)-x(182))^2+(x(16)-x(349))^2;
             (x(17)-x(16))^2+(x(184)-x(183))^2+(x(17)-x(350))^2;
             (x(18)-x(17))^2+(x(185)-x(184))^2+(x(18)-x(351))^2;
             (x(19)-x(18))^2+(x(186)-x(185))^2+(x(19)-x(352))^2;
             (x(20)-x(19))^2+(x(187)-x(186))^2+(x(20)-x(353))^2;
             (x(21)-x(20))^2+(x(188)-x(187))^2+(x(21)-x(354))^2;
             (x(22)-x(21))^2+(x(189)-x(188))^2+(x(22)-x(355))^2;
             (x(23)-x(22))^2+(x(190)-x(189))^2+(x(23)-x(356))^2;
             (x(24)-x(23))^2+(x(191)-x(190))^2+(x(24)-x(357))^2;
             (x(25)-x(24))^2+(x(192)-x(191))^2+(x(25)-x(358))^2;
             (x(26)-x(25))^2+(x(193)-x(192))^2+(x(26)-x(359))^2;
             (x(27)-x(26))^2+(x(194)-x(193))^2+(x(27)-x(360))^2;
             (x(28)-x(27))^2+(x(195)-x(194))^2+(x(28)-x(361))^2;
             (x(29)-x(28))^2+(x(196)-x(195))^2+(x(29)-x(362))^2;
             (x(30)-x(29))^2+(x(197)-x(196))^2+(x(30)-x(363))^2;
             (x(31)-x(30))^2+(x(198)-x(197))^2+(x(31)-x(364))^2;
             (x(32)-x(31))^2+(x(199)-x(198))^2+(x(32)-x(365))^2;
             (x(33)-x(32))^2+(x(200)-x(199))^2+(x(33)-x(366))^2;
             (x(34)-x(33))^2+(x(201)-x(200))^2+(x(34)-x(367))^2;
             (x(35)-x(34))^2+(x(202)-x(201))^2+(x(35)-x(368))^2;
             (x(36)-x(35))^2+(x(203)-x(202))^2+(x(36)-x(369))^2;
             (x(37)-x(36))^2+(x(204)-x(203))^2+(x(37)-x(370))^2;
             (x(38)-x(37))^2+(x(205)-x(204))^2+(x(38)-x(371))^2;
             (x(39)-x(38))^2+(x(206)-x(205))^2+(x(39)-x(372))^2;
             (x(40)-x(39))^2+(x(207)-x(206))^2+(x(40)-x(373))^2;
             (x(41)-x(40))^2+(x(208)-x(207))^2+(x(41)-x(374))^2;
             (x(42)-x(41))^2+(x(209)-x(208))^2+(x(42)-x(375))^2;
             (x(43)-x(42))^2+(x(210)-x(209))^2+(x(43)-x(376))^2;
             (x(44)-x(43))^2+(x(211)-x(210))^2+(x(44)-x(377))^2;
             (x(45)-x(44))^2+(x(212)-x(211))^2+(x(45)-x(378))^2;
             (x(46)-x(45))^2+(x(213)-x(212))^2+(x(46)-x(379))^2;
             (x(47)-x(46))^2+(x(214)-x(213))^2+(x(47)-x(380))^2;
             (x(48)-x(47))^2+(x(215)-x(214))^2+(x(48)-x(381))^2;
             (x(49)-x(48))^2+(x(216)-x(215))^2+(x(49)-x(382))^2;
             (x(50)-x(49))^2+(x(217)-x(216))^2+(x(50)-x(383))^2;
             (x(51)-x(50))^2+(x(218)-x(217))^2+(x(51)-x(384))^2;
             (x(52)-x(51))^2+(x(219)-x(218))^2+(x(52)-x(385))^2;
             (x(53)-x(52))^2+(x(220)-x(219))^2+(x(53)-x(386))^2;
             (x(54)-x(53))^2+(x(221)-x(220))^2+(x(54)-x(387))^2;
             (x(55)-x(54))^2+(x(222)-x(221))^2+(x(55)-x(388))^2;
             (x(56)-x(55))^2+(x(223)-x(222))^2+(x(56)-x(389))^2;
             (x(57)-x(56))^2+(x(224)-x(223))^2+(x(57)-x(390))^2;
             (x(58)-x(57))^2+(x(225)-x(224))^2+(x(58)-x(391))^2;
             (x(59)-x(58))^2+(x(226)-x(225))^2+(x(59)-x(392))^2;
             (x(60)-x(59))^2+(x(227)-x(226))^2+(x(60)-x(393))^2;
             (x(61)-x(60))^2+(x(228)-x(227))^2+(x(61)-x(394))^2;
             (x(62)-x(61))^2+(x(229)-x(228))^2+(x(62)-x(395))^2;
             (x(63)-x(62))^2+(x(230)-x(229))^2+(x(63)-x(396))^2;
             (x(64)-x(63))^2+(x(231)-x(230))^2+(x(64)-x(397))^2;
             (x(65)-x(64))^2+(x(232)-x(231))^2+(x(65)-x(398))^2;
             (x(66)-x(65))^2+(x(233)-x(232))^2+(x(66)-x(399))^2;
             (x(67)-x(66))^2+(x(234)-x(233))^2+(x(67)-x(400))^2;
             (x(68)-x(67))^2+(x(235)-x(234))^2+(x(68)-x(401))^2;
             (x(69)-x(68))^2+(x(236)-x(235))^2+(x(69)-x(402))^2;
             (x(70)-x(69))^2+(x(237)-x(236))^2+(x(70)-x(403))^2;
             (x(71)-x(70))^2+(x(238)-x(237))^2+(x(71)-x(404))^2;
             (x(72)-x(71))^2+(x(239)-x(238))^2+(x(72)-x(405))^2;
             (x(73)-x(72))^2+(x(240)-x(239))^2+(x(73)-x(406))^2;
             (x(74)-x(73))^2+(x(241)-x(240))^2+(x(74)-x(407))^2;
             (x(75)-x(74))^2+(x(242)-x(241))^2+(x(75)-x(408))^2;
             (x(76)-x(75))^2+(x(243)-x(242))^2+(x(76)-x(409))^2;
             (x(77)-x(76))^2+(x(244)-x(243))^2+(x(77)-x(410))^2;
             (x(78)-x(77))^2+(x(245)-x(244))^2+(x(78)-x(411))^2;
             (x(79)-x(78))^2+(x(246)-x(245))^2+(x(79)-x(412))^2;
             (x(80)-x(79))^2+(x(247)-x(246))^2+(x(80)-x(413))^2;
             (x(81)-x(80))^2+(x(248)-x(247))^2+(x(81)-x(414))^2;
             (x(82)-x(81))^2+(x(249)-x(248))^2+(x(82)-x(415))^2;
             (x(83)-x(82))^2+(x(250)-x(249))^2+(x(83)-x(416))^2;
             (x(84)-x(83))^2+(x(251)-x(250))^2+(x(84)-x(417))^2;
             (x(85)-x(84))^2+(x(252)-x(251))^2+(x(85)-x(418))^2;
             (x(86)-x(85))^2+(x(253)-x(252))^2+(x(86)-x(419))^2;
             (x(87)-x(86))^2+(x(254)-x(253))^2+(x(87)-x(420))^2;
             (x(88)-x(87))^2+(x(255)-x(254))^2+(x(88)-x(421))^2;
             (x(89)-x(88))^2+(x(256)-x(255))^2+(x(89)-x(422))^2;
             (x(90)-x(89))^2+(x(257)-x(256))^2+(x(90)-x(423))^2;
             (x(91)-x(90))^2+(x(258)-x(257))^2+(x(91)-x(424))^2;
             (x(92)-x(91))^2+(x(259)-x(258))^2+(x(92)-x(425))^2;
             (x(93)-x(92))^2+(x(260)-x(259))^2+(x(93)-x(426))^2;
             (x(94)-x(93))^2+(x(261)-x(260))^2+(x(94)-x(427))^2;
             (x(95)-x(94))^2+(x(262)-x(261))^2+(x(95)-x(428))^2;
             (x(96)-x(95))^2+(x(263)-x(262))^2+(x(96)-x(429))^2;
             (x(97)-x(96))^2+(x(264)-x(263))^2+(x(97)-x(430))^2;
             (x(98)-x(97))^2+(x(265)-x(264))^2+(x(98)-x(431))^2;
             (x(99)-x(98))^2+(x(266)-x(265))^2+(x(99)-x(432))^2;
             (x(100)-x(99))^2+(x(267)-x(266))^2+(x(100)-x(433))^2;
             (x(101)-x(100))^2+(x(268)-x(267))^2+(x(101)-x(434))^2;
             (x(102)-x(101))^2+(x(269)-x(268))^2+(x(102)-x(435))^2;
             (x(103)-x(102))^2+(x(270)-x(269))^2+(x(103)-x(436))^2;
             (x(104)-x(103))^2+(x(271)-x(270))^2+(x(104)-x(437))^2;
             (x(105)-x(104))^2+(x(272)-x(271))^2+(x(105)-x(438))^2;
             (x(106)-x(105))^2+(x(273)-x(272))^2+(x(106)-x(439))^2;
             (x(107)-x(106))^2+(x(274)-x(273))^2+(x(107)-x(440))^2;
             (x(108)-x(107))^2+(x(275)-x(274))^2+(x(108)-x(441))^2;
             (x(109)-x(108))^2+(x(276)-x(275))^2+(x(109)-x(442))^2;
             (x(110)-x(109))^2+(x(277)-x(276))^2+(x(110)-x(443))^2;
             (x(111)-x(110))^2+(x(278)-x(277))^2+(x(111)-x(444))^2;
             (x(112)-x(111))^2+(x(279)-x(278))^2+(x(112)-x(445))^2;
             (x(113)-x(112))^2+(x(280)-x(279))^2+(x(113)-x(446))^2;
             (x(114)-x(113))^2+(x(281)-x(280))^2+(x(114)-x(447))^2;
             (x(115)-x(114))^2+(x(282)-x(281))^2+(x(115)-x(448))^2;
             (x(116)-x(115))^2+(x(283)-x(282))^2+(x(116)-x(449))^2;
             (x(117)-x(116))^2+(x(284)-x(283))^2+(x(117)-x(450))^2;
             (x(118)-x(117))^2+(x(285)-x(284))^2+(x(118)-x(451))^2;
             (x(119)-x(118))^2+(x(286)-x(285))^2+(x(119)-x(452))^2;
             (x(120)-x(119))^2+(x(287)-x(286))^2+(x(120)-x(453))^2;
             (x(121)-x(120))^2+(x(288)-x(287))^2+(x(121)-x(454))^2;
             (x(122)-x(121))^2+(x(289)-x(288))^2+(x(122)-x(455))^2;
             (x(123)-x(122))^2+(x(290)-x(289))^2+(x(123)-x(456))^2;
             (x(124)-x(123))^2+(x(291)-x(290))^2+(x(124)-x(457))^2;
             (x(125)-x(124))^2+(x(292)-x(291))^2+(x(125)-x(458))^2;
             (x(126)-x(125))^2+(x(293)-x(292))^2+(x(126)-x(459))^2;
             (x(127)-x(126))^2+(x(294)-x(293))^2+(x(127)-x(460))^2;
             (x(128)-x(127))^2+(x(295)-x(294))^2+(x(128)-x(461))^2;
             (x(129)-x(128))^2+(x(296)-x(295))^2+(x(129)-x(462))^2;
             (x(130)-x(129))^2+(x(297)-x(296))^2+(x(130)-x(463))^2;
             (x(131)-x(130))^2+(x(298)-x(297))^2+(x(131)-x(464))^2;
             (x(132)-x(131))^2+(x(299)-x(298))^2+(x(132)-x(465))^2;
             (x(133)-x(132))^2+(x(300)-x(299))^2+(x(133)-x(466))^2;
             (x(134)-x(133))^2+(x(301)-x(300))^2+(x(134)-x(467))^2;
             (x(135)-x(134))^2+(x(302)-x(301))^2+(x(135)-x(468))^2;
             (x(136)-x(135))^2+(x(303)-x(302))^2+(x(136)-x(469))^2;
             (x(137)-x(136))^2+(x(304)-x(303))^2+(x(137)-x(470))^2;
             (x(138)-x(137))^2+(x(305)-x(304))^2+(x(138)-x(471))^2;
             (x(139)-x(138))^2+(x(306)-x(305))^2+(x(139)-x(472))^2;
             (x(140)-x(139))^2+(x(307)-x(306))^2+(x(140)-x(473))^2;
             (x(141)-x(140))^2+(x(308)-x(307))^2+(x(141)-x(474))^2;
             (x(142)-x(141))^2+(x(309)-x(308))^2+(x(142)-x(475))^2;
             (x(143)-x(142))^2+(x(310)-x(309))^2+(x(143)-x(476))^2;
             (x(144)-x(143))^2+(x(311)-x(310))^2+(x(144)-x(477))^2;
             (x(145)-x(144))^2+(x(312)-x(311))^2+(x(145)-x(478))^2;
             (x(146)-x(145))^2+(x(313)-x(312))^2+(x(146)-x(479))^2;
             (x(147)-x(146))^2+(x(314)-x(313))^2+(x(147)-x(480))^2;
             (x(148)-x(147))^2+(x(315)-x(314))^2+(x(148)-x(481))^2;
             (x(149)-x(148))^2+(x(316)-x(315))^2+(x(149)-x(482))^2;
             (x(150)-x(149))^2+(x(317)-x(316))^2+(x(150)-x(483))^2;
             (x(151)-x(150))^2+(x(318)-x(317))^2+(x(151)-x(484))^2;
             (x(152)-x(151))^2+(x(319)-x(318))^2+(x(152)-x(485))^2;
             (x(153)-x(152))^2+(x(320)-x(319))^2+(x(153)-x(486))^2;
             (x(154)-x(153))^2+(x(321)-x(320))^2+(x(154)-x(487))^2;
             (x(155)-x(154))^2+(x(322)-x(321))^2+(x(155)-x(488))^2;
             (x(156)-x(155))^2+(x(323)-x(322))^2+(x(156)-x(489))^2;
             (x(157)-x(156))^2+(x(324)-x(323))^2+(x(157)-x(490))^2;
             (x(158)-x(157))^2+(x(325)-x(324))^2+(x(158)-x(491))^2;
             (x(159)-x(158))^2+(x(326)-x(325))^2+(x(159)-x(492))^2;
             (x(160)-x(159))^2+(x(327)-x(326))^2+(x(160)-x(493))^2;
             (x(161)-x(160))^2+(x(328)-x(327))^2+(x(161)-x(494))^2;
             (x(162)-x(161))^2+(x(329)-x(328))^2+(x(162)-x(495))^2;
             (x(163)-x(162))^2+(x(330)-x(329))^2+(x(163)-x(496))^2;
             (x(164)-x(163))^2+(x(331)-x(330))^2+(x(164)-x(497))^2;
             (x(165)-x(164))^2+(x(332)-x(331))^2+(x(165)-x(498))^2;
             (x(166)-x(165))^2+(x(333)-x(332))^2+(x(166)-x(499))^2;
             (x(167)-x(166))^2+(x(334)-x(333))^2+(x(167)-x(500))^2];
cl = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';
cu = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,99.6,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','catenary');
opts.sense = 'min';
