% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:10:20
% Model: Syn20M

% Objective
fun = @(x)5*x(7)+200*x(37)+250*x(38)+200*x(39)+700*x(40)+400*x(41)+500*x(42)+400*x(43)+600*x(44)+700*x(45)-5*x(46)-8*x(47)-6*x(48)-10*x(49)-6*x(50)-7*x(51)-4*x(52)-5*x(53)-2*x(54)-4*x(55)-3*x(56)-7*x(57)-3*x(58)-2*x(59)-4*x(60)-2*x(61)-3*x(62)-5*x(63)-2*x(64)-8*x(65);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,7,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,5,5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(2)-x(3);
             -x(4)-x(5)+x(6);
             x(6)-x(7)-x(8);
             x(8)-x(9)-x(10)-x(11);
             x(13)-x(16)-x(17);
             x(15)-x(18)-x(19)-x(20);
             x(23)-x(27)-x(28);
             -x(24)-x(30)+x(31);
             x(25)-x(32)-x(33);
             x(26)-x(34)-x(35)-x(36);
             -log(1+x(2))+x(4)+x(46);
             x(2)-10*x(46);
             x(4)-2.39789527279837*x(46);
             -1.2*log(1+x(3))+x(5)+x(47);
             x(3)-10*x(47);
             x(5)-2.87747432735804*x(47);
             -0.75*x(9)+x(13)+x(48);
             -0.75*x(9)+x(13)-x(48);
             x(9)-2.87747432735804*x(48);
             x(13)-2.15810574551853*x(48);
             -1.5*log(1+x(10))+x(14)+x(49);
             x(10)-2.87747432735804*x(49);
             x(14)-2.03277599268042*x(49);
             -x(11)+x(15)+x(50);
             -x(11)+x(15)-x(50);
             -0.5*x(12)+x(15)+x(50);
             -0.5*x(12)+x(15)-x(50);
             x(11)-2.87747432735804*x(50);
             x(12)-7*x(50);
             x(15)-3.5*x(50);
             -1.25*log(1+x(16))+x(21)+x(51);
             x(16)-2.15810574551853*x(51);
             x(21)-1.43746550029693*x(51);
             -0.9*log(1+x(17))+x(22)+x(52);
             x(17)-2.15810574551853*x(52);
             x(22)-1.03497516021379*x(52);
             -log(1+x(14))+x(23)+x(53);
             x(14)-2.03277599268042*x(53);
             x(23)-1.10947836929589*x(53);
             -0.9*x(18)+x(24)+x(54);
             -0.9*x(18)+x(24)-x(54);
             x(18)-3.5*x(54);
             x(24)-3.15*x(54);
             -0.6*x(19)+x(25)+x(55);
             -0.6*x(19)+x(25)-x(55);
             x(19)-3.5*x(55);
             x(25)-2.1*x(55);
             -1.1*log(1+x(20))+x(26)+x(56);
             x(20)-3.5*x(56);
             x(26)-1.6544851364539*x(56);
             -0.9*x(21)+x(37)+x(57);
             -0.9*x(21)+x(37)-x(57);
             -x(29)+x(37)+x(57);
             -x(29)+x(37)-x(57);
             x(21)-1.43746550029693*x(57);
             x(29)-5*x(57);
             x(37)-5*x(57);
             -log(1+x(22))+x(38)+x(58);
             x(22)-1.03497516021379*x(58);
             x(38)-0.710483612536911*x(58);
             -0.7*log(1+x(27))+x(39)+x(59);
             x(27)-1.10947836929589*x(59);
             x(39)-0.522508489006913*x(59);
             -0.65*log(1+x(28))+x(40)+x(60);
             -0.65*log(1+x(31))+x(40)+x(60);
             x(28)-1.10947836929589*x(60);
             x(31)-8.15*x(60);
             x(40)-1.43894002153683*x(60);
             -x(32)+x(41)+x(61);
             -x(32)+x(41)-x(61);
             x(32)-2.1*x(61);
             x(41)-2.1*x(61);
             -x(33)+x(42)+x(62);
             -x(33)+x(42)-x(62);
             x(33)-2.1*x(62);
             x(42)-2.1*x(62);
             -0.75*log(1+x(34))+x(43)+x(63);
             x(34)-1.6544851364539*x(63);
             x(43)-0.732188035236726*x(63);
             -0.8*log(1+x(35))+x(44)+x(64);
             x(35)-1.6544851364539*x(64);
             x(44)-0.781000570919175*x(64);
             -0.85*log(1+x(36))+x(45)+x(65);
             x(36)-1.6544851364539*x(65);
             x(45)-0.829813106601623*x(65);
             x(46)+x(47);
             -x(48)+x(51)+x(52);
             -x(51)+x(57);
             -x(52)+x(58);
             -x(49)+x(53);
             -x(53)+x(59)+x(60);
             -x(50)+x(54)+x(55)+x(56);
             -x(54)+x(60);
             -x(55)+x(61)+x(62);
             -x(56)+x(63)+x(64)+x(65);
             x(46)+x(47)-x(48);
             x(46)+x(47)-x(49);
             x(46)+x(47)-x(50);
             x(48)-x(51);
             x(48)-x(52);
             x(49)-x(53);
             x(50)-x(54);
             x(50)-x(55);
             x(50)-x(56);
             x(51)-x(57);
             x(52)-x(58);
             x(53)-x(59);
             x(53)-x(60);
             x(55)-x(61);
             x(55)-x(62);
             x(56)-x(63);
             x(56)-x(64);
             x(56)-x(65)];
cl = [0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,Inf,0,0,1,0,0,1,Inf,1,Inf,0,0,0,1,0,0,1,0,0,1,0,0,1,Inf,0,0,1,Inf,0,0,1,0,0,1,Inf,1,Inf,0,0,0,1,0,0,1,0,0,1,1,0,0,0,1,Inf,0,0,1,Inf,0,0,1,0,0,1,0,0,1,0,0,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Syn20M');
opts.sense = 'max';
