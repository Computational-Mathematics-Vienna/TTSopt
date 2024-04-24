% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 04:55:55
% Model: ljcluster

% Objective
fun = @(x)1/x(21)^12-2/x(21)^6+1/x(22)^12-2/x(22)^6+1/x(23)^12-2/x(23)^6+1/x(24)^12-2/x(24)^6+1/x(25)^12-2/x(25)^6+1/x(26)^12-2/x(26)^6+1/x(27)^12-2/x(27)^6+1/x(28)^12-2/x(28)^6+1/x(29)^12-2/x(29)^6+1/x(30)^12-2/x(30)^6+1/x(31)^12-2/x(31)^6+1/x(32)^12-2/x(32)^6+1/x(33)^12-2/x(33)^6+1/x(34)^12-2/x(34)^6+1/x(35)^12-2/x(35)^6+1/x(36)^12-2/x(36)^6+1/x(37)^12-2/x(37)^6+1/x(38)^12-2/x(38)^6+1/x(39)^12-2/x(39)^6+1/x(40)^12-2/x(40)^6+1/x(41)^12-2/x(41)^6+1/x(42)^12-2/x(42)^6+1/x(43)^12-2/x(43)^6+1/x(44)^12-2/x(44)^6+1/x(45)^12-2/x(45)^6+1/x(46)^12-2/x(46)^6+1/x(47)^12-2/x(47)^6+1/x(48)^12-2/x(48)^6+1/x(49)^12-2/x(49)^6+1/x(50)^12-2/x(50)^6+1/x(51)^12-2/x(51)^6+1/x(52)^12-2/x(52)^6+1/x(53)^12-2/x(53)^6+1/x(54)^12-2/x(54)^6+1/x(55)^12-2/x(55)^6+1/x(56)^12-2/x(56)^6+1/x(57)^12-2/x(57)^6+1/x(58)^12-2/x(58)^6+1/x(59)^12-2/x(59)^6+1/x(60)^12-2/x(60)^6+1/x(61)^12-2/x(61)^6+1/x(62)^12-2/x(62)^6+1/x(63)^12-2/x(63)^6+1/x(64)^12-2/x(64)^6+1/x(65)^12-2/x(65)^6;

% Bounds
lb = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-((x(3)-x(1))^2+(x(4)-x(2))^2)^0.5+x(21);
             -((x(5)-x(1))^2+(x(6)-x(2))^2)^0.5+x(22);
             -((x(5)-x(3))^2+(x(6)-x(4))^2)^0.5+x(23);
             -((x(7)-x(1))^2+(x(8)-x(2))^2)^0.5+x(24);
             -((x(7)-x(3))^2+(x(8)-x(4))^2)^0.5+x(25);
             -((x(7)-x(5))^2+(x(8)-x(6))^2)^0.5+x(26);
             -((x(9)-x(1))^2+(x(10)-x(2))^2)^0.5+x(27);
             -((x(9)-x(3))^2+(x(10)-x(4))^2)^0.5+x(28);
             -((x(9)-x(5))^2+(x(10)-x(6))^2)^0.5+x(29);
             -((x(9)-x(7))^2+(x(10)-x(8))^2)^0.5+x(30);
             -((x(11)-x(1))^2+(x(12)-x(2))^2)^0.5+x(31);
             -((x(11)-x(3))^2+(x(12)-x(4))^2)^0.5+x(32);
             -((x(11)-x(5))^2+(x(12)-x(6))^2)^0.5+x(33);
             -((x(11)-x(7))^2+(x(12)-x(8))^2)^0.5+x(34);
             -((x(11)-x(9))^2+(x(12)-x(10))^2)^0.5+x(35);
             -((x(13)-x(1))^2+(x(14)-x(2))^2)^0.5+x(36);
             -((x(13)-x(3))^2+(x(14)-x(4))^2)^0.5+x(37);
             -((x(13)-x(5))^2+(x(14)-x(6))^2)^0.5+x(38);
             -((x(13)-x(7))^2+(x(14)-x(8))^2)^0.5+x(39);
             -((x(13)-x(9))^2+(x(14)-x(10))^2)^0.5+x(40);
             -((x(13)-x(11))^2+(x(14)-x(12))^2)^0.5+x(41);
             -((x(15)-x(1))^2+(x(16)-x(2))^2)^0.5+x(42);
             -((x(15)-x(3))^2+(x(16)-x(4))^2)^0.5+x(43);
             -((x(15)-x(5))^2+(x(16)-x(6))^2)^0.5+x(44);
             -((x(15)-x(7))^2+(x(16)-x(8))^2)^0.5+x(45);
             -((x(15)-x(9))^2+(x(16)-x(10))^2)^0.5+x(46);
             -((x(15)-x(11))^2+(x(16)-x(12))^2)^0.5+x(47);
             -((x(15)-x(13))^2+(x(16)-x(14))^2)^0.5+x(48);
             -((x(17)-x(1))^2+(x(18)-x(2))^2)^0.5+x(49);
             -((x(17)-x(3))^2+(x(18)-x(4))^2)^0.5+x(50);
             -((x(17)-x(5))^2+(x(18)-x(6))^2)^0.5+x(51);
             -((x(17)-x(7))^2+(x(18)-x(8))^2)^0.5+x(52);
             -((x(17)-x(9))^2+(x(18)-x(10))^2)^0.5+x(53);
             -((x(17)-x(11))^2+(x(18)-x(12))^2)^0.5+x(54);
             -((x(17)-x(13))^2+(x(18)-x(14))^2)^0.5+x(55);
             -((x(17)-x(15))^2+(x(18)-x(16))^2)^0.5+x(56);
             -((x(19)-x(1))^2+(x(20)-x(2))^2)^0.5+x(57);
             -((x(19)-x(3))^2+(x(20)-x(4))^2)^0.5+x(58);
             -((x(19)-x(5))^2+(x(20)-x(6))^2)^0.5+x(59);
             -((x(19)-x(7))^2+(x(20)-x(8))^2)^0.5+x(60);
             -((x(19)-x(9))^2+(x(20)-x(10))^2)^0.5+x(61);
             -((x(19)-x(11))^2+(x(20)-x(12))^2)^0.5+x(62);
             -((x(19)-x(13))^2+(x(20)-x(14))^2)^0.5+x(63);
             -((x(19)-x(15))^2+(x(20)-x(16))^2)^0.5+x(64);
             -((x(19)-x(17))^2+(x(20)-x(18))^2)^0.5+x(65)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8,0.8]';

% Options
opts = struct('probname','ljcluster');
opts.sense = 'min';
