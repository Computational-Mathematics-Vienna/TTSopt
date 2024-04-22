% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:18:58
% Model: hmittelman

% Objective
fun = @(x)10*x(5)*x(7)*x(9)*x(10)*x(14)*x(15)*x(16)+7*x(1)*x(2)*x(3)*x(4)*x(8)*x(11)+x(3)*x(4)*x(6)*x(7)*x(8)+12*x(3)*x(4)*x(8)*x(11)+8*x(6)*x(7)*x(8)*x(12)+3*x(6)*x(7)*x(9)*x(14)*x(16)+x(9)*x(10)*x(14)*x(16)+5*x(5)*x(10)*x(14)*x(15)*x(16)+3*x(1)*x(2)*x(11)*x(12);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[3*x(5)*x(7)*x(9)*x(10)*x(14)*x(15)*x(16)-12*x(1)*x(2)*x(3)*x(4)*x(8)*x(11)-8*x(3)*x(4)*x(6)*x(7)*x(8)+x(3)*x(4)*x(8)*x(11)-7*x(1)*x(2)*x(11)*x(12)+2*x(13)*x(14)*x(15)*x(16);
             x(1)*x(2)*x(3)*x(4)*x(8)*x(11)-10*x(3)*x(4)*x(6)*x(7)*x(8)-5*x(6)*x(7)*x(8)*x(12)+x(6)*x(7)*x(9)*x(14)*x(16)+7*x(9)*x(10)*x(14)*x(16)+x(5)*x(10)*x(14)*x(15)*x(16);
             5*x(5)*x(7)*x(9)*x(10)*x(14)*x(15)*x(16)-3*x(1)*x(2)*x(3)*x(4)*x(8)*x(11)-x(3)*x(4)*x(6)*x(7)*x(8)-2*x(5)*x(10)*x(14)*x(15)*x(16)+x(13)*x(14)*x(15)*x(16);
             3*x(1)*x(2)*x(3)*x(4)*x(8)*x(11)-5*x(5)*x(7)*x(9)*x(10)*x(14)*x(15)*x(16)+x(3)*x(4)*x(6)*x(7)*x(8)+2*x(5)*x(10)*x(14)*x(15)*x(16)-x(13)*x(14)*x(15)*x(16);
             (-4*x(3)*x(4)*x(6)*x(7)*x(8))-2*x(3)*x(4)*x(8)*x(11)-5*x(6)*x(7)*x(9)*x(14)*x(16)+x(9)*x(10)*x(14)*x(16)-9*x(5)*x(10)*x(14)*x(15)*x(16)-2*x(1)*x(2)*x(11)*x(12);
             9*x(1)*x(2)*x(3)*x(4)*x(8)*x(11)-12*x(3)*x(4)*x(8)*x(11)-7*x(6)*x(7)*x(8)*x(12)+6*x(6)*x(7)*x(9)*x(14)*x(16)+2*x(5)*x(10)*x(14)*x(15)*x(16)-15*x(1)*x(2)*x(11)*x(12)+3*x(13)*x(14)*x(15)*x(16);
             5*x(1)*x(2)*x(3)*x(4)*x(8)*x(11)-8*x(5)*x(7)*x(9)*x(10)*x(14)*x(15)*x(16)+2*x(3)*x(4)*x(6)*x(7)*x(8)-7*x(3)*x(4)*x(8)*x(11)-x(6)*x(7)*x(8)*x(12)-5*x(9)*x(10)*x(14)*x(16)-10*x(1)*x(2)*x(11)*x(12)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [-2,-1,-1,1,-3,-7,-1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'BBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hmittelman');
opts.sense = 'min';
