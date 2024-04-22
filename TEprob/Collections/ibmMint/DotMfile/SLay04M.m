% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 11:09:19
% Model: SLay04M

% Objective
fun = @(x)150*((-4+x(1))^2+(-10+x(5))^2)+390*((-10+x(2))^2+(-15+x(6))^2)+240*((-7+x(3))^2+(-9+x(7))^2)+70*((-3+x(4))^2+(-3+x(8))^2)+300*x(33)+240*x(34)+210*x(35)+100*x(36)+150*x(37)+120*x(38)+300*x(39)+240*x(40)+210*x(41)+100*x(42)+150*x(43)+120*x(44);

% Bounds
lb = [2.5,3.5,1.5,1,3,2.5,1.5,1.5,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [27.5,26.5,28.5,29,27,27.5,28.5,28.5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)+x(2)+x(33);
             -x(1)+x(3)+x(34);
             -x(1)+x(4)+x(35);
             -x(2)+x(3)+x(36);
             -x(2)+x(4)+x(37);
             -x(3)+x(4)+x(38);
             x(1)-x(2)+x(33);
             x(1)-x(3)+x(34);
             x(1)-x(4)+x(35);
             x(2)-x(3)+x(36);
             x(2)-x(4)+x(37);
             x(3)-x(4)+x(38);
             -x(5)+x(6)+x(39);
             -x(5)+x(7)+x(40);
             -x(5)+x(8)+x(41);
             -x(6)+x(7)+x(42);
             -x(6)+x(8)+x(43);
             -x(7)+x(8)+x(44);
             x(5)-x(6)+x(39);
             x(5)-x(7)+x(40);
             x(5)-x(8)+x(41);
             x(6)-x(7)+x(42);
             x(6)-x(8)+x(43);
             x(7)-x(8)+x(44);
             x(1)-x(2)+30*x(9);
             x(1)-x(3)+30*x(10);
             x(1)-x(4)+30*x(11);
             x(2)-x(3)+30*x(12);
             x(2)-x(4)+30*x(13);
             x(3)-x(4)+30*x(14);
             -x(1)+x(2)+30*x(15);
             -x(1)+x(3)+30*x(16);
             -x(1)+x(4)+30*x(17);
             -x(2)+x(3)+30*x(18);
             -x(2)+x(4)+30*x(19);
             -x(3)+x(4)+30*x(20);
             x(5)-x(6)+30*x(21);
             x(5)-x(7)+30*x(22);
             x(5)-x(8)+30*x(23);
             x(6)-x(7)+30*x(24);
             x(6)-x(8)+30*x(25);
             x(7)-x(8)+30*x(26);
             -x(5)+x(6)+30*x(27);
             -x(5)+x(7)+30*x(28);
             -x(5)+x(8)+30*x(29);
             -x(6)+x(7)+30*x(30);
             -x(6)+x(8)+30*x(31);
             -x(7)+x(8)+30*x(32);
             x(9)+x(15)+x(21)+x(27);
             x(10)+x(16)+x(22)+x(28);
             x(11)+x(17)+x(23)+x(29);
             x(12)+x(18)+x(24)+x(30);
             x(13)+x(19)+x(25)+x(31);
             x(14)+x(20)+x(26)+x(32)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,24,26,26.5,25,25.5,27.5,24,26,26.5,25,25.5,27.5,24.5,25.5,25.5,26,26,27,24.5,25.5,25.5,26,26,27,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCC';

% Starting Guess
x0 = [2.5,3.5,1.5,1,3,2.5,1.5,1.5,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','SLay04M');
opts.sense = 'min';
