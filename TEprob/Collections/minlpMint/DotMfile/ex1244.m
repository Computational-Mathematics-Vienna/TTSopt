% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:32
% Model: ex1244

% Objective
fun = @(x)17600*x(21)/(x(44)+x(45))+17600*x(22)/(x(45)+x(46))+17600*x(23)/(x(46)+x(47))+1920*x(24)/(x(48)+x(49))+1920*x(25)/(x(49)+x(50))+1920*x(26)/(x(50)+x(51))+20000*x(27)/(x(52)+x(53))+20000*x(28)/(x(53)+x(54))+20000*x(29)/(x(54)+x(55))+4320*x(30)/(x(56)+x(57))+4320*x(31)/(x(57)+x(58))+4320*x(32)/(x(58)+x(59))+16320*x(33)/(x(60)+x(61))+16320*x(34)/(x(61)+x(62))+16320*x(35)/(x(62)+x(63))+640*x(36)/(x(64)+x(65))+640*x(37)/(x(65)+x(66))+640*x(38)/(x(66)+x(67))+2400*x(39)/(57+x(68))+4800*x(40)/(60+x(69))+1120*x(41)/(70+x(70))+19200*x(42)/(173+x(71))+3520*x(43)/(35+x(72))+110*x(42)+110*x(43)+10*x(39)+10*x(40)+10*x(41)+7400*x(73)+7400*x(74)+7400*x(75)+7400*x(76)+7400*x(77)+7400*x(78)+7400*x(79)+7400*x(80)+7400*x(81)+7400*x(82)+7400*x(83)+7400*x(84)+7400*x(85)+7400*x(86)+7400*x(87)+7400*x(88)+7400*x(89)+7400*x(90)+7400*x(91)+7400*x(92)+7400*x(93)+7400*x(94)+7400*x(95);

% Bounds
lb = [77,77,77,77,80,80,80,80,90,90,90,90,26,26,26,26,118,118,118,118,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [159,159,159,159,267,267,267,267,343,343,343,343,127,127,127,127,265,265,265,265,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(21)+x(22)+x(23)+x(24)+x(25)+x(26)+x(39);
             x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(40);
             x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(41);
             x(21)+x(22)+x(23)+x(27)+x(28)+x(29)+x(33)+x(34)+x(35)+x(42);
             x(24)+x(25)+x(26)+x(30)+x(31)+x(32)+x(36)+x(37)+x(38)+x(43);
             2.285*x(1)-2.285*x(2)-x(21)-x(24);
             2.285*x(2)-2.285*x(3)-x(22)-x(25);
             2.285*x(3)-2.285*x(4)-x(23)-x(26);
             0.204*x(5)-0.204*x(6)-x(27)-x(30);
             0.204*x(6)-0.204*x(7)-x(28)-x(31);
             0.204*x(7)-0.204*x(8)-x(29)-x(32);
             0.538*x(9)-0.538*x(10)-x(33)-x(36);
             0.538*x(10)-0.538*x(11)-x(34)-x(37);
             0.538*x(11)-0.538*x(12)-x(35)-x(38);
             0.933*x(13)-0.933*x(14)-x(21)-x(27)-x(33);
             0.933*x(14)-0.933*x(15)-x(22)-x(28)-x(34);
             0.933*x(15)-0.933*x(16)-x(23)-x(29)-x(35);
             1.961*x(17)-1.961*x(18)-x(24)-x(30)-x(36);
             1.961*x(18)-1.961*x(19)-x(25)-x(31)-x(37);
             1.961*x(19)-1.961*x(20)-x(26)-x(32)-x(38);
             x(1);
             x(5);
             x(9);
             x(15);
             x(19);
             -x(1)+x(2);
             -x(2)+x(3);
             -x(3)+x(4);
             -x(5)+x(6);
             -x(6)+x(7);
             -x(7)+x(8);
             -x(9)+x(10);
             -x(10)+x(11);
             -x(11)+x(12);
             -x(13)+x(14);
             -x(14)+x(15);
             -x(15)+x(16);
             -x(17)+x(18);
             -x(18)+x(19);
             -x(19)+x(20);
             -x(3);
             -x(7);
             -x(11);
             x(13);
             x(17);
             2.285*x(3)-x(39);
             0.204*x(7)-x(40);
             0.538*x(11)-x(41);
             0.933*x(13)+x(42);
             1.961*x(17)+x(43);
             x(21)-94.233*x(73);
             x(22)-94.233*x(74);
             x(23)-94.233*x(75);
             x(24)-187.37*x(76);
             x(25)-187.37*x(77);
             x(26)-187.37*x(78);
             x(27)-38.148*x(79);
             x(28)-38.148*x(80);
             x(29)-38.148*x(81);
             x(30)-38.148*x(82);
             x(31)-38.148*x(83);
             x(32)-38.148*x(84);
             x(33)-94.233*x(85);
             x(34)-94.233*x(86);
             x(35)-94.233*x(87);
             x(36)-136.114*x(88);
             x(37)-136.114*x(89);
             x(38)-136.114*x(90);
             x(39)-187.37*x(91);
             x(40)-38.148*x(92);
             x(41)-136.114*x(93);
             x(42)-94.233*x(94);
             x(43)-288.267*x(95);
             -x(1)+x(13)+x(44)+133*x(73);
             -x(2)+x(14)+x(45)+133*x(74);
             -x(3)+x(15)+x(46)+133*x(75);
             -x(1)+x(17)+x(48)+41*x(76);
             -x(2)+x(18)+x(49)+41*x(77);
             -x(3)+x(19)+x(50)+41*x(78);
             -x(5)+x(13)+x(52)+241*x(79);
             -x(6)+x(14)+x(53)+241*x(80);
             -x(7)+x(15)+x(54)+241*x(81);
             -x(5)+x(17)+x(56)+149*x(82);
             -x(6)+x(18)+x(57)+149*x(83);
             -x(7)+x(19)+x(58)+149*x(84);
             -x(9)+x(13)+x(60)+317*x(85);
             -x(10)+x(14)+x(61)+317*x(86);
             -x(11)+x(15)+x(62)+317*x(87);
             -x(9)+x(17)+x(64)+225*x(88);
             -x(10)+x(18)+x(65)+225*x(89);
             -x(11)+x(19)+x(66)+225*x(90);
             -x(2)+x(14)+x(45)+133*x(73);
             -x(3)+x(15)+x(46)+133*x(74);
             -x(4)+x(16)+x(47)+133*x(75);
             -x(2)+x(18)+x(49)+41*x(76);
             -x(3)+x(19)+x(50)+41*x(77);
             -x(4)+x(20)+x(51)+41*x(78);
             -x(6)+x(14)+x(53)+241*x(79);
             -x(7)+x(15)+x(54)+241*x(80);
             -x(8)+x(16)+x(55)+241*x(81);
             -x(6)+x(18)+x(57)+149*x(82);
             -x(7)+x(19)+x(58)+149*x(83);
             -x(8)+x(20)+x(59)+149*x(84);
             -x(10)+x(14)+x(61)+317*x(85);
             -x(11)+x(15)+x(62)+317*x(86);
             -x(12)+x(16)+x(63)+317*x(87);
             -x(10)+x(18)+x(65)+225*x(88);
             -x(11)+x(19)+x(66)+225*x(89);
             -x(12)+x(20)+x(67)+225*x(90);
             -x(3)+x(68);
             -x(7)+x(69);
             -x(11)+x(70);
             x(13)+x(71);
             x(17)+x(72);
             x(73)+x(79)+x(85);
             x(74)+x(80)+x(86);
             x(75)+x(81)+x(87);
             x(76)+x(82)+x(88);
             x(77)+x(83)+x(89);
             x(78)+x(84)+x(90);
             x(73)+x(76);
             x(74)+x(77);
             x(75)+x(78);
             x(79)+x(82);
             x(80)+x(83);
             x(81)+x(84);
             x(85)+x(88);
             x(86)+x(89);
             x(87)+x(90)];
cl = [187.37,38.148,136.114,94.233,288.267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,159,267,343,26,118,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,175.945,16.32,48.42,118.491,519.665,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [187.37,38.148,136.114,94.233,288.267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,159,267,343,26,118,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-77,-80,-90,127,265,175.945,16.32,48.42,118.491,519.665,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,133,133,133,41,41,41,241,241,241,149,149,149,317,317,317,225,225,225,133,133,133,41,41,41,241,241,241,149,149,149,317,317,317,225,225,225,-60,-60,-60,300,300,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [77,77,77,77,80,80,80,80,90,90,90,90,26,26,26,26,118,118,118,118,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1244');
opts.sense = 'min';