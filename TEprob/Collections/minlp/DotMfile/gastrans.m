% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:54
% Model: gastrans

% Objective
fun = @(x)2.28*x(73)+2.28*x(76)+1.68*x(80)+1.68*x(82)+2.28*x(85);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,-Inf,-Inf,0,-Inf,-Inf,0,-Inf,-Inf,0,-Inf,-Inf,-Inf,0,0,20.344,0,0,8.87,0,0,900,0,0,2500,900,0,900,900,0,0,0,625,0,0,2500,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1.2,-4.034,-0.222,0,-15.616,-3.918,8.4,-5.256,-6.385,4.8,-6.848,-2.12,-1.919,0.96,0,22.012,0,0,11.594,0,4382.44,6400,4382.44,4382.44,4382.44,6400,5929,6400,4382.44,5929,4382.44,4382.44,4382.44,4382.44,3969,4382.44,4382.44,4382.44,5929,6400]';

% Constraints
nlcon = @(x)[-x(17)+x(18)-x(67);
             -x(6)+x(7)-x(68);
             -x(23)+x(24)-x(69);
             -x(10)-x(11)+x(12)+x(13)-x(70);
             -x(20)-x(71);
             -x(3)-x(4)+x(5)-x(72);
             -x(1)-x(2)+x(3)+x(4)-x(73);
             -x(7)+x(8)-x(74);
             -x(12)-x(13)+x(14)+x(15)-x(75);
             x(6)-x(76);
             -x(19)+x(20)-x(77);
             -x(16)+x(17)-x(78);
             -x(24)-x(79);
             -x(9)-x(18)+x(19)-x(80);
             -x(22)+x(23)-x(81);
             x(10)+x(11)-x(82);
             -x(21)+x(22)-x(83);
             -x(14)-x(15)+x(16)+x(21)-x(84);
             x(1)+x(2)-x(85);
             -x(5)-x(8)+x(9)-x(86);
             x(1)^2*x(25)+8.99076279639865*x(93)-8.99076279639865*x(105);
             x(2)^2*x(26)+8.99076279639865*x(93)-8.99076279639865*x(105);
             x(3)^2*x(27)+5.99384186426577*x(92)-5.99384186426577*x(93);
             x(4)^2*x(28)+5.99384186426577*x(92)-5.99384186426577*x(93);
             x(5)^2*x(29)-1.38319427636902*x(92)+1.38319427636902*x(106);
             x(6)^2*x(30)+0.0993769948466698*x(88)-0.0993769948466698*x(96);
             x(7)^2*x(31)-0.147352095807131*x(88)+0.147352095807131*x(94);
             x(8)^2*x(32)-0.224905830442463*x(94)+0.224905830442463*x(106);
             x(9)^2*x(33)+0.653873657919902*x(100)-0.653873657919902*x(106);
             x(12)^2*x(34)-1.79815255927973*x(90)+1.79815255927973*x(95);
             x(13)^2*x(35)-0.0265962529480588*x(90)+0.0265962529480588*x(95);
             x(14)^2*x(36)-1.43852204742378*x(95)+1.43852204742378*x(104);
             x(15)^2*x(37)-0.021277002358447*x(95)+0.021277002358447*x(104);
             x(16)^2*x(38)+0.856263123466538*x(98)-0.856263123466538*x(104);
             x(17)^2*x(39)+0.899076279639865*x(87)-0.899076279639865*x(98);
             x(18)^2*x(40)-7.19261023711892*x(87)+7.19261023711892*x(100);
             x(19)^2*x(41)+3.59630511855946*x(97)-3.59630511855946*x(100);
             x(20)^2*x(42)+1.43852204742378*x(91)-1.43852204742378*x(97);
             x(21)^2*x(43)+0.0509935163731392*x(103)-0.0509935163731392*x(104);
             x(23)^2*x(44)+0.0016882734118691*x(89)-0.0016882734118691*x(101);
             x(24)^2*x(45)-0.0275751323938619*x(89)+0.0275751323938619*x(99);
             -x(10)^2+7.19261023711892*x(90)-7.19261023711892*x(102);
             -x(11)^2+0.106385011792235*x(90)-0.106385011792235*x(102);
             -x(22)^2+0.00636349209089121*x(101)-0.00636349209089121*x(103);
             x(25)-2*x(46);
             x(26)-2*x(47);
             x(27)-2*x(48);
             x(28)-2*x(49);
             x(29)-2*x(50);
             x(30)-2*x(51);
             x(31)-2*x(52);
             x(32)-2*x(53);
             x(33)-2*x(54);
             x(34)-2*x(55);
             x(35)-2*x(56);
             x(36)-2*x(57);
             x(37)-2*x(58);
             x(38)-2*x(59);
             x(39)-2*x(60);
             x(40)-2*x(61);
             x(41)-2*x(62);
             x(42)-2*x(63);
             x(43)-2*x(64);
             x(44)-2*x(65);
             x(45)-2*x(66);
             -5929*x(46)-x(93)+x(105);
             -5929*x(47)-x(93)+x(105);
             -6400*x(48)-x(92)+x(93);
             -6400*x(49)-x(92)+x(93);
             -5500*x(50)+x(92)-x(106);
             -6400*x(51)-x(88)+x(96);
             -5500*x(52)+x(88)-x(94);
             -5500*x(53)+x(94)-x(106);
             -4382.44*x(54)-x(100)+x(106);
             -4382.44*x(55)+x(90)-x(95);
             -4382.44*x(56)+x(90)-x(95);
             -3482.44*x(57)+x(95)-x(104);
             -3482.44*x(58)+x(95)-x(104);
             -4382.44*x(59)-x(98)+x(104);
             -4382.44*x(60)-x(87)+x(98);
             -4382.44*x(61)+x(87)-x(100);
             -4382.44*x(62)-x(97)+x(100);
             -4382.44*x(63)-x(91)+x(97);
             -4382.44*x(64)-x(103)+x(104);
             -4382.44*x(65)-x(89)+x(101);
             -4382.44*x(66)+x(89)-x(99);
             -5929*x(46)-x(93)+x(105);
             -5929*x(47)-x(93)+x(105);
             -5029*x(48)-x(92)+x(93);
             -5029*x(49)-x(92)+x(93);
             -6400*x(50)+x(92)-x(106);
             -5029*x(51)-x(88)+x(96);
             -5500*x(52)+x(88)-x(94);
             -6400*x(53)+x(94)-x(106);
             -6400*x(54)-x(100)+x(106);
             -3482.44*x(55)+x(90)-x(95);
             -3482.44*x(56)+x(90)-x(95);
             -4382.44*x(57)+x(95)-x(104);
             -4382.44*x(58)+x(95)-x(104);
             -4382.44*x(59)-x(98)+x(104);
             -4382.44*x(60)-x(87)+x(98);
             -4382.44*x(61)+x(87)-x(100);
             -4382.44*x(62)-x(97)+x(100);
             -1882.44*x(63)-x(91)+x(97);
             -4382.44*x(64)-x(103)+x(104);
             -3969*x(65)-x(89)+x(101);
             -3757.44*x(66)+x(89)-x(99);
             x(1)-230.881425454383*x(46);
             x(2)-230.881425454383*x(47);
             x(3)-195.858591670881*x(48);
             x(4)-195.858591670881*x(49);
             x(5)-87.2213765084548*x(50);
             x(6)-25.2192935471771*x(51);
             x(7)-28.4681669051455*x(52);
             x(8)-35.1707558553061*x(53);
             x(9)-53.5309450076729*x(54);
             x(12)-88.7710296317997*x(55);
             x(13)-10.7961327691767*x(56);
             x(14)-70.7782927092091*x(57);
             x(15)-8.6078966125965*x(58);
             x(16)-61.2578302162646*x(59);
             x(17)-62.7705970255575*x(60);
             x(18)-177.542059263599*x(61);
             x(19)-125.541194051115*x(62);
             x(20)-79.3992226757409*x(63);
             x(21)-14.9491145521834*x(64);
             x(23)-2.72006561154535*x(65);
             x(24)-10.9930142912741*x(66);
             x(1)-230.881425454383*x(46);
             x(2)-230.881425454383*x(47);
             x(3)-173.61748395652*x(48);
             x(4)-173.61748395652*x(49);
             x(5)-94.0874240733678*x(50);
             x(6)-22.3554670513479*x(51);
             x(7)-28.4681669051455*x(52);
             x(8)-37.939390016601*x(53);
             x(9)-64.6899637554959*x(54);
             x(12)-79.1325369145847*x(55);
             x(13)-9.62392098452798*x(56);
             x(14)-79.3992226757409*x(57);
             x(15)-9.65635470639685*x(58);
             x(16)-61.2578302162646*x(59);
             x(17)-62.7705970255575*x(60);
             x(18)-177.542059263599*x(61);
             x(19)-125.541194051115*x(62);
             x(20)-52.0377886055166*x(63);
             x(21)-14.9491145521834*x(64);
             x(23)-2.58858207745253*x(65);
             x(24)-10.1789933422708*x(66)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-5929,-5929,-6400,-6400,-5500,-6400,-5500,-5500,-4382.44,-4382.44,-4382.44,-3482.44,-3482.44,-4382.44,-4382.44,-4382.44,-4382.44,-4382.44,-4382.44,-4382.44,-4382.44,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-230.881425454383,-230.881425454383,-195.858591670881,-195.858591670881,-87.2213765084548,-25.2192935471771,-28.4681669051455,-35.1707558553061,-53.5309450076729,-88.7710296317997,-10.7961327691767,-70.7782927092091,-8.6078966125965,-61.2578302162646,-62.7705970255575,-177.542059263599,-125.541194051115,-79.3992226757409,-14.9491145521834,-2.72006561154535,-10.9930142912741,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,-4.034,-0.222,NaN,-15.616,-3.918,NaN,-5.256,-6.385,NaN,-6.848,-2.12,-1.919,NaN,NaN,20.344,NaN,NaN,8.87,NaN,NaN,900,NaN,NaN,2500,900,NaN,900,900,NaN,NaN,NaN,625,NaN,NaN,2500,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','gastrans');
opts.sense = 'min';