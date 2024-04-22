% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:05:46
% Model: inf_minlp_161

% Objective
fun = @(x)0.5*x(1)-0.5*x(46)*(x(1)+x(2)+x(3))+0.5*x(2)+0.5*x(3);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-x(3)+x(4);
             x(1)+x(24);
             x(2)+x(25);
             x(3)+x(26);
             -5.7*x(1)+32.1*x(5)+23.3*x(6)+3.72*x(7);
             -4.275*x(2)+32.1*x(8)+23.3*x(9)+3.72*x(10);
             -2.85*x(3)+32.1*x(11)+23.3*x(12)+3.72*x(13);
             0.1*x(1)+2.457*x(5)+2.53*x(6)+0.29*x(7)-x(14)+x(27);
             2.457*x(8)+2.53*x(9)+0.29*x(10)-x(15)+x(28);
             -0.2*x(3)+2.457*x(11)+2.53*x(12)+0.29*x(13)-x(16)+x(29);
             0.5*x(1)-x(46)*(x(1)+x(2)+x(3))+0.4*x(2)+0.2*x(3)+2.457*x(5)+2.53*x(6)+0.29*x(7)+2.457*x(8)+2.53*x(9)+0.29*x(10)+2.457*x(11)+2.53*x(12)+0.29*x(13);
             x(46);
             x(46);
             0.0376*x(4)-x(30)+x(72);
             0.002*x(1)+x(18)+0.1*x(21)-x(31)-5.7*x(69)-x(72);
             0.002*x(2)+x(19)-x(32)-4.275*x(70)-x(72);
             0.002*x(3)+x(20)-0.2*x(23)-x(33)-2.85*x(71)-x(72);
             2.457*x(21)-x(34)+32.1*x(69);
             2.53*x(21)-x(35)+23.3*x(69);
             0.29*x(21)-x(36)+3.72*x(69);
             2.457*x(22)-x(37)+32.1*x(70);
             2.53*x(22)-x(38)+23.3*x(70);
             0.29*x(22)-x(39)+3.72*x(70);
             2.457*x(23)-x(40)+32.1*x(71);
             2.53*x(23)-x(41)+23.3*x(71);
             0.29*x(23)-x(42)+3.72*x(71);
             x(17)-x(21)-x(43);
             x(17)-x(22)-x(44);
             x(17)-x(23)-x(45);
             x(24)-10000*x(47);
             x(25)-10000*x(48);
             x(26)-10000*x(49);
             x(18)+10000*x(47);
             x(19)+10000*x(48);
             x(20)+10000*x(49);
             x(27)-10000*x(50);
             x(28)-10000*x(51);
             x(29)-10000*x(52);
             x(21)+10000*x(50);
             x(22)+10000*x(51);
             x(23)+10000*x(52);
             x(30)-10000*x(53);
             x(4)+10000*x(53);
             x(31)-10000*x(54);
             x(32)-10000*x(55);
             x(33)-10000*x(56);
             x(1)+10000*x(54);
             x(2)+10000*x(55);
             x(3)+10000*x(56);
             x(34)-10000*x(57);
             x(35)-10000*x(58);
             x(36)-10000*x(59);
             x(37)-10000*x(60);
             x(38)-10000*x(61);
             x(39)-10000*x(62);
             x(40)-10000*x(63);
             x(41)-10000*x(64);
             x(42)-10000*x(65);
             x(5)+10000*x(57);
             x(6)+10000*x(58);
             x(7)+10000*x(59);
             x(8)+10000*x(60);
             x(9)+10000*x(61);
             x(10)+10000*x(62);
             x(11)+10000*x(63);
             x(12)+10000*x(64);
             x(13)+10000*x(65);
             x(43)-10000*x(66);
             x(44)-10000*x(67);
             x(45)-10000*x(68);
             x(14)+10000*x(66);
             x(15)+10000*x(67);
             x(16)+10000*x(68)];
cl = [0,3000,3000,3000,0,0,0,0,0,0,0,-Inf,0,376,-22,-26,-29,-100,-50,-11,-100,-50,-11,-100,-50,-11,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [0,3000,3000,3000,0,0,0,0,0,0,0,0.4,Inf,376,-22,-26,-29,-100,-50,-11,-100,-50,-11,-100,-50,-11,0,0,0,0,0,0,10000,10000,10000,0,0,0,10000,10000,10000,0,10000,0,0,0,10000,10000,10000,0,0,0,0,0,0,0,0,0,10000,10000,10000,10000,10000,10000,10000,10000,10000,0,0,0,10000,10000,10000]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_161');
opts.sense = 'max';
