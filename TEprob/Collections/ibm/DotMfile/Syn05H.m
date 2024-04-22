% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:50
% Model: Syn05H

% Objective
fun = @(x)5*x(7)-2*x(12)+200*x(13)+250*x(14)+300*x(15)-5*x(38)-8*x(39)-6*x(40)-10*x(41)-6*x(42);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,7,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(2)-x(3);
             -x(4)-x(5)+x(6);
             x(6)-x(7)-x(8);
             x(8)-x(9)-x(10)-x(11);
             (x(20)/(1e-6+x(38))-log(1+x(16)/(1e-6+x(38))))*(1e-6+x(38));
             x(17);
             x(21);
             x(2)-x(16)-x(17);
             x(4)-x(20)-x(21);
             x(16)-10*x(38);
             x(17)+10*x(38);
             x(20)-2.39789527279837*x(38);
             x(21)+2.39789527279837*x(38);
             (x(22)/(1e-6+x(39))-1.2*log(1+x(18)/(1e-6+x(39))))*(1e-6+x(39));
             x(19);
             x(23);
             x(3)-x(18)-x(19);
             x(5)-x(22)-x(23);
             x(18)-10*x(39);
             x(19)+10*x(39);
             x(22)-2.87747432735804*x(39);
             x(23)+2.87747432735804*x(39);
             -0.75*x(24)+x(32);
             x(25);
             x(33);
             x(9)-x(24)-x(25);
             x(13)-x(32)-x(33);
             x(24)-2.87747432735804*x(40);
             x(25)+2.87747432735804*x(40);
             x(32)-2.15810574551853*x(40);
             x(33)+2.15810574551853*x(40);
             (x(34)/(1e-6+x(41))-1.5*log(1+x(26)/(1e-6+x(41))))*(1e-6+x(41));
             x(27);
             x(35);
             x(10)-x(26)-x(27);
             x(14)-x(34)-x(35);
             x(26)-2.87747432735804*x(41);
             x(27)+2.87747432735804*x(41);
             x(34)-2.03277599268042*x(41);
             x(35)+2.03277599268042*x(41);
             -x(28)+x(36);
             -0.5*x(30)+x(36);
             x(29);
             x(31);
             x(37);
             x(11)-x(28)-x(29);
             x(12)-x(30)-x(31);
             x(15)-x(36)-x(37);
             x(28)-2.87747432735804*x(42);
             x(29)+2.87747432735804*x(42);
             x(30)-7*x(42);
             x(31)+7*x(42);
             x(36)-3.5*x(42);
             x(37)+3.5*x(42);
             x(38)+x(39);
             x(38)+x(39)-x(40);
             x(38)+x(39)-x(41);
             x(38)+x(39)-x(42)];
cl = [0,0,0,0,-Inf,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,10,0,2.39789527279837,0,0,0,0,0,0,10,0,2.87747432735804,0,0,0,0,0,0,2.87747432735804,0,2.15810574551853,0,0,0,0,0,0,2.87747432735804,0,2.03277599268042,0,0,0,0,0,0,0,0,0,2.87747432735804,0,7,0,3.5,1,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Syn05H');
opts.sense = 'max';
