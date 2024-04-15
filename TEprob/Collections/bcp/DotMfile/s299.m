% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 06-Jun-2016 04:12:10
% Model: s299

% Objective
fun = @(x)100*(x(2)-x(1)^2)^2+(1-x(1))^2+100*(x(3)-x(2)^2)^2+(1-x(2))^2+100*(x(4)-x(3)^2)^2+(1-x(3))^2+100*(x(5)-x(4)^2)^2+(1-x(4))^2+100*(x(6)-x(5)^2)^2+(1-x(5))^2+100*(x(7)-x(6)^2)^2+(1-x(6))^2+100*(x(8)-x(7)^2)^2+(1-x(7))^2+100*(x(9)-x(8)^2)^2+(1-x(8))^2+100*(x(10)-x(9)^2)^2+(1-x(9))^2+100*(x(11)-x(10)^2)^2+(1-x(10))^2+100*(x(12)-x(11)^2)^2+(1-x(11))^2+100*(x(13)-x(12)^2)^2+(1-x(12))^2+100*(x(14)-x(13)^2)^2+(1-x(13))^2+100*(x(15)-x(14)^2)^2+(1-x(14))^2+100*(x(16)-x(15)^2)^2+(1-x(15))^2+100*(x(17)-x(16)^2)^2+(1-x(16))^2+100*(x(18)-x(17)^2)^2+(1-x(17))^2+100*(x(19)-x(18)^2)^2+(1-x(18))^2+100*(x(20)-x(19)^2)^2+(1-x(19))^2+100*(x(21)-x(20)^2)^2+(1-x(20))^2+100*(x(22)-x(21)^2)^2+(1-x(21))^2+100*(x(23)-x(22)^2)^2+(1-x(22))^2+100*(x(24)-x(23)^2)^2+(1-x(23))^2+100*(x(25)-x(24)^2)^2+(1-x(24))^2+100*(x(26)-x(25)^2)^2+(1-x(25))^2+100*(x(27)-x(26)^2)^2+(1-x(26))^2+100*(x(28)-x(27)^2)^2+(1-x(27))^2+100*(x(29)-x(28)^2)^2+(1-x(28))^2+100*(x(30)-x(29)^2)^2+(1-x(29))^2+100*(x(31)-x(30)^2)^2+(1-x(30))^2+100*(x(32)-x(31)^2)^2+(1-x(31))^2+100*(x(33)-x(32)^2)^2+(1-x(32))^2+100*(x(34)-x(33)^2)^2+(1-x(33))^2+100*(x(35)-x(34)^2)^2+(1-x(34))^2+100*(x(36)-x(35)^2)^2+(1-x(35))^2+100*(x(37)-x(36)^2)^2+(1-x(36))^2+100*(x(38)-x(37)^2)^2+(1-x(37))^2+100*(x(39)-x(38)^2)^2+(1-x(38))^2+100*(x(40)-x(39)^2)^2+(1-x(39))^2+100*(x(41)-x(40)^2)^2+(1-x(40))^2+100*(x(42)-x(41)^2)^2+(1-x(41))^2+100*(x(43)-x(42)^2)^2+(1-x(42))^2+100*(x(44)-x(43)^2)^2+(1-x(43))^2+100*(x(45)-x(44)^2)^2+(1-x(44))^2+100*(x(46)-x(45)^2)^2+(1-x(45))^2+100*(x(47)-x(46)^2)^2+(1-x(46))^2+100*(x(48)-x(47)^2)^2+(1-x(47))^2+100*(x(49)-x(48)^2)^2+(1-x(48))^2+100*(x(50)-x(49)^2)^2+(1-x(49))^2+100*(x(51)-x(50)^2)^2+(1-x(50))^2+100*(x(52)-x(51)^2)^2+(1-x(51))^2+100*(x(53)-x(52)^2)^2+(1-x(52))^2+100*(x(54)-x(53)^2)^2+(1-x(53))^2+100*(x(55)-x(54)^2)^2+(1-x(54))^2+100*(x(56)-x(55)^2)^2+(1-x(55))^2+100*(x(57)-x(56)^2)^2+(1-x(56))^2+100*(x(58)-x(57)^2)^2+(1-x(57))^2+100*(x(59)-x(58)^2)^2+(1-x(58))^2+100*(x(60)-x(59)^2)^2+(1-x(59))^2+100*(x(61)-x(60)^2)^2+(1-x(60))^2+100*(x(62)-x(61)^2)^2+(1-x(61))^2+100*(x(63)-x(62)^2)^2+(1-x(62))^2+100*(x(64)-x(63)^2)^2+(1-x(63))^2+100*(x(65)-x(64)^2)^2+(1-x(64))^2+100*(x(66)-x(65)^2)^2+(1-x(65))^2+100*(x(67)-x(66)^2)^2+(1-x(66))^2+100*(x(68)-x(67)^2)^2+(1-x(67))^2+100*(x(69)-x(68)^2)^2+(1-x(68))^2+100*(x(70)-x(69)^2)^2+(1-x(69))^2+100*(x(71)-x(70)^2)^2+(1-x(70))^2+100*(x(72)-x(71)^2)^2+(1-x(71))^2+100*(x(73)-x(72)^2)^2+(1-x(72))^2+100*(x(74)-x(73)^2)^2+(1-x(73))^2+100*(x(75)-x(74)^2)^2+(1-x(74))^2+100*(x(76)-x(75)^2)^2+(1-x(75))^2+100*(x(77)-x(76)^2)^2+(1-x(76))^2+100*(x(78)-x(77)^2)^2+(1-x(77))^2+100*(x(79)-x(78)^2)^2+(1-x(78))^2+100*(x(80)-x(79)^2)^2+(1-x(79))^2+100*(x(81)-x(80)^2)^2+(1-x(80))^2+100*(x(82)-x(81)^2)^2+(1-x(81))^2+100*(x(83)-x(82)^2)^2+(1-x(82))^2+100*(x(84)-x(83)^2)^2+(1-x(83))^2+100*(x(85)-x(84)^2)^2+(1-x(84))^2+100*(x(86)-x(85)^2)^2+(1-x(85))^2+100*(x(87)-x(86)^2)^2+(1-x(86))^2+100*(x(88)-x(87)^2)^2+(1-x(87))^2+100*(x(89)-x(88)^2)^2+(1-x(88))^2+100*(x(90)-x(89)^2)^2+(1-x(89))^2+100*(x(91)-x(90)^2)^2+(1-x(90))^2+100*(x(92)-x(91)^2)^2+(1-x(91))^2+100*(x(93)-x(92)^2)^2+(1-x(92))^2+100*(x(94)-x(93)^2)^2+(1-x(93))^2+100*(x(95)-x(94)^2)^2+(1-x(94))^2+100*(x(96)-x(95)^2)^2+(1-x(95))^2+100*(x(97)-x(96)^2)^2+(1-x(96))^2+100*(x(98)-x(97)^2)^2+(1-x(97))^2+100*(x(99)-x(98)^2)^2+(1-x(98))^2+100*(x(100)-x(99)^2)^2+(1-x(99))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2,-1.2]';

% Options
opts = struct('probname','s299');
opts.sense = 'min';
