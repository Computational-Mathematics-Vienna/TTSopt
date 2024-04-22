% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:03:50
% Model: tls2

% Objective
fun = @(x)0.1*x(1)+0.2*x(2)+x(9)+2*x(10)+3*x(11)+4*x(12)+5*x(13)+6*x(14)+7*x(15)+8*x(16)+x(17)+2*x(18)+3*x(19)+4*x(20)+5*x(21)+6*x(22)+7*x(23);

% Bounds
lb = [-Inf,-Inf,1,1,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,100,100,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[460*x(24)+920*x(25)+1380*x(26)+1840*x(27)+570*x(32)+1140*x(33)+1710*x(34);
             460*x(28)+920*x(29)+1380*x(30)+1840*x(31)+570*x(35)+1140*x(36)+1710*x(37);
             -460*x(24)-920*x(25)-1380*x(26)-1840*x(27)-570*x(32)-1140*x(33)-1710*x(34);
             -460*x(28)-920*x(29)-1380*x(30)-1840*x(31)-570*x(35)-1140*x(36)-1710*x(37);
             x(24)+2*x(25)+3*x(26)+4*x(27)+x(32)+2*x(33)+3*x(34);
             x(28)+2*x(29)+3*x(30)+4*x(31)+x(35)+2*x(36)+3*x(37);
             x(1)-x(9)-2*x(10)-3*x(11)-4*x(12)-5*x(13)-6*x(14)-7*x(15)-8*x(16);
             x(2)-x(17)-2*x(18)-3*x(19)-4*x(20)-5*x(21)-6*x(22)-7*x(23);
             -8*x(1)+x(9)+2*x(10)+3*x(11)+4*x(12)+5*x(13)+6*x(14)+7*x(15)+8*x(16);
             -7*x(2)+x(17)+2*x(18)+3*x(19)+4*x(20)+5*x(21)+6*x(22)+7*x(23);
             x(3)-3*x(9)-8*x(10)-15*x(11)-24*x(12)-35*x(13)-48*x(14)-63*x(15)-80*x(16);
             x(4)-3*x(17)-8*x(18)-15*x(19)-24*x(20)-35*x(21)-48*x(22)-63*x(23);
             x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16);
             x(17)+x(18)+x(19)+x(20)+x(21)+x(22)+x(23);
             x(5)-3*x(24)-8*x(25)-15*x(26)-24*x(27);
             x(6)-3*x(28)-8*x(29)-15*x(30)-24*x(31);
             x(7)-3*x(32)-8*x(33)-15*x(34);
             x(8)-3*x(35)-8*x(36)-15*x(37);
             x(24)+x(25)+x(26)+x(27);
             x(28)+x(29)+x(30)+x(31);
             x(32)+x(33)+x(34);
             x(35)+x(36)+x(37);
             -((x(3)*x(5))^0.5+(x(4)*x(6))^0.5)+x(9)+2*x(10)+3*x(11)+4*x(12)+5*x(13)+6*x(14)+7*x(15)+8*x(16)+x(17)+2*x(18)+3*x(19)+4*x(20)+5*x(21)+6*x(22)+7*x(23)+x(24)+2*x(25)+3*x(26)+4*x(27)+x(28)+2*x(29)+3*x(30)+4*x(31);
             -((x(3)*x(7))^0.5+(x(4)*x(8))^0.5)+x(9)+2*x(10)+3*x(11)+4*x(12)+5*x(13)+6*x(14)+7*x(15)+8*x(16)+x(17)+2*x(18)+3*x(19)+4*x(20)+5*x(21)+6*x(22)+7*x(23)+x(32)+2*x(33)+3*x(34)+x(35)+2*x(36)+3*x(37)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,-Inf,-Inf,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1900,1900,-1700,-1700,5,5,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,-10,-9]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBIICCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,1,1,1,1,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','tls2');
opts.sense = 'min';
