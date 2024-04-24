% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:33
% Model: rocket

% Objective
fun = @(x)x(303);

% Bounds
lb = [0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,100,-5,0,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,-5,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-Inf]';
ub = [0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,100,5,0,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,Inf]';

% Constraints
nlcon = @(x)[-x(303)*x(103)-100*x(1)+100*x(2);
             -x(303)*x(104)-100*x(2)+100*x(3);
             -x(303)*x(105)-100*x(3)+100*x(4);
             -x(303)*x(106)-100*x(4)+100*x(5);
             -x(303)*x(107)-100*x(5)+100*x(6);
             -x(303)*x(108)-100*x(6)+100*x(7);
             -x(303)*x(109)-100*x(7)+100*x(8);
             -x(303)*x(110)-100*x(8)+100*x(9);
             -x(303)*x(111)-100*x(9)+100*x(10);
             -x(303)*x(112)-100*x(10)+100*x(11);
             -x(303)*x(113)-100*x(11)+100*x(12);
             -x(303)*x(114)-100*x(12)+100*x(13);
             -x(303)*x(115)-100*x(13)+100*x(14);
             -x(303)*x(116)-100*x(14)+100*x(15);
             -x(303)*x(117)-100*x(15)+100*x(16);
             -x(303)*x(118)-100*x(16)+100*x(17);
             -x(303)*x(119)-100*x(17)+100*x(18);
             -x(303)*x(120)-100*x(18)+100*x(19);
             -x(303)*x(121)-100*x(19)+100*x(20);
             -x(303)*x(122)-100*x(20)+100*x(21);
             -x(303)*x(123)-100*x(21)+100*x(22);
             -x(303)*x(124)-100*x(22)+100*x(23);
             -x(303)*x(125)-100*x(23)+100*x(24);
             -x(303)*x(126)-100*x(24)+100*x(25);
             -x(303)*x(127)-100*x(25)+100*x(26);
             -x(303)*x(128)-100*x(26)+100*x(27);
             -x(303)*x(129)-100*x(27)+100*x(28);
             -x(303)*x(130)-100*x(28)+100*x(29);
             -x(303)*x(131)-100*x(29)+100*x(30);
             -x(303)*x(132)-100*x(30)+100*x(31);
             -x(303)*x(133)-100*x(31)+100*x(32);
             -x(303)*x(134)-100*x(32)+100*x(33);
             -x(303)*x(135)-100*x(33)+100*x(34);
             -x(303)*x(136)-100*x(34)+100*x(35);
             -x(303)*x(137)-100*x(35)+100*x(36);
             -x(303)*x(138)-100*x(36)+100*x(37);
             -x(303)*x(139)-100*x(37)+100*x(38);
             -x(303)*x(140)-100*x(38)+100*x(39);
             -x(303)*x(141)-100*x(39)+100*x(40);
             -x(303)*x(142)-100*x(40)+100*x(41);
             -x(303)*x(143)-100*x(41)+100*x(42);
             -x(303)*x(144)-100*x(42)+100*x(43);
             -x(303)*x(145)-100*x(43)+100*x(44);
             -x(303)*x(146)-100*x(44)+100*x(45);
             -x(303)*x(147)-100*x(45)+100*x(46);
             -x(303)*x(148)-100*x(46)+100*x(47);
             -x(303)*x(149)-100*x(47)+100*x(48);
             -x(303)*x(150)-100*x(48)+100*x(49);
             -x(303)*x(151)-100*x(49)+100*x(50);
             -x(303)*x(152)-100*x(50)+100*x(51);
             -x(303)*x(153)-100*x(51)+100*x(52);
             -x(303)*x(154)-100*x(52)+100*x(53);
             -x(303)*x(155)-100*x(53)+100*x(54);
             -x(303)*x(156)-100*x(54)+100*x(55);
             -x(303)*x(157)-100*x(55)+100*x(56);
             -x(303)*x(158)-100*x(56)+100*x(57);
             -x(303)*x(159)-100*x(57)+100*x(58);
             -x(303)*x(160)-100*x(58)+100*x(59);
             -x(303)*x(161)-100*x(59)+100*x(60);
             -x(303)*x(162)-100*x(60)+100*x(61);
             -x(303)*x(163)-100*x(61)+100*x(62);
             -x(303)*x(164)-100*x(62)+100*x(63);
             -x(303)*x(165)-100*x(63)+100*x(64);
             -x(303)*x(166)-100*x(64)+100*x(65);
             -x(303)*x(167)-100*x(65)+100*x(66);
             -x(303)*x(168)-100*x(66)+100*x(67);
             -x(303)*x(169)-100*x(67)+100*x(68);
             -x(303)*x(170)-100*x(68)+100*x(69);
             -x(303)*x(171)-100*x(69)+100*x(70);
             -x(303)*x(172)-100*x(70)+100*x(71);
             -x(303)*x(173)-100*x(71)+100*x(72);
             -x(303)*x(174)-100*x(72)+100*x(73);
             -x(303)*x(175)-100*x(73)+100*x(74);
             -x(303)*x(176)-100*x(74)+100*x(75);
             -x(303)*x(177)-100*x(75)+100*x(76);
             -x(303)*x(178)-100*x(76)+100*x(77);
             -x(303)*x(179)-100*x(77)+100*x(78);
             -x(303)*x(180)-100*x(78)+100*x(79);
             -x(303)*x(181)-100*x(79)+100*x(80);
             -x(303)*x(182)-100*x(80)+100*x(81);
             -x(303)*x(183)-100*x(81)+100*x(82);
             -x(303)*x(184)-100*x(82)+100*x(83);
             -x(303)*x(185)-100*x(83)+100*x(84);
             -x(303)*x(186)-100*x(84)+100*x(85);
             -x(303)*x(187)-100*x(85)+100*x(86);
             -x(303)*x(188)-100*x(86)+100*x(87);
             -x(303)*x(189)-100*x(87)+100*x(88);
             -x(303)*x(190)-100*x(88)+100*x(89);
             -x(303)*x(191)-100*x(89)+100*x(90);
             -x(303)*x(192)-100*x(90)+100*x(91);
             -x(303)*x(193)-100*x(91)+100*x(92);
             -x(303)*x(194)-100*x(92)+100*x(93);
             -x(303)*x(195)-100*x(93)+100*x(94);
             -x(303)*x(196)-100*x(94)+100*x(95);
             -x(303)*x(197)-100*x(95)+100*x(96);
             -x(303)*x(198)-100*x(96)+100*x(97);
             -x(303)*x(199)-100*x(97)+100*x(98);
             -x(303)*x(200)-100*x(98)+100*x(99);
             -x(303)*x(201)-100*x(99)+100*x(100);
             -x(303)*x(202)-100*x(100)+100*x(101);
             -x(303)*x(203)-100*x(102)+100*x(103);
             -x(303)*x(204)-100*x(103)+100*x(104);
             -x(303)*x(205)-100*x(104)+100*x(105);
             -x(303)*x(206)-100*x(105)+100*x(106);
             -x(303)*x(207)-100*x(106)+100*x(107);
             -x(303)*x(208)-100*x(107)+100*x(108);
             -x(303)*x(209)-100*x(108)+100*x(109);
             -x(303)*x(210)-100*x(109)+100*x(110);
             -x(303)*x(211)-100*x(110)+100*x(111);
             -x(303)*x(212)-100*x(111)+100*x(112);
             -x(303)*x(213)-100*x(112)+100*x(113);
             -x(303)*x(214)-100*x(113)+100*x(114);
             -x(303)*x(215)-100*x(114)+100*x(115);
             -x(303)*x(216)-100*x(115)+100*x(116);
             -x(303)*x(217)-100*x(116)+100*x(117);
             -x(303)*x(218)-100*x(117)+100*x(118);
             -x(303)*x(219)-100*x(118)+100*x(119);
             -x(303)*x(220)-100*x(119)+100*x(120);
             -x(303)*x(221)-100*x(120)+100*x(121);
             -x(303)*x(222)-100*x(121)+100*x(122);
             -x(303)*x(223)-100*x(122)+100*x(123);
             -x(303)*x(224)-100*x(123)+100*x(124);
             -x(303)*x(225)-100*x(124)+100*x(125);
             -x(303)*x(226)-100*x(125)+100*x(126);
             -x(303)*x(227)-100*x(126)+100*x(127);
             -x(303)*x(228)-100*x(127)+100*x(128);
             -x(303)*x(229)-100*x(128)+100*x(129);
             -x(303)*x(230)-100*x(129)+100*x(130);
             -x(303)*x(231)-100*x(130)+100*x(131);
             -x(303)*x(232)-100*x(131)+100*x(132);
             -x(303)*x(233)-100*x(132)+100*x(133);
             -x(303)*x(234)-100*x(133)+100*x(134);
             -x(303)*x(235)-100*x(134)+100*x(135);
             -x(303)*x(236)-100*x(135)+100*x(136);
             -x(303)*x(237)-100*x(136)+100*x(137);
             -x(303)*x(238)-100*x(137)+100*x(138);
             -x(303)*x(239)-100*x(138)+100*x(139);
             -x(303)*x(240)-100*x(139)+100*x(140);
             -x(303)*x(241)-100*x(140)+100*x(141);
             -x(303)*x(242)-100*x(141)+100*x(142);
             -x(303)*x(243)-100*x(142)+100*x(143);
             -x(303)*x(244)-100*x(143)+100*x(144);
             -x(303)*x(245)-100*x(144)+100*x(145);
             -x(303)*x(246)-100*x(145)+100*x(146);
             -x(303)*x(247)-100*x(146)+100*x(147);
             -x(303)*x(248)-100*x(147)+100*x(148);
             -x(303)*x(249)-100*x(148)+100*x(149);
             -x(303)*x(250)-100*x(149)+100*x(150);
             -x(303)*x(251)-100*x(150)+100*x(151);
             -x(303)*x(252)-100*x(151)+100*x(152);
             -x(303)*x(253)-100*x(152)+100*x(153);
             -x(303)*x(254)-100*x(153)+100*x(154);
             -x(303)*x(255)-100*x(154)+100*x(155);
             -x(303)*x(256)-100*x(155)+100*x(156);
             -x(303)*x(257)-100*x(156)+100*x(157);
             -x(303)*x(258)-100*x(157)+100*x(158);
             -x(303)*x(259)-100*x(158)+100*x(159);
             -x(303)*x(260)-100*x(159)+100*x(160);
             -x(303)*x(261)-100*x(160)+100*x(161);
             -x(303)*x(262)-100*x(161)+100*x(162);
             -x(303)*x(263)-100*x(162)+100*x(163);
             -x(303)*x(264)-100*x(163)+100*x(164);
             -x(303)*x(265)-100*x(164)+100*x(165);
             -x(303)*x(266)-100*x(165)+100*x(166);
             -x(303)*x(267)-100*x(166)+100*x(167);
             -x(303)*x(268)-100*x(167)+100*x(168);
             -x(303)*x(269)-100*x(168)+100*x(169);
             -x(303)*x(270)-100*x(169)+100*x(170);
             -x(303)*x(271)-100*x(170)+100*x(171);
             -x(303)*x(272)-100*x(171)+100*x(172);
             -x(303)*x(273)-100*x(172)+100*x(173);
             -x(303)*x(274)-100*x(173)+100*x(174);
             -x(303)*x(275)-100*x(174)+100*x(175);
             -x(303)*x(276)-100*x(175)+100*x(176);
             -x(303)*x(277)-100*x(176)+100*x(177);
             -x(303)*x(278)-100*x(177)+100*x(178);
             -x(303)*x(279)-100*x(178)+100*x(179);
             -x(303)*x(280)-100*x(179)+100*x(180);
             -x(303)*x(281)-100*x(180)+100*x(181);
             -x(303)*x(282)-100*x(181)+100*x(182);
             -x(303)*x(283)-100*x(182)+100*x(183);
             -x(303)*x(284)-100*x(183)+100*x(184);
             -x(303)*x(285)-100*x(184)+100*x(185);
             -x(303)*x(286)-100*x(185)+100*x(186);
             -x(303)*x(287)-100*x(186)+100*x(187);
             -x(303)*x(288)-100*x(187)+100*x(188);
             -x(303)*x(289)-100*x(188)+100*x(189);
             -x(303)*x(290)-100*x(189)+100*x(190);
             -x(303)*x(291)-100*x(190)+100*x(191);
             -x(303)*x(292)-100*x(191)+100*x(192);
             -x(303)*x(293)-100*x(192)+100*x(193);
             -x(303)*x(294)-100*x(193)+100*x(194);
             -x(303)*x(295)-100*x(194)+100*x(195);
             -x(303)*x(296)-100*x(195)+100*x(196);
             -x(303)*x(297)-100*x(196)+100*x(197);
             -x(303)*x(298)-100*x(197)+100*x(198);
             -x(303)*x(299)-100*x(198)+100*x(199);
             -x(303)*x(300)-100*x(199)+100*x(200);
             -x(303)*x(301)-100*x(200)+100*x(201);
             -x(303)*x(302)-100*x(201)+100*x(202);
             -100*x(202)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,100,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','rocket');
opts.sense = 'min';