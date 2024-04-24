% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 00:23:16
% Model: eigmaxb

% Objective
fun = @(x)-x(101);

% Bounds
lb = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]';
ub = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Constraints
nlcon = @(x)[x(1)*x(101)-2*x(1)+x(2);
             x(2)*x(101)-2*x(2)+x(1)+x(3);
             x(3)*x(101)-2*x(3)+x(2)+x(4);
             x(4)*x(101)-2*x(4)+x(3)+x(5);
             x(5)*x(101)-2*x(5)+x(4)+x(6);
             x(6)*x(101)-2*x(6)+x(5)+x(7);
             x(7)*x(101)-2*x(7)+x(6)+x(8);
             x(8)*x(101)-2*x(8)+x(7)+x(9);
             x(9)*x(101)-2*x(9)+x(8)+x(10);
             x(10)*x(101)-2*x(10)+x(9)+x(11);
             x(11)*x(101)-2*x(11)+x(10)+x(12);
             x(12)*x(101)-2*x(12)+x(11)+x(13);
             x(13)*x(101)-2*x(13)+x(12)+x(14);
             x(14)*x(101)-2*x(14)+x(13)+x(15);
             x(15)*x(101)-2*x(15)+x(14)+x(16);
             x(16)*x(101)-2*x(16)+x(15)+x(17);
             x(17)*x(101)-2*x(17)+x(16)+x(18);
             x(18)*x(101)-2*x(18)+x(17)+x(19);
             x(19)*x(101)-2*x(19)+x(18)+x(20);
             x(20)*x(101)-2*x(20)+x(19)+x(21);
             x(21)*x(101)-2*x(21)+x(20)+x(22);
             x(22)*x(101)-2*x(22)+x(21)+x(23);
             x(23)*x(101)-2*x(23)+x(22)+x(24);
             x(24)*x(101)-2*x(24)+x(23)+x(25);
             x(25)*x(101)-2*x(25)+x(24)+x(26);
             x(26)*x(101)-2*x(26)+x(25)+x(27);
             x(27)*x(101)-2*x(27)+x(26)+x(28);
             x(28)*x(101)-2*x(28)+x(27)+x(29);
             x(29)*x(101)-2*x(29)+x(28)+x(30);
             x(30)*x(101)-2*x(30)+x(29)+x(31);
             x(31)*x(101)-2*x(31)+x(30)+x(32);
             x(32)*x(101)-2*x(32)+x(31)+x(33);
             x(33)*x(101)-2*x(33)+x(32)+x(34);
             x(34)*x(101)-2*x(34)+x(33)+x(35);
             x(35)*x(101)-2*x(35)+x(34)+x(36);
             x(36)*x(101)-2*x(36)+x(35)+x(37);
             x(37)*x(101)-2*x(37)+x(36)+x(38);
             x(38)*x(101)-2*x(38)+x(37)+x(39);
             x(39)*x(101)-2*x(39)+x(38)+x(40);
             x(40)*x(101)-2*x(40)+x(39)+x(41);
             x(41)*x(101)-2*x(41)+x(40)+x(42);
             x(42)*x(101)-2*x(42)+x(41)+x(43);
             x(43)*x(101)-2*x(43)+x(42)+x(44);
             x(44)*x(101)-2*x(44)+x(43)+x(45);
             x(45)*x(101)-2*x(45)+x(44)+x(46);
             x(46)*x(101)-2*x(46)+x(45)+x(47);
             x(47)*x(101)-2*x(47)+x(46)+x(48);
             x(48)*x(101)-2*x(48)+x(47)+x(49);
             x(49)*x(101)-2*x(49)+x(48)+x(50);
             x(50)*x(101)-2*x(50)+x(49)+x(51);
             x(51)*x(101)-2*x(51)+x(50)+x(52);
             x(52)*x(101)-2*x(52)+x(51)+x(53);
             x(53)*x(101)-2*x(53)+x(52)+x(54);
             x(54)*x(101)-2*x(54)+x(53)+x(55);
             x(55)*x(101)-2*x(55)+x(54)+x(56);
             x(56)*x(101)-2*x(56)+x(55)+x(57);
             x(57)*x(101)-2*x(57)+x(56)+x(58);
             x(58)*x(101)-2*x(58)+x(57)+x(59);
             x(59)*x(101)-2*x(59)+x(58)+x(60);
             x(60)*x(101)-2*x(60)+x(59)+x(61);
             x(61)*x(101)-2*x(61)+x(60)+x(62);
             x(62)*x(101)-2*x(62)+x(61)+x(63);
             x(63)*x(101)-2*x(63)+x(62)+x(64);
             x(64)*x(101)-2*x(64)+x(63)+x(65);
             x(65)*x(101)-2*x(65)+x(64)+x(66);
             x(66)*x(101)-2*x(66)+x(65)+x(67);
             x(67)*x(101)-2*x(67)+x(66)+x(68);
             x(68)*x(101)-2*x(68)+x(67)+x(69);
             x(69)*x(101)-2*x(69)+x(68)+x(70);
             x(70)*x(101)-2*x(70)+x(69)+x(71);
             x(71)*x(101)-2*x(71)+x(70)+x(72);
             x(72)*x(101)-2*x(72)+x(71)+x(73);
             x(73)*x(101)-2*x(73)+x(72)+x(74);
             x(74)*x(101)-2*x(74)+x(73)+x(75);
             x(75)*x(101)-2*x(75)+x(74)+x(76);
             x(76)*x(101)-2*x(76)+x(75)+x(77);
             x(77)*x(101)-2*x(77)+x(76)+x(78);
             x(78)*x(101)-2*x(78)+x(77)+x(79);
             x(79)*x(101)-2*x(79)+x(78)+x(80);
             x(80)*x(101)-2*x(80)+x(79)+x(81);
             x(81)*x(101)-2*x(81)+x(80)+x(82);
             x(82)*x(101)-2*x(82)+x(81)+x(83);
             x(83)*x(101)-2*x(83)+x(82)+x(84);
             x(84)*x(101)-2*x(84)+x(83)+x(85);
             x(85)*x(101)-2*x(85)+x(84)+x(86);
             x(86)*x(101)-2*x(86)+x(85)+x(87);
             x(87)*x(101)-2*x(87)+x(86)+x(88);
             x(88)*x(101)-2*x(88)+x(87)+x(89);
             x(89)*x(101)-2*x(89)+x(88)+x(90);
             x(90)*x(101)-2*x(90)+x(89)+x(91);
             x(91)*x(101)-2*x(91)+x(90)+x(92);
             x(92)*x(101)-2*x(92)+x(91)+x(93);
             x(93)*x(101)-2*x(93)+x(92)+x(94);
             x(94)*x(101)-2*x(94)+x(93)+x(95);
             x(95)*x(101)-2*x(95)+x(94)+x(96);
             x(96)*x(101)-2*x(96)+x(95)+x(97);
             x(97)*x(101)-2*x(97)+x(96)+x(98);
             x(98)*x(101)-2*x(98)+x(97)+x(99);
             x(99)*x(101)-2*x(99)+x(98)+x(100);
             x(100)*x(101)-2*x(100)+x(99);
             x(1)*x(1)+x(2)*x(2)+x(3)*x(3)+x(4)*x(4)+x(5)*x(5)+x(6)*x(6)+x(7)*x(7)+x(8)*x(8)+x(9)*x(9)+x(10)*x(10)+x(11)*x(11)+x(12)*x(12)+x(13)*x(13)+x(14)*x(14)+x(15)*x(15)+x(16)*x(16)+x(17)*x(17)+x(18)*x(18)+x(19)*x(19)+x(20)*x(20)+x(21)*x(21)+x(22)*x(22)+x(23)*x(23)+x(24)*x(24)+x(25)*x(25)+x(26)*x(26)+x(27)*x(27)+x(28)*x(28)+x(29)*x(29)+x(30)*x(30)+x(31)*x(31)+x(32)*x(32)+x(33)*x(33)+x(34)*x(34)+x(35)*x(35)+x(36)*x(36)+x(37)*x(37)+x(38)*x(38)+x(39)*x(39)+x(40)*x(40)+x(41)*x(41)+x(42)*x(42)+x(43)*x(43)+x(44)*x(44)+x(45)*x(45)+x(46)*x(46)+x(47)*x(47)+x(48)*x(48)+x(49)*x(49)+x(50)*x(50)+x(51)*x(51)+x(52)*x(52)+x(53)*x(53)+x(54)*x(54)+x(55)*x(55)+x(56)*x(56)+x(57)*x(57)+x(58)*x(58)+x(59)*x(59)+x(60)*x(60)+x(61)*x(61)+x(62)*x(62)+x(63)*x(63)+x(64)*x(64)+x(65)*x(65)+x(66)*x(66)+x(67)*x(67)+x(68)*x(68)+x(69)*x(69)+x(70)*x(70)+x(71)*x(71)+x(72)*x(72)+x(73)*x(73)+x(74)*x(74)+x(75)*x(75)+x(76)*x(76)+x(77)*x(77)+x(78)*x(78)+x(79)*x(79)+x(80)*x(80)+x(81)*x(81)+x(82)*x(82)+x(83)*x(83)+x(84)*x(84)+x(85)*x(85)+x(86)*x(86)+x(87)*x(87)+x(88)*x(88)+x(89)*x(89)+x(90)*x(90)+x(91)*x(91)+x(92)*x(92)+x(93)*x(93)+x(94)*x(94)+x(95)*x(95)+x(96)*x(96)+x(97)*x(97)+x(98)*x(98)+x(99)*x(99)+x(100)*x(100)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','eigmaxb');
opts.sense = 'min';
