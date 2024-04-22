% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-May-2015 23:16:44
% Model: inf_nlp_139

% Objective
fun = @(x)x(70)^2+x(71)^2+x(72)^2+x(73)^2+x(74)^2+x(75)^2+x(76)^2+x(77)^2+x(78)^2+x(79)^2+x(80)^2+x(81)^2+x(82)^2+x(83)^2+x(84)^2+x(85)^2+x(86)^2+x(87)^2+x(88)^2+x(89)^2+x(90)^2+x(91)^2+x(92)^2+x(93)^2+x(94)^2+x(95)^2+x(96)^2+x(97)^2+x(98)^2+x(99)^2+x(100)^2+x(101)^2+x(102)^2+x(103)^2+x(104)^2+x(105)^2+x(106)^2+x(107)^2+x(108)^2+x(109)^2+x(110)^2+x(111)^2+x(112)^2+x(113)^2+x(114)^2+x(115)^2+x(116)^2+x(117)^2+x(118)^2+x(119)^2+x(120)^2+x(121)^2+x(122)^2+x(123)^2+x(124)^2+x(125)^2+x(126)^2+x(127)^2+x(128)^2+x(129)^2+x(130)^2+x(131)^2+x(132)^2;

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06,0.06]';

% Constraints
nlcon = @(x)[-x(1)-313.15*x(2)-98062.9225*x(3)-0.00714285714285714*x(4)-5.10204081632654e-5*x(5)-2.23678571428571*x(6)+x(7);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.00416666666666667*x(4)-1.73611111111111e-5*x(5)-1.30479166666667*x(6)+x(8);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.0025*x(4)-6.25e-6*x(5)-0.782875*x(6)+x(9);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.002*x(4)-4e-6*x(5)-0.6263*x(6)+x(10);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.00166666666666667*x(4)-2.77777777777778e-6*x(5)-0.521916666666667*x(6)+x(11);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.00142857142857143*x(4)-2.04081632653061e-6*x(5)-0.447357142857143*x(6)+x(12);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.00125*x(4)-1.5625e-6*x(5)-0.3914375*x(6)+x(13);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.00111111111111111*x(4)-1.23456790123457e-6*x(5)-0.347944444444444*x(6)+x(14);
             -x(1)-313.15*x(2)-98062.9225*x(3)-0.001*x(4)-1e-6*x(5)-0.31315*x(6)+x(15);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.00714285714285714*x(4)-5.10204081632654e-5*x(5)-2.30821428571429*x(6)+x(16);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.00416666666666667*x(4)-1.73611111111111e-5*x(5)-1.34645833333333*x(6)+x(17);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.0025*x(4)-6.25e-6*x(5)-0.807875*x(6)+x(18);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.002*x(4)-4e-6*x(5)-0.6463*x(6)+x(19);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.00166666666666667*x(4)-2.77777777777778e-6*x(5)-0.538583333333333*x(6)+x(20);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.00142857142857143*x(4)-2.04081632653061e-6*x(5)-0.461642857142857*x(6)+x(21);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.00125*x(4)-1.5625e-6*x(5)-0.4039375*x(6)+x(22);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.00111111111111111*x(4)-1.23456790123457e-6*x(5)-0.359055555555556*x(6)+x(23);
             -x(1)-323.15*x(2)-104425.9225*x(3)-0.001*x(4)-1e-6*x(5)-0.32315*x(6)+x(24);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.00714285714285714*x(4)-5.10204081632654e-5*x(5)-2.37964285714286*x(6)+x(25);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.00416666666666667*x(4)-1.73611111111111e-5*x(5)-1.388125*x(6)+x(26);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.0025*x(4)-6.25e-6*x(5)-0.832875*x(6)+x(27);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.002*x(4)-4e-6*x(5)-0.6663*x(6)+x(28);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.00166666666666667*x(4)-2.77777777777778e-6*x(5)-0.55525*x(6)+x(29);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.00142857142857143*x(4)-2.04081632653061e-6*x(5)-0.475928571428571*x(6)+x(30);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.00125*x(4)-1.5625e-6*x(5)-0.4164375*x(6)+x(31);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.00111111111111111*x(4)-1.23456790123457e-6*x(5)-0.370166666666667*x(6)+x(32);
             -x(1)-333.15*x(2)-110988.9225*x(3)-0.001*x(4)-1e-6*x(5)-0.33315*x(6)+x(33);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.00714285714285714*x(4)-5.10204081632654e-5*x(5)-2.45107142857143*x(6)+x(34);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.00416666666666667*x(4)-1.73611111111111e-5*x(5)-1.42979166666667*x(6)+x(35);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.0025*x(4)-6.25e-6*x(5)-0.857875*x(6)+x(36);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.002*x(4)-4e-6*x(5)-0.6863*x(6)+x(37);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.00166666666666667*x(4)-2.77777777777778e-6*x(5)-0.571916666666667*x(6)+x(38);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.00142857142857143*x(4)-2.04081632653061e-6*x(5)-0.490214285714286*x(6)+x(39);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.00125*x(4)-1.5625e-6*x(5)-0.4289375*x(6)+x(40);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.00111111111111111*x(4)-1.23456790123457e-6*x(5)-0.381277777777778*x(6)+x(41);
             -x(1)-343.15*x(2)-117751.9225*x(3)-0.001*x(4)-1e-6*x(5)-0.34315*x(6)+x(42);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.00714285714285714*x(4)-5.10204081632654e-5*x(5)-2.5225*x(6)+x(43);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.00416666666666667*x(4)-1.73611111111111e-5*x(5)-1.47145833333333*x(6)+x(44);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.0025*x(4)-6.25e-6*x(5)-0.882875*x(6)+x(45);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.002*x(4)-4e-6*x(5)-0.7063*x(6)+x(46);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.00166666666666667*x(4)-2.77777777777778e-6*x(5)-0.588583333333333*x(6)+x(47);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.00142857142857143*x(4)-2.04081632653061e-6*x(5)-0.5045*x(6)+x(48);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.00125*x(4)-1.5625e-6*x(5)-0.4414375*x(6)+x(49);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.00111111111111111*x(4)-1.23456790123457e-6*x(5)-0.392388888888889*x(6)+x(50);
             -x(1)-353.15*x(2)-124714.9225*x(3)-0.001*x(4)-1e-6*x(5)-0.35315*x(6)+x(51);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.00714285714285714*x(4)-5.10204081632654e-5*x(5)-2.59392857142857*x(6)+x(52);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.00416666666666667*x(4)-1.73611111111111e-5*x(5)-1.513125*x(6)+x(53);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.0025*x(4)-6.25e-6*x(5)-0.907875*x(6)+x(54);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.002*x(4)-4e-6*x(5)-0.7263*x(6)+x(55);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.00166666666666667*x(4)-2.77777777777778e-6*x(5)-0.60525*x(6)+x(56);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.00142857142857143*x(4)-2.04081632653061e-6*x(5)-0.518785714285714*x(6)+x(57);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.00125*x(4)-1.5625e-6*x(5)-0.4539375*x(6)+x(58);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.00111111111111111*x(4)-1.23456790123457e-6*x(5)-0.4035*x(6)+x(59);
             -x(1)-363.15*x(2)-131877.9225*x(3)-0.001*x(4)-1e-6*x(5)-0.36315*x(6)+x(60);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.00714285714285714*x(4)-5.10204081632654e-5*x(5)-2.66535714285714*x(6)+x(61);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.00416666666666667*x(4)-1.73611111111111e-5*x(5)-1.55479166666667*x(6)+x(62);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.0025*x(4)-6.25e-6*x(5)-0.932875*x(6)+x(63);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.002*x(4)-4e-6*x(5)-0.7463*x(6)+x(64);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.00166666666666667*x(4)-2.77777777777778e-6*x(5)-0.621916666666667*x(6)+x(65);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.00142857142857143*x(4)-2.04081632653061e-6*x(5)-0.533071428571429*x(6)+x(66);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.00125*x(4)-1.5625e-6*x(5)-0.4664375*x(6)+x(67);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.00111111111111111*x(4)-1.23456790123457e-6*x(5)-0.414611111111111*x(6)+x(68);
             -x(1)-373.15*x(2)-139240.9225*x(3)-0.001*x(4)-1e-6*x(5)-0.37315*x(6)+x(69);
             -x(7)+x(70);
             -x(8)+x(71);
             -x(9)+x(72);
             -x(10)+x(73);
             -x(11)+x(74);
             -x(12)+x(75);
             -x(13)+x(76);
             -x(14)+x(77);
             -x(15)+x(78);
             -x(16)+x(79);
             -x(17)+x(80);
             -x(18)+x(81);
             -x(19)+x(82);
             -x(20)+x(83);
             -x(21)+x(84);
             -x(22)+x(85);
             -x(23)+x(86);
             -x(24)+x(87);
             -x(25)+x(88);
             -x(26)+x(89);
             -x(27)+x(90);
             -x(28)+x(91);
             -x(29)+x(92);
             -x(30)+x(93);
             -x(31)+x(94);
             -x(32)+x(95);
             -x(33)+x(96);
             -x(34)+x(97);
             -x(35)+x(98);
             -x(36)+x(99);
             -x(37)+x(100);
             -x(38)+x(101);
             -x(39)+x(102);
             -x(40)+x(103);
             -x(41)+x(104);
             -x(42)+x(105);
             -x(43)+x(106);
             -x(44)+x(107);
             -x(45)+x(108);
             -x(46)+x(109);
             -x(47)+x(110);
             -x(48)+x(111);
             -x(49)+x(112);
             -x(50)+x(113);
             -x(51)+x(114);
             -x(52)+x(115);
             -x(53)+x(116);
             -x(54)+x(117);
             -x(55)+x(118);
             -x(56)+x(119);
             -x(57)+x(120);
             -x(58)+x(121);
             -x(59)+x(122);
             -x(60)+x(123);
             -x(61)+x(124);
             -x(62)+x(125);
             -x(63)+x(126);
             -x(64)+x(127);
             -x(65)+x(128);
             -x(66)+x(129);
             -x(67)+x(130);
             -x(68)+x(131);
             -x(69)+x(132)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.976375823,-0.958747523,-0.929510724,-0.910338282,-0.89038985,-0.869547853,-0.847663365,-0.824489479,-0.799779289,-0.978967438,-0.963441776,-0.937677076,-0.920962683,-0.903716589,-0.885866635,-0.867340661,-0.848024732,-0.827782125,-0.981197173,-0.967412154,-0.944601669,-0.929917787,-0.91482868,-0.899323296,-0.883361114,-0.866864771,-0.849793745,-0.983146739,-0.970807781,-0.950536124,-0.937528358,-0.924241625,-0.910643735,-0.896702501,-0.882417921,-0.867732772,-0.984888588,-0.973760885,-0.95566186,-0.944065001,-0.932266577,-0.920252689,-0.907981634,-0.895463837,-0.882674972,-0.986345252,-0.976389133,-0.960099759,-0.949734715,-0.939220972,-0.928528113,-0.917666278,-0.906605049,-0.895341048,-0.987677798,-0.978639707,-0.963997211,-0.954689425,-0.94525008,-0.935692332,-0.92598987,-0.916172293,-0.906177112]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-0.976375823,-0.958747523,-0.929510724,-0.910338282,-0.89038985,-0.869547853,-0.847663365,-0.824489479,-0.799779289,-0.978967438,-0.963441776,-0.937677076,-0.920962683,-0.903716589,-0.885866635,-0.867340661,-0.848024732,-0.827782125,-0.981197173,-0.967412154,-0.944601669,-0.929917787,-0.91482868,-0.899323296,-0.883361114,-0.866864771,-0.849793745,-0.983146739,-0.970807781,-0.950536124,-0.937528358,-0.924241625,-0.910643735,-0.896702501,-0.882417921,-0.867732772,-0.984888588,-0.973760885,-0.95566186,-0.944065001,-0.932266577,-0.920252689,-0.907981634,-0.895463837,-0.882674972,-0.986345252,-0.976389133,-0.960099759,-0.949734715,-0.939220972,-0.928528113,-0.917666278,-0.906605049,-0.895341048,-0.987677798,-0.978639707,-0.963997211,-0.954689425,-0.94525008,-0.935692332,-0.92598987,-0.916172293,-0.906177112]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_nlp_139');
opts.sense = 'min';
