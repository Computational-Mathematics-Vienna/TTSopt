% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:45:13
% Model: ortez

% Objective
fun = @(x)-300.544*x(22)-225.408*x(23)-150.272*x(24)-300.544*x(25)-225.408*x(26)-150.272*x(27)-300.544*x(28)-225.408*x(29)-150.272*x(30)-2.66666666666667*x(31)-4*x(32)-5.33333333333333*x(33)-2.66666666666667*x(34)-4*x(35)-5.33333333333333*x(36)-2.66666666666667*x(37)-4*x(38)-5.33333333333333*x(39)+1.33333333333333*x(67)+x(68)+x(69)+1.33333333333333*x(70)+x(71)+x(72)+1.33333333333333*x(73)+x(74)+x(75)+1.33333333333333*x(76)+x(77)+x(78)+1.33333333333333*x(79)+x(80)+x(81)+1.33333333333333*x(82)+x(83)+x(84);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,254,-Inf,-Inf]';
ub = [254.001,254.001,254.001,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,254,Inf,Inf]';

% Constraints
nlcon = @(x)[x(58)+x(61)+x(64);
             x(59)+x(62)+x(65);
             x(60)+x(63)+x(66);
             x(4)+x(5)+x(6)+x(13)+x(14)+x(15);
             x(7)+x(8)+x(9)+x(16)+x(17)+x(18);
             x(10)+x(11)+x(12)+x(19)+x(20)+x(21);
             -3.16363636363636*x(4)-3.16363636363636*x(5)-3.16363636363636*x(6)+56.3636363636364*x(58)+43.2*x(61)+33.8181818181818*x(64)-x(85)+x(86);
             -3.16363636363636*x(7)-3.16363636363636*x(8)-3.16363636363636*x(9)+56.3636363636364*x(59)+43.2*x(62)+33.8181818181818*x(65)-x(86)+x(87);
             -6.353*x(1)^0.172*x(40)+x(22)+x(23)+x(24);
             -6.353*x(2)^0.172*x(41)+x(25)+x(26)+x(27);
             -6.353*x(3)^0.172*x(42)+x(28)+x(29)+x(30);
             -0.32*x(1)^0.617*x(43)+x(31)+x(32)+x(33);
             -0.32*x(2)^0.617*x(44)+x(34)+x(35)+x(36);
             -0.32*x(3)^0.617*x(45)+x(37)+x(38)+x(39);
             x(22)+x(31)-50*x(58);
             x(25)+x(34)-50*x(59);
             x(28)+x(37)-50*x(60);
             x(23)+x(32)-50*x(61);
             x(26)+x(35)-50*x(62);
             x(29)+x(38)-50*x(63);
             x(24)+x(33)-50*x(64);
             x(27)+x(36)-50*x(65);
             x(30)+x(39)-50*x(66);
             x(4)+x(13)-x(58);
             x(7)+x(16)-x(59);
             x(10)+x(19)-x(60);
             x(5)+x(14)-x(61);
             x(8)+x(17)-x(62);
             x(11)+x(20)-x(63);
             x(6)+x(15)-x(64);
             x(9)+x(18)-x(65);
             x(12)+x(21)-x(66);
             -200*x(52)+x(85);
             -200*x(53)+x(86);
             -200*x(54)+x(87);
             -200*x(55)+x(85);
             -200*x(56)+x(86);
             -200*x(57)+x(87);
             -x(40)+x(52);
             -x(41)+x(53);
             -x(42)+x(54);
             -x(43)+x(55);
             -x(44)+x(56);
             -x(45)+x(57);
             -x(46)+x(49);
             -x(47)+x(50);
             -x(48)+x(51);
             x(85)*(1-x(46))-x(1);
             x(86)*(1-x(47))-x(2);
             x(87)*(1-x(48))-x(3);
             508*x(49)+x(85);
             508*x(50)+x(86);
             508*x(51)+x(87);
             508*x(49)+x(85);
             508*x(50)+x(86);
             508*x(51)+x(87);
             -81.9*x(40)*x(4)+x(67);
             -81.9*x(41)*x(7)+x(70);
             -81.9*x(42)*x(10)+x(73);
             -81.9*x(40)*x(5)+x(68);
             -81.9*x(41)*x(8)+x(71);
             -81.9*x(42)*x(11)+x(74);
             -54.6*x(40)*x(6)+x(69);
             -54.6*x(41)*x(9)+x(72);
             -54.6*x(42)*x(12)+x(75);
             -136.62*x(40)*x(13)+x(76);
             -136.62*x(41)*x(16)+x(79);
             -136.62*x(42)*x(19)+x(82);
             -136.62*x(40)*x(14)+x(77);
             -136.62*x(41)*x(17)+x(80);
             -136.62*x(42)*x(20)+x(83);
             -91.08*x(40)*x(15)+x(78);
             -91.08*x(41)*x(18)+x(81);
             -91.08*x(42)*x(21)+x(84)];
cl = [-Inf,-Inf,-Inf,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.001,-0.001,-0.001,200,200,200,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,708,708,708,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,254,NaN,NaN]';

% Options
opts = struct('probname','ortez');
opts.sense = 'min';
