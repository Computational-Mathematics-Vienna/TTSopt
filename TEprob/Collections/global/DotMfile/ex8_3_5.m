% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 14:33:55
% Model: ex8_3_5

% Objective
fun = @(x)-x(88);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,1000,1000,1000,1000,1000,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,10,10,10,10,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-x(3)-x(4)-x(5);
             -x(1)+x(6)-x(56)-x(61)-x(66)-x(71)-x(76);
             -x(2)+x(7)-x(57)-x(62)-x(67)-x(72)-x(77);
             -x(3)+x(8)-x(58)-x(63)-x(68)-x(73)-x(78);
             -x(4)+x(9)-x(59)-x(64)-x(69)-x(74)-x(79);
             -x(5)+x(10)-x(60)-x(65)-x(70)-x(75)-x(80);
             x(11)*x(6)-(x(36)*x(56)+x(40)*x(61)+x(44)*x(66)+x(48)*x(71)+x(52)*x(76))-x(1);
             x(12)*x(6)-(x(37)*x(56)+x(41)*x(61)+x(45)*x(66)+x(49)*x(71)+x(53)*x(76));
             x(13)*x(6)-(x(38)*x(56)+x(42)*x(61)+x(46)*x(66)+x(50)*x(71)+x(54)*x(76));
             x(14)*x(6)-(x(39)*x(56)+x(43)*x(61)+x(47)*x(66)+x(51)*x(71)+x(55)*x(76));
             x(15)*x(7)-(x(36)*x(57)+x(40)*x(62)+x(44)*x(67)+x(48)*x(72)+x(52)*x(77))-x(2);
             x(16)*x(7)-(x(37)*x(57)+x(41)*x(62)+x(45)*x(67)+x(49)*x(72)+x(53)*x(77));
             x(17)*x(7)-(x(38)*x(57)+x(42)*x(62)+x(46)*x(67)+x(50)*x(72)+x(54)*x(77));
             x(18)*x(7)-(x(39)*x(57)+x(43)*x(62)+x(47)*x(67)+x(51)*x(72)+x(55)*x(77));
             x(19)*x(8)-(x(36)*x(58)+x(40)*x(63)+x(44)*x(68)+x(48)*x(73)+x(52)*x(78))-x(3);
             x(20)*x(8)-(x(37)*x(58)+x(41)*x(63)+x(45)*x(68)+x(49)*x(73)+x(53)*x(78));
             x(21)*x(8)-(x(38)*x(58)+x(42)*x(63)+x(46)*x(68)+x(50)*x(73)+x(54)*x(78));
             x(22)*x(8)-(x(39)*x(58)+x(43)*x(63)+x(47)*x(68)+x(51)*x(73)+x(55)*x(78));
             x(23)*x(9)-(x(36)*x(59)+x(40)*x(64)+x(44)*x(69)+x(48)*x(74)+x(52)*x(79))-x(4);
             x(24)*x(9)-(x(37)*x(59)+x(41)*x(64)+x(45)*x(69)+x(49)*x(74)+x(53)*x(79));
             x(25)*x(9)-(x(38)*x(59)+x(42)*x(64)+x(46)*x(69)+x(50)*x(74)+x(54)*x(79));
             x(26)*x(9)-(x(39)*x(59)+x(43)*x(64)+x(47)*x(69)+x(51)*x(74)+x(55)*x(79));
             x(27)*x(10)-(x(36)*x(60)+x(40)*x(65)+x(44)*x(70)+x(48)*x(75)+x(52)*x(80))-x(5);
             x(28)*x(10)-(x(37)*x(60)+x(41)*x(65)+x(45)*x(70)+x(49)*x(75)+x(53)*x(80));
             x(29)*x(10)-(x(38)*x(60)+x(42)*x(65)+x(46)*x(70)+x(50)*x(75)+x(54)*x(80));
             x(30)*x(10)-(x(39)*x(60)+x(43)*x(65)+x(47)*x(70)+x(51)*x(75)+x(55)*x(80));
             -x(6)+x(31);
             -x(7)+x(32);
             -x(8)+x(33);
             -x(9)+x(34);
             -x(10)+x(35);
             x(36)*x(31)-(x(11)*x(6)+x(91)*(-x(96)-2*x(98)));
             x(37)*x(31)-(x(12)*x(6)+x(91)*(x(96)-x(97)));
             x(38)*x(31)-(x(13)*x(6)+x(91)*x(97));
             x(39)*x(31)-(x(14)*x(6)+x(91)*x(98));
             x(40)*x(32)-(x(15)*x(7)+x(92)*(-x(99)-2*x(101)));
             x(41)*x(32)-(x(16)*x(7)+x(92)*(x(99)-x(100)));
             x(42)*x(32)-(x(17)*x(7)+x(92)*x(100));
             x(43)*x(32)-(x(18)*x(7)+x(92)*x(101));
             x(44)*x(33)-(x(19)*x(8)+x(93)*(-x(102)-2*x(104)));
             x(45)*x(33)-(x(20)*x(8)+x(93)*(x(102)-x(103)));
             x(46)*x(33)-(x(21)*x(8)+x(93)*x(103));
             x(47)*x(33)-(x(22)*x(8)+x(93)*x(104));
             x(48)*x(34)-(x(23)*x(9)+x(94)*(-x(105)-2*x(107)));
             x(49)*x(34)-(x(24)*x(9)+x(94)*(x(105)-x(106)));
             x(50)*x(34)-(x(25)*x(9)+x(94)*x(106));
             x(51)*x(34)-(x(26)*x(9)+x(94)*x(107));
             x(52)*x(35)-(x(27)*x(10)+x(95)*(-x(108)-2*x(110)));
             x(53)*x(35)-(x(28)*x(10)+x(95)*(x(108)-x(109)));
             x(54)*x(35)-(x(29)*x(10)+x(95)*x(109));
             x(55)*x(35)-(x(30)*x(10)+x(95)*x(110));
             -x(36)+x(96);
             -x(40)+x(99);
             -x(44)+x(102);
             -x(48)+x(105);
             -x(52)+x(108);
             -2*x(37)+x(97);
             -2*x(41)+x(100);
             -2*x(45)+x(103);
             -2*x(49)+x(106);
             -2*x(53)+x(109);
             -10*x(36)*x(36)+x(98);
             -10*x(40)*x(40)+x(101);
             -10*x(44)*x(44)+x(104);
             -10*x(48)*x(48)+x(107);
             -10*x(52)*x(52)+x(110);
             x(31)-x(56)-x(57)-x(58)-x(59)-x(60)-x(81);
             x(32)-x(61)-x(62)-x(63)-x(64)-x(65)-x(82);
             x(33)-x(66)-x(67)-x(68)-x(69)-x(70)-x(83);
             x(34)-x(71)-x(72)-x(73)-x(74)-x(75)-x(84);
             x(35)-x(76)-x(77)-x(78)-x(79)-x(80)-x(85);
             -x(81)-x(82)-x(83)-x(84)-x(85)+x(86);
             x(86)*x(87)-(x(81)*x(36)+x(82)*x(40)+x(83)*x(44)+x(84)*x(48)+x(85)*x(52));
             x(86)*x(88)-(x(81)*x(37)+x(82)*x(41)+x(83)*x(45)+x(84)*x(49)+x(85)*x(53));
             x(86)*x(89)-(x(81)*x(38)+x(82)*x(42)+x(83)*x(46)+x(84)*x(50)+x(85)*x(54));
             x(86)*x(90)-(x(81)*x(39)+x(82)*x(43)+x(83)*x(47)+x(84)*x(51)+x(85)*x(55))];
cl = [-100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [-100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [50,50,50,50,50,50,50,50,50,50,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,100,100,100,100,100,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,100,0.2,0.2,0.2,0.2,1,1,1,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex8_3_5');
opts.sense = 'min';
