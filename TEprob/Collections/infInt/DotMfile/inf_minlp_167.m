% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:05:58
% Model: inf_minlp_167

% Objective
fun = @(x)x(37);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(2)+x(4)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(99);
             -x(3)+x(4)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(100);
             7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(101);
             x(4)-x(5)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(102);
             x(4)-x(6)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(103);
             x(4)-x(7)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(104);
             x(4)-x(8)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(105);
             x(4)-x(9)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68)+190*x(106);
             -x(1)+x(5)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(107);
             -x(3)+x(5)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(109);
             -x(4)+x(5)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(110);
             4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(111);
             x(5)-x(6)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(112);
             x(5)-x(7)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(113);
             x(5)-x(8)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(114);
             x(5)-x(9)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69)+190*x(115);
             -x(1)+x(6)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(116);
             -x(2)+x(6)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(117);
             -x(4)+x(6)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(119);
             -x(5)+x(6)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(120);
             5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(121);
             x(6)-x(7)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(122);
             x(6)-x(8)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(123);
             x(6)-x(9)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70)+190*x(124);
             -x(1)+x(7)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(125);
             -x(2)+x(7)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(126);
             -x(3)+x(7)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(127);
             -x(5)+x(7)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(129);
             -x(6)+x(7)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(130);
             6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(131);
             x(7)-x(8)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(132);
             x(7)-x(9)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71)+190*x(133);
             -x(1)+x(8)+5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(134);
             -x(2)+x(8)+5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(135);
             -x(3)+x(8)+5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(136);
             -x(4)+x(8)+5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(137);
             -x(6)+x(8)+5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(139);
             -x(7)+x(8)+5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(140);
             5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(141);
             x(8)-x(9)+5*x(45)+5*x(54)-5*x(63)+5*x(72)+190*x(142);
             -x(1)+x(9)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(143);
             -x(2)+x(9)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(144);
             -x(3)+x(9)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(145);
             -x(4)+x(9)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(146);
             -x(5)+x(9)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(147);
             -x(7)+x(9)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(149);
             -x(8)+x(9)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(150);
             6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73)+190*x(151);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(2)+190*x(74);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(3)+190*x(75);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(4)+190*x(76);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(5)+190*x(77);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(6)+190*x(78);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(7)+190*x(79);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(8)+190*x(80);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(9)+190*x(81);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))-x(1)+x(2)+190*x(82);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(3)+190*x(83);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(4)+190*x(84);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(5)+190*x(85);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(6)+190*x(86);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(7)+190*x(87);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(8)+190*x(88);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(9)+190*x(89);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))-x(1)+x(3)+190*x(90);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))-x(2)+x(3)+190*x(91);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))+x(3)-x(4)+190*x(92);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))+x(3)-x(5)+190*x(93);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))+x(3)-x(6)+190*x(94);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))+x(3)-x(7)+190*x(95);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))+x(3)-x(8)+190*x(96);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))+x(3)-x(9)+190*x(97);
             -x(11)+x(13)-7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(177);
             -x(12)+x(13)-7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(178);
             -7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(179);
             x(13)-x(14)-7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(180);
             x(13)-x(15)-7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(181);
             x(13)-x(16)-7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(182);
             x(13)-x(17)-7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(183);
             x(13)-x(18)-7.4125*x(41)-7.4125*x(50)+4*x(59)+190*x(184);
             -x(10)+x(14)-4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(185);
             -x(12)+x(14)-4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(187);
             -x(13)+x(14)-4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(188);
             -4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(189);
             x(14)-x(15)-4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(190);
             x(14)-x(16)-4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(191);
             x(14)-x(17)-4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(192);
             x(14)-x(18)-4.94*x(42)-4.94*x(51)+4.84*x(60)+190*x(193);
             -x(10)+x(15)-5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(194);
             -x(11)+x(15)-5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(195);
             -x(13)+x(15)-5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(197);
             -x(14)+x(15)-5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(198);
             -5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(199);
             x(15)-x(16)-5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(200);
             x(15)-x(17)-5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(201);
             x(15)-x(18)-5.6*x(43)-5.6*x(52)+3.75*x(61)+190*x(202);
             -x(10)+x(16)-6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(203);
             -x(11)+x(16)-6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(204);
             -x(12)+x(16)-6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(205);
             -x(14)+x(16)-6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(207);
             -x(15)+x(16)-6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(208);
             -6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(209);
             x(16)-x(17)-6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(210);
             x(16)-x(18)-6.45*x(44)-6.45*x(53)+4.4*x(62)+190*x(211);
             -x(10)+x(17)-5*x(45)-5*x(54)+5*x(63)+190*x(212);
             -x(11)+x(17)-5*x(45)-5*x(54)+5*x(63)+190*x(213);
             -x(12)+x(17)-5*x(45)-5*x(54)+5*x(63)+190*x(214);
             -x(13)+x(17)-5*x(45)-5*x(54)+5*x(63)+190*x(215);
             -x(15)+x(17)-5*x(45)-5*x(54)+5*x(63)+190*x(217);
             -x(16)+x(17)-5*x(45)-5*x(54)+5*x(63)+190*x(218);
             -5*x(45)-5*x(54)+5*x(63)+190*x(219);
             x(17)-x(18)-5*x(45)-5*x(54)+5*x(63)+190*x(220);
             -x(10)+x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(221);
             -x(11)+x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(222);
             -x(12)+x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(223);
             -x(13)+x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(224);
             -x(14)+x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(225);
             -x(16)+x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(227);
             -x(17)+x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(228);
             -6.95*x(46)-6.95*x(55)+4.1*x(64)+190*x(229);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(11)+190*x(152);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(12)+190*x(153);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(13)+190*x(154);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(14)+190*x(155);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(15)+190*x(156);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(16)+190*x(157);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(17)+190*x(158);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10)-x(18)+190*x(159);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))-x(10)+x(11)+190*x(160);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11)-x(12)+190*x(161);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11)-x(13)+190*x(162);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11)-x(14)+190*x(163);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11)-x(15)+190*x(164);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11)-x(16)+190*x(165);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11)-x(17)+190*x(166);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11)-x(18)+190*x(167);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))-x(10)+x(12)+190*x(168);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))-x(11)+x(12)+190*x(169);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))+x(12)-x(13)+190*x(170);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))+x(12)-x(14)+190*x(171);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))+x(12)-x(15)+190*x(172);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))+x(12)-x(16)+190*x(173);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))+x(12)-x(17)+190*x(174);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))+x(12)-x(18)+190*x(175);
             -x(20)+x(22)+3.4125*x(50)-4*x(68)+190*x(255);
             -x(21)+x(22)+3.4125*x(50)-4*x(68)+190*x(256);
             3.4125*x(50)-4*x(68)+190*x(257);
             x(22)-x(23)+3.4125*x(50)-4*x(68)+190*x(258);
             x(22)-x(24)+3.4125*x(50)-4*x(68)+190*x(259);
             x(22)-x(25)+3.4125*x(50)-4*x(68)+190*x(260);
             x(22)-x(26)+3.4125*x(50)-4*x(68)+190*x(261);
             x(22)-x(27)+3.4125*x(50)-4*x(68)+190*x(262);
             -x(19)+x(23)+0.100000000000001*x(51)-4.84*x(69)+190*x(263);
             -x(21)+x(23)+0.100000000000001*x(51)-4.84*x(69)+190*x(265);
             -x(22)+x(23)+0.100000000000001*x(51)-4.84*x(69)+190*x(266);
             0.100000000000001*x(51)-4.84*x(69)+190*x(267);
             x(23)-x(24)+0.100000000000001*x(51)-4.84*x(69)+190*x(268);
             x(23)-x(25)+0.100000000000001*x(51)-4.84*x(69)+190*x(269);
             x(23)-x(26)+0.100000000000001*x(51)-4.84*x(69)+190*x(270);
             x(23)-x(27)+0.100000000000001*x(51)-4.84*x(69)+190*x(271);
             -x(19)+x(24)+1.85*x(52)-3.75*x(70)+190*x(272);
             -x(20)+x(24)+1.85*x(52)-3.75*x(70)+190*x(273);
             -x(22)+x(24)+1.85*x(52)-3.75*x(70)+190*x(275);
             -x(23)+x(24)+1.85*x(52)-3.75*x(70)+190*x(276);
             1.85*x(52)-3.75*x(70)+190*x(277);
             x(24)-x(25)+1.85*x(52)-3.75*x(70)+190*x(278);
             x(24)-x(26)+1.85*x(52)-3.75*x(70)+190*x(279);
             x(24)-x(27)+1.85*x(52)-3.75*x(70)+190*x(280);
             -x(19)+x(25)+2.05*x(53)-4.4*x(71)+190*x(281);
             -x(20)+x(25)+2.05*x(53)-4.4*x(71)+190*x(282);
             -x(21)+x(25)+2.05*x(53)-4.4*x(71)+190*x(283);
             -x(23)+x(25)+2.05*x(53)-4.4*x(71)+190*x(285);
             -x(24)+x(25)+2.05*x(53)-4.4*x(71)+190*x(286);
             2.05*x(53)-4.4*x(71)+190*x(287);
             x(25)-x(26)+2.05*x(53)-4.4*x(71)+190*x(288);
             x(25)-x(27)+2.05*x(53)-4.4*x(71)+190*x(289);
             -x(19)+x(26)-5*x(72)+190*x(290);
             -x(20)+x(26)-5*x(72)+190*x(291);
             -x(21)+x(26)-5*x(72)+190*x(292);
             -x(22)+x(26)-5*x(72)+190*x(293);
             -x(24)+x(26)-5*x(72)+190*x(295);
             -x(25)+x(26)-5*x(72)+190*x(296);
             -5*x(72)+190*x(297);
             x(26)-x(27)-5*x(72)+190*x(298);
             -x(19)+x(27)+2.85*x(55)-4.1*x(73)+190*x(299);
             -x(20)+x(27)+2.85*x(55)-4.1*x(73)+190*x(300);
             -x(21)+x(27)+2.85*x(55)-4.1*x(73)+190*x(301);
             -x(22)+x(27)+2.85*x(55)-4.1*x(73)+190*x(302);
             -x(23)+x(27)+2.85*x(55)-4.1*x(73)+190*x(303);
             -x(25)+x(27)+2.85*x(55)-4.1*x(73)+190*x(305);
             -x(26)+x(27)+2.85*x(55)-4.1*x(73)+190*x(306);
             2.85*x(55)-4.1*x(73)+190*x(307);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(20)+190*x(230);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(21)+190*x(231);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(22)+190*x(232);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(23)+190*x(233);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(24)+190*x(234);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(25)+190*x(235);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(26)+190*x(236);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19)-x(27)+190*x(237);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)-x(19)+x(20)+190*x(238);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20)-x(21)+190*x(239);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20)-x(22)+190*x(240);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20)-x(23)+190*x(241);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20)-x(24)+190*x(242);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20)-x(25)+190*x(243);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20)-x(26)+190*x(244);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20)-x(27)+190*x(245);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)-x(19)+x(21)+190*x(246);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)-x(20)+x(21)+190*x(247);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)+x(21)-x(22)+190*x(248);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)+x(21)-x(23)+190*x(249);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)+x(21)-x(24)+190*x(250);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)+x(21)-x(25)+190*x(251);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)+x(21)-x(26)+190*x(252);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)+x(21)-x(27)+190*x(253);
             x(74)+x(82)+x(152)+x(160)+x(230)+x(238);
             x(75)+x(90)+x(153)+x(168)+x(231)+x(246);
             x(76)+x(98)+x(154)+x(176)+x(232)+x(254);
             x(77)+x(107)+x(155)+x(185)+x(233)+x(263);
             x(78)+x(116)+x(156)+x(194)+x(234)+x(272);
             x(79)+x(125)+x(157)+x(203)+x(235)+x(281);
             x(80)+x(134)+x(158)+x(212)+x(236)+x(290);
             x(81)+x(143)+x(159)+x(221)+x(237)+x(299);
             x(74)+x(82)+x(152)+x(160)+x(230)+x(238);
             x(83)+x(91)+x(161)+x(169)+x(239)+x(247);
             x(84)+x(99)+x(162)+x(177)+x(240)+x(255);
             x(85)+x(108)+x(163)+x(186)+x(241)+x(264);
             x(86)+x(117)+x(164)+x(195)+x(242)+x(273);
             x(87)+x(126)+x(165)+x(204)+x(243)+x(282);
             x(88)+x(135)+x(166)+x(213)+x(244)+x(291);
             x(89)+x(144)+x(167)+x(222)+x(245)+x(300);
             x(75)+x(90)+x(153)+x(168)+x(231)+x(246);
             x(83)+x(91)+x(161)+x(169)+x(239)+x(247);
             x(92)+x(100)+x(170)+x(178)+x(248)+x(256);
             x(93)+x(109)+x(171)+x(187)+x(249)+x(265);
             x(94)+x(118)+x(172)+x(196)+x(250)+x(274);
             x(95)+x(127)+x(173)+x(205)+x(251)+x(283);
             x(96)+x(136)+x(174)+x(214)+x(252)+x(292);
             x(97)+x(145)+x(175)+x(223)+x(253)+x(301);
             x(76)+x(98)+x(154)+x(176)+x(232)+x(254);
             x(84)+x(99)+x(162)+x(177)+x(240)+x(255);
             x(92)+x(100)+x(170)+x(178)+x(248)+x(256);
             x(102)+x(110)+x(180)+x(188)+x(258)+x(266);
             x(103)+x(119)+x(181)+x(197)+x(259)+x(275);
             x(104)+x(128)+x(182)+x(206)+x(260)+x(284);
             x(105)+x(137)+x(183)+x(215)+x(261)+x(293);
             x(106)+x(146)+x(184)+x(224)+x(262)+x(302);
             x(77)+x(107)+x(155)+x(185)+x(233)+x(263);
             x(85)+x(108)+x(163)+x(186)+x(241)+x(264);
             x(93)+x(109)+x(171)+x(187)+x(249)+x(265);
             x(102)+x(110)+x(180)+x(188)+x(258)+x(266);
             x(112)+x(120)+x(190)+x(198)+x(268)+x(276);
             x(113)+x(129)+x(191)+x(207)+x(269)+x(285);
             x(114)+x(138)+x(192)+x(216)+x(270)+x(294);
             x(115)+x(147)+x(193)+x(225)+x(271)+x(303);
             x(78)+x(116)+x(156)+x(194)+x(234)+x(272);
             x(86)+x(117)+x(164)+x(195)+x(242)+x(273);
             x(94)+x(118)+x(172)+x(196)+x(250)+x(274);
             x(103)+x(119)+x(181)+x(197)+x(259)+x(275);
             x(112)+x(120)+x(190)+x(198)+x(268)+x(276);
             x(122)+x(130)+x(200)+x(208)+x(278)+x(286);
             x(123)+x(139)+x(201)+x(217)+x(279)+x(295);
             x(124)+x(148)+x(202)+x(226)+x(280)+x(304);
             x(79)+x(125)+x(157)+x(203)+x(235)+x(281);
             x(87)+x(126)+x(165)+x(204)+x(243)+x(282);
             x(95)+x(127)+x(173)+x(205)+x(251)+x(283);
             x(104)+x(128)+x(182)+x(206)+x(260)+x(284);
             x(113)+x(129)+x(191)+x(207)+x(269)+x(285);
             x(122)+x(130)+x(200)+x(208)+x(278)+x(286);
             x(132)+x(140)+x(210)+x(218)+x(288)+x(296);
             x(133)+x(149)+x(211)+x(227)+x(289)+x(305);
             x(80)+x(134)+x(158)+x(212)+x(236)+x(290);
             x(88)+x(135)+x(166)+x(213)+x(244)+x(291);
             x(96)+x(136)+x(174)+x(214)+x(252)+x(292);
             x(105)+x(137)+x(183)+x(215)+x(261)+x(293);
             x(114)+x(138)+x(192)+x(216)+x(270)+x(294);
             x(123)+x(139)+x(201)+x(217)+x(279)+x(295);
             x(132)+x(140)+x(210)+x(218)+x(288)+x(296);
             x(142)+x(150)+x(220)+x(228)+x(298)+x(306);
             x(81)+x(143)+x(159)+x(221)+x(237)+x(299);
             x(89)+x(144)+x(167)+x(222)+x(245)+x(300);
             x(97)+x(145)+x(175)+x(223)+x(253)+x(301);
             x(106)+x(146)+x(184)+x(224)+x(262)+x(302);
             x(115)+x(147)+x(193)+x(225)+x(271)+x(303);
             x(124)+x(148)+x(202)+x(226)+x(280)+x(304);
             x(133)+x(149)+x(211)+x(227)+x(289)+x(305);
             x(142)+x(150)+x(220)+x(228)+x(298)+x(306);
             x(4)-x(37)+7.4125*x(41)+4*x(50)-4*x(59)+4*x(68);
             x(5)-x(37)+4.94*x(42)+4.84*x(51)-4.84*x(60)+4.84*x(69);
             x(6)-x(37)+5.6*x(43)+3.75*x(52)-3.75*x(61)+3.75*x(70);
             x(7)-x(37)+6.45*x(44)+4.4*x(53)-4.4*x(62)+4.4*x(71);
             x(8)-x(37)+5*x(45)+5*x(54)-5*x(63)+5*x(72);
             x(9)-x(37)+6.95*x(46)+4.1*x(55)-4.1*x(64)+4.1*x(73);
             x(13)-7.4125*x(41)-7.4125*x(50)+4*x(59);
             x(14)-4.94*x(42)-4.94*x(51)+4.84*x(60);
             x(15)-5.6*x(43)-5.6*x(52)+3.75*x(61);
             x(16)-6.45*x(44)-6.45*x(53)+4.4*x(62);
             x(17)-5*x(45)-5*x(54)+5*x(63);
             x(18)-6.95*x(46)-6.95*x(55)+4.1*x(64);
             x(22)+3.4125*x(50)-4*x(68);
             x(23)+0.100000000000001*x(51)-4.84*x(69);
             x(24)+1.85*x(52)-3.75*x(70);
             x(25)+2.05*x(53)-4.4*x(71);
             x(26)-5*x(72);
             x(27)+2.85*x(55)-4.1*x(73);
             x(28)*x(38)+x(31)*(x(47)-x(56)+x(65))+x(34)*(1-x(38)-x(47)+x(56)-x(65))+x(1)-x(37);
             x(29)*x(39)+x(32)*(x(48)-x(57)+x(66))+x(35)*(1-x(39)-x(48)+x(57)-x(66))+x(2)-x(37);
             x(30)*x(40)+x(33)*(x(49)-x(58)+x(67))+x(36)*(1-x(40)-x(49)+x(58)-x(67))+x(3)-x(37);
             x(31)*x(56)+x(28)*(1-x(38)-x(47))+x(34)*(x(38)+x(47)-x(56))+x(10);
             x(32)*x(57)+x(29)*(1-x(39)-x(48))+x(35)*(x(39)+x(48)-x(57))+x(11);
             x(33)*x(58)+x(30)*(1-x(40)-x(49))+x(36)*(x(40)+x(49)-x(58))+x(12);
             x(34)*x(65)+x(31)*(1-x(47)-x(65))+x(28)*x(47)+x(19);
             x(35)*x(66)+x(32)*(1-x(48)-x(66))+x(29)*x(48)+x(20);
             x(36)*x(67)+x(33)*(1-x(49)-x(67))+x(30)*x(49)+x(21);
             x(38)+x(47);
             x(39)+x(48);
             x(40)+x(49);
             x(41)+x(50);
             x(42)+x(51);
             x(43)+x(52);
             x(44)+x(53);
             x(45)+x(54);
             x(46)+x(55);
             x(47)+x(65);
             x(48)+x(66);
             x(49)+x(67);
             x(50)+x(68);
             x(51)+x(69);
             x(52)+x(70);
             x(53)+x(71);
             x(54)+x(72);
             x(55)+x(73);
             x(47)-x(56)+x(65);
             x(48)-x(57)+x(66);
             x(49)-x(58)+x(67);
             x(50)-x(59)+x(68);
             x(51)-x(60)+x(69);
             x(52)-x(61)+x(70);
             x(53)-x(62)+x(71);
             x(54)-x(63)+x(72);
             x(55)-x(64)+x(73);
             x(47)-x(56)+x(65);
             x(48)-x(57)+x(66);
             x(49)-x(58)+x(67);
             x(50)-x(59)+x(68);
             x(51)-x(60)+x(69);
             x(52)-x(61)+x(70);
             x(53)-x(62)+x(71);
             x(54)-x(63)+x(72);
             x(55)-x(64)+x(73);
             -x(38)-x(47)+x(56)-x(65);
             -x(39)-x(48)+x(57)-x(66);
             -x(40)-x(49)+x(58)-x(67);
             -x(41)-x(50)+x(59)-x(68);
             -x(42)-x(51)+x(60)-x(69);
             -x(43)-x(52)+x(61)-x(70);
             -x(44)-x(53)+x(62)-x(71);
             -x(45)-x(54)+x(63)-x(72);
             -x(46)-x(55)+x(64)-x(73);
             -x(38)-x(47)+x(56)-x(65);
             -x(39)-x(48)+x(57)-x(66);
             -x(40)-x(49)+x(58)-x(67);
             -x(41)-x(50)+x(59)-x(68);
             -x(42)-x(51)+x(60)-x(69);
             -x(43)-x(52)+x(61)-x(70);
             -x(44)-x(53)+x(62)-x(71);
             -x(45)-x(54)+x(63)-x(72);
             -x(46)-x(55)+x(64)-x(73);
             x(38)+x(47)-x(56);
             x(39)+x(48)-x(57);
             x(40)+x(49)-x(58);
             x(41)+x(50)-x(59);
             x(42)+x(51)-x(60);
             x(43)+x(52)-x(61);
             x(44)+x(53)-x(62);
             x(45)+x(54)-x(63);
             x(46)+x(55)-x(64);
             x(38)+x(47)-x(56);
             x(39)+x(48)-x(57);
             x(40)+x(49)-x(58);
             x(41)+x(50)-x(59);
             x(42)+x(51)-x(60);
             x(43)+x(52)-x(61);
             x(44)+x(53)-x(62);
             x(45)+x(54)-x(63);
             x(46)+x(55)-x(64);
             x(28)-190*x(308);
             x(28)-190*x(309);
             x(28)-190*x(310);
             x(29)-190*x(311);
             x(29)-190*x(312);
             x(29)-190*x(313);
             x(30)-190*x(314);
             x(30)-190*x(315);
             x(30)-190*x(316);
             x(28)+190*x(308);
             x(28)+190*x(309);
             x(28)+190*x(310);
             x(29)+190*x(311);
             x(29)+190*x(312);
             x(29)+190*x(313);
             x(30)+190*x(314);
             x(30)+190*x(315);
             x(30)+190*x(316);
             x(31)-190*x(308);
             x(31)-190*x(309);
             x(31)-190*x(310);
             x(32)-190*x(311);
             x(32)-190*x(312);
             x(32)-190*x(313);
             x(33)-190*x(314);
             x(33)-190*x(315);
             x(33)-190*x(316);
             x(31)+190*x(308);
             x(31)+190*x(309);
             x(31)+190*x(310);
             x(32)+190*x(311);
             x(32)+190*x(312);
             x(32)+190*x(313);
             x(33)+190*x(314);
             x(33)+190*x(315);
             x(33)+190*x(316);
             x(34)-190*x(308);
             x(34)-190*x(309);
             x(34)-190*x(310);
             x(35)-190*x(311);
             x(35)-190*x(312);
             x(35)-190*x(313);
             x(36)-190*x(314);
             x(36)-190*x(315);
             x(36)-190*x(316);
             x(34)+190*x(308);
             x(34)+190*x(309);
             x(34)+190*x(310);
             x(35)+190*x(311);
             x(35)+190*x(312);
             x(35)+190*x(313);
             x(36)+190*x(314);
             x(36)+190*x(315);
             x(36)+190*x(316);
             x(308)+x(309)+x(310);
             x(311)+x(312)+x(313);
             x(314)+x(315)+x(316)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-1,-1,-1,-1,-1,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,-184.5,-185.875,-186.75,-185,-187.625,-187.625,-183,-185,-185,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-187.625,-187.875,-188.75,-185.875,-185.75,-185.75,-185,-185,-185,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-189.625,-189,-188.75,-189.75,-189.625,-189.625,-189,-188.5,-188.5,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1]';
cu = [189.1,189.1,189.1,189.1,189.1,189.1,189.1,189.1,189.54,189.54,189.54,189.54,189.54,189.54,189.54,189.54,189.35,189.35,189.35,189.35,189.35,189.35,189.35,189.35,189.2,189.2,189.2,189.2,189.2,189.2,189.2,189.2,189.6,189.6,189.6,189.6,189.6,189.6,189.6,189.6,188.7,188.7,188.7,188.7,188.7,188.7,188.7,188.7,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,181.6875,181.6875,181.6875,181.6875,181.6875,181.6875,181.6875,181.6875,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,183.75,183.75,183.75,183.75,183.75,183.75,183.75,183.75,182.75,182.75,182.75,182.75,182.75,182.75,182.75,182.75,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,181.75,181.75,181.75,181.75,181.75,181.75,181.75,181.75,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,185.1,185.1,185.1,185.1,185.1,185.1,185.1,185.1,184.7,184.7,184.7,184.7,184.7,184.7,184.7,184.7,185.6,185.6,185.6,185.6,185.6,185.6,185.6,185.6,184.8,184.8,184.8,184.8,184.8,184.8,184.8,184.8,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,184.6,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,190,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,-0.9,-0.46,-0.65,-0.8,-0.4,-1.3,-3.1325,-0.220000000000001,-1.07,-2.07,-0.220000000000001,-3.07,-1.86,-2.26,-1.36,-2.16,-2.36,-2.36,0,0,0,5.18,5.18,5.18,3.04,3.04,3.04,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1,1,1,1,1,1,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,195.5,194.125,193.25,195,192.375,192.375,197,195,195,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,192.375,192.125,191.25,194.125,194.25,194.25,195,195,195,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,190.375,191,191.25,190.25,190.375,190.375,191,191.5,191.5,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_167');
opts.sense = 'min';
