% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:50
% Model: Syn05M

% Objective
fun = @(x)5*x(7)-2*x(12)+200*x(13)+250*x(14)+300*x(15)-5*x(16)-8*x(17)-6*x(18)-10*x(19)-6*x(20);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [10,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,7,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(2)-x(3);
             -x(4)-x(5)+x(6);
             x(6)-x(7)-x(8);
             x(8)-x(9)-x(10)-x(11);
             -log(1+x(2))+x(4)+x(16);
             x(2)-10*x(16);
             x(4)-2.39789527279837*x(16);
             -1.2*log(1+x(3))+x(5)+x(17);
             x(3)-10*x(17);
             x(5)-2.87747432735804*x(17);
             -0.75*x(9)+x(13)+x(18);
             -0.75*x(9)+x(13)-x(18);
             x(9)-2.87747432735804*x(18);
             x(13)-2.15810574551853*x(18);
             -1.5*log(1+x(10))+x(14)+x(19);
             x(10)-2.87747432735804*x(19);
             x(14)-2.03277599268042*x(19);
             -x(11)+x(15)+x(20);
             -x(11)+x(15)-x(20);
             -0.5*x(12)+x(15)+x(20);
             -0.5*x(12)+x(15)-x(20);
             x(11)-2.87747432735804*x(20);
             x(12)-7*x(20);
             x(15)-3.5*x(20);
             x(16)+x(17);
             x(16)+x(17)-x(18);
             x(16)+x(17)-x(19);
             x(16)+x(17)-x(20)];
cl = [0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-Inf,-1,-Inf,-Inf,-Inf,1,0,0,0]';
cu = [0,0,0,0,1,0,0,1,0,0,1,Inf,0,0,1,0,0,1,Inf,1,Inf,0,0,0,1,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Syn05M');
opts.sense = 'max';
