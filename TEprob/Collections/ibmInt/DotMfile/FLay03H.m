% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 21-Jun-2014 09:14:32
% Model: FLay03H

% Objective
fun = @(x)2*x(13)+2*x(14);

% Bounds
lb = [0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [29,29,29,29,29,29,40,50,60,40,50,60,30,30,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(7)+x(13);
             -x(2)-x(8)+x(13);
             -x(3)-x(9)+x(13);
             -x(4)-x(10)+x(14);
             -x(5)-x(11)+x(14);
             -x(6)-x(12)+x(14);
             40/x(10)-x(7);
             50/x(11)-x(8);
             60/x(12)-x(9);
             x(1)-x(15)-x(17)-x(19)-x(21);
             x(1)-x(16)-x(18)-x(20)-x(22);
             x(2)-x(23)-x(25)-x(27)-x(29);
             x(2)-x(24)-x(26)-x(28)-x(30);
             x(3)-x(31)-x(33)-x(35)-x(37);
             x(3)-x(32)-x(34)-x(36)-x(38);
             x(4)-x(39)-x(41)-x(43)-x(45);
             x(4)-x(40)-x(42)-x(44)-x(46);
             x(5)-x(47)-x(49)-x(51)-x(53);
             x(5)-x(48)-x(50)-x(52)-x(54);
             x(6)-x(55)-x(57)-x(59)-x(61);
             x(6)-x(56)-x(58)-x(60)-x(62);
             x(7)-x(63)-x(65)-x(67)-x(69);
             x(7)-x(64)-x(66)-x(68)-x(70);
             x(8)-x(71)-x(73)-x(75)-x(77);
             x(8)-x(72)-x(74)-x(76)-x(78);
             x(9)-x(79)-x(81)-x(83)-x(85);
             x(9)-x(80)-x(82)-x(84)-x(86);
             x(10)-x(87)-x(89)-x(91)-x(93);
             x(10)-x(88)-x(90)-x(92)-x(94);
             x(11)-x(95)-x(97)-x(99)-x(101);
             x(11)-x(96)-x(98)-x(100)-x(102);
             x(12)-x(103)-x(105)-x(107)-x(109);
             x(12)-x(104)-x(106)-x(108)-x(110);
             x(15)-29*x(111);
             x(16)-29*x(112);
             x(17)-29*x(114);
             x(18)-29*x(115);
             x(19)-29*x(117);
             x(20)-29*x(118);
             x(21)-29*x(120);
             x(22)-29*x(121);
             x(23)-29*x(111);
             x(24)-29*x(113);
             x(25)-29*x(114);
             x(26)-29*x(116);
             x(27)-29*x(117);
             x(28)-29*x(119);
             x(29)-29*x(120);
             x(30)-29*x(122);
             x(31)-29*x(112);
             x(32)-29*x(113);
             x(33)-29*x(115);
             x(34)-29*x(116);
             x(35)-29*x(118);
             x(36)-29*x(119);
             x(37)-29*x(121);
             x(38)-29*x(122);
             x(39)-29*x(111);
             x(40)-29*x(112);
             x(41)-29*x(114);
             x(42)-29*x(115);
             x(43)-29*x(117);
             x(44)-29*x(118);
             x(45)-29*x(120);
             x(46)-29*x(121);
             x(47)-29*x(111);
             x(48)-29*x(113);
             x(49)-29*x(114);
             x(50)-29*x(116);
             x(51)-29*x(117);
             x(52)-29*x(119);
             x(53)-29*x(120);
             x(54)-29*x(122);
             x(55)-29*x(112);
             x(56)-29*x(113);
             x(57)-29*x(115);
             x(58)-29*x(116);
             x(59)-29*x(118);
             x(60)-29*x(119);
             x(61)-29*x(121);
             x(62)-29*x(122);
             x(63)-40*x(111);
             x(64)-40*x(112);
             x(65)-40*x(114);
             x(66)-40*x(115);
             x(67)-40*x(117);
             x(68)-40*x(118);
             x(69)-40*x(120);
             x(70)-40*x(121);
             x(71)-40*x(111);
             x(72)-50*x(113);
             x(73)-40*x(114);
             x(74)-50*x(116);
             x(75)-40*x(117);
             x(76)-50*x(119);
             x(77)-40*x(120);
             x(78)-50*x(122);
             x(79)-40*x(112);
             x(80)-50*x(113);
             x(81)-40*x(115);
             x(82)-50*x(116);
             x(83)-40*x(118);
             x(84)-50*x(119);
             x(85)-40*x(121);
             x(86)-50*x(122);
             x(87)-40*x(111);
             x(88)-40*x(112);
             x(89)-40*x(114);
             x(90)-40*x(115);
             x(91)-40*x(117);
             x(92)-40*x(118);
             x(93)-40*x(120);
             x(94)-40*x(121);
             x(95)-40*x(111);
             x(96)-50*x(113);
             x(97)-40*x(114);
             x(98)-50*x(116);
             x(99)-40*x(117);
             x(100)-50*x(119);
             x(101)-40*x(120);
             x(102)-50*x(122);
             x(103)-40*x(112);
             x(104)-50*x(113);
             x(105)-40*x(115);
             x(106)-50*x(116);
             x(107)-40*x(118);
             x(108)-50*x(119);
             x(109)-40*x(121);
             x(110)-50*x(122);
             x(15)-x(23)+x(63);
             x(16)-x(31)+x(64);
             x(24)-x(32)+x(72);
             -x(17)+x(25)+x(73);
             -x(18)+x(33)+x(81);
             -x(26)+x(34)+x(82);
             x(43)-x(51)+x(91);
             x(44)-x(59)+x(92);
             x(52)-x(60)+x(100);
             -x(45)+x(53)+x(101);
             -x(46)+x(61)+x(109);
             -x(54)+x(62)+x(110);
             x(111)+x(114)+x(117)+x(120);
             x(112)+x(115)+x(118)+x(121);
             x(113)+x(116)+x(119)+x(122)];
cl = [0,0,0,0,0,0,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,1,1,1,1,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','FLay03H');
opts.sense = 'min';
