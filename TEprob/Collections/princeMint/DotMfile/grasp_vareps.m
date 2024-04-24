% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:00:00
% Model: grasp_vareps

% Objective
fun = @(x)x(52);

% Bounds
lb = [1e-08,1e-05,1e-05,1e-05,1e-05,1e-05,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-Inf]';
ub = [0.1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,Inf]';

% Constraints
nlcon = @(x)[x(2)+0.493101233652021*x(37)+0.770039499372672*x(42)-0.404833722380856*x(47);
             x(3)-0.55062183431401*x(38)+0.635828267772141*x(43)-0.540867829953449*x(48);
             x(4)-0.55062183431401*x(39)-0.635828267772141*x(44)-0.540867829953449*x(49);
             x(5)+0.493101233652021*x(40)-0.770039499372672*x(45)-0.404833722380856*x(50);
             x(6)+0.93334560620306*x(41)-1.75843224564379e-16*x(46)-0.358979079308869*x(51);
             -0.493101233652021*x(2)+x(7)-x(37);
             0.55062183431401*x(3)+x(8)-x(38);
             0.55062183431401*x(4)+x(9)-x(39);
             -0.493101233652021*x(5)+x(10)-x(40);
             -0.93334560620306*x(6)+x(11)-x(41);
             -0.770039499372672*x(2)+x(12)-x(42);
             -0.635828267772141*x(3)+x(13)-x(43);
             0.635828267772141*x(4)+x(14)-x(44);
             0.770039499372672*x(5)+x(15)-x(45);
             1.75843224564379e-16*x(6)+x(16)-x(46);
             0.404833722380856*x(2)+x(17)-x(47);
             0.540867829953449*x(3)+x(18)-x(48);
             0.540867829953449*x(4)+x(19)-x(49);
             0.404833722380856*x(5)+x(20)-x(50);
             0.358979079308869*x(6)+x(21)-x(51);
             x(22)+1.27541019662497*x(42)-0.951056516295154*x(47);
             x(23)+0.604589803375032*x(43)-0.587785252292473*x(48);
             x(24)+0.604589803375032*x(44)+0.587785252292473*x(49);
             x(25)+1.27541019662497*x(45)+0.951056516295154*x(50);
             x(26)+1.69*x(46)+2.44921270764475e-16*x(51);
             x(27)-1.27541019662497*x(37)+0.609016994374947*x(47);
             x(28)-0.604589803375032*x(38)-0.509016994374947*x(48);
             x(29)-0.604589803375032*x(39)-0.509016994374948*x(49);
             x(30)-1.27541019662497*x(40)+0.609016994374947*x(50);
             x(31)-1.69*x(41)+1.3*x(51);
             x(32)+0.951056516295154*x(37)-0.609016994374947*x(42);
             x(33)+0.587785252292473*x(38)+0.509016994374947*x(43);
             x(34)-0.587785252292473*x(39)+0.509016994374948*x(44);
             x(35)-0.951056516295154*x(40)-0.609016994374947*x(45);
             x(36)-2.44921270764475e-16*x(41)-1.3*x(46);
             x(1)-x(2)+x(52);
             x(1)-x(3)+x(52);
             x(1)-x(4)+x(52);
             x(1)-x(5)+x(52);
             x(1)-x(6)+x(52);
             (x(7)^2+x(12)^2+x(17)^2+x(1)^2)^0.5-0.3*x(2);
             (x(8)^2+x(13)^2+x(18)^2+x(1)^2)^0.5-0.3*x(3);
             (x(9)^2+x(14)^2+x(19)^2+x(1)^2)^0.5-0.3*x(4);
             (x(10)^2+x(15)^2+x(20)^2+x(1)^2)^0.5-0.3*x(5);
             (x(11)^2+x(16)^2+x(21)^2+x(1)^2)^0.5-0.3*x(6);
             x(37)+x(38)+x(39)+x(40)+x(41);
             x(42)+x(43)+x(44)+x(45)+x(46);
             x(47)+x(48)+x(49)+x(50)+x(51);
             x(22)+x(23)+x(24)+x(25)+x(26);
             x(27)+x(28)+x(29)+x(30)+x(31);
             x(32)+x(33)+x(34)+x(35)+x(36)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,1,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,1,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [1e-08,1e-05,1e-05,1e-05,1e-05,1e-05,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','grasp_vareps');
opts.sense = 'min';
