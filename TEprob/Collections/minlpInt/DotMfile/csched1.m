% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:13:30
% Model: csched1

% Objective
fun = @(x)x(77);

% Bounds
lb = [0,0,0,0.01,0.01,0.01,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,20,20,20,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(-x(13)*x(77))-(416000*(1-exp(-0.1*x(1)/x(4)))*x(4)+37440*x(1)-100*x(4)+124615.384615385*(1-exp(-0.13*x(2)/x(5)))*x(5)+9000*x(2)-90*x(5)+278666.666666667*(1-exp(-0.09*x(3)/x(6)))*x(6)+15840*x(3)-80*x(6));
             -1300*x(1)+x(7)+350*x(13);
             -1000*x(2)+x(8)+300*x(13);
             -1100*x(3)+x(9)+300*x(13);
             x(7)-300*x(13);
             x(8)-300*x(13);
             x(9)-300*x(13);
             x(4)-0.01*x(14)-x(15)-2*x(16)-3*x(17)-4*x(18)-5*x(19)-6*x(20)-7*x(21)-8*x(22)-9*x(23)-10*x(24)-11*x(25)-12*x(26)-13*x(27)-14*x(28)-15*x(29)-16*x(30)-17*x(31)-18*x(32)-19*x(33)-20*x(34);
             x(5)-0.01*x(35)-x(36)-2*x(37)-3*x(38)-4*x(39)-5*x(40)-6*x(41)-7*x(42)-8*x(43)-9*x(44)-10*x(45)-11*x(46)-12*x(47)-13*x(48)-14*x(49)-15*x(50)-16*x(51)-17*x(52)-18*x(53)-19*x(54)-20*x(55);
             x(6)-0.01*x(56)-x(57)-2*x(58)-3*x(59)-4*x(60)-5*x(61)-6*x(62)-7*x(63)-8*x(64)-9*x(65)-10*x(66)-11*x(67)-12*x(68)-13*x(69)-14*x(70)-15*x(71)-16*x(72)-17*x(73)-18*x(74)-19*x(75)-20*x(76);
             -x(14)-x(15)-x(16)-x(17)-x(18)-x(19)-x(20)-x(21)-x(22)-x(23)-x(24)-x(25)-x(26)-x(27)-x(28)-x(29)-x(30)-x(31)-x(32)-x(33)-x(34);
             -x(35)-x(36)-x(37)-x(38)-x(39)-x(40)-x(41)-x(42)-x(43)-x(44)-x(45)-x(46)-x(47)-x(48)-x(49)-x(50)-x(51)-x(52)-x(53)-x(54)-x(55);
             -x(56)-x(57)-x(58)-x(59)-x(60)-x(61)-x(62)-x(63)-x(64)-x(65)-x(66)-x(67)-x(68)-x(69)-x(70)-x(71)-x(72)-x(73)-x(74)-x(75)-x(76);
             -x(1)-2*x(4)+x(10);
             -x(2)-3*x(5)+x(11);
             -x(3)-3*x(6)+x(12);
             x(10)+x(11)+x(12)-x(13);
             x(1)+150*x(14);
             x(2)+150*x(35);
             x(3)+150*x(56);
             x(4);
             x(5);
             x(6)];
cl = [0,0,0,0,-Inf,-Inf,-Inf,0,0,0,-1,-1,-1,0,0,0,-Inf,-Inf,-Inf,-Inf,1,1,1]';
cu = [0,0,0,0,0,0,0,0,0,0,-1,-1,-1,0,0,0,0,150,150,150,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBC';

% Starting Guess
x0 = [NaN,NaN,NaN,0.01,0.01,0.01,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','csched1');
opts.sense = 'min';
