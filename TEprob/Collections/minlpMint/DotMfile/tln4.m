% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 14:03:39
% Model: tln4

% Objective
fun = @(x)0.1*x(1)+0.2*x(2)+0.3*x(3)+0.4*x(4)+x(5)+x(6)+x(7)+x(8);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,12,12,12,12,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]';

% Constraints
nlcon = @(x)[330*x(9)+360*x(13)+385*x(17)+415*x(21);
             330*x(10)+360*x(14)+385*x(18)+415*x(22);
             330*x(11)+360*x(15)+385*x(19)+415*x(23);
             330*x(12)+360*x(16)+385*x(20)+415*x(24);
             -330*x(9)-360*x(13)-385*x(17)-415*x(21);
             -330*x(10)-360*x(14)-385*x(18)-415*x(22);
             -330*x(11)-360*x(15)-385*x(19)-415*x(23);
             -330*x(12)-360*x(16)-385*x(20)-415*x(24);
             x(9)+x(13)+x(17)+x(21);
             x(10)+x(14)+x(18)+x(22);
             x(11)+x(15)+x(19)+x(23);
             x(12)+x(16)+x(20)+x(24);
             x(1)-x(5);
             x(2)-x(6);
             x(3)-x(7);
             x(4)-x(8);
             -12*x(1)+x(5);
             -12*x(2)+x(6);
             -12*x(3)+x(7);
             -12*x(4)+x(8);
             -(x(5)*x(9)+x(6)*x(10)+x(7)*x(11)+x(8)*x(12));
             -(x(5)*x(13)+x(6)*x(14)+x(7)*x(15)+x(8)*x(16));
             -(x(5)*x(17)+x(6)*x(18)+x(7)*x(19)+x(8)*x(20));
             -(x(5)*x(21)+x(6)*x(22)+x(7)*x(23)+x(8)*x(24))];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1900,1900,1900,1900,-1700,-1700,-1700,-1700,5,5,5,5,0,0,0,0,0,0,0,0,-8,-7,-12,-11]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBIIIIIIIIIIIIIIIIIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','tln4');
opts.sense = 'min';
