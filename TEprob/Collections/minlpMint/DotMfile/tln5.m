% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:03:39
% Model: tln5

% Objective
fun = @(x)0.1*x(1)+0.2*x(2)+0.3*x(3)+0.4*x(4)+0.5*x(5)+x(6)+x(7)+x(8)+x(9)+x(10);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,15,15,15,15,15,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]';

% Constraints
nlcon = @(x)[330*x(11)+360*x(16)+370*x(21)+415*x(26)+435*x(31);
             330*x(12)+360*x(17)+370*x(22)+415*x(27)+435*x(32);
             330*x(13)+360*x(18)+370*x(23)+415*x(28)+435*x(33);
             330*x(14)+360*x(19)+370*x(24)+415*x(29)+435*x(34);
             330*x(15)+360*x(20)+370*x(25)+415*x(30)+435*x(35);
             -330*x(11)-360*x(16)-370*x(21)-415*x(26)-435*x(31);
             -330*x(12)-360*x(17)-370*x(22)-415*x(27)-435*x(32);
             -330*x(13)-360*x(18)-370*x(23)-415*x(28)-435*x(33);
             -330*x(14)-360*x(19)-370*x(24)-415*x(29)-435*x(34);
             -330*x(15)-360*x(20)-370*x(25)-415*x(30)-435*x(35);
             x(11)+x(16)+x(21)+x(26)+x(31);
             x(12)+x(17)+x(22)+x(27)+x(32);
             x(13)+x(18)+x(23)+x(28)+x(33);
             x(14)+x(19)+x(24)+x(29)+x(34);
             x(15)+x(20)+x(25)+x(30)+x(35);
             x(1)-x(6);
             x(2)-x(7);
             x(3)-x(8);
             x(4)-x(9);
             x(5)-x(10);
             -15*x(1)+x(6);
             -15*x(2)+x(7);
             -15*x(3)+x(8);
             -15*x(4)+x(9);
             -15*x(5)+x(10);
             -(x(6)*x(11)+x(7)*x(12)+x(8)*x(13)+x(9)*x(14)+x(10)*x(15));
             -(x(6)*x(16)+x(7)*x(17)+x(8)*x(18)+x(9)*x(19)+x(10)*x(20));
             -(x(6)*x(21)+x(7)*x(22)+x(8)*x(23)+x(9)*x(24)+x(10)*x(25));
             -(x(6)*x(26)+x(7)*x(27)+x(8)*x(28)+x(9)*x(29)+x(10)*x(30));
             -(x(6)*x(31)+x(7)*x(32)+x(8)*x(33)+x(9)*x(34)+x(10)*x(35))];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [2000,2000,2000,2000,2000,-1800,-1800,-1800,-1800,-1800,5,5,5,5,5,0,0,0,0,0,0,0,0,0,0,-12,-6,-15,-6,-9]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBIIIIIIIIIIIIIIIIIIIIIIIIIIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','tln5');
opts.sense = 'min';
