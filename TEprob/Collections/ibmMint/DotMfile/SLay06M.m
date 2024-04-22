% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:22
% Model: SLay06M

% Objective
fun = @(x)150*((-4+x(1))^2+(-10+x(7))^2)+390*((-10+x(2))^2+(-15+x(8))^2)+240*((-7+x(3))^2+(-9+x(9))^2)+70*((-3+x(4))^2+(-3+x(10))^2)+165*((-20+x(5))^2+(-17+x(11))^2)+100*((-18+x(6))^2+(-8+x(12))^2)+300*x(73)+240*x(74)+210*x(75)+140*x(76)+300*x(77)+100*x(78)+150*x(79)+220*x(80)+200*x(81)+120*x(82)+300*x(83)+150*x(84)+100*x(85)+120*x(86)+130*x(87)+300*x(88)+240*x(89)+210*x(90)+140*x(91)+300*x(92)+100*x(93)+150*x(94)+220*x(95)+200*x(96)+120*x(97)+300*x(98)+150*x(99)+100*x(100)+120*x(101)+130*x(102);

% Bounds
lb = [2.5,3.5,1.5,1,2,2.5,3,2.5,1.5,1.5,2,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [27.5,26.5,28.5,29,28,27.5,27,27.5,28.5,28.5,28,29,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)+x(2)+x(73);
             -x(1)+x(3)+x(74);
             -x(1)+x(4)+x(75);
             -x(1)+x(5)+x(76);
             -x(1)+x(6)+x(77);
             -x(2)+x(3)+x(78);
             -x(2)+x(4)+x(79);
             -x(2)+x(5)+x(80);
             -x(2)+x(6)+x(81);
             -x(3)+x(4)+x(82);
             -x(3)+x(5)+x(83);
             -x(3)+x(6)+x(84);
             -x(4)+x(5)+x(85);
             -x(4)+x(6)+x(86);
             -x(5)+x(6)+x(87);
             x(1)-x(2)+x(73);
             x(1)-x(3)+x(74);
             x(1)-x(4)+x(75);
             x(1)-x(5)+x(76);
             x(1)-x(6)+x(77);
             x(2)-x(3)+x(78);
             x(2)-x(4)+x(79);
             x(2)-x(5)+x(80);
             x(2)-x(6)+x(81);
             x(3)-x(4)+x(82);
             x(3)-x(5)+x(83);
             x(3)-x(6)+x(84);
             x(4)-x(5)+x(85);
             x(4)-x(6)+x(86);
             x(5)-x(6)+x(87);
             -x(7)+x(8)+x(88);
             -x(7)+x(9)+x(89);
             -x(7)+x(10)+x(90);
             -x(7)+x(11)+x(91);
             -x(7)+x(12)+x(92);
             -x(8)+x(9)+x(93);
             -x(8)+x(10)+x(94);
             -x(8)+x(11)+x(95);
             -x(8)+x(12)+x(96);
             -x(9)+x(10)+x(97);
             -x(9)+x(11)+x(98);
             -x(9)+x(12)+x(99);
             -x(10)+x(11)+x(100);
             -x(10)+x(12)+x(101);
             -x(11)+x(12)+x(102);
             x(7)-x(8)+x(88);
             x(7)-x(9)+x(89);
             x(7)-x(10)+x(90);
             x(7)-x(11)+x(91);
             x(7)-x(12)+x(92);
             x(8)-x(9)+x(93);
             x(8)-x(10)+x(94);
             x(8)-x(11)+x(95);
             x(8)-x(12)+x(96);
             x(9)-x(10)+x(97);
             x(9)-x(11)+x(98);
             x(9)-x(12)+x(99);
             x(10)-x(11)+x(100);
             x(10)-x(12)+x(101);
             x(11)-x(12)+x(102);
             x(1)-x(2)+30*x(13);
             x(1)-x(3)+30*x(14);
             x(1)-x(4)+30*x(15);
             x(1)-x(5)+30*x(16);
             x(1)-x(6)+30*x(17);
             x(2)-x(3)+30*x(18);
             x(2)-x(4)+30*x(19);
             x(2)-x(5)+30*x(20);
             x(2)-x(6)+30*x(21);
             x(3)-x(4)+30*x(22);
             x(3)-x(5)+30*x(23);
             x(3)-x(6)+30*x(24);
             x(4)-x(5)+30*x(25);
             x(4)-x(6)+30*x(26);
             x(5)-x(6)+30*x(27);
             -x(1)+x(2)+30*x(28);
             -x(1)+x(3)+30*x(29);
             -x(1)+x(4)+30*x(30);
             -x(1)+x(5)+30*x(31);
             -x(1)+x(6)+30*x(32);
             -x(2)+x(3)+30*x(33);
             -x(2)+x(4)+30*x(34);
             -x(2)+x(5)+30*x(35);
             -x(2)+x(6)+30*x(36);
             -x(3)+x(4)+30*x(37);
             -x(3)+x(5)+30*x(38);
             -x(3)+x(6)+30*x(39);
             -x(4)+x(5)+30*x(40);
             -x(4)+x(6)+30*x(41);
             -x(5)+x(6)+30*x(42);
             x(7)-x(8)+30*x(43);
             x(7)-x(9)+30*x(44);
             x(7)-x(10)+30*x(45);
             x(7)-x(11)+30*x(46);
             x(7)-x(12)+30*x(47);
             x(8)-x(9)+30*x(48);
             x(8)-x(10)+30*x(49);
             x(8)-x(11)+30*x(50);
             x(8)-x(12)+30*x(51);
             x(9)-x(10)+30*x(52);
             x(9)-x(11)+30*x(53);
             x(9)-x(12)+30*x(54);
             x(10)-x(11)+30*x(55);
             x(10)-x(12)+30*x(56);
             x(11)-x(12)+30*x(57);
             -x(7)+x(8)+30*x(58);
             -x(7)+x(9)+30*x(59);
             -x(7)+x(10)+30*x(60);
             -x(7)+x(11)+30*x(61);
             -x(7)+x(12)+30*x(62);
             -x(8)+x(9)+30*x(63);
             -x(8)+x(10)+30*x(64);
             -x(8)+x(11)+30*x(65);
             -x(8)+x(12)+30*x(66);
             -x(9)+x(10)+30*x(67);
             -x(9)+x(11)+30*x(68);
             -x(9)+x(12)+30*x(69);
             -x(10)+x(11)+30*x(70);
             -x(10)+x(12)+30*x(71);
             -x(11)+x(12)+30*x(72);
             x(13)+x(28)+x(43)+x(58);
             x(14)+x(29)+x(44)+x(59);
             x(15)+x(30)+x(45)+x(60);
             x(16)+x(31)+x(46)+x(61);
             x(17)+x(32)+x(47)+x(62);
             x(18)+x(33)+x(48)+x(63);
             x(19)+x(34)+x(49)+x(64);
             x(20)+x(35)+x(50)+x(65);
             x(21)+x(36)+x(51)+x(66);
             x(22)+x(37)+x(52)+x(67);
             x(23)+x(38)+x(53)+x(68);
             x(24)+x(39)+x(54)+x(69);
             x(25)+x(40)+x(55)+x(70);
             x(26)+x(41)+x(56)+x(71);
             x(27)+x(42)+x(57)+x(72)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,24,26,26.5,25.5,25,25,25.5,24.5,24,27.5,26.5,26,27,26.5,25.5,24,26,26.5,25.5,25,25,25.5,24.5,24,27.5,26.5,26,27,26.5,25.5,24.5,25.5,25.5,25,26,26,26,25.5,26.5,27,26.5,27.5,26.5,27.5,27,24.5,25.5,25.5,25,26,26,26,25.5,26.5,27,26.5,27.5,26.5,27.5,27,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [2.5,3.5,1.5,1,2,2.5,3,2.5,1.5,1.5,2,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','SLay06M');
opts.sense = 'min';
