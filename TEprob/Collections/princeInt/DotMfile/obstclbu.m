% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 13:52:26
% Model: obstclbu

% Objective
fun = @(x)(0.25*x(11)-0.25*x(10))*(x(11)-x(10))+(0.25*x(17)-0.25*x(10))*(x(17)-x(10))+(0.25*x(9)-0.25*x(10))*(x(9)-x(10))+(0.25*x(1)-0.25*x(10))*(x(1)-x(10))-0.0123456790123457*x(10)+(0.25*x(18)-0.25*x(17))*(x(18)-x(17))+(0.25*x(24)-0.25*x(17))*(x(24)-x(17))+(0.25*x(16)-0.25*x(17))*(x(16)-x(17))+(0.25*x(10)-0.25*x(17))*(x(10)-x(17))-0.0123456790123457*x(17)+(0.25*x(25)-0.25*x(24))*(x(25)-x(24))+(0.25*x(76)-0.25*x(24))*(x(76)-x(24))+(0.25*x(23)-0.25*x(24))*(x(23)-x(24))+(0.25*x(17)-0.25*x(24))*(x(17)-x(24))-0.0123456790123457*x(24)+(0.25*x(77)-0.25*x(76))*(x(77)-x(76))+(0.25*x(81)-0.25*x(76))*(x(81)-x(76))+(0.25*x(30)-0.25*x(76))*(x(30)-x(76))+(0.25*x(24)-0.25*x(76))*(x(24)-x(76))-0.0123456790123457*x(76)+(0.25*x(82)-0.25*x(81))*(x(82)-x(81))+(0.25*x(86)-0.25*x(81))*(x(86)-x(81))+(0.25*x(35)-0.25*x(81))*(x(35)-x(81))+(0.25*x(76)-0.25*x(81))*(x(76)-x(81))-0.0123456790123457*x(81)+(0.25*x(87)-0.25*x(86))*(x(87)-x(86))+(0.25*x(46)-0.25*x(86))*(x(46)-x(86))+(0.25*x(40)-0.25*x(86))*(x(40)-x(86))+(0.25*x(81)-0.25*x(86))*(x(81)-x(86))-0.0123456790123457*x(86)+(0.25*x(47)-0.25*x(46))*(x(47)-x(46))+(0.25*x(53)-0.25*x(46))*(x(53)-x(46))+(0.25*x(45)-0.25*x(46))*(x(45)-x(46))+(0.25*x(86)-0.25*x(46))*(x(86)-x(46))-0.0123456790123457*x(46)+(0.25*x(54)-0.25*x(53))*(x(54)-x(53))+(0.25*x(59)-0.25*x(53))*(x(59)-x(53))+(0.25*x(52)-0.25*x(53))*(x(52)-x(53))+(0.25*x(46)-0.25*x(53))*(x(46)-x(53))-0.0123456790123457*x(53)+(0.25*x(12)-0.25*x(11))*(x(12)-x(11))+(0.25*x(18)-0.25*x(11))*(x(18)-x(11))+(0.25*x(10)-0.25*x(11))*(x(10)-x(11))+(0.25*x(2)-0.25*x(11))*(x(2)-x(11))-0.0123456790123457*x(11)+(0.25*x(19)-0.25*x(18))*(x(19)-x(18))+(0.25*x(25)-0.25*x(18))*(x(25)-x(18))+(0.25*x(17)-0.25*x(18))*(x(17)-x(18))+(0.25*x(11)-0.25*x(18))*(x(11)-x(18))-0.0123456790123457*x(18)+(0.25*x(26)-0.25*x(25))*(x(26)-x(25))+(0.25*x(77)-0.25*x(25))*(x(77)-x(25))+(0.25*x(24)-0.25*x(25))*(x(24)-x(25))+(0.25*x(18)-0.25*x(25))*(x(18)-x(25))-0.0123456790123457*x(25)+(0.25*x(78)-0.25*x(77))*(x(78)-x(77))+(0.25*x(82)-0.25*x(77))*(x(82)-x(77))+(0.25*x(76)-0.25*x(77))*(x(76)-x(77))+(0.25*x(25)-0.25*x(77))*(x(25)-x(77))-0.0123456790123457*x(77)+(0.25*x(83)-0.25*x(82))*(x(83)-x(82))+(0.25*x(87)-0.25*x(82))*(x(87)-x(82))+(0.25*x(81)-0.25*x(82))*(x(81)-x(82))+(0.25*x(77)-0.25*x(82))*(x(77)-x(82))-0.0123456790123457*x(82)+(0.25*x(88)-0.25*x(87))*(x(88)-x(87))+(0.25*x(47)-0.25*x(87))*(x(47)-x(87))+(0.25*x(86)-0.25*x(87))*(x(86)-x(87))+(0.25*x(82)-0.25*x(87))*(x(82)-x(87))-0.0123456790123457*x(87)+(0.25*x(48)-0.25*x(47))*(x(48)-x(47))+(0.25*x(54)-0.25*x(47))*(x(54)-x(47))+(0.25*x(46)-0.25*x(47))*(x(46)-x(47))+(0.25*x(87)-0.25*x(47))*(x(87)-x(47))-0.0123456790123457*x(47)+(0.25*x(55)-0.25*x(54))*(x(55)-x(54))+(0.25*x(60)-0.25*x(54))*(x(60)-x(54))+(0.25*x(53)-0.25*x(54))*(x(53)-x(54))+(0.25*x(47)-0.25*x(54))*(x(47)-x(54))-0.0123456790123457*x(54)+(0.25*x(67)-0.25*x(12))*(x(67)-x(12))+(0.25*x(19)-0.25*x(12))*(x(19)-x(12))+(0.25*x(11)-0.25*x(12))*(x(11)-x(12))+(0.25*x(3)-0.25*x(12))*(x(3)-x(12))-0.0123456790123457*x(12)+(0.25*x(70)-0.25*x(19))*(x(70)-x(19))+(0.25*x(26)-0.25*x(19))*(x(26)-x(19))+(0.25*x(18)-0.25*x(19))*(x(18)-x(19))+(0.25*x(12)-0.25*x(19))*(x(12)-x(19))-0.0123456790123457*x(19)+(0.25*x(73)-0.25*x(26))*(x(73)-x(26))+(0.25*x(78)-0.25*x(26))*(x(78)-x(26))+(0.25*x(25)-0.25*x(26))*(x(25)-x(26))+(0.25*x(19)-0.25*x(26))*(x(19)-x(26))-0.0123456790123457*x(26)+(0.25*x(31)-0.25*x(78))*(x(31)-x(78))+(0.25*x(83)-0.25*x(78))*(x(83)-x(78))+(0.25*x(77)-0.25*x(78))*(x(77)-x(78))+(0.25*x(26)-0.25*x(78))*(x(26)-x(78))-0.0123456790123457*x(78)+(0.25*x(36)-0.25*x(83))*(x(36)-x(83))+(0.25*x(88)-0.25*x(83))*(x(88)-x(83))+(0.25*x(82)-0.25*x(83))*(x(82)-x(83))+(0.25*x(78)-0.25*x(83))*(x(78)-x(83))-0.0123456790123457*x(83)+(0.25*x(41)-0.25*x(88))*(x(41)-x(88))+(0.25*x(48)-0.25*x(88))*(x(48)-x(88))+(0.25*x(87)-0.25*x(88))*(x(87)-x(88))+(0.25*x(83)-0.25*x(88))*(x(83)-x(88))-0.0123456790123457*x(88)+(0.25*x(91)-0.25*x(48))*(x(91)-x(48))+(0.25*x(55)-0.25*x(48))*(x(55)-x(48))+(0.25*x(47)-0.25*x(48))*(x(47)-x(48))+(0.25*x(88)-0.25*x(48))*(x(88)-x(48))-0.0123456790123457*x(48)+(0.25*x(94)-0.25*x(55))*(x(94)-x(55))+(0.25*x(61)-0.25*x(55))*(x(61)-x(55))+(0.25*x(54)-0.25*x(55))*(x(54)-x(55))+(0.25*x(48)-0.25*x(55))*(x(48)-x(55))-0.0123456790123457*x(55)+(0.25*x(68)-0.25*x(67))*(x(68)-x(67))+(0.25*x(70)-0.25*x(67))*(x(70)-x(67))+(0.25*x(12)-0.25*x(67))*(x(12)-x(67))+(0.25*x(4)-0.25*x(67))*(x(4)-x(67))-0.0123456790123457*x(67)+(0.25*x(71)-0.25*x(70))*(x(71)-x(70))+(0.25*x(73)-0.25*x(70))*(x(73)-x(70))+(0.25*x(19)-0.25*x(70))*(x(19)-x(70))+(0.25*x(67)-0.25*x(70))*(x(67)-x(70))-0.0123456790123457*x(70)+(0.25*x(74)-0.25*x(73))*(x(74)-x(73))+(0.25*x(31)-0.25*x(73))*(x(31)-x(73))+(0.25*x(26)-0.25*x(73))*(x(26)-x(73))+(0.25*x(70)-0.25*x(73))*(x(70)-x(73))-0.0123456790123457*x(73)+(0.25*x(32)-0.25*x(31))*(x(32)-x(31))+(0.25*x(36)-0.25*x(31))*(x(36)-x(31))+(0.25*x(78)-0.25*x(31))*(x(78)-x(31))+(0.25*x(73)-0.25*x(31))*(x(73)-x(31))-0.0123456790123457*x(31)+(0.25*x(37)-0.25*x(36))*(x(37)-x(36))+(0.25*x(41)-0.25*x(36))*(x(41)-x(36))+(0.25*x(83)-0.25*x(36))*(x(83)-x(36))+(0.25*x(31)-0.25*x(36))*(x(31)-x(36))-0.0123456790123457*x(36)+(0.25*x(42)-0.25*x(41))*(x(42)-x(41))+(0.25*x(91)-0.25*x(41))*(x(91)-x(41))+(0.25*x(88)-0.25*x(41))*(x(88)-x(41))+(0.25*x(36)-0.25*x(41))*(x(36)-x(41))-0.0123456790123457*x(41)+(0.25*x(92)-0.25*x(91))*(x(92)-x(91))+(0.25*x(94)-0.25*x(91))*(x(94)-x(91))+(0.25*x(48)-0.25*x(91))*(x(48)-x(91))+(0.25*x(41)-0.25*x(91))*(x(41)-x(91))-0.0123456790123457*x(91)+(0.25*x(95)-0.25*x(94))*(x(95)-x(94))+(0.25*x(62)-0.25*x(94))*(x(62)-x(94))+(0.25*x(55)-0.25*x(94))*(x(55)-x(94))+(0.25*x(91)-0.25*x(94))*(x(91)-x(94))-0.0123456790123457*x(94)+(0.25*x(69)-0.25*x(68))*(x(69)-x(68))+(0.25*x(71)-0.25*x(68))*(x(71)-x(68))+(0.25*x(67)-0.25*x(68))*(x(67)-x(68))+(0.25*x(5)-0.25*x(68))*(x(5)-x(68))-0.0123456790123457*x(68)+(0.25*x(72)-0.25*x(71))*(x(72)-x(71))+(0.25*x(74)-0.25*x(71))*(x(74)-x(71))+(0.25*x(70)-0.25*x(71))*(x(70)-x(71))+(0.25*x(68)-0.25*x(71))*(x(68)-x(71))-0.0123456790123457*x(71)+(0.25*x(75)-0.25*x(74))*(x(75)-x(74))+(0.25*x(32)-0.25*x(74))*(x(32)-x(74))+(0.25*x(73)-0.25*x(74))*(x(73)-x(74))+(0.25*x(71)-0.25*x(74))*(x(71)-x(74))-0.0123456790123457*x(74)+(0.25*x(33)-0.25*x(32))*(x(33)-x(32))+(0.25*x(37)-0.25*x(32))*(x(37)-x(32))+(0.25*x(31)-0.25*x(32))*(x(31)-x(32))+(0.25*x(74)-0.25*x(32))*(x(74)-x(32))-0.0123456790123457*x(32)+(0.25*x(38)-0.25*x(37))*(x(38)-x(37))+(0.25*x(42)-0.25*x(37))*(x(42)-x(37))+(0.25*x(36)-0.25*x(37))*(x(36)-x(37))+(0.25*x(32)-0.25*x(37))*(x(32)-x(37))-0.0123456790123457*x(37)+(0.25*x(43)-0.25*x(42))*(x(43)-x(42))+(0.25*x(92)-0.25*x(42))*(x(92)-x(42))+(0.25*x(41)-0.25*x(42))*(x(41)-x(42))+(0.25*x(37)-0.25*x(42))*(x(37)-x(42))-0.0123456790123457*x(42)+(0.25*x(93)-0.25*x(92))*(x(93)-x(92))+(0.25*x(95)-0.25*x(92))*(x(95)-x(92))+(0.25*x(91)-0.25*x(92))*(x(91)-x(92))+(0.25*x(42)-0.25*x(92))*(x(42)-x(92))-0.0123456790123457*x(92)+(0.25*x(96)-0.25*x(95))*(x(96)-x(95))+(0.25*x(63)-0.25*x(95))*(x(63)-x(95))+(0.25*x(94)-0.25*x(95))*(x(94)-x(95))+(0.25*x(92)-0.25*x(95))*(x(92)-x(95))-0.0123456790123457*x(95)+(0.25*x(13)-0.25*x(69))*(x(13)-x(69))+(0.25*x(72)-0.25*x(69))*(x(72)-x(69))+(0.25*x(68)-0.25*x(69))*(x(68)-x(69))+(0.25*x(6)-0.25*x(69))*(x(6)-x(69))-0.0123456790123457*x(69)+(0.25*x(20)-0.25*x(72))*(x(20)-x(72))+(0.25*x(75)-0.25*x(72))*(x(75)-x(72))+(0.25*x(71)-0.25*x(72))*(x(71)-x(72))+(0.25*x(69)-0.25*x(72))*(x(69)-x(72))-0.0123456790123457*x(72)+(0.25*x(27)-0.25*x(75))*(x(27)-x(75))+(0.25*x(33)-0.25*x(75))*(x(33)-x(75))+(0.25*x(74)-0.25*x(75))*(x(74)-x(75))+(0.25*x(72)-0.25*x(75))*(x(72)-x(75))-0.0123456790123457*x(75)+(0.25*x(79)-0.25*x(33))*(x(79)-x(33))+(0.25*x(38)-0.25*x(33))*(x(38)-x(33))+(0.25*x(32)-0.25*x(33))*(x(32)-x(33))+(0.25*x(75)-0.25*x(33))*(x(75)-x(33))-0.0123456790123457*x(33)+(0.25*x(84)-0.25*x(38))*(x(84)-x(38))+(0.25*x(43)-0.25*x(38))*(x(43)-x(38))+(0.25*x(37)-0.25*x(38))*(x(37)-x(38))+(0.25*x(33)-0.25*x(38))*(x(33)-x(38))-0.0123456790123457*x(38)+(0.25*x(89)-0.25*x(43))*(x(89)-x(43))+(0.25*x(93)-0.25*x(43))*(x(93)-x(43))+(0.25*x(42)-0.25*x(43))*(x(42)-x(43))+(0.25*x(38)-0.25*x(43))*(x(38)-x(43))-0.0123456790123457*x(43)+(0.25*x(49)-0.25*x(93))*(x(49)-x(93))+(0.25*x(96)-0.25*x(93))*(x(96)-x(93))+(0.25*x(92)-0.25*x(93))*(x(92)-x(93))+(0.25*x(43)-0.25*x(93))*(x(43)-x(93))-0.0123456790123457*x(93)+(0.25*x(56)-0.25*x(96))*(x(56)-x(96))+(0.25*x(64)-0.25*x(96))*(x(64)-x(96))+(0.25*x(95)-0.25*x(96))*(x(95)-x(96))+(0.25*x(93)-0.25*x(96))*(x(93)-x(96))-0.0123456790123457*x(96)+(0.25*x(14)-0.25*x(13))*(x(14)-x(13))+(0.25*x(20)-0.25*x(13))*(x(20)-x(13))+(0.25*x(69)-0.25*x(13))*(x(69)-x(13))+(0.25*x(7)-0.25*x(13))*(x(7)-x(13))-0.0123456790123457*x(13)+(0.25*x(21)-0.25*x(20))*(x(21)-x(20))+(0.25*x(27)-0.25*x(20))*(x(27)-x(20))+(0.25*x(72)-0.25*x(20))*(x(72)-x(20))+(0.25*x(13)-0.25*x(20))*(x(13)-x(20))-0.0123456790123457*x(20)+(0.25*x(28)-0.25*x(27))*(x(28)-x(27))+(0.25*x(79)-0.25*x(27))*(x(79)-x(27))+(0.25*x(75)-0.25*x(27))*(x(75)-x(27))+(0.25*x(20)-0.25*x(27))*(x(20)-x(27))-0.0123456790123457*x(27)+(0.25*x(80)-0.25*x(79))*(x(80)-x(79))+(0.25*x(84)-0.25*x(79))*(x(84)-x(79))+(0.25*x(33)-0.25*x(79))*(x(33)-x(79))+(0.25*x(27)-0.25*x(79))*(x(27)-x(79))-0.0123456790123457*x(79)+(0.25*x(85)-0.25*x(84))*(x(85)-x(84))+(0.25*x(89)-0.25*x(84))*(x(89)-x(84))+(0.25*x(38)-0.25*x(84))*(x(38)-x(84))+(0.25*x(79)-0.25*x(84))*(x(79)-x(84))-0.0123456790123457*x(84)+(0.25*x(90)-0.25*x(89))*(x(90)-x(89))+(0.25*x(49)-0.25*x(89))*(x(49)-x(89))+(0.25*x(43)-0.25*x(89))*(x(43)-x(89))+(0.25*x(84)-0.25*x(89))*(x(84)-x(89))-0.0123456790123457*x(89)+(0.25*x(50)-0.25*x(49))*(x(50)-x(49))+(0.25*x(56)-0.25*x(49))*(x(56)-x(49))+(0.25*x(93)-0.25*x(49))*(x(93)-x(49))+(0.25*x(89)-0.25*x(49))*(x(89)-x(49))-0.0123456790123457*x(49)+(0.25*x(57)-0.25*x(56))*(x(57)-x(56))+(0.25*x(65)-0.25*x(56))*(x(65)-x(56))+(0.25*x(96)-0.25*x(56))*(x(96)-x(56))+(0.25*x(49)-0.25*x(56))*(x(49)-x(56))-0.0123456790123457*x(56)+(0.25*x(15)-0.25*x(14))*(x(15)-x(14))+(0.25*x(21)-0.25*x(14))*(x(21)-x(14))+(0.25*x(13)-0.25*x(14))*(x(13)-x(14))+(0.25*x(8)-0.25*x(14))*(x(8)-x(14))-0.0123456790123457*x(14)+(0.25*x(22)-0.25*x(21))*(x(22)-x(21))+(0.25*x(28)-0.25*x(21))*(x(28)-x(21))+(0.25*x(20)-0.25*x(21))*(x(20)-x(21))+(0.25*x(14)-0.25*x(21))*(x(14)-x(21))-0.0123456790123457*x(21)+(0.25*x(29)-0.25*x(28))*(x(29)-x(28))+(0.25*x(80)-0.25*x(28))*(x(80)-x(28))+(0.25*x(27)-0.25*x(28))*(x(27)-x(28))+(0.25*x(21)-0.25*x(28))*(x(21)-x(28))-0.0123456790123457*x(28)+(0.25*x(34)-0.25*x(80))*(x(34)-x(80))+(0.25*x(85)-0.25*x(80))*(x(85)-x(80))+(0.25*x(79)-0.25*x(80))*(x(79)-x(80))+(0.25*x(28)-0.25*x(80))*(x(28)-x(80))-0.0123456790123457*x(80)+(0.25*x(39)-0.25*x(85))*(x(39)-x(85))+(0.25*x(90)-0.25*x(85))*(x(90)-x(85))+(0.25*x(84)-0.25*x(85))*(x(84)-x(85))+(0.25*x(80)-0.25*x(85))*(x(80)-x(85))-0.0123456790123457*x(85)+(0.25*x(44)-0.25*x(90))*(x(44)-x(90))+(0.25*x(50)-0.25*x(90))*(x(50)-x(90))+(0.25*x(89)-0.25*x(90))*(x(89)-x(90))+(0.25*x(85)-0.25*x(90))*(x(85)-x(90))-0.0123456790123457*x(90)+(0.25*x(51)-0.25*x(50))*(x(51)-x(50))+(0.25*x(57)-0.25*x(50))*(x(57)-x(50))+(0.25*x(49)-0.25*x(50))*(x(49)-x(50))+(0.25*x(90)-0.25*x(50))*(x(90)-x(50))-0.0123456790123457*x(50)+(0.25*x(58)-0.25*x(57))*(x(58)-x(57))+(0.25*x(66)-0.25*x(57))*(x(66)-x(57))+(0.25*x(56)-0.25*x(57))*(x(56)-x(57))+(0.25*x(50)-0.25*x(57))*(x(50)-x(57))-0.0123456790123457*x(57);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0.393779336635683,0.446718164607601,0.000265872388652867,0.284731206337994,0.540091619559498,0,0,0.422714108654355,0.479542863739741,0.00028540860154168,0.305653158750173,0.579777368473255,0,0,4.46613701041805e-05,5.06655464764993e-05,3.01545156014471e-08,3.22934308720114e-05,6.12557071109841e-05,0,0,0.313729929736426,0.458894413944559,0.00195097862552384,0,0,0.388220695333013,0.567852447535572,0.0024142110993906,0,0,0.00030693606948697,0.00044895699891943,1.90872994321731e-06,0,0,0.334451435972091,0.379414351459624,0.000225815307959009,0.241832803212606,0.458719899478336,0,0,0.477541853399075,0.541741529904379,0.000322427261749376,0.345297620634162,0.654976858900979,0,0,0,0,0,0,0,0,0,-0.339161156354068,-0.496092802521634,-0.00210912668488674,-0.364082603021477,-0.532545533291374,-0.00226410459791562,-3.84667262084016e-05,-5.62654822082178e-05,-2.39211351908692e-07,-0.364252690203117,-0.413222020767081,-0.000245936553311669,-0.263381285517649,-0.499594079926841,-0.450739375699278,-0.511335786049752,-0.000304330733808772,-0.325917472672333,-0.618215677593785,-0.000356364753356265,-0.000404273647038607,-2.40610766974242e-07,-0.000257677731356806,-0.000488775308624626,-0.288062184109774,-0.421350067772307,-0.00179135973571932,-0.411305602244286,-0.601618861970156,-0.0025577682027691]';
ub = [0,0,0,0,0,0,0,0,0,0.557240340085779,0.604371564257258,0.0241347458970552,0.45280278371302,0.683200674155107,0,0,0.583245627320611,0.632658253186744,0.024334889569585,0.473752738261658,0.71530311088386,0,0,0.02125879408843,0.0213692260533082,0.020009688017269,0.0210140891235141,0.0215539285228208,0,0,0.481711439422208,0.614942755737996,0.0356135505717738,0,0,0.552172532801311,0.705736081369553,0.0379963112116094,0,0,0.0245502153543299,0.0258632241503354,0.0201538732019207,0,0,0.501824312019127,0.544093977877458,0.0237082492668075,0.408159428737598,0.614791911017674,0,0,0.630952754382422,0.684550649172644,0.0247020564279926,0.512185774381034,0.774195558953462,0,0,0,0,0,0,0,0,0,0.506337104572388,0.646674395535926,0.0364463089471501,0.529878404719995,0.677008766287058,0.0372423976921895,0.0211395240203335,0.0214683447343979,0.020038534925497,0.530037191085347,0.574781927091204,0.023925383158772,0.430887827343088,0.649619527301265,0.607873205269559,0.659446368627957,0.0245244300215596,0.493592805168607,0.745704823264472,0.0250264707780689,0.0254674349115417,0.0200386850686286,0.0240493432504585,0.0262049674231537,0.456171715591109,0.582033296756697,0.0347498817613908,0.573065306952623,0.732657668246734,0.0387028355858038]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.557240340085779,0.604371564257258,0.0241347458970552,0.45280278371302,0.683200674155107,NaN,NaN,0.583245627320611,0.632658253186744,0.024334889569585,0.473752738261658,0.71530311088386,NaN,NaN,0.02125879408843,0.0213692260533082,0.020009688017269,0.0210140891235141,0.0215539285228208,NaN,NaN,0.481711439422208,0.614942755737996,0.0356135505717738,NaN,NaN,0.552172532801311,0.705736081369553,0.0379963112116094,NaN,NaN,0.0245502153543299,0.0258632241503354,0.0201538732019207,NaN,NaN,0.501824312019127,0.544093977877458,0.0237082492668075,0.408159428737598,0.614791911017674,NaN,NaN,0.630952754382422,0.684550649172644,0.0247020564279926,0.512185774381034,0.774195558953462,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.506337104572388,0.646674395535926,0.0364463089471501,0.529878404719995,0.677008766287058,0.0372423976921895,0.0211395240203335,0.0214683447343979,0.020038534925497,0.530037191085347,0.574781927091204,0.023925383158772,0.430887827343088,0.649619527301265,0.607873205269559,0.659446368627957,0.0245244300215596,0.493592805168607,0.745704823264472,0.0250264707780689,0.0254674349115417,0.0200386850686286,0.0240493432504585,0.0262049674231537,0.456171715591109,0.582033296756697,0.0347498817613908,0.573065306952623,0.732657668246734,0.0387028355858038]';

% Options
opts = struct('probname','obstclbu');
opts.sense = 'min';
