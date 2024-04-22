% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:10:02
% Model: Syn15M

% Objective
fun = @(x)5*x(7)+500*x(25)+350*x(26)+200*x(37)+250*x(38)+200*x(39)+200*x(40)-5*x(41)-8*x(42)-6*x(43)-10*x(44)-6*x(45)-7*x(46)-4*x(47)-5*x(48)-2*x(49)-4*x(50)-3*x(51)-7*x(52)-3*x(53)-2*x(54)-4*x(55);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,7,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,5,5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

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
             -log(1+x(2))+x(4)+x(41);
             x(2)-10*x(41);
             x(4)-2.39789527279837*x(41);
             -1.2*log(1+x(3))+x(5)+x(42);
             x(3)-10*x(42);
             x(5)-2.87747432735804*x(42);
             -0.75*x(9)+x(13)+x(43);
             -0.75*x(9)+x(13)-x(43);
             x(9)-2.87747432735804*x(43);
             x(13)-2.15810574551853*x(43);
             -1.5*log(1+x(10))+x(14)+x(44);
             x(10)-2.87747432735804*x(44);
             x(14)-2.03277599268042*x(44);
             -x(11)+x(15)+x(45);
             -x(11)+x(15)-x(45);
             -0.5*x(12)+x(15)+x(45);
             -0.5*x(12)+x(15)-x(45);
             x(11)-2.87747432735804*x(45);
             x(12)-7*x(45);
             x(15)-3.5*x(45);
             -1.25*log(1+x(16))+x(21)+x(46);
             x(16)-2.15810574551853*x(46);
             x(21)-1.43746550029693*x(46);
             -0.9*log(1+x(17))+x(22)+x(47);
             x(17)-2.15810574551853*x(47);
             x(22)-1.03497516021379*x(47);
             -log(1+x(14))+x(23)+x(48);
             x(14)-2.03277599268042*x(48);
             x(23)-1.10947836929589*x(48);
             -0.9*x(18)+x(24)+x(49);
             -0.9*x(18)+x(24)-x(49);
             x(18)-3.5*x(49);
             x(24)-3.15*x(49);
             -0.6*x(19)+x(25)+x(50);
             -0.6*x(19)+x(25)-x(50);
             x(19)-3.5*x(50);
             x(25)-2.1*x(50);
             -1.1*log(1+x(20))+x(26)+x(51);
             x(20)-3.5*x(51);
             x(26)-1.6544851364539*x(51);
             -0.9*x(21)+x(37)+x(52);
             -0.9*x(21)+x(37)-x(52);
             -x(29)+x(37)+x(52);
             -x(29)+x(37)-x(52);
             x(21)-1.43746550029693*x(52);
             x(29)-5*x(52);
             x(37)-5*x(52);
             -log(1+x(22))+x(38)+x(53);
             x(22)-1.03497516021379*x(53);
             x(38)-0.710483612536911*x(53);
             -0.7*log(1+x(27))+x(39)+x(54);
             x(27)-1.10947836929589*x(54);
             x(39)-0.522508489006913*x(54);
             -0.65*log(1+x(28))+x(40)+x(55);
             -0.65*log(1+x(31))+x(40)+x(55);
             x(28)-1.10947836929589*x(55);
             x(31)-8.15*x(55);
             x(40)-1.43894002153683*x(55);
             x(41)+x(42);
             -x(43)+x(46)+x(47);
             -x(46)+x(52);
             -x(47)+x(53);
             -x(44)+x(48);
             -x(48)+x(54)+x(55);
             -x(45)+x(49)+x(50)+x(51);
             -x(49)+x(55);
             x(41)+x(42)-x(43);
             x(41)+x(42)-x(44);
             x(41)+x(42)-x(45);
             x(43)-x(46);
             x(43)-x(47);
             x(44)-x(48);
             x(45)-x(49);
             x(45)-x(50);
             x(45)-x(51);
             x(46)-x(52);
             x(47)-x(53);
             x(48)-x(54);
             x(48)-x(55)];
cl = [0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,Inf,0,0,1,0,0,1,Inf,1,Inf,0,0,0,1,0,0,1,0,0,1,0,0,1,Inf,0,0,1,Inf,0,0,1,0,0,1,Inf,1,Inf,0,0,0,1,0,0,1,0,0,1,1,0,0,0,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Syn15M');
opts.sense = 'max';
