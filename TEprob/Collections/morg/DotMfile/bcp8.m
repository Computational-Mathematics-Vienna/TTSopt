% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 15:52:27
% Model: bcp8

% Objective
fun = @(x)x(1);

% Bounds
lb = [0.95,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0,0,0,0,0,0,0,0,0,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0,0,0,0,0,0,0,0,0,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0,1e-05,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0,1e-05,-10,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,-10,1e-05,-10,-10,-10,-10,-10,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [1,10,10,10,10,10,10,10,10,10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(11)+0.001*x(160);
             -x(12)+0.001*x(161);
             -x(13)+0.001*x(162);
             -x(14)+0.001*x(163);
             -x(15)+0.001*x(164);
             -x(16)+0.001*x(165);
             -x(17)+0.001*x(166);
             -x(18)+0.001*x(167);
             -x(19)+0.001*x(168);
             x(11)-10*x(160);
             x(12)-10*x(161);
             x(13)-10*x(162);
             x(14)-10*x(163);
             x(15)-10*x(164);
             x(16)-10*x(165);
             x(17)-10*x(166);
             x(18)-10*x(167);
             x(19)-10*x(168);
             -x(40)+0.001*x(160);
             -x(41)+0.001*x(161);
             -x(42)+0.001*x(162);
             -x(43)+0.001*x(163);
             -x(44)+0.001*x(164);
             -x(45)+0.001*x(165);
             -x(46)+0.001*x(166);
             -x(47)+0.001*x(167);
             -x(48)+0.001*x(168);
             x(40)-10*x(160);
             x(41)-10*x(161);
             x(42)-10*x(162);
             x(43)-10*x(163);
             x(44)-10*x(164);
             x(45)-10*x(165);
             x(46)-10*x(166);
             x(47)-10*x(167);
             x(48)-10*x(168);
             x(160)-x(161);
             x(161)-x(162);
             x(162)-x(163);
             x(163)-x(164);
             x(164)-x(165);
             x(165)-x(166);
             x(166)-x(167);
             x(167)-x(168);
             -10000000000*x(2)+10000000000*x(11)+x(20);
             2000000000.00001*x(1)*x(2)-1000000000*x(3)+1000000000*x(12)+x(21);
             200000000*x(1)*x(3)-100000000*x(2)-100000000*x(4)-100000000*x(11)+100000000*x(13)+x(22);
             20000000*x(1)*x(4)-10000000*x(3)-10000000*x(5)-10000000*x(12)+10000000*x(14)+x(23);
             2000000*x(1)*x(5)-1000000*x(4)-1000000*x(6)-1000000*x(13)+1000000*x(15)+x(24);
             200000*x(1)*x(6)-100000*x(5)-100000*x(7)-100000*x(14)+100000*x(16)+x(25);
             20000*x(1)*x(7)-10000*x(6)-10000*x(8)-10000*x(15)+10000*x(17)+x(26);
             2000*x(1)*x(8)-1000*x(7)-1000*x(9)-1000*x(16)+1000*x(18)+x(27);
             200*x(1)*x(9)-100*x(8)-100*x(10)-100*x(17)+100*x(19)+x(28);
             20*x(1)*x(10)-10*x(9)-10*x(18)+x(29);
             -x(10)-x(19)+x(30);
             -x(2)+1e-5*x(3)-1e-10*x(4)+x(31);
             -x(3)+2e-5*x(4)-3e-10*x(5)+x(32);
             -x(4)+3e-5*x(5)-6e-10*x(6)+x(33);
             -x(5)+4e-5*x(6)-1e-9*x(7)+x(34);
             -x(6)+5e-5*x(7)-1.5e-9*x(8)+x(35);
             -x(7)+6e-5*x(8)-2.1e-9*x(9)+x(36);
             -x(8)+7e-5*x(9)-2.8e-9*x(10)+x(37);
             -x(9)+8e-5*x(10)+x(38);
             -x(10)+x(39);
             -x(11)+1e-5*x(12)-1e-10*x(13)+x(40);
             -x(12)+2e-5*x(13)-3e-10*x(14)+x(41);
             -x(13)+3e-5*x(14)-6e-10*x(15)+x(42);
             -x(14)+4e-5*x(15)-1e-9*x(16)+x(43);
             -x(15)+5e-5*x(16)-1.5e-9*x(17)+x(44);
             -x(16)+6e-5*x(17)-2.1e-9*x(18)+x(45);
             -x(17)+7e-5*x(18)-2.8e-9*x(19)+x(46);
             -x(18)+8e-5*x(19)+x(47);
             -x(19)+x(48);
             -x(20)+1e-5*x(21)-1e-10*x(22)+x(49);
             -x(21)+2e-5*x(22)-3e-10*x(23)+x(50);
             -x(22)+3e-5*x(23)-6e-10*x(24)+x(51);
             -x(23)+4e-5*x(24)-1e-9*x(25)+x(52);
             -x(24)+5e-5*x(25)-1.5e-9*x(26)+x(53);
             -x(25)+6e-5*x(26)-2.1e-9*x(27)+x(54);
             -x(26)+7e-5*x(27)-2.8e-9*x(28)+x(55);
             -x(27)+8e-5*x(28)-3.6e-9*x(29)+x(56);
             -x(28)+9e-5*x(29)-4.5e-9*x(30)+x(57);
             -x(29)+0.0001*x(30)+x(58);
             -x(30)+x(59);
             -x(39)+x(60);
             -x(37)+x(61);
             -x(35)+x(62);
             -x(33)+x(63);
             -x(31)+x(64);
             -x(38)+x(65);
             -x(36)+x(66);
             -x(34)+x(67);
             -x(32)+x(68);
             x(69);
             x(60)*x(66)/x(65)-x(61)+x(70);
             x(60)*x(67)/x(65)-x(62)+x(71);
             x(60)*x(68)/x(65)-x(63)+x(72);
             x(60)*x(69)/x(65)-x(64)+x(73);
             x(65)*x(71)/x(70)-x(66)+x(75);
             x(65)*x(72)/x(70)-x(67)+x(76);
             x(65)*x(73)/x(70)-x(68)+x(77);
             x(65)*x(74)/x(70)-x(69)+x(78);
             x(70)*x(76)/x(75)-x(71)+x(80);
             x(70)*x(77)/x(75)-x(72)+x(81);
             x(70)*x(78)/x(75)-x(73)+x(82);
             x(70)*x(79)/x(75)-x(74)+x(83);
             x(75)*x(81)/x(80)-x(76)+x(85);
             x(75)*x(82)/x(80)-x(77)+x(86);
             x(75)*x(83)/x(80)-x(78)+x(87);
             x(75)*x(84)/x(80)-x(79)+x(88);
             x(80)*x(86)/x(85)-x(81)+x(90);
             x(80)*x(87)/x(85)-x(82)+x(91);
             x(80)*x(88)/x(85)-x(83)+x(92);
             x(80)*x(89)/x(85)-x(84)+x(93);
             x(85)*x(91)/x(90)-x(86)+x(95);
             x(85)*x(92)/x(90)-x(87)+x(96);
             x(85)*x(93)/x(90)-x(88)+x(97);
             x(85)*x(94)/x(90)-x(89)+x(98);
             x(74);
             x(79);
             x(84);
             x(89);
             x(94);
             x(99);
             -x(59)+x(100);
             -x(57)+x(101);
             -x(55)+x(102);
             -x(53)+x(103);
             -x(51)+x(104);
             -x(49)+x(105);
             -x(58)+x(106);
             -x(56)+x(107);
             -x(54)+x(108);
             -x(52)+x(109);
             -x(50)+x(110);
             x(111);
             x(100)*x(107)/x(106)-x(101)+x(112);
             x(100)*x(108)/x(106)-x(102)+x(113);
             x(100)*x(109)/x(106)-x(103)+x(114);
             x(100)*x(110)/x(106)-x(104)+x(115);
             x(100)*x(111)/x(106)-x(105)+x(116);
             x(106)*x(113)/x(112)-x(107)+x(118);
             x(106)*x(114)/x(112)-x(108)+x(119);
             x(106)*x(115)/x(112)-x(109)+x(120);
             x(106)*x(116)/x(112)-x(110)+x(121);
             x(106)*x(117)/x(112)-x(111)+x(122);
             x(112)*x(119)/x(118)-x(113)+x(124);
             x(112)*x(120)/x(118)-x(114)+x(125);
             x(112)*x(121)/x(118)-x(115)+x(126);
             x(112)*x(122)/x(118)-x(116)+x(127);
             x(112)*x(123)/x(118)-x(117)+x(128);
             x(118)*x(125)/x(124)-x(119)+x(130);
             x(118)*x(126)/x(124)-x(120)+x(131);
             x(118)*x(127)/x(124)-x(121)+x(132);
             x(118)*x(128)/x(124)-x(122)+x(133);
             x(118)*x(129)/x(124)-x(123)+x(134);
             x(124)*x(131)/x(130)-x(125)+x(136);
             x(124)*x(132)/x(130)-x(126)+x(137);
             x(124)*x(133)/x(130)-x(127)+x(138);
             x(124)*x(134)/x(130)-x(128)+x(139);
             x(124)*x(135)/x(130)-x(129)+x(140);
             x(130)*x(137)/x(136)-x(131)+x(142);
             x(130)*x(138)/x(136)-x(132)+x(143);
             x(130)*x(139)/x(136)-x(133)+x(144);
             x(130)*x(140)/x(136)-x(134)+x(145);
             x(130)*x(141)/x(136)-x(135)+x(146);
             x(136)*x(143)/x(142)-x(137)+x(148);
             x(136)*x(144)/x(142)-x(138)+x(149);
             x(136)*x(145)/x(142)-x(139)+x(150);
             x(136)*x(146)/x(142)-x(140)+x(151);
             x(136)*x(147)/x(142)-x(141)+x(152);
             x(142)*x(149)/x(148)-x(143)+x(154);
             x(142)*x(150)/x(148)-x(144)+x(155);
             x(142)*x(151)/x(148)-x(145)+x(156);
             x(142)*x(152)/x(148)-x(146)+x(157);
             x(142)*x(153)/x(148)-x(147)+x(158);
             x(117);
             x(123);
             x(129);
             x(135);
             x(141);
             x(147);
             x(153);
             x(159);
             x(46)*x(47)-x(45)*x(48)-1e-5*x(168);
             x(45)*x(46)*x(47)-x(45)*x(45)*x(48)+x(43)*x(47)*x(48)-x(44)*x(47)*x(47)-1e-5*x(167);
             x(44)*x(45)*x(46)*x(47)-x(45)^2*x(44)*x(48)-x(44)^2*x(47)^2+2*x(43)*x(44)*x(47)*x(48)+x(43)*x(45)*x(46)*x(48)-x(43)^2*x(48)^2-x(46)^2*x(43)*x(47)+x(42)*x(46)*x(47)^2-x(42)*x(45)*x(47)*x(48)-x(41)*x(46)*x(47)*x(48)+x(41)*x(45)*x(48)^2+(x(44)*x(45)-x(43)*x(46))*(1-x(167))-1e-5*x(166);
             x(41)*x(45)*x(46)^2*x(47)-x(43)^2*x(46)^2*x(47)+2*x(42)*x(43)*x(46)*x(47)^2-x(41)*x(44)*x(46)*x(47)^2-x(40)*x(45)*x(46)*x(47)^2+x(43)*x(44)*x(45)*x(46)*x(47)-x(41)*x(43)*x(46)*x(47)*x(48)-x(45)^2*x(42)*x(46)*x(47)+x(43)^2*x(45)*x(46)*x(48)-x(45)^2*x(41)*x(46)*x(48)+x(40)*x(44)*x(47)^3-x(42)^2*x(47)^3+x(42)*x(44)*x(45)*x(47)^2+2*x(41)*x(42)*x(47)^2*x(48)-x(40)*x(43)*x(47)^2*x(48)-x(44)^2*x(43)*x(47)^2-3*x(42)*x(43)*x(45)*x(47)*x(48)-x(41)^2*x(47)*x(48)^2+2*x(43)^2*x(44)*x(47)*x(48)+x(45)^2*x(40)*x(47)*x(48)-x(43)^3*x(48)^2-x(43)*x(44)*x(45)^2*x(48)+2*x(41)*x(43)*x(45)*x(48)^2+x(45)^3*x(42)*x(48)+(x(43)*x(44)*x(45)-x(43)^2*x(46)-x(45)^2*x(42)+x(41)*x(45)*x(46))*(1-x(167))-1e-5*x(165);
             x(41)^3*x(48)^3-x(40)*x(42)*x(45)*x(46)*x(47)^2+2*x(41)*x(42)*x(45)*x(46)^2*x(47)-x(40)^2*x(46)*x(47)^3+x(44)^3*x(41)*x(47)^2-x(43)^3*x(42)*x(48)^2-x(41)^2*x(46)^3*x(47)+2*x(40)*x(42)*x(44)*x(47)^3-x(44)^2*x(40)*x(45)*x(47)^2+2*x(40)*x(41)*x(46)^2*x(47)^2+x(42)^2*x(44)*x(45)*x(47)^2-x(42)^2*x(45)^2*x(46)*x(47)-3*x(41)^2*x(42)*x(47)*x(48)^2+x(40)*x(41)*x(45)^2*x(48)^2-2*x(41)^2*x(44)*x(45)*x(48)^2+x(40)^2*x(45)*x(47)^2*x(48)+3*x(42)^2*x(41)*x(47)^2*x(48)+x(41)^2*x(45)*x(46)^2*x(48)-x(40)*x(44)*x(45)^3*x(48)+x(44)^2*x(41)*x(45)^2*x(48)-3*x(41)*x(42)*x(44)*x(46)*x(47)^2+x(40)*x(44)*x(45)^2*x(46)*x(47)-x(44)^2*x(41)*x(45)*x(46)*x(47)+x(42)^2*x(45)^3*x(48)-2*x(40)*x(41)*x(44)*x(47)^2*x(48)+x(40)*x(42)*x(45)^2*x(47)*x(48)+x(41)*x(42)*x(44)*x(45)*x(47)*x(48)-3*x(40)*x(41)*x(45)*x(46)*x(47)*x(48)+3*x(41)^2*x(44)*x(46)*x(47)*x(48)-2*x(41)*x(42)*x(45)^2*x(46)*x(48)-x(41)^2*x(43)*x(46)*x(48)^2-x(42)*x(43)*x(44)^2*x(47)^2+2*x(42)^2*x(43)*x(46)*x(47)^2+x(43)^2*x(41)*x(44)*x(48)^2-x(43)^2*x(40)*x(45)*x(48)^2-x(43)^2*x(42)*x(46)^2*x(47)+x(40)*x(43)*x(45)^2*x(46)*x(48)-x(41)*x(43)*x(44)*x(45)*x(46)*x(48)-x(40)*x(43)*x(45)*x(46)^2*x(47)+x(42)*x(43)*x(44)*x(45)*x(46)*x(47)+x(41)*x(43)*x(44)*x(46)^2*x(47)+2*x(43)^2*x(42)*x(44)*x(47)*x(48)+x(43)^2*x(42)*x(45)*x(46)*x(48)+2*x(40)*x(41)*x(43)*x(47)*x(48)^2+3*x(41)*x(42)*x(43)*x(45)*x(48)^2-2*x(40)*x(42)*x(43)*x(47)^2*x(48)+2*x(40)*x(43)*x(44)*x(45)*x(47)*x(48)-3*x(42)^2*x(43)*x(45)*x(47)*x(48)-2*x(41)*x(43)*x(44)^2*x(47)*x(48)-x(41)*x(42)*x(43)*x(46)*x(47)*x(48)-x(42)*x(43)*x(44)*x(45)^2*x(48)-x(47)^3*x(42)^3+(x(42)*x(43)*x(44)*x(45)-x(43)^2*x(42)*x(46)-x(42)^2*x(45)^2+2*x(41)*x(42)*x(45)*x(46)+x(41)*x(43)*x(44)*x(46)-x(41)^2*x(46)^2-x(44)^2*x(41)*x(45)+x(40)*x(44)*x(45)^2-x(40)*x(43)*x(45)*x(46))*(1-x(167))+(x(42)*x(43)-x(41)*x(44))*(1-x(165))-1e-5*x(164);
             4*x(41)^2*x(40)*x(43)*x(47)*x(48)^2-2*x(40)*x(41)*x(44)*x(45)^3*x(48)-2*x(43)^3*x(40)*x(44)*x(47)*x(48)-4*x(40)^2*x(43)*x(45)^2*x(47)*x(48)+3*x(40)^2*x(43)*x(45)*x(46)*x(47)^2+4*x(40)^2*x(41)*x(45)*x(47)^2*x(48)+x(40)^2*x(44)*x(45)^2*x(47)^2-x(42)^3*x(41)*x(47)^3+x(43)^4*x(40)*x(48)^2+x(40)^2*x(48)*x(45)^4-2*x(40)*x(42)*x(43)^2*x(46)*x(47)^2-x(43)^3*x(40)*x(45)*x(46)*x(48)+x(43)^2*x(40)*x(44)*x(45)^2*x(48)-x(40)*x(42)*x(43)*x(45)^3*x(48)-4*x(40)*x(41)*x(43)^2*x(45)*x(48)^2-2*x(40)*x(41)*x(44)^2*x(45)*x(47)^2+3*x(40)*x(41)*x(42)*x(44)*x(47)^3-3*x(41)^2*x(40)*x(44)*x(47)^2*x(48)+4*x(40)*x(41)*x(43)*x(44)*x(45)*x(47)*x(48)-x(41)^3*x(43)*x(46)*x(48)^2-x(41)*x(42)*x(43)*x(44)*x(45)^2*x(48)+x(41)^2*x(44)^3*x(47)^2+2*x(41)^2*x(42)*x(45)*x(46)^2*x(47)+x(41)^2*x(43)*x(44)*x(46)^2*x(47)-x(41)^2*x(42)*x(43)*x(46)*x(47)*x(48)-x(41)^2*x(43)*x(44)*x(45)*x(46)*x(48)-2*x(41)^2*x(42)*x(45)^2*x(46)*x(48)-3*x(41)^2*x(42)*x(44)*x(46)*x(47)^2-x(41)^2*x(44)^2*x(45)*x(46)*x(47)+3*x(41)^2*x(42)*x(43)*x(45)*x(48)^2+x(41)^2*x(42)*x(44)*x(45)*x(47)*x(48)-2*x(41)^2*x(43)*x(44)^2*x(47)*x(48)+x(42)^2*x(41)*x(44)*x(45)*x(47)^2-x(42)^2*x(41)*x(45)^2*x(46)*x(47)+x(42)^2*x(41)*x(45)^3*x(48)-x(41)*x(42)*x(43)*x(44)^2*x(47)^2+2*x(42)^2*x(41)*x(43)*x(46)*x(47)^2-x(41)*x(42)*x(43)^2*x(46)^2*x(47)+x(41)*x(42)*x(43)*x(44)*x(45)*x(46)*x(47)+2*x(41)*x(42)*x(43)^2*x(44)*x(47)*x(48)+x(41)*x(42)*x(43)^2*x(45)*x(46)*x(48)-3*x(42)^2*x(41)*x(43)*x(45)*x(47)*x(48)+2*x(41)^2*x(40)*x(45)^2*x(48)^2+x(48)^3*x(41)^4+3*x(41)^2*x(40)*x(46)^2*x(47)^2+x(40)*x(42)*x(43)*x(45)^2*x(46)*x(47)-x(43)^2*x(40)*x(44)*x(45)*x(46)*x(47)-5*x(40)*x(41)*x(42)*x(43)*x(47)^2*x(48)+3*x(40)*x(41)*x(43)*x(45)^2*x(46)*x(48)+x(40)*x(41)*x(42)*x(45)^2*x(47)*x(48)+2*x(40)*x(41)*x(44)*x(45)^2*x(46)*x(47)-5*x(41)^2*x(40)*x(45)*x(46)*x(47)*x(48)-x(40)*x(42)*x(43)*x(44)*x(45)*x(47)^2+x(40)*x(41)*x(43)*x(44)*x(46)*x(47)^2+3*x(40)*x(42)*x(43)^2*x(45)*x(47)*x(48)+x(40)*x(41)*x(43)^2*x(46)*x(47)*x(48)-x(40)*x(41)*x(42)*x(45)*x(46)*x(47)^2-3*x(40)*x(41)*x(43)*x(45)*x(46)^2*x(47)-2*x(40)^2*x(43)*x(44)*x(47)^3-x(40)^2*x(42)*x(45)*x(47)^3-3*x(40)^2*x(41)*x(46)*x(47)^3+2*x(40)^2*x(43)^2*x(47)^2*x(48)-x(40)^2*x(45)^3*x(46)*x(47)+x(42)^2*x(40)*x(43)*x(47)^3+x(43)^2*x(40)*x(44)^2*x(47)^2+x(43)^3*x(40)*x(46)^2*x(47)-2*x(41)^3*x(44)*x(45)*x(48)^2+x(40)^3*x(47)^4+3*x(41)^3*x(44)*x(46)*x(47)*x(48)-3*x(41)^3*x(42)*x(47)*x(48)^2+x(41)^2*x(43)^2*x(44)*x(48)^2+3*x(41)^2*x(42)^2*x(47)^2*x(48)+x(41)^2*x(44)^2*x(45)^2*x(48)-x(41)*x(42)*x(43)^3*x(48)^2+x(41)^3*x(45)*x(46)^2*x(48)-x(41)^3*x(47)*x(46)^3+(x(43)^3*x(40)*x(46)-x(41)*x(42)*x(43)^2*x(46)-x(43)^2*x(40)*x(44)*x(45)-3*x(40)*x(41)*x(43)*x(45)*x(46)+x(41)^2*x(43)*x(46)*x(44)+x(41)*x(42)*x(43)*x(44)*x(45)+x(40)*x(42)*x(43)*x(45)^2-x(41)^3*x(46)^2+2*x(41)^2*x(42)*x(45)*x(46)-x(41)^2*x(44)^2*x(45)-x(42)^2*x(41)*x(45)^2+2*x(40)*x(41)*x(44)*x(45)^2-x(40)^2*x(45)^3)*(1-x(167))+(x(41)*x(42)*x(43)-x(41)^2*x(44)-x(43)^2*x(40))*(1-x(165))-1e-5*x(163)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBB';

% Starting Guess
x0 = [0.95,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,NaN,1e-05,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1e-05,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','bcp8');
opts.sense = 'max';