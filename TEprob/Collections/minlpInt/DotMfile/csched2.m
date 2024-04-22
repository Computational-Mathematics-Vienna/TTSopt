% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:13:31
% Model: csched2

% Objective
fun = @(x)x(401);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(-x(92)*x(401))-(479700*(1-exp(-0.1*x(1)/x(29)))*x(29)+31980*x(1)-100*x(29)+252000*(1-exp(-0.2*x(2)/x(30)))*x(30)+22680*x(2)-90*x(30)+423500*(1-exp(-0.1*x(3)/x(31)))*x(31)+25410*x(3)-80*x(31)+157440*(1-exp(-0.2*x(4)/x(32)))*x(32)+19680*x(4)-75*x(32)+172108.695652174*(1-exp(-0.23*x(5)/x(33)))*x(33)+40950*x(5)-90*x(33)+33970.5882352941*(1-exp(-0.34*x(6)/x(34)))*x(34)+8580*x(6)-93*x(34)+130200*(1-exp(-0.2*x(7)/x(35)))*x(35)+13440*x(7)-78*x(35)+200640*(1-exp(-0.2*x(8)/x(36)))*x(36)+26334*x(8)-80*x(36)+526680*(1-exp(-0.1*x(9)/x(37)))*x(37)+26334*x(9)-85*x(37)+212850*(1-exp(-0.2*x(10)/x(38)))*x(38)+29670*x(10)-75*x(38)+141360*(1-exp(-0.25*x(11)/x(39)))*x(39)+28500*x(11)-90*x(39)+152937.931034483*(1-exp(-0.29*x(12)/x(40)))*x(40)+49104*x(12)-94*x(40)+76444.4444444444*(1-exp(-0.27*x(13)/x(41)))*x(41)+13932*x(13)-78*x(41)+76840*(1-exp(-0.3*x(14)/x(42)))*x(42)+11526*x(14)-70*x(42)+102300*(1-exp(-0.3*x(15)/x(43)))*x(43)+18810*x(15)-90*x(43)+170800*(1-exp(-0.2*x(16)/x(44)))*x(44)+17568*x(16)-90*x(44)+115200*(1-exp(-0.3*x(17)/x(45)))*x(45)+20160*x(17)-90*x(45)+176000*(1-exp(-0.27*x(18)/x(46)))*x(46)+30360*x(18)-85*x(46)+126357.142857143*(1-exp(-0.28*x(19)/x(47)))*x(47)+36600*x(19)-93*x(47)+45931.0344827586*(1-exp(-0.29*x(20)/x(48)))*x(48)+9000*x(20)-92*x(48)+123318*(1-exp(-0.25*x(21)/x(49)))*x(49)+17901*x(21)-75*x(49)+223200*(1-exp(-0.2*x(22)/x(50)))*x(50)+28800*x(22)-80*x(50)+225000*(1-exp(-0.2*x(23)/x(51)))*x(51)+23750*x(23)-90*x(51)+240800*(1-exp(-0.15*x(24)/x(52)))*x(52)+21672*x(24)-85*x(52)+115920*(1-exp(-0.25*x(25)/x(53)))*x(53)+19320*x(25)-80*x(53)+133241.379310345*(1-exp(-0.29*x(26)/x(54)))*x(54)+42780*x(26)-92*x(54)+90763.6363636364*(1-exp(-0.22*x(27)/x(55)))*x(55)+13312*x(27)-85*x(55)+78857.1428571429*(1-exp(-0.28*x(28)/x(56)))*x(56)+11730*x(28)-72*x(56));
             -1300*x(1)-1100*x(8)-900*x(15)-1200*x(22)+x(57)+300*x(92);
             -1200*x(2)-1050*x(9)-800*x(16)-1000*x(23)+x(58)+400*x(92);
             -1100*x(3)-1000*x(10)-800*x(17)-800*x(24)+x(59)+300*x(92);
             -800*x(4)-1000*x(11)-1200*x(18)-700*x(25)+x(60)+500*x(92);
             -1300*x(5)-1200*x(12)-1000*x(19)-1200*x(26)+x(61)+500*x(92);
             -300*x(6)-400*x(13)-300*x(20)-400*x(27)+x(62)+100*x(92);
             -700*x(7)-600*x(14)-850*x(21)-600*x(28)+x(63)+600*x(92);
             x(57)-300*x(92);
             x(58)-300*x(92);
             x(59)-300*x(92);
             x(60)-300*x(92);
             x(61)-300*x(92);
             x(62)-300*x(92);
             x(63)-300*x(92);
             x(29)-0.01*x(93)-x(94)-2*x(95)-3*x(96)-4*x(97)-5*x(98)-6*x(99)-7*x(100)-8*x(101)-9*x(102)-10*x(103);
             x(30)-0.01*x(104)-x(105)-2*x(106)-3*x(107)-4*x(108)-5*x(109)-6*x(110)-7*x(111)-8*x(112)-9*x(113)-10*x(114);
             x(31)-0.01*x(115)-x(116)-2*x(117)-3*x(118)-4*x(119)-5*x(120)-6*x(121)-7*x(122)-8*x(123)-9*x(124)-10*x(125);
             x(32)-0.01*x(126)-x(127)-2*x(128)-3*x(129)-4*x(130)-5*x(131)-6*x(132)-7*x(133)-8*x(134)-9*x(135)-10*x(136);
             x(33)-0.01*x(137)-x(138)-2*x(139)-3*x(140)-4*x(141)-5*x(142)-6*x(143)-7*x(144)-8*x(145)-9*x(146)-10*x(147);
             x(34)-0.01*x(148)-x(149)-2*x(150)-3*x(151)-4*x(152)-5*x(153)-6*x(154)-7*x(155)-8*x(156)-9*x(157)-10*x(158);
             x(35)-0.01*x(159)-x(160)-2*x(161)-3*x(162)-4*x(163)-5*x(164)-6*x(165)-7*x(166)-8*x(167)-9*x(168)-10*x(169);
             x(36)-0.01*x(170)-x(171)-2*x(172)-3*x(173)-4*x(174)-5*x(175)-6*x(176)-7*x(177)-8*x(178)-9*x(179)-10*x(180);
             x(37)-0.01*x(181)-x(182)-2*x(183)-3*x(184)-4*x(185)-5*x(186)-6*x(187)-7*x(188)-8*x(189)-9*x(190)-10*x(191);
             x(38)-0.01*x(192)-x(193)-2*x(194)-3*x(195)-4*x(196)-5*x(197)-6*x(198)-7*x(199)-8*x(200)-9*x(201)-10*x(202);
             x(39)-0.01*x(203)-x(204)-2*x(205)-3*x(206)-4*x(207)-5*x(208)-6*x(209)-7*x(210)-8*x(211)-9*x(212)-10*x(213);
             x(40)-0.01*x(214)-x(215)-2*x(216)-3*x(217)-4*x(218)-5*x(219)-6*x(220)-7*x(221)-8*x(222)-9*x(223)-10*x(224);
             x(41)-0.01*x(225)-x(226)-2*x(227)-3*x(228)-4*x(229)-5*x(230)-6*x(231)-7*x(232)-8*x(233)-9*x(234)-10*x(235);
             x(42)-0.01*x(236)-x(237)-2*x(238)-3*x(239)-4*x(240)-5*x(241)-6*x(242)-7*x(243)-8*x(244)-9*x(245)-10*x(246);
             x(43)-0.01*x(247)-x(248)-2*x(249)-3*x(250)-4*x(251)-5*x(252)-6*x(253)-7*x(254)-8*x(255)-9*x(256)-10*x(257);
             x(44)-0.01*x(258)-x(259)-2*x(260)-3*x(261)-4*x(262)-5*x(263)-6*x(264)-7*x(265)-8*x(266)-9*x(267)-10*x(268);
             x(45)-0.01*x(269)-x(270)-2*x(271)-3*x(272)-4*x(273)-5*x(274)-6*x(275)-7*x(276)-8*x(277)-9*x(278)-10*x(279);
             x(46)-0.01*x(280)-x(281)-2*x(282)-3*x(283)-4*x(284)-5*x(285)-6*x(286)-7*x(287)-8*x(288)-9*x(289)-10*x(290);
             x(47)-0.01*x(291)-x(292)-2*x(293)-3*x(294)-4*x(295)-5*x(296)-6*x(297)-7*x(298)-8*x(299)-9*x(300)-10*x(301);
             x(48)-0.01*x(302)-x(303)-2*x(304)-3*x(305)-4*x(306)-5*x(307)-6*x(308)-7*x(309)-8*x(310)-9*x(311)-10*x(312);
             x(49)-0.01*x(313)-x(314)-2*x(315)-3*x(316)-4*x(317)-5*x(318)-6*x(319)-7*x(320)-8*x(321)-9*x(322)-10*x(323);
             x(50)-0.01*x(324)-x(325)-2*x(326)-3*x(327)-4*x(328)-5*x(329)-6*x(330)-7*x(331)-8*x(332)-9*x(333)-10*x(334);
             x(51)-0.01*x(335)-x(336)-2*x(337)-3*x(338)-4*x(339)-5*x(340)-6*x(341)-7*x(342)-8*x(343)-9*x(344)-10*x(345);
             x(52)-0.01*x(346)-x(347)-2*x(348)-3*x(349)-4*x(350)-5*x(351)-6*x(352)-7*x(353)-8*x(354)-9*x(355)-10*x(356);
             x(53)-0.01*x(357)-x(358)-2*x(359)-3*x(360)-4*x(361)-5*x(362)-6*x(363)-7*x(364)-8*x(365)-9*x(366)-10*x(367);
             x(54)-0.01*x(368)-x(369)-2*x(370)-3*x(371)-4*x(372)-5*x(373)-6*x(374)-7*x(375)-8*x(376)-9*x(377)-10*x(378);
             x(55)-0.01*x(379)-x(380)-2*x(381)-3*x(382)-4*x(383)-5*x(384)-6*x(385)-7*x(386)-8*x(387)-9*x(388)-10*x(389);
             x(56)-0.01*x(390)-x(391)-2*x(392)-3*x(393)-4*x(394)-5*x(395)-6*x(396)-7*x(397)-8*x(398)-9*x(399)-10*x(400);
             -x(93)-x(94)-x(95)-x(96)-x(97)-x(98)-x(99)-x(100)-x(101)-x(102)-x(103);
             -x(104)-x(105)-x(106)-x(107)-x(108)-x(109)-x(110)-x(111)-x(112)-x(113)-x(114);
             -x(115)-x(116)-x(117)-x(118)-x(119)-x(120)-x(121)-x(122)-x(123)-x(124)-x(125);
             -x(126)-x(127)-x(128)-x(129)-x(130)-x(131)-x(132)-x(133)-x(134)-x(135)-x(136);
             -x(137)-x(138)-x(139)-x(140)-x(141)-x(142)-x(143)-x(144)-x(145)-x(146)-x(147);
             -x(148)-x(149)-x(150)-x(151)-x(152)-x(153)-x(154)-x(155)-x(156)-x(157)-x(158);
             -x(159)-x(160)-x(161)-x(162)-x(163)-x(164)-x(165)-x(166)-x(167)-x(168)-x(169);
             -x(170)-x(171)-x(172)-x(173)-x(174)-x(175)-x(176)-x(177)-x(178)-x(179)-x(180);
             -x(181)-x(182)-x(183)-x(184)-x(185)-x(186)-x(187)-x(188)-x(189)-x(190)-x(191);
             -x(192)-x(193)-x(194)-x(195)-x(196)-x(197)-x(198)-x(199)-x(200)-x(201)-x(202);
             -x(203)-x(204)-x(205)-x(206)-x(207)-x(208)-x(209)-x(210)-x(211)-x(212)-x(213);
             -x(214)-x(215)-x(216)-x(217)-x(218)-x(219)-x(220)-x(221)-x(222)-x(223)-x(224);
             -x(225)-x(226)-x(227)-x(228)-x(229)-x(230)-x(231)-x(232)-x(233)-x(234)-x(235);
             -x(236)-x(237)-x(238)-x(239)-x(240)-x(241)-x(242)-x(243)-x(244)-x(245)-x(246);
             -x(247)-x(248)-x(249)-x(250)-x(251)-x(252)-x(253)-x(254)-x(255)-x(256)-x(257);
             -x(258)-x(259)-x(260)-x(261)-x(262)-x(263)-x(264)-x(265)-x(266)-x(267)-x(268);
             -x(269)-x(270)-x(271)-x(272)-x(273)-x(274)-x(275)-x(276)-x(277)-x(278)-x(279);
             -x(280)-x(281)-x(282)-x(283)-x(284)-x(285)-x(286)-x(287)-x(288)-x(289)-x(290);
             -x(291)-x(292)-x(293)-x(294)-x(295)-x(296)-x(297)-x(298)-x(299)-x(300)-x(301);
             -x(302)-x(303)-x(304)-x(305)-x(306)-x(307)-x(308)-x(309)-x(310)-x(311)-x(312);
             -x(313)-x(314)-x(315)-x(316)-x(317)-x(318)-x(319)-x(320)-x(321)-x(322)-x(323);
             -x(324)-x(325)-x(326)-x(327)-x(328)-x(329)-x(330)-x(331)-x(332)-x(333)-x(334);
             -x(335)-x(336)-x(337)-x(338)-x(339)-x(340)-x(341)-x(342)-x(343)-x(344)-x(345);
             -x(346)-x(347)-x(348)-x(349)-x(350)-x(351)-x(352)-x(353)-x(354)-x(355)-x(356);
             -x(357)-x(358)-x(359)-x(360)-x(361)-x(362)-x(363)-x(364)-x(365)-x(366)-x(367);
             -x(368)-x(369)-x(370)-x(371)-x(372)-x(373)-x(374)-x(375)-x(376)-x(377)-x(378);
             -x(379)-x(380)-x(381)-x(382)-x(383)-x(384)-x(385)-x(386)-x(387)-x(388)-x(389);
             -x(390)-x(391)-x(392)-x(393)-x(394)-x(395)-x(396)-x(397)-x(398)-x(399)-x(400);
             -x(1)-2*x(29)+x(64);
             -x(2)-3*x(30)+x(65);
             -x(3)-3*x(31)+x(66);
             -x(4)-3*x(32)+x(67);
             -x(5)-x(33)+x(68);
             -x(6)-2*x(34)+x(69);
             -x(7)-3*x(35)+x(70);
             -x(8)-3*x(36)+x(71);
             -x(9)-x(37)+x(72);
             -x(10)-2*x(38)+x(73);
             -x(11)-2*x(39)+x(74);
             -x(12)-2*x(40)+x(75);
             -x(13)-x(41)+x(76);
             -x(14)-x(42)+x(77);
             -x(15)-x(43)+x(78);
             -x(16)-3*x(44)+x(79);
             -x(17)-x(45)+x(80);
             -x(18)-x(46)+x(81);
             -x(19)-2*x(47)+x(82);
             -x(20)-x(48)+x(83);
             -x(21)-2*x(49)+x(84);
             -x(22)-2*x(50)+x(85);
             -x(23)-x(51)+x(86);
             -x(24)-3*x(52)+x(87);
             -x(25)-2*x(53)+x(88);
             -x(26)-2*x(54)+x(89);
             -x(27)-x(55)+x(90);
             -x(28)-x(56)+x(91);
             x(64)+x(65)+x(66)+x(67)+x(68)+x(69)+x(70)-x(92);
             x(71)+x(72)+x(73)+x(74)+x(75)+x(76)+x(77)-x(92);
             x(78)+x(79)+x(80)+x(81)+x(82)+x(83)+x(84)-x(92);
             x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(91)-x(92);
             x(1)+100*x(93);
             x(2)+100*x(104);
             x(3)+100*x(115);
             x(4)+100*x(126);
             x(5)+100*x(137);
             x(6)+100*x(148);
             x(7)+100*x(159);
             x(8)+100*x(170);
             x(9)+100*x(181);
             x(10)+100*x(192);
             x(11)+100*x(203);
             x(12)+100*x(214);
             x(13)+100*x(225);
             x(14)+100*x(236);
             x(15)+100*x(247);
             x(16)+100*x(258);
             x(17)+100*x(269);
             x(18)+100*x(280);
             x(19)+100*x(291);
             x(20)+100*x(302);
             x(21)+100*x(313);
             x(22)+100*x(324);
             x(23)+100*x(335);
             x(24)+100*x(346);
             x(25)+100*x(357);
             x(26)+100*x(368);
             x(27)+100*x(379);
             x(28)+100*x(390);
             x(29)+x(36)+x(43)+x(50);
             x(30)+x(37)+x(44)+x(51);
             x(31)+x(38)+x(45)+x(52);
             x(32)+x(39)+x(46)+x(53);
             x(33)+x(40)+x(47)+x(54);
             x(34)+x(41)+x(48)+x(55);
             x(35)+x(42)+x(49)+x(56)];
cl = [0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','csched2');
opts.sense = 'min';
