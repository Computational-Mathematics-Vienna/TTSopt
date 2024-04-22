% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:19:44
% Model: meanvarx

% Objective
fun = @(x)42.18*x(1)*x(1)+40.36*x(1)*x(2)+21.76*x(1)*x(3)+10.6*x(1)*x(4)+24.64*x(1)*x(5)+47.68*x(1)*x(6)+34.82*x(1)*x(7)+70.89*x(2)*x(2)+43.16*x(2)*x(3)+30.82*x(2)*x(4)+46.48*x(2)*x(5)+47.6*x(2)*x(6)+25.24*x(2)*x(7)+25.51*x(3)*x(3)+19.2*x(3)*x(4)+45.26*x(3)*x(5)+26.44*x(3)*x(6)+9.4*x(3)*x(7)+22.33*x(4)*x(4)+20.64*x(4)*x(5)+20.92*x(4)*x(6)+2*x(4)*x(7)+30.01*x(5)*x(5)+32.72*x(5)*x(6)+14.4*x(5)*x(7)+42.23*x(6)*x(6)+19.8*x(6)*x(7)+16.42*x(7)*x(7)-0.06435*x(1)-0.0548*x(2)-0.02505*x(3)-0.0762*x(4)-0.03815*x(5)-0.0927*x(6)-0.031*x(7);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7);
             x(1)-x(8)+x(15);
             x(2)-x(9)+x(16);
             x(3)-x(10)+x(17);
             x(4)-x(11)+x(18);
             x(5)-x(12)+x(19);
             x(6)-x(13)+x(20);
             x(7)-x(14)+x(21);
             x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14);
             x(8)-0.11*x(22);
             x(9)-0.1*x(23);
             x(10)-0.07*x(24);
             x(11)-0.11*x(25);
             x(12)-0.2*x(26);
             x(13)-0.1*x(27);
             x(14)-0.1*x(28);
             x(8)-0.03*x(22);
             x(9)-0.04*x(23);
             x(10)-0.04*x(24);
             x(11)-0.03*x(25);
             x(12)-0.03*x(26);
             x(13)-0.03*x(27);
             x(14)-0.03*x(28);
             x(15)-0.2*x(29);
             x(16)-0.15*x(30);
             x(17);
             x(18);
             x(19)-0.1*x(33);
             x(20)-0.15*x(34);
             x(21)-0.2*x(35);
             x(15)-0.02*x(29);
             x(16)-0.02*x(30);
             x(17)-0.04*x(31);
             x(18)-0.04*x(32);
             x(19)-0.04*x(33);
             x(20)-0.04*x(34);
             x(21)-0.04*x(35);
             x(22)+x(29);
             x(23)+x(30);
             x(24)+x(31);
             x(25)+x(32);
             x(26)+x(33);
             x(27)+x(34);
             x(28)+x(35)];
cl = [1,0.2,0.2,0,0,0.2,0.2,0.2,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1,0.2,0.2,0,0,0.2,0.2,0.2,0.3,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,Inf,Inf,Inf,Inf,Inf,Inf,Inf,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','meanvarx');
opts.sense = 'min';
