% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:40:57
% Model: inf_minlp_291

% Objective
fun = @(x)x(37);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(2)+x(5)+4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66)+190*x(99);
             -x(3)+x(5)+4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66)+190*x(100);
             -x(4)+x(5)+4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66)+190*x(101);
             4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66)+190*x(102);
             x(5)-x(6)+4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66)+190*x(103);
             x(5)-x(7)+4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66)+190*x(104);
             x(5)-x(8)+4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66)+190*x(105);
             -x(1)+x(6)+4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67)+190*x(106);
             -x(3)+x(6)+4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67)+190*x(108);
             -x(4)+x(6)+4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67)+190*x(109);
             -x(5)+x(6)+4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67)+190*x(110);
             4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67)+190*x(111);
             x(6)-x(7)+4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67)+190*x(112);
             x(6)-x(8)+4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67)+190*x(113);
             -x(1)+x(7)+7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68)+190*x(114);
             -x(2)+x(7)+7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68)+190*x(115);
             -x(4)+x(7)+7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68)+190*x(117);
             -x(5)+x(7)+7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68)+190*x(118);
             -x(6)+x(7)+7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68)+190*x(119);
             7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68)+190*x(120);
             x(7)-x(8)+7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68)+190*x(121);
             -x(1)+x(8)+6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69)+190*x(122);
             -x(2)+x(8)+6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69)+190*x(123);
             -x(3)+x(8)+6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69)+190*x(124);
             -x(5)+x(8)+6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69)+190*x(126);
             -x(6)+x(8)+6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69)+190*x(127);
             -x(7)+x(8)+6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69)+190*x(128);
             6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69)+190*x(129);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1)-x(2)+190*x(70);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1)-x(3)+190*x(71);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1)-x(4)+190*x(72);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1)-x(5)+190*x(73);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1)-x(6)+190*x(74);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1)-x(7)+190*x(75);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1)-x(8)+190*x(76);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))-x(1)+x(2)+190*x(77);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))+x(2)-x(3)+190*x(78);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))+x(2)-x(4)+190*x(79);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))+x(2)-x(5)+190*x(80);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))+x(2)-x(6)+190*x(81);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))+x(2)-x(7)+190*x(82);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))+x(2)-x(8)+190*x(83);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))-x(1)+x(3)+190*x(84);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))-x(2)+x(3)+190*x(85);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))+x(3)-x(4)+190*x(86);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))+x(3)-x(5)+190*x(87);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))+x(3)-x(6)+190*x(88);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))+x(3)-x(7)+190*x(89);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))+x(3)-x(8)+190*x(90);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))-x(1)+x(4)+190*x(91);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))-x(2)+x(4)+190*x(92);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))-x(3)+x(4)+190*x(93);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))+x(4)-x(5)+190*x(94);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))+x(4)-x(6)+190*x(95);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))+x(4)-x(7)+190*x(96);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))+x(4)-x(8)+190*x(97);
             -x(10)+x(13)-4.86*x(42)-4.86*x(50)+4.5*x(58)+190*x(159);
             -x(11)+x(13)-4.86*x(42)-4.86*x(50)+4.5*x(58)+190*x(160);
             -x(12)+x(13)-4.86*x(42)-4.86*x(50)+4.5*x(58)+190*x(161);
             -4.86*x(42)-4.86*x(50)+4.5*x(58)+190*x(162);
             x(13)-x(14)-4.86*x(42)-4.86*x(50)+4.5*x(58)+190*x(163);
             x(13)-x(15)-4.86*x(42)-4.86*x(50)+4.5*x(58)+190*x(164);
             x(13)-x(16)-4.86*x(42)-4.86*x(50)+4.5*x(58)+190*x(165);
             -x(9)+x(14)-4.3*x(43)-4.3*x(51)+4.2*x(59)+190*x(166);
             -x(11)+x(14)-4.3*x(43)-4.3*x(51)+4.2*x(59)+190*x(168);
             -x(12)+x(14)-4.3*x(43)-4.3*x(51)+4.2*x(59)+190*x(169);
             -x(13)+x(14)-4.3*x(43)-4.3*x(51)+4.2*x(59)+190*x(170);
             -4.3*x(43)-4.3*x(51)+4.2*x(59)+190*x(171);
             x(14)-x(15)-4.3*x(43)-4.3*x(51)+4.2*x(59)+190*x(172);
             x(14)-x(16)-4.3*x(43)-4.3*x(51)+4.2*x(59)+190*x(173);
             -x(9)+x(15)-7.015*x(44)-7.015*x(52)+3.68*x(60)+190*x(174);
             -x(10)+x(15)-7.015*x(44)-7.015*x(52)+3.68*x(60)+190*x(175);
             -x(12)+x(15)-7.015*x(44)-7.015*x(52)+3.68*x(60)+190*x(177);
             -x(13)+x(15)-7.015*x(44)-7.015*x(52)+3.68*x(60)+190*x(178);
             -x(14)+x(15)-7.015*x(44)-7.015*x(52)+3.68*x(60)+190*x(179);
             -7.015*x(44)-7.015*x(52)+3.68*x(60)+190*x(180);
             x(15)-x(16)-7.015*x(44)-7.015*x(52)+3.68*x(60)+190*x(181);
             -x(9)+x(16)-6.7875*x(45)-6.7875*x(53)+4.12*x(61)+190*x(182);
             -x(10)+x(16)-6.7875*x(45)-6.7875*x(53)+4.12*x(61)+190*x(183);
             -x(11)+x(16)-6.7875*x(45)-6.7875*x(53)+4.12*x(61)+190*x(184);
             -x(13)+x(16)-6.7875*x(45)-6.7875*x(53)+4.12*x(61)+190*x(186);
             -x(14)+x(16)-6.7875*x(45)-6.7875*x(53)+4.12*x(61)+190*x(187);
             -x(15)+x(16)-6.7875*x(45)-6.7875*x(53)+4.12*x(61)+190*x(188);
             -6.7875*x(45)-6.7875*x(53)+4.12*x(61)+190*x(189);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9)-x(10)+190*x(130);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9)-x(11)+190*x(131);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9)-x(12)+190*x(132);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9)-x(13)+190*x(133);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9)-x(14)+190*x(134);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9)-x(15)+190*x(135);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9)-x(16)+190*x(136);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))-x(9)+x(10)+190*x(137);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))+x(10)-x(11)+190*x(138);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))+x(10)-x(12)+190*x(139);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))+x(10)-x(13)+190*x(140);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))+x(10)-x(14)+190*x(141);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))+x(10)-x(15)+190*x(142);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))+x(10)-x(16)+190*x(143);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))-x(9)+x(11)+190*x(144);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))-x(10)+x(11)+190*x(145);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))+x(11)-x(12)+190*x(146);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))+x(11)-x(13)+190*x(147);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))+x(11)-x(14)+190*x(148);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))+x(11)-x(15)+190*x(149);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))+x(11)-x(16)+190*x(150);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))-x(9)+x(12)+190*x(151);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))-x(10)+x(12)+190*x(152);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))-x(11)+x(12)+190*x(153);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))+x(12)-x(13)+190*x(154);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))+x(12)-x(14)+190*x(155);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))+x(12)-x(15)+190*x(156);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))+x(12)-x(16)+190*x(157);
             -x(18)+x(21)+0.359999999999999*x(50)-4.5*x(66)+190*x(219);
             -x(19)+x(21)+0.359999999999999*x(50)-4.5*x(66)+190*x(220);
             -x(20)+x(21)+0.359999999999999*x(50)-4.5*x(66)+190*x(221);
             0.359999999999999*x(50)-4.5*x(66)+190*x(222);
             x(21)-x(22)+0.359999999999999*x(50)-4.5*x(66)+190*x(223);
             x(21)-x(23)+0.359999999999999*x(50)-4.5*x(66)+190*x(224);
             x(21)-x(24)+0.359999999999999*x(50)-4.5*x(66)+190*x(225);
             -x(17)+x(22)+0.100000000000001*x(51)-4.2*x(67)+190*x(226);
             -x(19)+x(22)+0.100000000000001*x(51)-4.2*x(67)+190*x(228);
             -x(20)+x(22)+0.100000000000001*x(51)-4.2*x(67)+190*x(229);
             -x(21)+x(22)+0.100000000000001*x(51)-4.2*x(67)+190*x(230);
             0.100000000000001*x(51)-4.2*x(67)+190*x(231);
             x(22)-x(23)+0.100000000000001*x(51)-4.2*x(67)+190*x(232);
             x(22)-x(24)+0.100000000000001*x(51)-4.2*x(67)+190*x(233);
             -x(17)+x(23)+3.335*x(52)-3.68*x(68)+190*x(234);
             -x(18)+x(23)+3.335*x(52)-3.68*x(68)+190*x(235);
             -x(20)+x(23)+3.335*x(52)-3.68*x(68)+190*x(237);
             -x(21)+x(23)+3.335*x(52)-3.68*x(68)+190*x(238);
             -x(22)+x(23)+3.335*x(52)-3.68*x(68)+190*x(239);
             3.335*x(52)-3.68*x(68)+190*x(240);
             x(23)-x(24)+3.335*x(52)-3.68*x(68)+190*x(241);
             -x(17)+x(24)+2.6675*x(53)-4.12*x(69)+190*x(242);
             -x(18)+x(24)+2.6675*x(53)-4.12*x(69)+190*x(243);
             -x(19)+x(24)+2.6675*x(53)-4.12*x(69)+190*x(244);
             -x(21)+x(24)+2.6675*x(53)-4.12*x(69)+190*x(246);
             -x(22)+x(24)+2.6675*x(53)-4.12*x(69)+190*x(247);
             -x(23)+x(24)+2.6675*x(53)-4.12*x(69)+190*x(248);
             2.6675*x(53)-4.12*x(69)+190*x(249);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(18)+190*x(190);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(19)+190*x(191);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(20)+190*x(192);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(21)+190*x(193);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(22)+190*x(194);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(23)+190*x(195);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(24)+190*x(196);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)-x(17)+x(18)+190*x(197);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)+x(18)-x(19)+190*x(198);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)+x(18)-x(20)+190*x(199);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)+x(18)-x(21)+190*x(200);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)+x(18)-x(22)+190*x(201);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)+x(18)-x(23)+190*x(202);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)+x(18)-x(24)+190*x(203);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)-x(17)+x(19)+190*x(204);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)-x(18)+x(19)+190*x(205);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)+x(19)-x(20)+190*x(206);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)+x(19)-x(21)+190*x(207);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)+x(19)-x(22)+190*x(208);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)+x(19)-x(23)+190*x(209);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)+x(19)-x(24)+190*x(210);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)-x(17)+x(20)+190*x(211);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)-x(18)+x(20)+190*x(212);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)-x(19)+x(20)+190*x(213);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)+x(20)-x(21)+190*x(214);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)+x(20)-x(22)+190*x(215);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)+x(20)-x(23)+190*x(216);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)+x(20)-x(24)+190*x(217);
             x(70)+x(77)+x(130)+x(137)+x(190)+x(197);
             x(71)+x(84)+x(131)+x(144)+x(191)+x(204);
             x(72)+x(91)+x(132)+x(151)+x(192)+x(211);
             x(73)+x(98)+x(133)+x(158)+x(193)+x(218);
             x(74)+x(106)+x(134)+x(166)+x(194)+x(226);
             x(75)+x(114)+x(135)+x(174)+x(195)+x(234);
             x(76)+x(122)+x(136)+x(182)+x(196)+x(242);
             x(70)+x(77)+x(130)+x(137)+x(190)+x(197);
             x(78)+x(85)+x(138)+x(145)+x(198)+x(205);
             x(79)+x(92)+x(139)+x(152)+x(199)+x(212);
             x(80)+x(99)+x(140)+x(159)+x(200)+x(219);
             x(81)+x(107)+x(141)+x(167)+x(201)+x(227);
             x(82)+x(115)+x(142)+x(175)+x(202)+x(235);
             x(83)+x(123)+x(143)+x(183)+x(203)+x(243);
             x(71)+x(84)+x(131)+x(144)+x(191)+x(204);
             x(78)+x(85)+x(138)+x(145)+x(198)+x(205);
             x(86)+x(93)+x(146)+x(153)+x(206)+x(213);
             x(87)+x(100)+x(147)+x(160)+x(207)+x(220);
             x(88)+x(108)+x(148)+x(168)+x(208)+x(228);
             x(89)+x(116)+x(149)+x(176)+x(209)+x(236);
             x(90)+x(124)+x(150)+x(184)+x(210)+x(244);
             x(72)+x(91)+x(132)+x(151)+x(192)+x(211);
             x(79)+x(92)+x(139)+x(152)+x(199)+x(212);
             x(86)+x(93)+x(146)+x(153)+x(206)+x(213);
             x(94)+x(101)+x(154)+x(161)+x(214)+x(221);
             x(95)+x(109)+x(155)+x(169)+x(215)+x(229);
             x(96)+x(117)+x(156)+x(177)+x(216)+x(237);
             x(97)+x(125)+x(157)+x(185)+x(217)+x(245);
             x(73)+x(98)+x(133)+x(158)+x(193)+x(218);
             x(80)+x(99)+x(140)+x(159)+x(200)+x(219);
             x(87)+x(100)+x(147)+x(160)+x(207)+x(220);
             x(94)+x(101)+x(154)+x(161)+x(214)+x(221);
             x(103)+x(110)+x(163)+x(170)+x(223)+x(230);
             x(104)+x(118)+x(164)+x(178)+x(224)+x(238);
             x(105)+x(126)+x(165)+x(186)+x(225)+x(246);
             x(74)+x(106)+x(134)+x(166)+x(194)+x(226);
             x(81)+x(107)+x(141)+x(167)+x(201)+x(227);
             x(88)+x(108)+x(148)+x(168)+x(208)+x(228);
             x(95)+x(109)+x(155)+x(169)+x(215)+x(229);
             x(103)+x(110)+x(163)+x(170)+x(223)+x(230);
             x(112)+x(119)+x(172)+x(179)+x(232)+x(239);
             x(113)+x(127)+x(173)+x(187)+x(233)+x(247);
             x(75)+x(114)+x(135)+x(174)+x(195)+x(234);
             x(82)+x(115)+x(142)+x(175)+x(202)+x(235);
             x(89)+x(116)+x(149)+x(176)+x(209)+x(236);
             x(96)+x(117)+x(156)+x(177)+x(216)+x(237);
             x(104)+x(118)+x(164)+x(178)+x(224)+x(238);
             x(112)+x(119)+x(172)+x(179)+x(232)+x(239);
             x(121)+x(128)+x(181)+x(188)+x(241)+x(248);
             x(76)+x(122)+x(136)+x(182)+x(196)+x(242);
             x(83)+x(123)+x(143)+x(183)+x(203)+x(243);
             x(90)+x(124)+x(150)+x(184)+x(210)+x(244);
             x(97)+x(125)+x(157)+x(185)+x(217)+x(245);
             x(105)+x(126)+x(165)+x(186)+x(225)+x(246);
             x(113)+x(127)+x(173)+x(187)+x(233)+x(247);
             x(121)+x(128)+x(181)+x(188)+x(241)+x(248);
             x(5)+4.86*x(42)+4.5*x(50)-4.5*x(58)+4.5*x(66);
             x(6)+4.3*x(43)+4.2*x(51)-4.2*x(59)+4.2*x(67);
             x(7)+7.015*x(44)+3.68*x(52)-3.68*x(60)+3.68*x(68);
             x(8)+6.7875*x(45)+4.12*x(53)-4.12*x(61)+4.12*x(69);
             x(13)-4.86*x(42)-4.86*x(50)+4.5*x(58);
             x(14)-4.3*x(43)-4.3*x(51)+4.2*x(59);
             x(15)-7.015*x(44)-7.015*x(52)+3.68*x(60);
             x(16)-6.7875*x(45)-6.7875*x(53)+4.12*x(61);
             x(21)-x(37)+0.359999999999999*x(50)-4.5*x(66);
             x(22)-x(37)+0.100000000000001*x(51)-4.2*x(67);
             x(23)-x(37)+3.335*x(52)-3.68*x(68);
             x(24)-x(37)+2.6675*x(53)-4.12*x(69);
             x(25)*x(38)+x(29)*(x(46)-x(54)+x(62))+x(33)*(1-x(38)-x(46)+x(54)-x(62))+x(1);
             x(26)*x(39)+x(30)*(x(47)-x(55)+x(63))+x(34)*(1-x(39)-x(47)+x(55)-x(63))+x(2);
             x(27)*x(40)+x(31)*(x(48)-x(56)+x(64))+x(35)*(1-x(40)-x(48)+x(56)-x(64))+x(3);
             x(28)*x(41)+x(32)*(x(49)-x(57)+x(65))+x(36)*(1-x(41)-x(49)+x(57)-x(65))+x(4);
             x(29)*x(54)+x(25)*(1-x(38)-x(46))+x(33)*(x(38)+x(46)-x(54))+x(9);
             x(30)*x(55)+x(26)*(1-x(39)-x(47))+x(34)*(x(39)+x(47)-x(55))+x(10);
             x(31)*x(56)+x(27)*(1-x(40)-x(48))+x(35)*(x(40)+x(48)-x(56))+x(11);
             x(32)*x(57)+x(28)*(1-x(41)-x(49))+x(36)*(x(41)+x(49)-x(57))+x(12);
             x(33)*x(62)+x(29)*(1-x(46)-x(62))+x(25)*x(46)+x(17)-x(37);
             x(34)*x(63)+x(30)*(1-x(47)-x(63))+x(26)*x(47)+x(18)-x(37);
             x(35)*x(64)+x(31)*(1-x(48)-x(64))+x(27)*x(48)+x(19)-x(37);
             x(36)*x(65)+x(32)*(1-x(49)-x(65))+x(28)*x(49)+x(20)-x(37);
             x(38)+x(46);
             x(39)+x(47);
             x(40)+x(48);
             x(41)+x(49);
             x(42)+x(50);
             x(43)+x(51);
             x(44)+x(52);
             x(45)+x(53);
             x(46)+x(62);
             x(47)+x(63);
             x(48)+x(64);
             x(49)+x(65);
             x(50)+x(66);
             x(51)+x(67);
             x(52)+x(68);
             x(53)+x(69);
             x(46)-x(54)+x(62);
             x(47)-x(55)+x(63);
             x(48)-x(56)+x(64);
             x(49)-x(57)+x(65);
             x(50)-x(58)+x(66);
             x(51)-x(59)+x(67);
             x(52)-x(60)+x(68);
             x(53)-x(61)+x(69);
             x(46)-x(54)+x(62);
             x(47)-x(55)+x(63);
             x(48)-x(56)+x(64);
             x(49)-x(57)+x(65);
             x(50)-x(58)+x(66);
             x(51)-x(59)+x(67);
             x(52)-x(60)+x(68);
             x(53)-x(61)+x(69);
             -x(38)-x(46)+x(54)-x(62);
             -x(39)-x(47)+x(55)-x(63);
             -x(40)-x(48)+x(56)-x(64);
             -x(41)-x(49)+x(57)-x(65);
             -x(42)-x(50)+x(58)-x(66);
             -x(43)-x(51)+x(59)-x(67);
             -x(44)-x(52)+x(60)-x(68);
             -x(45)-x(53)+x(61)-x(69);
             -x(38)-x(46)+x(54)-x(62);
             -x(39)-x(47)+x(55)-x(63);
             -x(40)-x(48)+x(56)-x(64);
             -x(41)-x(49)+x(57)-x(65);
             -x(42)-x(50)+x(58)-x(66);
             -x(43)-x(51)+x(59)-x(67);
             -x(44)-x(52)+x(60)-x(68);
             -x(45)-x(53)+x(61)-x(69);
             x(38)+x(46)-x(54);
             x(39)+x(47)-x(55);
             x(40)+x(48)-x(56);
             x(41)+x(49)-x(57);
             x(42)+x(50)-x(58);
             x(43)+x(51)-x(59);
             x(44)+x(52)-x(60);
             x(45)+x(53)-x(61);
             x(38)+x(46)-x(54);
             x(39)+x(47)-x(55);
             x(40)+x(48)-x(56);
             x(41)+x(49)-x(57);
             x(42)+x(50)-x(58);
             x(43)+x(51)-x(59);
             x(44)+x(52)-x(60);
             x(45)+x(53)-x(61);
             -x(25)*x(29)*x(33);
             -x(26)*x(30)*x(34);
             -x(27)*x(31)*x(35);
             -x(28)*x(32)*x(36);
             x(25);
             x(26);
             x(27);
             x(28);
             x(25);
             x(26);
             x(27);
             x(28);
             x(29);
             x(30);
             x(31);
             x(32);
             x(29);
             x(30);
             x(31);
             x(32);
             x(33);
             x(34);
             x(35);
             x(36);
             x(33);
             x(34);
             x(35);
             x(36)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-1,-1,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,-6,-5,-12,-5,-Inf,-Inf,-Inf,-Inf,2,1.25,1.25,0.5,-Inf,-Inf,-Inf,-Inf,1.5,0.125,1.5,0.1,-Inf,-Inf,-Inf,-Inf,3.125,3.375,3,3.5]';
cu = [189.1,189.1,189.1,189.1,189.1,189.1,189.1,188.9,188.9,188.9,188.9,188.9,188.9,188.9,188.89,188.89,188.89,188.89,188.89,188.89,188.89,189.35,189.35,189.35,189.35,189.35,189.35,189.35,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,184.24,184.24,184.24,184.24,184.24,184.24,184.24,184.6,184.6,184.6,184.6,184.6,184.6,184.6,181.875,181.875,181.875,181.875,181.875,181.875,181.875,182.5625,182.5625,182.5625,182.5625,182.5625,182.5625,182.5625,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.7,184.7,184.7,184.7,184.7,184.7,184.7,185.21,185.21,185.21,185.21,185.21,185.21,185.21,185.23,185.23,185.23,185.23,185.23,185.23,185.23,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,8.1,7.9,7.89,8.35,-0.58,-0.220000000000001,-2.945,-2.2575,-5.4,-5.3,-4.79,-4.77,9,9,9,9,5.18,5.18,5.18,5.18,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1,1,1,1,1,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,-6,-5,-12,-5,9,5.75,7,5,Inf,Inf,Inf,Inf,4.5,2.25,5.75,2,Inf,Inf,Inf,Inf,3.125,3.375,3,3.5,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_291');
opts.sense = 'min';