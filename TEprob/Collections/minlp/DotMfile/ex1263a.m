% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:34
% Model: ex1263a

% Objective
fun = @(x)0.1*x(17)+0.2*x(18)+0.3*x(19)+0.4*x(20)+x(21)+x(22)+x(23)+x(24);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,0,0,0,0]';
ub = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,Inf,Inf,Inf,Inf,30,30,30,30]';

% Constraints
nlcon = @(x)[x(21)*x(1)+x(22)*x(2)+x(23)*x(3)+x(24)*x(4);
             x(21)*x(5)+x(22)*x(6)+x(23)*x(7)+x(24)*x(8);
             x(21)*x(9)+x(22)*x(10)+x(23)*x(11)+x(24)*x(12);
             x(21)*x(13)+x(22)*x(14)+x(23)*x(15)+x(24)*x(16);
             -290*x(1)-315*x(5)-350*x(9)-455*x(13)+1750*x(17);
             -290*x(2)-315*x(6)-350*x(10)-455*x(14)+1750*x(18);
             -290*x(3)-315*x(7)-350*x(11)-455*x(15)+1750*x(19);
             -290*x(4)-315*x(8)-350*x(12)-455*x(16)+1750*x(20);
             290*x(1)+315*x(5)+350*x(9)+455*x(13)-1850*x(17);
             290*x(2)+315*x(6)+350*x(10)+455*x(14)-1850*x(18);
             290*x(3)+315*x(7)+350*x(11)+455*x(15)-1850*x(19);
             290*x(4)+315*x(8)+350*x(12)+455*x(16)-1850*x(20);
             -x(1)-x(5)-x(9)-x(13)+x(17);
             -x(2)-x(6)-x(10)-x(14)+x(18);
             -x(3)-x(7)-x(11)-x(15)+x(19);
             -x(4)-x(8)-x(12)-x(16)+x(20);
             x(1)+x(5)+x(9)+x(13)-5*x(17);
             x(2)+x(6)+x(10)+x(14)-5*x(18);
             x(3)+x(7)+x(11)+x(15)-5*x(19);
             x(4)+x(8)+x(12)+x(16)-5*x(20);
             x(17)-x(21);
             x(18)-x(22);
             x(19)-x(23);
             x(20)-x(24);
             -30*x(17)+x(21);
             -30*x(18)+x(22);
             -30*x(19)+x(23);
             -30*x(20)+x(24);
             x(21)+x(22)+x(23)+x(24);
             -x(17)+x(18);
             -x(18)+x(19);
             -x(19)+x(20);
             -x(21)+x(22);
             -x(22)+x(23);
             -x(23)+x(24)];
cl = [15,28,21,30,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,19,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIIIIIIIIIIIIIBBBBIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1263a');
opts.sense = 'min';
