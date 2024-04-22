% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:23
% Model: elf

% Objective
fun = @(x)x(25)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+x(42)+x(43)+x(44)+x(45)+x(46)+x(47)+x(48);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-(8-x(49))^2-100*x(1)+x(25);
             -(8-x(50))^2-100*x(2)+x(26);
             -(8-x(51))^2-100*x(3)+x(27);
             -(8.5-x(49))^2-100*x(4)+x(28);
             -(8.5-x(50))^2-100*x(5)+x(29);
             -(8.5-x(51))^2-100*x(6)+x(30);
             -(8.3-x(49))^2-100*x(7)+x(31);
             -(8.3-x(50))^2-100*x(8)+x(32);
             -(8.3-x(51))^2-100*x(9)+x(33);
             -(8.7-x(49))^2-100*x(10)+x(34);
             -(8.7-x(50))^2-100*x(11)+x(35);
             -(8.7-x(51))^2-100*x(12)+x(36);
             -(8.6-x(49))^2-100*x(13)+x(37);
             -(8.6-x(50))^2-100*x(14)+x(38);
             -(8.6-x(51))^2-100*x(15)+x(39);
             -(9-x(49))^2-100*x(16)+x(40);
             -(9-x(50))^2-100*x(17)+x(41);
             -(9-x(51))^2-100*x(18)+x(42);
             -(9.2-x(49))^2-100*x(19)+x(43);
             -(9.2-x(50))^2-100*x(20)+x(44);
             -(9.2-x(51))^2-100*x(21)+x(45);
             -(9.5-x(49))^2-100*x(22)+x(46);
             -(9.5-x(50))^2-100*x(23)+x(47);
             -(9.5-x(51))^2-100*x(24)+x(48);
             x(1)+x(2)+x(3);
             x(4)+x(5)+x(6);
             x(7)+x(8)+x(9);
             x(10)+x(11)+x(12);
             x(13)+x(14)+x(15);
             x(16)+x(17)+x(18);
             x(19)+x(20)+x(21);
             x(22)+x(23)+x(24);
             -x(1)-x(4)-x(7)-x(10)-x(13)-x(16)-x(19)-x(22)+x(52);
             -x(2)-x(5)-x(8)-x(11)-x(14)-x(17)-x(20)-x(23)+x(53);
             -x(3)-x(6)-x(9)-x(12)-x(15)-x(18)-x(21)-x(24)+x(54);
             x(52)*x(49)-8*x(1)-8.5*x(4)-8.3*x(7)-8.7*x(10)-8.6*x(13)-9*x(16)-9.2*x(19)-9.5*x(22);
             x(53)*x(50)-8*x(2)-8.5*x(5)-8.3*x(8)-8.7*x(11)-8.6*x(14)-9*x(17)-9.2*x(20)-9.5*x(23);
             x(54)*x(51)-8*x(3)-8.5*x(6)-8.3*x(9)-8.7*x(12)-8.6*x(15)-9*x(18)-9.2*x(21)-9.5*x(24)];
cl = [-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,-100,1,1,1,1,1,1,1,1,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','elf');
opts.sense = 'min';
