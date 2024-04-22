% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:20
% Model: SLay05M

% Objective
fun = @(x)150*((-4+x(1))^2+(-10+x(6))^2)+390*((-10+x(2))^2+(-15+x(7))^2)+240*((-7+x(3))^2+(-9+x(8))^2)+70*((-3+x(4))^2+(-3+x(9))^2)+165*((-20+x(5))^2+(-17+x(10))^2)+300*x(51)+240*x(52)+210*x(53)+140*x(54)+100*x(55)+150*x(56)+220*x(57)+120*x(58)+300*x(59)+100*x(60)+300*x(61)+240*x(62)+210*x(63)+140*x(64)+100*x(65)+150*x(66)+220*x(67)+120*x(68)+300*x(69)+100*x(70);

% Bounds
lb = [2.5,3.5,1.5,1,2,3,2.5,1.5,1.5,2,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [27.5,26.5,28.5,29,28,27,27.5,28.5,28.5,28,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)+x(2)+x(51);
             -x(1)+x(3)+x(52);
             -x(1)+x(4)+x(53);
             -x(1)+x(5)+x(54);
             -x(2)+x(3)+x(55);
             -x(2)+x(4)+x(56);
             -x(2)+x(5)+x(57);
             -x(3)+x(4)+x(58);
             -x(3)+x(5)+x(59);
             -x(4)+x(5)+x(60);
             x(1)-x(2)+x(51);
             x(1)-x(3)+x(52);
             x(1)-x(4)+x(53);
             x(1)-x(5)+x(54);
             x(2)-x(3)+x(55);
             x(2)-x(4)+x(56);
             x(2)-x(5)+x(57);
             x(3)-x(4)+x(58);
             x(3)-x(5)+x(59);
             x(4)-x(5)+x(60);
             -x(6)+x(7)+x(61);
             -x(6)+x(8)+x(62);
             -x(6)+x(9)+x(63);
             -x(6)+x(10)+x(64);
             -x(7)+x(8)+x(65);
             -x(7)+x(9)+x(66);
             -x(7)+x(10)+x(67);
             -x(8)+x(9)+x(68);
             -x(8)+x(10)+x(69);
             -x(9)+x(10)+x(70);
             x(6)-x(7)+x(61);
             x(6)-x(8)+x(62);
             x(6)-x(9)+x(63);
             x(6)-x(10)+x(64);
             x(7)-x(8)+x(65);
             x(7)-x(9)+x(66);
             x(7)-x(10)+x(67);
             x(8)-x(9)+x(68);
             x(8)-x(10)+x(69);
             x(9)-x(10)+x(70);
             x(1)-x(2)+30*x(11);
             x(1)-x(3)+30*x(12);
             x(1)-x(4)+30*x(13);
             x(1)-x(5)+30*x(14);
             x(2)-x(3)+30*x(15);
             x(2)-x(4)+30*x(16);
             x(2)-x(5)+30*x(17);
             x(3)-x(4)+30*x(18);
             x(3)-x(5)+30*x(19);
             x(4)-x(5)+30*x(20);
             -x(1)+x(2)+30*x(21);
             -x(1)+x(3)+30*x(22);
             -x(1)+x(4)+30*x(23);
             -x(1)+x(5)+30*x(24);
             -x(2)+x(3)+30*x(25);
             -x(2)+x(4)+30*x(26);
             -x(2)+x(5)+30*x(27);
             -x(3)+x(4)+30*x(28);
             -x(3)+x(5)+30*x(29);
             -x(4)+x(5)+30*x(30);
             x(6)-x(7)+30*x(31);
             x(6)-x(8)+30*x(32);
             x(6)-x(9)+30*x(33);
             x(6)-x(10)+30*x(34);
             x(7)-x(8)+30*x(35);
             x(7)-x(9)+30*x(36);
             x(7)-x(10)+30*x(37);
             x(8)-x(9)+30*x(38);
             x(8)-x(10)+30*x(39);
             x(9)-x(10)+30*x(40);
             -x(6)+x(7)+30*x(41);
             -x(6)+x(8)+30*x(42);
             -x(6)+x(9)+30*x(43);
             -x(6)+x(10)+30*x(44);
             -x(7)+x(8)+30*x(45);
             -x(7)+x(9)+30*x(46);
             -x(7)+x(10)+30*x(47);
             -x(8)+x(9)+30*x(48);
             -x(8)+x(10)+30*x(49);
             -x(9)+x(10)+30*x(50);
             x(11)+x(21)+x(31)+x(41);
             x(12)+x(22)+x(32)+x(42);
             x(13)+x(23)+x(33)+x(43);
             x(14)+x(24)+x(34)+x(44);
             x(15)+x(25)+x(35)+x(45);
             x(16)+x(26)+x(36)+x(46);
             x(17)+x(27)+x(37)+x(47);
             x(18)+x(28)+x(38)+x(48);
             x(19)+x(29)+x(39)+x(49);
             x(20)+x(30)+x(40)+x(50)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,24,26,26.5,25.5,25,25.5,24.5,27.5,26.5,27,24,26,26.5,25.5,25,25.5,24.5,27.5,26.5,27,24.5,25.5,25.5,25,26,26,25.5,27,26.5,26.5,24.5,25.5,25.5,25,26,26,25.5,27,26.5,26.5,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [2.5,3.5,1.5,1,2,3,2.5,1.5,1.5,2,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','SLay05M');
opts.sense = 'min';
