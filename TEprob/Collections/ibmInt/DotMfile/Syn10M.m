% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:54
% Model: Syn10M

% Objective
fun = @(x)5*x(7)-2*x(12)+200*x(20)+250*x(21)+200*x(22)+200*x(23)+500*x(24)+350*x(25)-5*x(26)-8*x(27)-6*x(28)-10*x(29)-6*x(30)-7*x(31)-4*x(32)-5*x(33)-2*x(34)-4*x(35);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,7,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(2)-x(3);
             -x(4)-x(5)+x(6);
             x(6)-x(7)-x(8);
             x(8)-x(9)-x(10)-x(11);
             x(13)-x(16)-x(17);
             x(15)-x(18)-x(19)-x(20);
             -log(1+x(2))+x(4)+x(26);
             x(2)-10*x(26);
             x(4)-2.39789527279837*x(26);
             -1.2*log(1+x(3))+x(5)+x(27);
             x(3)-10*x(27);
             x(5)-2.87747432735804*x(27);
             -0.75*x(9)+x(13)+x(28);
             -0.75*x(9)+x(13)-x(28);
             x(9)-2.87747432735804*x(28);
             x(13)-2.15810574551853*x(28);
             -1.5*log(1+x(10))+x(14)+x(29);
             x(10)-2.87747432735804*x(29);
             x(14)-2.03277599268042*x(29);
             -x(11)+x(15)+x(30);
             -x(11)+x(15)-x(30);
             -0.5*x(12)+x(15)+x(30);
             -0.5*x(12)+x(15)-x(30);
             x(11)-2.87747432735804*x(30);
             x(12)-7*x(30);
             x(15)-3.5*x(30);
             -1.25*log(1+x(16))+x(21)+x(31);
             x(16)-2.15810574551853*x(31);
             x(21)-1.43746550029693*x(31);
             -0.9*log(1+x(17))+x(22)+x(32);
             x(17)-2.15810574551853*x(32);
             x(22)-1.03497516021379*x(32);
             -log(1+x(14))+x(23)+x(33);
             x(14)-2.03277599268042*x(33);
             x(23)-1.10947836929589*x(33);
             -0.9*x(18)+x(24)+x(34);
             -0.9*x(18)+x(24)-x(34);
             x(18)-3.5*x(34);
             x(24)-3.15*x(34);
             -0.6*x(19)+x(25)+x(35);
             -0.6*x(19)+x(25)-x(35);
             x(19)-3.5*x(35);
             x(25)-2.1*x(35);
             x(26)+x(27);
             -x(28)+x(31)+x(32);
             -x(29)+x(33);
             x(26)+x(27)-x(28);
             x(26)+x(27)-x(29);
             x(26)+x(27)-x(30);
             x(28)-x(31);
             x(28)-x(32);
             x(29)-x(33);
             x(30)-x(34);
             x(30)-x(35)];
cl = [0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-1,-Inf,-Inf,1,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,1,0,0,1,0,0,1,Inf,0,0,1,0,0,1,Inf,1,Inf,0,0,0,1,0,0,1,0,0,1,0,0,1,Inf,0,0,1,Inf,0,0,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Syn10M');
opts.sense = 'max';
