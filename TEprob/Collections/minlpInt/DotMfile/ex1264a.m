% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:35
% Model: ex1264a

% Objective
fun = @(x)0.1*x(17)+0.2*x(18)+0.3*x(19)+0.4*x(20)+x(21)+x(22)+x(23)+x(24);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,0,0,0,0]';
ub = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,Inf,Inf,Inf,Inf,15,12,9,6]';

% Constraints
nlcon = @(x)[x(21)*x(1)+x(22)*x(2)+x(23)*x(3)+x(24)*x(4);
             x(21)*x(5)+x(22)*x(6)+x(23)*x(7)+x(24)*x(8);
             x(21)*x(9)+x(22)*x(10)+x(23)*x(11)+x(24)*x(12);
             x(21)*x(13)+x(22)*x(14)+x(23)*x(15)+x(24)*x(16);
             -330*x(1)-360*x(5)-385*x(9)-415*x(13)+1700*x(17);
             -330*x(2)-360*x(6)-385*x(10)-415*x(14)+1700*x(18);
             -330*x(3)-360*x(7)-385*x(11)-415*x(15)+1700*x(19);
             -330*x(4)-360*x(8)-385*x(12)-415*x(16)+1700*x(20);
             330*x(1)+360*x(5)+385*x(9)+415*x(13)-1900*x(17);
             330*x(2)+360*x(6)+385*x(10)+415*x(14)-1900*x(18);
             330*x(3)+360*x(7)+385*x(11)+415*x(15)-1900*x(19);
             330*x(4)+360*x(8)+385*x(12)+415*x(16)-1900*x(20);
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
             -15*x(17)+x(21);
             -12*x(18)+x(22);
             -9*x(19)+x(23);
             -6*x(20)+x(24);
             x(21)+x(22)+x(23)+x(24);
             -x(17)+x(18);
             -x(18)+x(19);
             -x(19)+x(20);
             -x(21)+x(22);
             -x(22)+x(23);
             -x(23)+x(24)];
cl = [9,7,12,11,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,8,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIIIIIIIIIIIIIBBBBIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex1264a');
opts.sense = 'min';
