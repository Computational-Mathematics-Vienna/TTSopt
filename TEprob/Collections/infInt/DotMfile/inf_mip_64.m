% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-May-2015 17:03:31
% Model: inf_mip_64

% Objective
fun = @(x)x(50)+x(51)+x(52)+x(53)+x(54)+x(55)+x(56);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[7*x(1)+9*x(8)+6*x(15)+4*x(22)+8*x(29)+7*x(36)+5*x(43)-20*x(50);
             7*x(2)+9*x(9)+6*x(16)+4*x(23)+8*x(30)+7*x(37)+5*x(44)-20*x(51);
             7*x(3)+9*x(10)+6*x(17)+4*x(24)+8*x(31)+7*x(38)+5*x(45)-20*x(52);
             7*x(4)+9*x(11)+6*x(18)+4*x(25)+8*x(32)+7*x(39)+5*x(46)-20*x(53);
             7*x(5)+9*x(12)+6*x(19)+4*x(26)+8*x(33)+7*x(40)+5*x(47)-20*x(54);
             7*x(6)+9*x(13)+6*x(20)+4*x(27)+8*x(34)+7*x(41)+5*x(48)-20*x(55);
             7*x(7)+9*x(14)+6*x(21)+4*x(28)+8*x(35)+7*x(42)+5*x(49)-20*x(56);
             x(1)-x(15);
             x(1)+x(2)-x(16);
             x(1)+x(2)+x(3)-x(17);
             x(1)+x(2)+x(3)+x(4)-x(18);
             x(1)+x(2)+x(3)+x(4)+x(5)-x(19);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)-x(20);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)-x(21);
             x(1)-x(22);
             x(1)+x(2)-x(23);
             x(1)+x(2)+x(3)-x(24);
             x(1)+x(2)+x(3)+x(4)-x(25);
             x(1)+x(2)+x(3)+x(4)+x(5)-x(26);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)-x(27);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)-x(28);
             x(8)-x(15);
             x(8)+x(9)-x(16);
             x(8)+x(9)+x(10)-x(17);
             x(8)+x(9)+x(10)+x(11)-x(18);
             x(8)+x(9)+x(10)+x(11)+x(12)-x(19);
             x(8)+x(9)+x(10)+x(11)+x(12)+x(13)-x(20);
             x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)-x(21);
             x(15)-x(29);
             x(15)+x(16)-x(30);
             x(15)+x(16)+x(17)-x(31);
             x(15)+x(16)+x(17)+x(18)-x(32);
             x(15)+x(16)+x(17)+x(18)+x(19)-x(33);
             x(15)+x(16)+x(17)+x(18)+x(19)+x(20)-x(34);
             x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21)-x(35);
             x(22)-x(36);
             x(22)+x(23)-x(37);
             x(22)+x(23)+x(24)-x(38);
             x(22)+x(23)+x(24)+x(25)-x(39);
             x(22)+x(23)+x(24)+x(25)+x(26)-x(40);
             x(22)+x(23)+x(24)+x(25)+x(26)+x(27)-x(41);
             x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28)-x(42);
             x(29)-x(43);
             x(29)+x(30)-x(44);
             x(29)+x(30)+x(31)-x(45);
             x(29)+x(30)+x(31)+x(32)-x(46);
             x(29)+x(30)+x(31)+x(32)+x(33)-x(47);
             x(29)+x(30)+x(31)+x(32)+x(33)+x(34)-x(48);
             x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35)-x(49);
             x(36)-x(43);
             x(36)+x(37)-x(44);
             x(36)+x(37)+x(38)-x(45);
             x(36)+x(37)+x(38)+x(39)-x(46);
             x(36)+x(37)+x(38)+x(39)+x(40)-x(47);
             x(36)+x(37)+x(38)+x(39)+x(40)+x(41)-x(48);
             x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+x(42)-x(49);
             x(1)+x(8)+x(15)+x(22)+x(29)+x(36)+x(43);
             x(2)+x(9)+x(16)+x(23)+x(30)+x(37)+x(44);
             x(3)+x(10)+x(17)+x(24)+x(31)+x(38)+x(45);
             x(4)+x(11)+x(18)+x(25)+x(32)+x(39)+x(46);
             x(5)+x(12)+x(19)+x(26)+x(33)+x(40)+x(47);
             x(6)+x(13)+x(20)+x(27)+x(34)+x(41)+x(48);
             x(7)+x(14)+x(21)+x(28)+x(35)+x(42)+x(49);
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7);
             x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14);
             x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21);
             x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28);
             x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35);
             x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+x(42);
             x(43)+x(44)+x(45)+x(46)+x(47)+x(48)+x(49)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,7,7,7,7,7,7,7]';
cu = [0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1,1,1,1,1,1,1,7,7,7,7,7,7,7]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_mip_64');
opts.sense = 'min';
