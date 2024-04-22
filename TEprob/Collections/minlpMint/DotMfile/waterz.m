% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:12:17
% Model: waterz

% Objective
fun = @(x)10*x(67)+x(68)+10*x(69);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,6.5,3.25,16.58,14.92,12.925,12.26,8.76,16.08,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,2.5,6,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-x(3)+x(15)+x(16)+x(17)+x(65);
             -x(4)-x(5)-x(6)-x(7)+x(18)+x(19)+x(20)+x(21)+x(66);
             x(1)+x(4)-x(8)-x(9)-x(10)-x(11)-x(15)-x(18)+x(22)+x(23)+x(24)+x(25);
             x(2)+x(8)+x(12)-x(16)-x(22)-x(26);
             x(9)-x(12)+x(13)-x(23)+x(26)-x(27);
             x(5)+x(10)-x(13)-x(14)-x(19)-x(24)+x(27)+x(28);
             x(6)+x(14)-x(20)-x(28);
             x(3)+x(7)+x(11)-x(17)-x(21)-x(25);
             x(29)-38721.1970117411*x(85)-2543.8701482414*x(86)-207.747320703761*x(87)-23.9314504121258*x(88)-1.5722267648148*x(89)-0.181112645550961*x(90)-0.0390863672545667*x(91);
             x(30)-32510.4890865135*x(93)-2135.84468132099*x(94)-174.425573683688*x(95)-20.0929521164322*x(96)-1.32004857865156*x(97)-0.152062982061963*x(98)-0.0328170876451919*x(99);
             x(31)-63468.4628982673*x(101)-4169.69361956223*x(102)-340.521578201805*x(103)-39.2263796008983*x(104)-2.57705917665854*x(105)-0.296864304610023*x(106)-0.0640670186196026*x(107);
             x(32)-50797.5773435889*x(109)-3337.25325093014*x(110)-272.539627020641*x(111)-31.3951994533022*x(112)-2.06257339263358*x(113)-0.237598120158509*x(114)-0.0512766370081929*x(115);
             x(33)-59165.7349698592*x(117)-3887.01689524085*x(118)-317.436542928413*x(119)-36.5670992066393*x(120)-2.40235218067626*x(121)-0.27673893405488*x(122)-0.0597237127048799*x(123);
             x(34)-32977.2294678044*x(125)-2166.50816836621*x(126)-176.929733450444*x(127)-20.3814187742893*x(128)-1.339*x(129)-0.154246090843839*x(130)-0.0332882297421199*x(131);
             x(35)-33843.9321019273*x(133)-2223.4480134252*x(134)-181.579774357788*x(135)-20.9170801874496*x(136)-1.37419139860501*x(137)-0.158299963634093*x(138)-0.0341631060391402*x(139);
             x(36)-31810.181054648*x(141)-2089.8364782095*x(142)-170.668274619734*x(143)-19.660130090483*x(144)-1.2916134290104*x(145)-0.148787395299671*x(146)-0.0321101751776739*x(147);
             x(37)-39461.9459070343*x(149)-2592.53519858857*x(150)-211.721593458417*x(151)-24.3892667200816*x(152)-1.60230396616872*x(153)-0.184577388442944*x(154)-0.0398341019735132*x(155);
             x(38)-32977.2294678044*x(157)-2166.50816836621*x(158)-176.929733450444*x(159)-20.3814187742893*x(160)-1.339*x(161)-0.154246090843839*x(162)-0.0332882297421199*x(163);
             x(39)-52785.5148814787*x(165)-3467.85497167945*x(166)-283.205327698691*x(167)-32.6238347301504*x(168)-2.14329116080854*x(169)-0.246896402610059*x(170)-0.0532833223041444*x(171);
             x(40)-30677.4142839491*x(173)-2015.41699236491*x(174)-164.590743970989*x(175)-18.9600290116536*x(176)-1.24561882211213*x(177)-0.143489047044288*x(178)-0.0309667255575633*x(179);
             x(41)-28361.2795383154*x(181)-1863.25366856746*x(182)-152.164196629274*x(183)-17.5285530220005*x(184)-1.15157500841239*x(185)-0.132655670919396*x(186)-0.0286287479053886*x(187);
             x(42)-50797.5773435889*x(189)-3337.25325093014*x(190)-272.539627020641*x(191)-31.3951994533022*x(192)-2.06257339263358*x(193)-0.237598120158509*x(194)-0.0512766370081929*x(195);
             -(x(1)+x(15))*(x(1)-x(15))*x(29)+x(43)-x(45)-x(51);
             -(x(2)+x(16))*(x(2)-x(16))*x(30)+x(43)-x(46)-x(52);
             -(x(3)+x(17))*(x(3)-x(17))*x(31)+x(43)-x(50)-x(53);
             -(x(4)+x(18))*(x(4)-x(18))*x(32)+x(44)-x(45)-x(54);
             -(x(5)+x(19))*(x(5)-x(19))*x(33)+x(44)-x(48)-x(55);
             -(x(6)+x(20))*(x(6)-x(20))*x(34)+x(44)-x(49)-x(56);
             -(x(7)+x(21))*(x(7)-x(21))*x(35)+x(44)-x(50)-x(57);
             -(x(8)+x(22))*(x(8)-x(22))*x(36)+x(45)-x(46)-x(58);
             -(x(9)+x(23))*(x(9)-x(23))*x(37)+x(45)-x(47)-x(59);
             -(x(10)+x(24))*(x(10)-x(24))*x(38)+x(45)-x(48)-x(60);
             -(x(11)+x(25))*(x(11)-x(25))*x(39)+x(45)-x(50)-x(61);
             -(x(12)+x(26))*(x(12)-x(26))*x(40)-x(46)+x(47)-x(62);
             -(x(13)+x(27))*(x(13)-x(27))*x(41)-x(47)+x(48)-x(63);
             -(x(14)+x(28))*(x(14)-x(28))*x(42)+x(48)-x(49)-x(64);
             x(51)-12*x(84);
             x(52)-12*x(92);
             x(53)-12*x(100);
             x(54)-12*x(108);
             x(55)-12*x(116);
             x(56)-12*x(124);
             x(57)-12*x(132);
             x(58)-12*x(140);
             x(59)-12*x(148);
             x(60)-12*x(156);
             x(61)-12*x(164);
             x(62)-12*x(172);
             x(63)-12*x(180);
             x(64)-12*x(188);
             x(51)+12*x(84);
             x(52)+12*x(92);
             x(53)+12*x(100);
             x(54)+12*x(108);
             x(55)+12*x(116);
             x(56)+12*x(124);
             x(57)+12*x(132);
             x(58)+12*x(140);
             x(59)+12*x(148);
             x(60)+12*x(156);
             x(61)+12*x(164);
             x(62)+12*x(172);
             x(63)+12*x(180);
             x(64)+12*x(188);
             -(1.02*x(65)*(-6.5+x(43))+1.02*x(66)*(-3.25+x(44)))+x(67);
             x(68)-9.11349113439539*x(85)-17.6144733325531*x(86)-32.2986551864818*x(87)-54.4931814987685*x(88)-105.323928905069*x(89)-177.698914733437*x(90)-257.546555368226*x(91)-7.65172765642961*x(93)-14.7891900880288*x(94)-27.118094428506*x(95)-45.7527173518919*x(96)-88.4304387640365*x(97)-149.196798497086*x(98)-216.237232413786*x(99)-14.9380525029139*x(101)-28.8721329260735*x(102)-52.941183552398*x(103)-89.3205462402005*x(104)-172.637944844116*x(105)-291.268810037089*x(106)-422.148209648796*x(107)-11.9558099050809*x(109)-23.1080813747994*x(110)-42.3719709499612*x(111)-71.4885338137291*x(112)-138.172392322055*x(113)-233.119713791557*x(114)-337.870264236031*x(115)-13.9253546563734*x(117)-26.9147996770731*x(118)-49.3521332015331*x(119)-83.2652237802191*x(120)-160.93427229773*x(121)-271.522775764452*x(122)-393.529446744536*x(123)-7.76158051882097*x(125)-15.0015127080393*x(126)-27.5074183079396*x(127)-46.4095712271164*x(128)-89.7*x(129)-151.338758602103*x(130)-219.341665817957*x(131)-7.96556922221359*x(133)-15.3957802311063*x(134)-28.2303641796868*x(135)-47.6293006671023*x(136)-92.0574820424717*x(137)-155.316221319321*x(138)-225.10637081608*x(139)-7.48690188831565*x(141)-14.4706163324673*x(142)-26.5339439013751*x(143)-44.7671586494086*x(144)-86.5255598074927*x(145)-145.982952158506*x(146)-211.579268940989*x(147)-9.28783513744935*x(149)-17.9514438466182*x(150)-32.916538800503*x(151)-55.5356535066454*x(152)-107.338809384118*x(153)-181.098351861986*x(154)-262.473503425068*x(155)-7.76158051882097*x(157)-15.0015127080393*x(158)-27.5074183079396*x(159)-46.4095712271164*x(160)-89.7*x(161)-151.338758602103*x(162)-219.341665817957*x(163)-12.4236944883441*x(165)-24.0124044704238*x(166)-44.0301766363479*x(167)-74.2862014846846*x(168)-143.579699122125*x(169)-242.242736071415*x(170)-351.092646411238*x(171)-7.22029184733547*x(173)-13.9553148538372*x(174)-25.5890649679471*x(175)-43.1729913716576*x(176)-83.44436769489*x(177)-140.784470672041*x(178)-204.044889780639*x(179)-6.67516217420068*x(181)-12.9016931463472*x(182)-23.6570989315674*x(183)-39.913444642481*x(184)-77.1443452237428*x(185)-130.155289178744*x(186)-188.639567333459*x(187)-11.9558099050809*x(189)-23.1080813747994*x(190)-42.3719709499612*x(191)-71.4885338137291*x(192)-138.172392322055*x(193)-233.119713791557*x(194)-337.870264236031*x(195);
             -0.2*x(65)-0.17*x(66)+x(69);
             x(1)-2*x(70);
             x(2)-2*x(71);
             x(3)-2*x(72);
             x(4)-2*x(73);
             x(5)-2*x(74);
             x(6)-2*x(75);
             x(7)-2*x(76);
             x(8)-2*x(77);
             x(9)-2*x(78);
             x(10)-2*x(79);
             x(11)-2*x(80);
             x(12)-2*x(81);
             x(13)-2*x(82);
             x(14)-2*x(83);
             x(15)+2*x(70);
             x(16)+2*x(71);
             x(17)+2*x(72);
             x(18)+2*x(73);
             x(19)+2*x(74);
             x(20)+2*x(75);
             x(21)+2*x(76);
             x(22)+2*x(77);
             x(23)+2*x(78);
             x(24)+2*x(79);
             x(25)+2*x(80);
             x(26)+2*x(81);
             x(27)+2*x(82);
             x(28)+2*x(83);
             x(1)+2*x(84);
             x(2)+2*x(92);
             x(3)+2*x(100);
             x(4)+2*x(108);
             x(5)+2*x(116);
             x(6)+2*x(124);
             x(7)+2*x(132);
             x(8)+2*x(140);
             x(9)+2*x(148);
             x(10)+2*x(156);
             x(11)+2*x(164);
             x(12)+2*x(172);
             x(13)+2*x(180);
             x(14)+2*x(188);
             x(15)+2*x(84);
             x(16)+2*x(92);
             x(17)+2*x(100);
             x(18)+2*x(108);
             x(19)+2*x(116);
             x(20)+2*x(124);
             x(21)+2*x(132);
             x(22)+2*x(140);
             x(23)+2*x(148);
             x(24)+2*x(156);
             x(25)+2*x(164);
             x(26)+2*x(172);
             x(27)+2*x(180);
             x(28)+2*x(188);
             x(84)+x(85)+x(86)+x(87)+x(88)+x(89)+x(90)+x(91);
             x(92)+x(93)+x(94)+x(95)+x(96)+x(97)+x(98)+x(99);
             x(100)+x(101)+x(102)+x(103)+x(104)+x(105)+x(106)+x(107);
             x(108)+x(109)+x(110)+x(111)+x(112)+x(113)+x(114)+x(115);
             x(116)+x(117)+x(118)+x(119)+x(120)+x(121)+x(122)+x(123);
             x(124)+x(125)+x(126)+x(127)+x(128)+x(129)+x(130)+x(131);
             x(132)+x(133)+x(134)+x(135)+x(136)+x(137)+x(138)+x(139);
             x(140)+x(141)+x(142)+x(143)+x(144)+x(145)+x(146)+x(147);
             x(148)+x(149)+x(150)+x(151)+x(152)+x(153)+x(154)+x(155);
             x(156)+x(157)+x(158)+x(159)+x(160)+x(161)+x(162)+x(163);
             x(164)+x(165)+x(166)+x(167)+x(168)+x(169)+x(170)+x(171);
             x(172)+x(173)+x(174)+x(175)+x(176)+x(177)+x(178)+x(179);
             x(180)+x(181)+x(182)+x(183)+x(184)+x(185)+x(186)+x(187);
             x(188)+x(189)+x(190)+x(191)+x(192)+x(193)+x(194)+x(195)];
cl = [0,0,1.212,0.452,0.245,0.652,0.252,0.456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';
cu = [0,0,1.212,0.452,0.245,0.652,0.252,0.456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,6.5,3.25,16.58,14.92,12.925,12.26,8.76,16.08,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','waterz');
opts.sense = 'min';