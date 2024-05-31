% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:04:05
% Model: weapon

% Objective
fun = @(x)60*exp(-0.174353387144778*x(21))*exp(-0.0408219945202552*x(41))*exp(-0.083381608939051*x(81))+50*exp(-0.0512932943875506*x(2))*exp(-0.186329578191493*x(22))*exp(-0.0512932943875506*x(42))*exp(-0.0618754037180875*x(82))+50*exp(-0.162518929497775*x(23))*exp(-0.0408219945202552*x(43))*exp(-0.083381608939051*x(83))+75*exp(-0.174353387144778*x(24))*exp(-0.0408219945202552*x(44))*exp(-0.0512932943875506*x(84))+40*exp(-0.162518929497775*x(25))*exp(-0.0408219945202552*x(45))*exp(-0.0512932943875506*x(85))+60*exp(-0.162518929497775*x(6))*exp(-0.210721031315653*x(26))*exp(-0.105360515657826*x(46))*exp(-0.0202027073175195*x(86))+35*exp(-0.105360515657826*x(7))*exp(-0.210721031315653*x(27))*exp(-0.083381608939051*x(47))*exp(-0.0202027073175195*x(87))+30*exp(-0.162518929497775*x(8))*exp(-0.198450938723838*x(28))*exp(-0.0943106794712413*x(48))+25*exp(-0.22314355131421*x(9))*exp(-0.22314355131421*x(29))*exp(-0.083381608939051*x(49))+150*exp(-0.150822889734584*x(30))*exp(-0.0512932943875506*x(50))*exp(-0.0408219945202552*x(70))*exp(-0.105360515657826*x(90))+30*exp(-0.0100503358535015*x(51))*exp(-0.0943106794712413*x(71))*exp(-0.0512932943875506*x(91))+45*exp(-0.0202027073175195*x(32))*exp(-0.0202027073175195*x(52))*exp(-0.083381608939051*x(72))*exp(-0.0408219945202552*x(92))+125*exp(-0.0100503358535015*x(53))*exp(-0.0943106794712413*x(73))*exp(-0.0943106794712413*x(93))+200*exp(-0.127833371509885*x(34))*exp(-0.0202027073175195*x(54))*exp(-0.083381608939051*x(74))*exp(-0.0202027073175195*x(94))+200*exp(-0.139262067333508*x(35))*exp(-0.0304592074847086*x(55))*exp(-0.0202027073175195*x(75))*exp(-0.0100503358535015*x(95))+130*exp(-0.127833371509885*x(36))*exp(-0.0202027073175195*x(56))*exp(-0.0725706928348354*x(76))*exp(-0.0100503358535015*x(96))+100*exp(-0.162518929497775*x(37))*exp(-0.0512932943875506*x(57))+100*exp(-0.0512932943875506*x(18))*exp(-0.174353387144778*x(38))*exp(-0.083381608939051*x(58))+100*exp(-0.162518929497775*x(39))*exp(-0.0725706928348354*x(59))+150*exp(-0.162518929497775*x(40))*exp(-0.083381608939051*x(60))-1755;

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(21)+x(41)+x(61)+x(81);
             x(6)+x(26)+x(46)+x(66)+x(86);
             x(10)+x(30)+x(50)+x(70)+x(90);
             x(14)+x(34)+x(54)+x(74)+x(94);
             x(15)+x(35)+x(55)+x(75)+x(95);
             x(16)+x(36)+x(56)+x(76)+x(96);
             x(20)+x(40)+x(60)+x(80)+x(100);
             -x(1)-x(2)-x(3)-x(4)-x(5)-x(6)-x(7)-x(8)-x(9)-x(10)-x(11)-x(12)-x(13)-x(14)-x(15)-x(16)-x(17)-x(18)-x(19)-x(20);
             -x(21)-x(22)-x(23)-x(24)-x(25)-x(26)-x(27)-x(28)-x(29)-x(30)-x(31)-x(32)-x(33)-x(34)-x(35)-x(36)-x(37)-x(38)-x(39)-x(40);
             -x(41)-x(42)-x(43)-x(44)-x(45)-x(46)-x(47)-x(48)-x(49)-x(50)-x(51)-x(52)-x(53)-x(54)-x(55)-x(56)-x(57)-x(58)-x(59)-x(60);
             -x(61)-x(62)-x(63)-x(64)-x(65)-x(66)-x(67)-x(68)-x(69)-x(70)-x(71)-x(72)-x(73)-x(74)-x(75)-x(76)-x(77)-x(78)-x(79)-x(80);
             -x(81)-x(82)-x(83)-x(84)-x(85)-x(86)-x(87)-x(88)-x(89)-x(90)-x(91)-x(92)-x(93)-x(94)-x(95)-x(96)-x(97)-x(98)-x(99)-x(100)];
cl = [30,100,40,50,70,35,10,-200,-100,-300,-150,-250]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','weapon');
opts.sense = 'min';