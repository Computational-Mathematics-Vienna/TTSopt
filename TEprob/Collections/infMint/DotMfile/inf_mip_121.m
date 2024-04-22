% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-May-2015 14:04:17
% Model: inf_mip_121

% Objective
fun = @(x)x(1)+x(2)+x(3)-15*x(9)+x(13)+x(14)+x(15)+x(16)+15;

% Bounds
lb = [0,0,0,-0.5,0,0,0,0,0,0.9,0.9,0.9,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-0.261799388,-0.261799388,-0.261799388,-Inf,-Inf,-Inf]';
ub = [10,0,0,2,0.5,0,Inf,Inf,Inf,1.1,1.1,1.1,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0.261799388,0.261799388,0.261799388,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(20)-x(21)+x(26)+x(27);
             x(2)-x(22)-x(23)+x(28)+x(29);
             x(3)-3*x(9)-x(24)-x(25)+x(30)+x(31);
             x(4)-x(32)-x(33)+x(38)+x(39);
             x(5)-x(34)-x(35)+x(40)+x(41);
             x(6)-x(36)-x(37)+x(42)+x(43);
             -1.98019801980198*x(10)+x(20)-x(26)+0.99009900990099*x(44)-9.9009900990099*x(47);
             -1.98019801980198*x(10)+x(21)-x(27)+0.99009900990099*x(45)-9.9009900990099*x(48);
             -1.98019801980198*x(11)+x(22)-x(28)+0.99009900990099*x(46)-9.9009900990099*x(49);
             -1.98019801980198*x(11)+x(23)-x(29)+0.99009900990099*x(44)+9.9009900990099*x(47);
             -1.98019801980198*x(12)+x(24)-x(30)+0.99009900990099*x(45)+9.9009900990099*x(48);
             -1.98019801980198*x(12)+x(25)-x(31)+0.99009900990099*x(46)+9.9009900990099*x(49);
             -18.3919801980198*x(10)+x(32)-x(38)-9.9009900990099*x(44)-0.99009900990099*x(47);
             -19.8019801980198*x(10)+x(33)-x(39)-9.9009900990099*x(45)-0.99009900990099*x(48);
             -19.8019801980198*x(11)+x(34)-x(40)-9.9009900990099*x(46)-0.99009900990099*x(49);
             -18.3919801980198*x(11)+x(35)-x(41)-9.9009900990099*x(44)+0.99009900990099*x(47);
             -19.8019801980198*x(12)+x(36)-x(42)-9.9009900990099*x(45)+0.99009900990099*x(48);
             -19.8019801980198*x(12)+x(37)-x(43)-9.9009900990099*x(46)+0.99009900990099*x(49);
             x(20)+x(26);
             x(21)+x(27);
             x(22)+x(28);
             x(23)+x(29);
             x(24)+x(30);
             x(25)+x(31);
             x(20)+x(26);
             x(21)+x(27);
             x(22)+x(28);
             x(23)+x(29);
             x(24)+x(30);
             x(25)+x(31);
             -x(17)+x(18)+x(53);
             -x(17)+x(19)+x(54);
             -x(18)+x(19)+x(55);
             x(17);
             x(7);
             x(8);
             x(9);
             x(7);
             x(8);
             x(9);
             x(10)-1.1*x(56);
             x(11)-1.1*x(57);
             x(12)-1.1*x(58);
             x(10)-0.9*x(56);
             x(11)-0.9*x(57);
             x(12)-0.9*x(58);
             x(56);
             x(57);
             x(58);
             -0.9*x(10)+x(50);
             -0.9*x(10)+x(51);
             -0.9*x(11)+x(52);
             -1.1*x(10)+x(50);
             -1.1*x(10)+x(51);
             -1.1*x(11)+x(52);
             -0.9*x(11)+x(50);
             -0.9*x(12)+x(51);
             -0.9*x(12)+x(52);
             -1.1*x(11)+x(50);
             -1.1*x(12)+x(51);
             -1.1*x(12)+x(52);
             x(44)-0.965925826*x(50);
             x(45)-0.965925826*x(51);
             x(46)-0.965925826*x(52);
             x(44)-x(50);
             x(45)-x(51);
             x(46)-x(52)];
cl = [0,0,0,0,0,0,-0.99009900990099,-0.99009900990099,-0.99009900990099,-0.99009900990099,-0.99009900990099,-0.99009900990099,-9.1959900990099,-9.9009900990099,-9.9009900990099,-9.1959900990099,-9.9009900990099,-9.9009900990099,-5,-5,-5,-5,-5,-5,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,-Inf,-Inf,-Inf,1,1,1,-Inf,-Inf,-Inf,0,0,0,1,1,1,0,0,0,-Inf,-Inf,-Inf,0,0,0,-Inf,-Inf,-Inf,0,0,0,-Inf,-Inf,-Inf]';
cu = [0,0,0,0,0,0,-0.99009900990099,-0.99009900990099,-0.99009900990099,-0.99009900990099,-0.99009900990099,-0.99009900990099,-9.1959900990099,-9.9009900990099,-9.9009900990099,-9.1959900990099,-9.9009900990099,-9.9009900990099,Inf,Inf,Inf,Inf,Inf,Inf,5,5,5,5,5,5,0,0,0,0,0,0,0,1,1,1,0,0,0,Inf,Inf,Inf,1,1,1,Inf,Inf,Inf,0,0,0,Inf,Inf,Inf,0,0,0,Inf,Inf,Inf,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.9,0.9,0.9,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_mip_121');
opts.sense = 'min';