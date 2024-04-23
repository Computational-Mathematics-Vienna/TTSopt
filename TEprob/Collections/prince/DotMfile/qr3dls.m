% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 14:45:55
% Model: qr3dls

% Objective
fun = @(x)(-1+x(1)*x(1)+x(2)*x(2)+x(3)*x(3)+x(4)*x(4)+x(5)*x(5)+x(6)*x(6)+x(7)*x(7)+x(8)*x(8)+x(9)*x(9)+x(10)*x(10))*(-1+x(1)*x(1)+x(2)*x(2)+x(3)*x(3)+x(4)*x(4)+x(5)*x(5)+x(6)*x(6)+x(7)*x(7)+x(8)*x(8)+x(9)*x(9)+x(10)*x(10))+(x(1)*x(11)+x(2)*x(12)+x(3)*x(13)+x(4)*x(14)+x(5)*x(15)+x(6)*x(16)+x(7)*x(17)+x(8)*x(18)+x(9)*x(19)+x(10)*x(20))*(x(1)*x(11)+x(2)*x(12)+x(3)*x(13)+x(4)*x(14)+x(5)*x(15)+x(6)*x(16)+x(7)*x(17)+x(8)*x(18)+x(9)*x(19)+x(10)*x(20))+(x(1)*x(21)+x(2)*x(22)+x(3)*x(23)+x(4)*x(24)+x(5)*x(25)+x(6)*x(26)+x(7)*x(27)+x(8)*x(28)+x(9)*x(29)+x(10)*x(30))*(x(1)*x(21)+x(2)*x(22)+x(3)*x(23)+x(4)*x(24)+x(5)*x(25)+x(6)*x(26)+x(7)*x(27)+x(8)*x(28)+x(9)*x(29)+x(10)*x(30))+(x(1)*x(31)+x(2)*x(32)+x(3)*x(33)+x(4)*x(34)+x(5)*x(35)+x(6)*x(36)+x(7)*x(37)+x(8)*x(38)+x(9)*x(39)+x(10)*x(40))*(x(1)*x(31)+x(2)*x(32)+x(3)*x(33)+x(4)*x(34)+x(5)*x(35)+x(6)*x(36)+x(7)*x(37)+x(8)*x(38)+x(9)*x(39)+x(10)*x(40))+(x(1)*x(41)+x(2)*x(42)+x(3)*x(43)+x(4)*x(44)+x(5)*x(45)+x(6)*x(46)+x(7)*x(47)+x(8)*x(48)+x(9)*x(49)+x(10)*x(50))*(x(1)*x(41)+x(2)*x(42)+x(3)*x(43)+x(4)*x(44)+x(5)*x(45)+x(6)*x(46)+x(7)*x(47)+x(8)*x(48)+x(9)*x(49)+x(10)*x(50))+(x(1)*x(51)+x(2)*x(52)+x(3)*x(53)+x(4)*x(54)+x(5)*x(55)+x(6)*x(56)+x(7)*x(57)+x(8)*x(58)+x(9)*x(59)+x(10)*x(60))*(x(1)*x(51)+x(2)*x(52)+x(3)*x(53)+x(4)*x(54)+x(5)*x(55)+x(6)*x(56)+x(7)*x(57)+x(8)*x(58)+x(9)*x(59)+x(10)*x(60))+(x(1)*x(61)+x(2)*x(62)+x(3)*x(63)+x(4)*x(64)+x(5)*x(65)+x(6)*x(66)+x(7)*x(67)+x(8)*x(68)+x(9)*x(69)+x(10)*x(70))*(x(1)*x(61)+x(2)*x(62)+x(3)*x(63)+x(4)*x(64)+x(5)*x(65)+x(6)*x(66)+x(7)*x(67)+x(8)*x(68)+x(9)*x(69)+x(10)*x(70))+(x(1)*x(71)+x(2)*x(72)+x(3)*x(73)+x(4)*x(74)+x(5)*x(75)+x(6)*x(76)+x(7)*x(77)+x(8)*x(78)+x(9)*x(79)+x(10)*x(80))*(x(1)*x(71)+x(2)*x(72)+x(3)*x(73)+x(4)*x(74)+x(5)*x(75)+x(6)*x(76)+x(7)*x(77)+x(8)*x(78)+x(9)*x(79)+x(10)*x(80))+(x(1)*x(81)+x(2)*x(82)+x(3)*x(83)+x(4)*x(84)+x(5)*x(85)+x(6)*x(86)+x(7)*x(87)+x(8)*x(88)+x(9)*x(89)+x(10)*x(90))*(x(1)*x(81)+x(2)*x(82)+x(3)*x(83)+x(4)*x(84)+x(5)*x(85)+x(6)*x(86)+x(7)*x(87)+x(8)*x(88)+x(9)*x(89)+x(10)*x(90))+(x(1)*x(91)+x(2)*x(92)+x(3)*x(93)+x(4)*x(94)+x(5)*x(95)+x(6)*x(96)+x(7)*x(97)+x(8)*x(98)+x(9)*x(99)+x(10)*x(100))*(x(1)*x(91)+x(2)*x(92)+x(3)*x(93)+x(4)*x(94)+x(5)*x(95)+x(6)*x(96)+x(7)*x(97)+x(8)*x(98)+x(9)*x(99)+x(10)*x(100))+(-1+x(11)*x(11)+x(12)*x(12)+x(13)*x(13)+x(14)*x(14)+x(15)*x(15)+x(16)*x(16)+x(17)*x(17)+x(18)*x(18)+x(19)*x(19)+x(20)*x(20))*(-1+x(11)*x(11)+x(12)*x(12)+x(13)*x(13)+x(14)*x(14)+x(15)*x(15)+x(16)*x(16)+x(17)*x(17)+x(18)*x(18)+x(19)*x(19)+x(20)*x(20))+(x(11)*x(21)+x(12)*x(22)+x(13)*x(23)+x(14)*x(24)+x(15)*x(25)+x(16)*x(26)+x(17)*x(27)+x(18)*x(28)+x(19)*x(29)+x(20)*x(30))*(x(11)*x(21)+x(12)*x(22)+x(13)*x(23)+x(14)*x(24)+x(15)*x(25)+x(16)*x(26)+x(17)*x(27)+x(18)*x(28)+x(19)*x(29)+x(20)*x(30))+(x(11)*x(31)+x(12)*x(32)+x(13)*x(33)+x(14)*x(34)+x(15)*x(35)+x(16)*x(36)+x(17)*x(37)+x(18)*x(38)+x(19)*x(39)+x(20)*x(40))*(x(11)*x(31)+x(12)*x(32)+x(13)*x(33)+x(14)*x(34)+x(15)*x(35)+x(16)*x(36)+x(17)*x(37)+x(18)*x(38)+x(19)*x(39)+x(20)*x(40))+(x(11)*x(41)+x(12)*x(42)+x(13)*x(43)+x(14)*x(44)+x(15)*x(45)+x(16)*x(46)+x(17)*x(47)+x(18)*x(48)+x(19)*x(49)+x(20)*x(50))*(x(11)*x(41)+x(12)*x(42)+x(13)*x(43)+x(14)*x(44)+x(15)*x(45)+x(16)*x(46)+x(17)*x(47)+x(18)*x(48)+x(19)*x(49)+x(20)*x(50))+(x(11)*x(51)+x(12)*x(52)+x(13)*x(53)+x(14)*x(54)+x(15)*x(55)+x(16)*x(56)+x(17)*x(57)+x(18)*x(58)+x(19)*x(59)+x(20)*x(60))*(x(11)*x(51)+x(12)*x(52)+x(13)*x(53)+x(14)*x(54)+x(15)*x(55)+x(16)*x(56)+x(17)*x(57)+x(18)*x(58)+x(19)*x(59)+x(20)*x(60))+(x(11)*x(61)+x(12)*x(62)+x(13)*x(63)+x(14)*x(64)+x(15)*x(65)+x(16)*x(66)+x(17)*x(67)+x(18)*x(68)+x(19)*x(69)+x(20)*x(70))*(x(11)*x(61)+x(12)*x(62)+x(13)*x(63)+x(14)*x(64)+x(15)*x(65)+x(16)*x(66)+x(17)*x(67)+x(18)*x(68)+x(19)*x(69)+x(20)*x(70))+(x(11)*x(71)+x(12)*x(72)+x(13)*x(73)+x(14)*x(74)+x(15)*x(75)+x(16)*x(76)+x(17)*x(77)+x(18)*x(78)+x(19)*x(79)+x(20)*x(80))*(x(11)*x(71)+x(12)*x(72)+x(13)*x(73)+x(14)*x(74)+x(15)*x(75)+x(16)*x(76)+x(17)*x(77)+x(18)*x(78)+x(19)*x(79)+x(20)*x(80))+(x(11)*x(81)+x(12)*x(82)+x(13)*x(83)+x(14)*x(84)+x(15)*x(85)+x(16)*x(86)+x(17)*x(87)+x(18)*x(88)+x(19)*x(89)+x(20)*x(90))*(x(11)*x(81)+x(12)*x(82)+x(13)*x(83)+x(14)*x(84)+x(15)*x(85)+x(16)*x(86)+x(17)*x(87)+x(18)*x(88)+x(19)*x(89)+x(20)*x(90))+(x(11)*x(91)+x(12)*x(92)+x(13)*x(93)+x(14)*x(94)+x(15)*x(95)+x(16)*x(96)+x(17)*x(97)+x(18)*x(98)+x(19)*x(99)+x(20)*x(100))*(x(11)*x(91)+x(12)*x(92)+x(13)*x(93)+x(14)*x(94)+x(15)*x(95)+x(16)*x(96)+x(17)*x(97)+x(18)*x(98)+x(19)*x(99)+x(20)*x(100))+(-1+x(21)*x(21)+x(22)*x(22)+x(23)*x(23)+x(24)*x(24)+x(25)*x(25)+x(26)*x(26)+x(27)*x(27)+x(28)*x(28)+x(29)*x(29)+x(30)*x(30))*(-1+x(21)*x(21)+x(22)*x(22)+x(23)*x(23)+x(24)*x(24)+x(25)*x(25)+x(26)*x(26)+x(27)*x(27)+x(28)*x(28)+x(29)*x(29)+x(30)*x(30))+(x(21)*x(31)+x(22)*x(32)+x(23)*x(33)+x(24)*x(34)+x(25)*x(35)+x(26)*x(36)+x(27)*x(37)+x(28)*x(38)+x(29)*x(39)+x(30)*x(40))*(x(21)*x(31)+x(22)*x(32)+x(23)*x(33)+x(24)*x(34)+x(25)*x(35)+x(26)*x(36)+x(27)*x(37)+x(28)*x(38)+x(29)*x(39)+x(30)*x(40))+(x(21)*x(41)+x(22)*x(42)+x(23)*x(43)+x(24)*x(44)+x(25)*x(45)+x(26)*x(46)+x(27)*x(47)+x(28)*x(48)+x(29)*x(49)+x(30)*x(50))*(x(21)*x(41)+x(22)*x(42)+x(23)*x(43)+x(24)*x(44)+x(25)*x(45)+x(26)*x(46)+x(27)*x(47)+x(28)*x(48)+x(29)*x(49)+x(30)*x(50))+(x(21)*x(51)+x(22)*x(52)+x(23)*x(53)+x(24)*x(54)+x(25)*x(55)+x(26)*x(56)+x(27)*x(57)+x(28)*x(58)+x(29)*x(59)+x(30)*x(60))*(x(21)*x(51)+x(22)*x(52)+x(23)*x(53)+x(24)*x(54)+x(25)*x(55)+x(26)*x(56)+x(27)*x(57)+x(28)*x(58)+x(29)*x(59)+x(30)*x(60))+(x(21)*x(61)+x(22)*x(62)+x(23)*x(63)+x(24)*x(64)+x(25)*x(65)+x(26)*x(66)+x(27)*x(67)+x(28)*x(68)+x(29)*x(69)+x(30)*x(70))*(x(21)*x(61)+x(22)*x(62)+x(23)*x(63)+x(24)*x(64)+x(25)*x(65)+x(26)*x(66)+x(27)*x(67)+x(28)*x(68)+x(29)*x(69)+x(30)*x(70))+(x(21)*x(71)+x(22)*x(72)+x(23)*x(73)+x(24)*x(74)+x(25)*x(75)+x(26)*x(76)+x(27)*x(77)+x(28)*x(78)+x(29)*x(79)+x(30)*x(80))*(x(21)*x(71)+x(22)*x(72)+x(23)*x(73)+x(24)*x(74)+x(25)*x(75)+x(26)*x(76)+x(27)*x(77)+x(28)*x(78)+x(29)*x(79)+x(30)*x(80))+(x(21)*x(81)+x(22)*x(82)+x(23)*x(83)+x(24)*x(84)+x(25)*x(85)+x(26)*x(86)+x(27)*x(87)+x(28)*x(88)+x(29)*x(89)+x(30)*x(90))*(x(21)*x(81)+x(22)*x(82)+x(23)*x(83)+x(24)*x(84)+x(25)*x(85)+x(26)*x(86)+x(27)*x(87)+x(28)*x(88)+x(29)*x(89)+x(30)*x(90))+(x(21)*x(91)+x(22)*x(92)+x(23)*x(93)+x(24)*x(94)+x(25)*x(95)+x(26)*x(96)+x(27)*x(97)+x(28)*x(98)+x(29)*x(99)+x(30)*x(100))*(x(21)*x(91)+x(22)*x(92)+x(23)*x(93)+x(24)*x(94)+x(25)*x(95)+x(26)*x(96)+x(27)*x(97)+x(28)*x(98)+x(29)*x(99)+x(30)*x(100))+(-1+x(31)*x(31)+x(32)*x(32)+x(33)*x(33)+x(34)*x(34)+x(35)*x(35)+x(36)*x(36)+x(37)*x(37)+x(38)*x(38)+x(39)*x(39)+x(40)*x(40))*(-1+x(31)*x(31)+x(32)*x(32)+x(33)*x(33)+x(34)*x(34)+x(35)*x(35)+x(36)*x(36)+x(37)*x(37)+x(38)*x(38)+x(39)*x(39)+x(40)*x(40))+(x(31)*x(41)+x(32)*x(42)+x(33)*x(43)+x(34)*x(44)+x(35)*x(45)+x(36)*x(46)+x(37)*x(47)+x(38)*x(48)+x(39)*x(49)+x(40)*x(50))*(x(31)*x(41)+x(32)*x(42)+x(33)*x(43)+x(34)*x(44)+x(35)*x(45)+x(36)*x(46)+x(37)*x(47)+x(38)*x(48)+x(39)*x(49)+x(40)*x(50))+(x(31)*x(51)+x(32)*x(52)+x(33)*x(53)+x(34)*x(54)+x(35)*x(55)+x(36)*x(56)+x(37)*x(57)+x(38)*x(58)+x(39)*x(59)+x(40)*x(60))*(x(31)*x(51)+x(32)*x(52)+x(33)*x(53)+x(34)*x(54)+x(35)*x(55)+x(36)*x(56)+x(37)*x(57)+x(38)*x(58)+x(39)*x(59)+x(40)*x(60))+(x(31)*x(61)+x(32)*x(62)+x(33)*x(63)+x(34)*x(64)+x(35)*x(65)+x(36)*x(66)+x(37)*x(67)+x(38)*x(68)+x(39)*x(69)+x(40)*x(70))*(x(31)*x(61)+x(32)*x(62)+x(33)*x(63)+x(34)*x(64)+x(35)*x(65)+x(36)*x(66)+x(37)*x(67)+x(38)*x(68)+x(39)*x(69)+x(40)*x(70))+(x(31)*x(71)+x(32)*x(72)+x(33)*x(73)+x(34)*x(74)+x(35)*x(75)+x(36)*x(76)+x(37)*x(77)+x(38)*x(78)+x(39)*x(79)+x(40)*x(80))*(x(31)*x(71)+x(32)*x(72)+x(33)*x(73)+x(34)*x(74)+x(35)*x(75)+x(36)*x(76)+x(37)*x(77)+x(38)*x(78)+x(39)*x(79)+x(40)*x(80))+(x(31)*x(81)+x(32)*x(82)+x(33)*x(83)+x(34)*x(84)+x(35)*x(85)+x(36)*x(86)+x(37)*x(87)+x(38)*x(88)+x(39)*x(89)+x(40)*x(90))*(x(31)*x(81)+x(32)*x(82)+x(33)*x(83)+x(34)*x(84)+x(35)*x(85)+x(36)*x(86)+x(37)*x(87)+x(38)*x(88)+x(39)*x(89)+x(40)*x(90))+(x(31)*x(91)+x(32)*x(92)+x(33)*x(93)+x(34)*x(94)+x(35)*x(95)+x(36)*x(96)+x(37)*x(97)+x(38)*x(98)+x(39)*x(99)+x(40)*x(100))*(x(31)*x(91)+x(32)*x(92)+x(33)*x(93)+x(34)*x(94)+x(35)*x(95)+x(36)*x(96)+x(37)*x(97)+x(38)*x(98)+x(39)*x(99)+x(40)*x(100))+(-1+x(41)*x(41)+x(42)*x(42)+x(43)*x(43)+x(44)*x(44)+x(45)*x(45)+x(46)*x(46)+x(47)*x(47)+x(48)*x(48)+x(49)*x(49)+x(50)*x(50))*(-1+x(41)*x(41)+x(42)*x(42)+x(43)*x(43)+x(44)*x(44)+x(45)*x(45)+x(46)*x(46)+x(47)*x(47)+x(48)*x(48)+x(49)*x(49)+x(50)*x(50))+(x(41)*x(51)+x(42)*x(52)+x(43)*x(53)+x(44)*x(54)+x(45)*x(55)+x(46)*x(56)+x(47)*x(57)+x(48)*x(58)+x(49)*x(59)+x(50)*x(60))*(x(41)*x(51)+x(42)*x(52)+x(43)*x(53)+x(44)*x(54)+x(45)*x(55)+x(46)*x(56)+x(47)*x(57)+x(48)*x(58)+x(49)*x(59)+x(50)*x(60))+(x(41)*x(61)+x(42)*x(62)+x(43)*x(63)+x(44)*x(64)+x(45)*x(65)+x(46)*x(66)+x(47)*x(67)+x(48)*x(68)+x(49)*x(69)+x(50)*x(70))*(x(41)*x(61)+x(42)*x(62)+x(43)*x(63)+x(44)*x(64)+x(45)*x(65)+x(46)*x(66)+x(47)*x(67)+x(48)*x(68)+x(49)*x(69)+x(50)*x(70))+(x(41)*x(71)+x(42)*x(72)+x(43)*x(73)+x(44)*x(74)+x(45)*x(75)+x(46)*x(76)+x(47)*x(77)+x(48)*x(78)+x(49)*x(79)+x(50)*x(80))*(x(41)*x(71)+x(42)*x(72)+x(43)*x(73)+x(44)*x(74)+x(45)*x(75)+x(46)*x(76)+x(47)*x(77)+x(48)*x(78)+x(49)*x(79)+x(50)*x(80))+(x(41)*x(81)+x(42)*x(82)+x(43)*x(83)+x(44)*x(84)+x(45)*x(85)+x(46)*x(86)+x(47)*x(87)+x(48)*x(88)+x(49)*x(89)+x(50)*x(90))*(x(41)*x(81)+x(42)*x(82)+x(43)*x(83)+x(44)*x(84)+x(45)*x(85)+x(46)*x(86)+x(47)*x(87)+x(48)*x(88)+x(49)*x(89)+x(50)*x(90))+(x(41)*x(91)+x(42)*x(92)+x(43)*x(93)+x(44)*x(94)+x(45)*x(95)+x(46)*x(96)+x(47)*x(97)+x(48)*x(98)+x(49)*x(99)+x(50)*x(100))*(x(41)*x(91)+x(42)*x(92)+x(43)*x(93)+x(44)*x(94)+x(45)*x(95)+x(46)*x(96)+x(47)*x(97)+x(48)*x(98)+x(49)*x(99)+x(50)*x(100))+(-1+x(51)*x(51)+x(52)*x(52)+x(53)*x(53)+x(54)*x(54)+x(55)*x(55)+x(56)*x(56)+x(57)*x(57)+x(58)*x(58)+x(59)*x(59)+x(60)*x(60))*(-1+x(51)*x(51)+x(52)*x(52)+x(53)*x(53)+x(54)*x(54)+x(55)*x(55)+x(56)*x(56)+x(57)*x(57)+x(58)*x(58)+x(59)*x(59)+x(60)*x(60))+(x(51)*x(61)+x(52)*x(62)+x(53)*x(63)+x(54)*x(64)+x(55)*x(65)+x(56)*x(66)+x(57)*x(67)+x(58)*x(68)+x(59)*x(69)+x(60)*x(70))*(x(51)*x(61)+x(52)*x(62)+x(53)*x(63)+x(54)*x(64)+x(55)*x(65)+x(56)*x(66)+x(57)*x(67)+x(58)*x(68)+x(59)*x(69)+x(60)*x(70))+(x(51)*x(71)+x(52)*x(72)+x(53)*x(73)+x(54)*x(74)+x(55)*x(75)+x(56)*x(76)+x(57)*x(77)+x(58)*x(78)+x(59)*x(79)+x(60)*x(80))*(x(51)*x(71)+x(52)*x(72)+x(53)*x(73)+x(54)*x(74)+x(55)*x(75)+x(56)*x(76)+x(57)*x(77)+x(58)*x(78)+x(59)*x(79)+x(60)*x(80))+(x(51)*x(81)+x(52)*x(82)+x(53)*x(83)+x(54)*x(84)+x(55)*x(85)+x(56)*x(86)+x(57)*x(87)+x(58)*x(88)+x(59)*x(89)+x(60)*x(90))*(x(51)*x(81)+x(52)*x(82)+x(53)*x(83)+x(54)*x(84)+x(55)*x(85)+x(56)*x(86)+x(57)*x(87)+x(58)*x(88)+x(59)*x(89)+x(60)*x(90))+(x(51)*x(91)+x(52)*x(92)+x(53)*x(93)+x(54)*x(94)+x(55)*x(95)+x(56)*x(96)+x(57)*x(97)+x(58)*x(98)+x(59)*x(99)+x(60)*x(100))*(x(51)*x(91)+x(52)*x(92)+x(53)*x(93)+x(54)*x(94)+x(55)*x(95)+x(56)*x(96)+x(57)*x(97)+x(58)*x(98)+x(59)*x(99)+x(60)*x(100))+(-1+x(61)*x(61)+x(62)*x(62)+x(63)*x(63)+x(64)*x(64)+x(65)*x(65)+x(66)*x(66)+x(67)*x(67)+x(68)*x(68)+x(69)*x(69)+x(70)*x(70))*(-1+x(61)*x(61)+x(62)*x(62)+x(63)*x(63)+x(64)*x(64)+x(65)*x(65)+x(66)*x(66)+x(67)*x(67)+x(68)*x(68)+x(69)*x(69)+x(70)*x(70))+(x(61)*x(71)+x(62)*x(72)+x(63)*x(73)+x(64)*x(74)+x(65)*x(75)+x(66)*x(76)+x(67)*x(77)+x(68)*x(78)+x(69)*x(79)+x(70)*x(80))*(x(61)*x(71)+x(62)*x(72)+x(63)*x(73)+x(64)*x(74)+x(65)*x(75)+x(66)*x(76)+x(67)*x(77)+x(68)*x(78)+x(69)*x(79)+x(70)*x(80))+(x(61)*x(81)+x(62)*x(82)+x(63)*x(83)+x(64)*x(84)+x(65)*x(85)+x(66)*x(86)+x(67)*x(87)+x(68)*x(88)+x(69)*x(89)+x(70)*x(90))*(x(61)*x(81)+x(62)*x(82)+x(63)*x(83)+x(64)*x(84)+x(65)*x(85)+x(66)*x(86)+x(67)*x(87)+x(68)*x(88)+x(69)*x(89)+x(70)*x(90))+(x(61)*x(91)+x(62)*x(92)+x(63)*x(93)+x(64)*x(94)+x(65)*x(95)+x(66)*x(96)+x(67)*x(97)+x(68)*x(98)+x(69)*x(99)+x(70)*x(100))*(x(61)*x(91)+x(62)*x(92)+x(63)*x(93)+x(64)*x(94)+x(65)*x(95)+x(66)*x(96)+x(67)*x(97)+x(68)*x(98)+x(69)*x(99)+x(70)*x(100))+(-1+x(71)*x(71)+x(72)*x(72)+x(73)*x(73)+x(74)*x(74)+x(75)*x(75)+x(76)*x(76)+x(77)*x(77)+x(78)*x(78)+x(79)*x(79)+x(80)*x(80))*(-1+x(71)*x(71)+x(72)*x(72)+x(73)*x(73)+x(74)*x(74)+x(75)*x(75)+x(76)*x(76)+x(77)*x(77)+x(78)*x(78)+x(79)*x(79)+x(80)*x(80))+(x(71)*x(81)+x(72)*x(82)+x(73)*x(83)+x(74)*x(84)+x(75)*x(85)+x(76)*x(86)+x(77)*x(87)+x(78)*x(88)+x(79)*x(89)+x(80)*x(90))*(x(71)*x(81)+x(72)*x(82)+x(73)*x(83)+x(74)*x(84)+x(75)*x(85)+x(76)*x(86)+x(77)*x(87)+x(78)*x(88)+x(79)*x(89)+x(80)*x(90))+(x(71)*x(91)+x(72)*x(92)+x(73)*x(93)+x(74)*x(94)+x(75)*x(95)+x(76)*x(96)+x(77)*x(97)+x(78)*x(98)+x(79)*x(99)+x(80)*x(100))*(x(71)*x(91)+x(72)*x(92)+x(73)*x(93)+x(74)*x(94)+x(75)*x(95)+x(76)*x(96)+x(77)*x(97)+x(78)*x(98)+x(79)*x(99)+x(80)*x(100))+(-1+x(81)*x(81)+x(82)*x(82)+x(83)*x(83)+x(84)*x(84)+x(85)*x(85)+x(86)*x(86)+x(87)*x(87)+x(88)*x(88)+x(89)*x(89)+x(90)*x(90))*(-1+x(81)*x(81)+x(82)*x(82)+x(83)*x(83)+x(84)*x(84)+x(85)*x(85)+x(86)*x(86)+x(87)*x(87)+x(88)*x(88)+x(89)*x(89)+x(90)*x(90))+(x(81)*x(91)+x(82)*x(92)+x(83)*x(93)+x(84)*x(94)+x(85)*x(95)+x(86)*x(96)+x(87)*x(97)+x(88)*x(98)+x(89)*x(99)+x(90)*x(100))*(x(81)*x(91)+x(82)*x(92)+x(83)*x(93)+x(84)*x(94)+x(85)*x(95)+x(86)*x(96)+x(87)*x(97)+x(88)*x(98)+x(89)*x(99)+x(90)*x(100))+(-1+x(91)*x(91)+x(92)*x(92)+x(93)*x(93)+x(94)*x(94)+x(95)*x(95)+x(96)*x(96)+x(97)*x(97)+x(98)*x(98)+x(99)*x(99)+x(100)*x(100))*(-1+x(91)*x(91)+x(92)*x(92)+x(93)*x(93)+x(94)*x(94)+x(95)*x(95)+x(96)*x(96)+x(97)*x(97)+x(98)*x(98)+x(99)*x(99)+x(100)*x(100))+(-0.2+x(1)*x(101))*(-0.2+x(1)*x(101))+(x(1)*x(102)+x(2)*x(111))*(x(1)*x(102)+x(2)*x(111))+(x(1)*x(103)+x(2)*x(112)+x(3)*x(120))*(x(1)*x(103)+x(2)*x(112)+x(3)*x(120))+(x(1)*x(104)+x(2)*x(113)+x(3)*x(121)+x(4)*x(128))*(x(1)*x(104)+x(2)*x(113)+x(3)*x(121)+x(4)*x(128))+(x(1)*x(105)+x(2)*x(114)+x(3)*x(122)+x(4)*x(129)+x(5)*x(135))*(x(1)*x(105)+x(2)*x(114)+x(3)*x(122)+x(4)*x(129)+x(5)*x(135))+(x(1)*x(106)+x(2)*x(115)+x(3)*x(123)+x(4)*x(130)+x(5)*x(136)+x(6)*x(141))*(x(1)*x(106)+x(2)*x(115)+x(3)*x(123)+x(4)*x(130)+x(5)*x(136)+x(6)*x(141))+(x(1)*x(107)+x(2)*x(116)+x(3)*x(124)+x(4)*x(131)+x(5)*x(137)+x(6)*x(142)+x(7)*x(146))*(x(1)*x(107)+x(2)*x(116)+x(3)*x(124)+x(4)*x(131)+x(5)*x(137)+x(6)*x(142)+x(7)*x(146))+(x(1)*x(108)+x(2)*x(117)+x(3)*x(125)+x(4)*x(132)+x(5)*x(138)+x(6)*x(143)+x(7)*x(147)+x(8)*x(150))*(x(1)*x(108)+x(2)*x(117)+x(3)*x(125)+x(4)*x(132)+x(5)*x(138)+x(6)*x(143)+x(7)*x(147)+x(8)*x(150))+(x(1)*x(109)+x(2)*x(118)+x(3)*x(126)+x(4)*x(133)+x(5)*x(139)+x(6)*x(144)+x(7)*x(148)+x(8)*x(151)+x(9)*x(153))*(x(1)*x(109)+x(2)*x(118)+x(3)*x(126)+x(4)*x(133)+x(5)*x(139)+x(6)*x(144)+x(7)*x(148)+x(8)*x(151)+x(9)*x(153))+(x(1)*x(110)+x(2)*x(119)+x(3)*x(127)+x(4)*x(134)+x(5)*x(140)+x(6)*x(145)+x(7)*x(149)+x(8)*x(152)+x(9)*x(154)+x(10)*x(155))*(x(1)*x(110)+x(2)*x(119)+x(3)*x(127)+x(4)*x(134)+x(5)*x(140)+x(6)*x(145)+x(7)*x(149)+x(8)*x(152)+x(9)*x(154)+x(10)*x(155))+(0.1+x(11)*x(101))*(0.1+x(11)*x(101))+(-0.4+x(11)*x(102)+x(12)*x(111))*(-0.4+x(11)*x(102)+x(12)*x(111))+(0.1+x(11)*x(103)+x(12)*x(112)+x(13)*x(120))*(0.1+x(11)*x(103)+x(12)*x(112)+x(13)*x(120))+(x(11)*x(104)+x(12)*x(113)+x(13)*x(121)+x(14)*x(128))*(x(11)*x(104)+x(12)*x(113)+x(13)*x(121)+x(14)*x(128))+(x(11)*x(105)+x(12)*x(114)+x(13)*x(122)+x(14)*x(129)+x(15)*x(135))*(x(11)*x(105)+x(12)*x(114)+x(13)*x(122)+x(14)*x(129)+x(15)*x(135))+(x(11)*x(106)+x(12)*x(115)+x(13)*x(123)+x(14)*x(130)+x(15)*x(136)+x(16)*x(141))*(x(11)*x(106)+x(12)*x(115)+x(13)*x(123)+x(14)*x(130)+x(15)*x(136)+x(16)*x(141))+(x(11)*x(107)+x(12)*x(116)+x(13)*x(124)+x(14)*x(131)+x(15)*x(137)+x(16)*x(142)+x(17)*x(146))*(x(11)*x(107)+x(12)*x(116)+x(13)*x(124)+x(14)*x(131)+x(15)*x(137)+x(16)*x(142)+x(17)*x(146))+(x(11)*x(108)+x(12)*x(117)+x(13)*x(125)+x(14)*x(132)+x(15)*x(138)+x(16)*x(143)+x(17)*x(147)+x(18)*x(150))*(x(11)*x(108)+x(12)*x(117)+x(13)*x(125)+x(14)*x(132)+x(15)*x(138)+x(16)*x(143)+x(17)*x(147)+x(18)*x(150))+(x(11)*x(109)+x(12)*x(118)+x(13)*x(126)+x(14)*x(133)+x(15)*x(139)+x(16)*x(144)+x(17)*x(148)+x(18)*x(151)+x(19)*x(153))*(x(11)*x(109)+x(12)*x(118)+x(13)*x(126)+x(14)*x(133)+x(15)*x(139)+x(16)*x(144)+x(17)*x(148)+x(18)*x(151)+x(19)*x(153))+(x(11)*x(110)+x(12)*x(119)+x(13)*x(127)+x(14)*x(134)+x(15)*x(140)+x(16)*x(145)+x(17)*x(149)+x(18)*x(152)+x(19)*x(154)+x(20)*x(155))*(x(11)*x(110)+x(12)*x(119)+x(13)*x(127)+x(14)*x(134)+x(15)*x(140)+x(16)*x(145)+x(17)*x(149)+x(18)*x(152)+x(19)*x(154)+x(20)*x(155))+x(21)*x(101)*x(21)*x(101)+(0.2+x(21)*x(102)+x(22)*x(111))*(0.2+x(21)*x(102)+x(22)*x(111))+(-0.6+x(21)*x(103)+x(22)*x(112)+x(23)*x(120))*(-0.6+x(21)*x(103)+x(22)*x(112)+x(23)*x(120))+(0.2+x(21)*x(104)+x(22)*x(113)+x(23)*x(121)+x(24)*x(128))*(0.2+x(21)*x(104)+x(22)*x(113)+x(23)*x(121)+x(24)*x(128))+(x(21)*x(105)+x(22)*x(114)+x(23)*x(122)+x(24)*x(129)+x(25)*x(135))*(x(21)*x(105)+x(22)*x(114)+x(23)*x(122)+x(24)*x(129)+x(25)*x(135))+(x(21)*x(106)+x(22)*x(115)+x(23)*x(123)+x(24)*x(130)+x(25)*x(136)+x(26)*x(141))*(x(21)*x(106)+x(22)*x(115)+x(23)*x(123)+x(24)*x(130)+x(25)*x(136)+x(26)*x(141))+(x(21)*x(107)+x(22)*x(116)+x(23)*x(124)+x(24)*x(131)+x(25)*x(137)+x(26)*x(142)+x(27)*x(146))*(x(21)*x(107)+x(22)*x(116)+x(23)*x(124)+x(24)*x(131)+x(25)*x(137)+x(26)*x(142)+x(27)*x(146))+(x(21)*x(108)+x(22)*x(117)+x(23)*x(125)+x(24)*x(132)+x(25)*x(138)+x(26)*x(143)+x(27)*x(147)+x(28)*x(150))*(x(21)*x(108)+x(22)*x(117)+x(23)*x(125)+x(24)*x(132)+x(25)*x(138)+x(26)*x(143)+x(27)*x(147)+x(28)*x(150))+(x(21)*x(109)+x(22)*x(118)+x(23)*x(126)+x(24)*x(133)+x(25)*x(139)+x(26)*x(144)+x(27)*x(148)+x(28)*x(151)+x(29)*x(153))*(x(21)*x(109)+x(22)*x(118)+x(23)*x(126)+x(24)*x(133)+x(25)*x(139)+x(26)*x(144)+x(27)*x(148)+x(28)*x(151)+x(29)*x(153))+(x(21)*x(110)+x(22)*x(119)+x(23)*x(127)+x(24)*x(134)+x(25)*x(140)+x(26)*x(145)+x(27)*x(149)+x(28)*x(152)+x(29)*x(154)+x(30)*x(155))*(x(21)*x(110)+x(22)*x(119)+x(23)*x(127)+x(24)*x(134)+x(25)*x(140)+x(26)*x(145)+x(27)*x(149)+x(28)*x(152)+x(29)*x(154)+x(30)*x(155))+x(31)*x(101)*x(31)*x(101)+(x(31)*x(102)+x(32)*x(111))*(x(31)*x(102)+x(32)*x(111))+(0.3+x(31)*x(103)+x(32)*x(112)+x(33)*x(120))*(0.3+x(31)*x(103)+x(32)*x(112)+x(33)*x(120))+(-0.8+x(31)*x(104)+x(32)*x(113)+x(33)*x(121)+x(34)*x(128))*(-0.8+x(31)*x(104)+x(32)*x(113)+x(33)*x(121)+x(34)*x(128))+(0.3+x(31)*x(105)+x(32)*x(114)+x(33)*x(122)+x(34)*x(129)+x(35)*x(135))*(0.3+x(31)*x(105)+x(32)*x(114)+x(33)*x(122)+x(34)*x(129)+x(35)*x(135))+(x(31)*x(106)+x(32)*x(115)+x(33)*x(123)+x(34)*x(130)+x(35)*x(136)+x(36)*x(141))*(x(31)*x(106)+x(32)*x(115)+x(33)*x(123)+x(34)*x(130)+x(35)*x(136)+x(36)*x(141))+(x(31)*x(107)+x(32)*x(116)+x(33)*x(124)+x(34)*x(131)+x(35)*x(137)+x(36)*x(142)+x(37)*x(146))*(x(31)*x(107)+x(32)*x(116)+x(33)*x(124)+x(34)*x(131)+x(35)*x(137)+x(36)*x(142)+x(37)*x(146))+(x(31)*x(108)+x(32)*x(117)+x(33)*x(125)+x(34)*x(132)+x(35)*x(138)+x(36)*x(143)+x(37)*x(147)+x(38)*x(150))*(x(31)*x(108)+x(32)*x(117)+x(33)*x(125)+x(34)*x(132)+x(35)*x(138)+x(36)*x(143)+x(37)*x(147)+x(38)*x(150))+(x(31)*x(109)+x(32)*x(118)+x(33)*x(126)+x(34)*x(133)+x(35)*x(139)+x(36)*x(144)+x(37)*x(148)+x(38)*x(151)+x(39)*x(153))*(x(31)*x(109)+x(32)*x(118)+x(33)*x(126)+x(34)*x(133)+x(35)*x(139)+x(36)*x(144)+x(37)*x(148)+x(38)*x(151)+x(39)*x(153))+(x(31)*x(110)+x(32)*x(119)+x(33)*x(127)+x(34)*x(134)+x(35)*x(140)+x(36)*x(145)+x(37)*x(149)+x(38)*x(152)+x(39)*x(154)+x(40)*x(155))*(x(31)*x(110)+x(32)*x(119)+x(33)*x(127)+x(34)*x(134)+x(35)*x(140)+x(36)*x(145)+x(37)*x(149)+x(38)*x(152)+x(39)*x(154)+x(40)*x(155))+x(41)*x(101)*x(41)*x(101)+(x(41)*x(102)+x(42)*x(111))*(x(41)*x(102)+x(42)*x(111))+(x(41)*x(103)+x(42)*x(112)+x(43)*x(120))*(x(41)*x(103)+x(42)*x(112)+x(43)*x(120))+(0.4+x(41)*x(104)+x(42)*x(113)+x(43)*x(121)+x(44)*x(128))*(0.4+x(41)*x(104)+x(42)*x(113)+x(43)*x(121)+x(44)*x(128))+(-1+x(41)*x(105)+x(42)*x(114)+x(43)*x(122)+x(44)*x(129)+x(45)*x(135))*(-1+x(41)*x(105)+x(42)*x(114)+x(43)*x(122)+x(44)*x(129)+x(45)*x(135))+(0.4+x(41)*x(106)+x(42)*x(115)+x(43)*x(123)+x(44)*x(130)+x(45)*x(136)+x(46)*x(141))*(0.4+x(41)*x(106)+x(42)*x(115)+x(43)*x(123)+x(44)*x(130)+x(45)*x(136)+x(46)*x(141))+(x(41)*x(107)+x(42)*x(116)+x(43)*x(124)+x(44)*x(131)+x(45)*x(137)+x(46)*x(142)+x(47)*x(146))*(x(41)*x(107)+x(42)*x(116)+x(43)*x(124)+x(44)*x(131)+x(45)*x(137)+x(46)*x(142)+x(47)*x(146))+(x(41)*x(108)+x(42)*x(117)+x(43)*x(125)+x(44)*x(132)+x(45)*x(138)+x(46)*x(143)+x(47)*x(147)+x(48)*x(150))*(x(41)*x(108)+x(42)*x(117)+x(43)*x(125)+x(44)*x(132)+x(45)*x(138)+x(46)*x(143)+x(47)*x(147)+x(48)*x(150))+(x(41)*x(109)+x(42)*x(118)+x(43)*x(126)+x(44)*x(133)+x(45)*x(139)+x(46)*x(144)+x(47)*x(148)+x(48)*x(151)+x(49)*x(153))*(x(41)*x(109)+x(42)*x(118)+x(43)*x(126)+x(44)*x(133)+x(45)*x(139)+x(46)*x(144)+x(47)*x(148)+x(48)*x(151)+x(49)*x(153))+(x(41)*x(110)+x(42)*x(119)+x(43)*x(127)+x(44)*x(134)+x(45)*x(140)+x(46)*x(145)+x(47)*x(149)+x(48)*x(152)+x(49)*x(154)+x(50)*x(155))*(x(41)*x(110)+x(42)*x(119)+x(43)*x(127)+x(44)*x(134)+x(45)*x(140)+x(46)*x(145)+x(47)*x(149)+x(48)*x(152)+x(49)*x(154)+x(50)*x(155))+x(51)*x(101)*x(51)*x(101)+(x(51)*x(102)+x(52)*x(111))*(x(51)*x(102)+x(52)*x(111))+(x(51)*x(103)+x(52)*x(112)+x(53)*x(120))*(x(51)*x(103)+x(52)*x(112)+x(53)*x(120))+(x(51)*x(104)+x(52)*x(113)+x(53)*x(121)+x(54)*x(128))*(x(51)*x(104)+x(52)*x(113)+x(53)*x(121)+x(54)*x(128))+(0.5+x(51)*x(105)+x(52)*x(114)+x(53)*x(122)+x(54)*x(129)+x(55)*x(135))*(0.5+x(51)*x(105)+x(52)*x(114)+x(53)*x(122)+x(54)*x(129)+x(55)*x(135))+(-1.2+x(51)*x(106)+x(52)*x(115)+x(53)*x(123)+x(54)*x(130)+x(55)*x(136)+x(56)*x(141))*(-1.2+x(51)*x(106)+x(52)*x(115)+x(53)*x(123)+x(54)*x(130)+x(55)*x(136)+x(56)*x(141))+(0.5+x(51)*x(107)+x(52)*x(116)+x(53)*x(124)+x(54)*x(131)+x(55)*x(137)+x(56)*x(142)+x(57)*x(146))*(0.5+x(51)*x(107)+x(52)*x(116)+x(53)*x(124)+x(54)*x(131)+x(55)*x(137)+x(56)*x(142)+x(57)*x(146))+(x(51)*x(108)+x(52)*x(117)+x(53)*x(125)+x(54)*x(132)+x(55)*x(138)+x(56)*x(143)+x(57)*x(147)+x(58)*x(150))*(x(51)*x(108)+x(52)*x(117)+x(53)*x(125)+x(54)*x(132)+x(55)*x(138)+x(56)*x(143)+x(57)*x(147)+x(58)*x(150))+(x(51)*x(109)+x(52)*x(118)+x(53)*x(126)+x(54)*x(133)+x(55)*x(139)+x(56)*x(144)+x(57)*x(148)+x(58)*x(151)+x(59)*x(153))*(x(51)*x(109)+x(52)*x(118)+x(53)*x(126)+x(54)*x(133)+x(55)*x(139)+x(56)*x(144)+x(57)*x(148)+x(58)*x(151)+x(59)*x(153))+(x(51)*x(110)+x(52)*x(119)+x(53)*x(127)+x(54)*x(134)+x(55)*x(140)+x(56)*x(145)+x(57)*x(149)+x(58)*x(152)+x(59)*x(154)+x(60)*x(155))*(x(51)*x(110)+x(52)*x(119)+x(53)*x(127)+x(54)*x(134)+x(55)*x(140)+x(56)*x(145)+x(57)*x(149)+x(58)*x(152)+x(59)*x(154)+x(60)*x(155))+x(61)*x(101)*x(61)*x(101)+(x(61)*x(102)+x(62)*x(111))*(x(61)*x(102)+x(62)*x(111))+(x(61)*x(103)+x(62)*x(112)+x(63)*x(120))*(x(61)*x(103)+x(62)*x(112)+x(63)*x(120))+(x(61)*x(104)+x(62)*x(113)+x(63)*x(121)+x(64)*x(128))*(x(61)*x(104)+x(62)*x(113)+x(63)*x(121)+x(64)*x(128))+(x(61)*x(105)+x(62)*x(114)+x(63)*x(122)+x(64)*x(129)+x(65)*x(135))*(x(61)*x(105)+x(62)*x(114)+x(63)*x(122)+x(64)*x(129)+x(65)*x(135))+(0.6+x(61)*x(106)+x(62)*x(115)+x(63)*x(123)+x(64)*x(130)+x(65)*x(136)+x(66)*x(141))*(0.6+x(61)*x(106)+x(62)*x(115)+x(63)*x(123)+x(64)*x(130)+x(65)*x(136)+x(66)*x(141))+(-1.4+x(61)*x(107)+x(62)*x(116)+x(63)*x(124)+x(64)*x(131)+x(65)*x(137)+x(66)*x(142)+x(67)*x(146))*(-1.4+x(61)*x(107)+x(62)*x(116)+x(63)*x(124)+x(64)*x(131)+x(65)*x(137)+x(66)*x(142)+x(67)*x(146))+(0.6+x(61)*x(108)+x(62)*x(117)+x(63)*x(125)+x(64)*x(132)+x(65)*x(138)+x(66)*x(143)+x(67)*x(147)+x(68)*x(150))*(0.6+x(61)*x(108)+x(62)*x(117)+x(63)*x(125)+x(64)*x(132)+x(65)*x(138)+x(66)*x(143)+x(67)*x(147)+x(68)*x(150))+(x(61)*x(109)+x(62)*x(118)+x(63)*x(126)+x(64)*x(133)+x(65)*x(139)+x(66)*x(144)+x(67)*x(148)+x(68)*x(151)+x(69)*x(153))*(x(61)*x(109)+x(62)*x(118)+x(63)*x(126)+x(64)*x(133)+x(65)*x(139)+x(66)*x(144)+x(67)*x(148)+x(68)*x(151)+x(69)*x(153))+(x(61)*x(110)+x(62)*x(119)+x(63)*x(127)+x(64)*x(134)+x(65)*x(140)+x(66)*x(145)+x(67)*x(149)+x(68)*x(152)+x(69)*x(154)+x(70)*x(155))*(x(61)*x(110)+x(62)*x(119)+x(63)*x(127)+x(64)*x(134)+x(65)*x(140)+x(66)*x(145)+x(67)*x(149)+x(68)*x(152)+x(69)*x(154)+x(70)*x(155))+x(71)*x(101)*x(71)*x(101)+(x(71)*x(102)+x(72)*x(111))*(x(71)*x(102)+x(72)*x(111))+(x(71)*x(103)+x(72)*x(112)+x(73)*x(120))*(x(71)*x(103)+x(72)*x(112)+x(73)*x(120))+(x(71)*x(104)+x(72)*x(113)+x(73)*x(121)+x(74)*x(128))*(x(71)*x(104)+x(72)*x(113)+x(73)*x(121)+x(74)*x(128))+(x(71)*x(105)+x(72)*x(114)+x(73)*x(122)+x(74)*x(129)+x(75)*x(135))*(x(71)*x(105)+x(72)*x(114)+x(73)*x(122)+x(74)*x(129)+x(75)*x(135))+(x(71)*x(106)+x(72)*x(115)+x(73)*x(123)+x(74)*x(130)+x(75)*x(136)+x(76)*x(141))*(x(71)*x(106)+x(72)*x(115)+x(73)*x(123)+x(74)*x(130)+x(75)*x(136)+x(76)*x(141))+(0.7+x(71)*x(107)+x(72)*x(116)+x(73)*x(124)+x(74)*x(131)+x(75)*x(137)+x(76)*x(142)+x(77)*x(146))*(0.7+x(71)*x(107)+x(72)*x(116)+x(73)*x(124)+x(74)*x(131)+x(75)*x(137)+x(76)*x(142)+x(77)*x(146))+(-1.6+x(71)*x(108)+x(72)*x(117)+x(73)*x(125)+x(74)*x(132)+x(75)*x(138)+x(76)*x(143)+x(77)*x(147)+x(78)*x(150))*(-1.6+x(71)*x(108)+x(72)*x(117)+x(73)*x(125)+x(74)*x(132)+x(75)*x(138)+x(76)*x(143)+x(77)*x(147)+x(78)*x(150))+(0.7+x(71)*x(109)+x(72)*x(118)+x(73)*x(126)+x(74)*x(133)+x(75)*x(139)+x(76)*x(144)+x(77)*x(148)+x(78)*x(151)+x(79)*x(153))*(0.7+x(71)*x(109)+x(72)*x(118)+x(73)*x(126)+x(74)*x(133)+x(75)*x(139)+x(76)*x(144)+x(77)*x(148)+x(78)*x(151)+x(79)*x(153))+(x(71)*x(110)+x(72)*x(119)+x(73)*x(127)+x(74)*x(134)+x(75)*x(140)+x(76)*x(145)+x(77)*x(149)+x(78)*x(152)+x(79)*x(154)+x(80)*x(155))*(x(71)*x(110)+x(72)*x(119)+x(73)*x(127)+x(74)*x(134)+x(75)*x(140)+x(76)*x(145)+x(77)*x(149)+x(78)*x(152)+x(79)*x(154)+x(80)*x(155))+x(81)*x(101)*x(81)*x(101)+(x(81)*x(102)+x(82)*x(111))*(x(81)*x(102)+x(82)*x(111))+(x(81)*x(103)+x(82)*x(112)+x(83)*x(120))*(x(81)*x(103)+x(82)*x(112)+x(83)*x(120))+(x(81)*x(104)+x(82)*x(113)+x(83)*x(121)+x(84)*x(128))*(x(81)*x(104)+x(82)*x(113)+x(83)*x(121)+x(84)*x(128))+(x(81)*x(105)+x(82)*x(114)+x(83)*x(122)+x(84)*x(129)+x(85)*x(135))*(x(81)*x(105)+x(82)*x(114)+x(83)*x(122)+x(84)*x(129)+x(85)*x(135))+(x(81)*x(106)+x(82)*x(115)+x(83)*x(123)+x(84)*x(130)+x(85)*x(136)+x(86)*x(141))*(x(81)*x(106)+x(82)*x(115)+x(83)*x(123)+x(84)*x(130)+x(85)*x(136)+x(86)*x(141))+(x(81)*x(107)+x(82)*x(116)+x(83)*x(124)+x(84)*x(131)+x(85)*x(137)+x(86)*x(142)+x(87)*x(146))*(x(81)*x(107)+x(82)*x(116)+x(83)*x(124)+x(84)*x(131)+x(85)*x(137)+x(86)*x(142)+x(87)*x(146))+(0.8+x(81)*x(108)+x(82)*x(117)+x(83)*x(125)+x(84)*x(132)+x(85)*x(138)+x(86)*x(143)+x(87)*x(147)+x(88)*x(150))*(0.8+x(81)*x(108)+x(82)*x(117)+x(83)*x(125)+x(84)*x(132)+x(85)*x(138)+x(86)*x(143)+x(87)*x(147)+x(88)*x(150))+(-1.8+x(81)*x(109)+x(82)*x(118)+x(83)*x(126)+x(84)*x(133)+x(85)*x(139)+x(86)*x(144)+x(87)*x(148)+x(88)*x(151)+x(89)*x(153))*(-1.8+x(81)*x(109)+x(82)*x(118)+x(83)*x(126)+x(84)*x(133)+x(85)*x(139)+x(86)*x(144)+x(87)*x(148)+x(88)*x(151)+x(89)*x(153))+(0.8+x(81)*x(110)+x(82)*x(119)+x(83)*x(127)+x(84)*x(134)+x(85)*x(140)+x(86)*x(145)+x(87)*x(149)+x(88)*x(152)+x(89)*x(154)+x(90)*x(155))*(0.8+x(81)*x(110)+x(82)*x(119)+x(83)*x(127)+x(84)*x(134)+x(85)*x(140)+x(86)*x(145)+x(87)*x(149)+x(88)*x(152)+x(89)*x(154)+x(90)*x(155))+x(91)*x(101)*x(91)*x(101)+(x(91)*x(102)+x(92)*x(111))*(x(91)*x(102)+x(92)*x(111))+(x(91)*x(103)+x(92)*x(112)+x(93)*x(120))*(x(91)*x(103)+x(92)*x(112)+x(93)*x(120))+(x(91)*x(104)+x(92)*x(113)+x(93)*x(121)+x(94)*x(128))*(x(91)*x(104)+x(92)*x(113)+x(93)*x(121)+x(94)*x(128))+(x(91)*x(105)+x(92)*x(114)+x(93)*x(122)+x(94)*x(129)+x(95)*x(135))*(x(91)*x(105)+x(92)*x(114)+x(93)*x(122)+x(94)*x(129)+x(95)*x(135))+(x(91)*x(106)+x(92)*x(115)+x(93)*x(123)+x(94)*x(130)+x(95)*x(136)+x(96)*x(141))*(x(91)*x(106)+x(92)*x(115)+x(93)*x(123)+x(94)*x(130)+x(95)*x(136)+x(96)*x(141))+(x(91)*x(107)+x(92)*x(116)+x(93)*x(124)+x(94)*x(131)+x(95)*x(137)+x(96)*x(142)+x(97)*x(146))*(x(91)*x(107)+x(92)*x(116)+x(93)*x(124)+x(94)*x(131)+x(95)*x(137)+x(96)*x(142)+x(97)*x(146))+(x(91)*x(108)+x(92)*x(117)+x(93)*x(125)+x(94)*x(132)+x(95)*x(138)+x(96)*x(143)+x(97)*x(147)+x(98)*x(150))*(x(91)*x(108)+x(92)*x(117)+x(93)*x(125)+x(94)*x(132)+x(95)*x(138)+x(96)*x(143)+x(97)*x(147)+x(98)*x(150))+(0.9+x(91)*x(109)+x(92)*x(118)+x(93)*x(126)+x(94)*x(133)+x(95)*x(139)+x(96)*x(144)+x(97)*x(148)+x(98)*x(151)+x(99)*x(153))*(0.9+x(91)*x(109)+x(92)*x(118)+x(93)*x(126)+x(94)*x(133)+x(95)*x(139)+x(96)*x(144)+x(97)*x(148)+x(98)*x(151)+x(99)*x(153))+(-20+x(91)*x(110)+x(92)*x(119)+x(93)*x(127)+x(94)*x(134)+x(95)*x(140)+x(96)*x(145)+x(97)*x(149)+x(98)*x(152)+x(99)*x(154)+x(100)*x(155))*(-20+x(91)*x(110)+x(92)*x(119)+x(93)*x(127)+x(94)*x(134)+x(95)*x(140)+x(96)*x(145)+x(97)*x(149)+x(98)*x(152)+x(99)*x(154)+x(100)*x(155));

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,0,-Inf,-Inf,0,-Inf,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,0.2,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.4,-0.1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.6,-0.2,NaN,NaN,NaN,NaN,NaN,NaN,0.8,-0.3,NaN,NaN,NaN,NaN,NaN,1,-0.4,NaN,NaN,NaN,NaN,1.2,-0.5,NaN,NaN,NaN,1.4,-0.6,NaN,NaN,1.6,-0.7,NaN,1.8,-0.8,20]';

% Options
opts = struct('probname','qr3dls');
opts.sense = 'min';
