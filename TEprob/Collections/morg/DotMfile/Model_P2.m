% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 15:36:02
% Model: Model_P2

% Objective
fun = @(x)66.5*x(1)+522.5*x(2)+750.5*x(3)+125.6*x(4)+612.3*x(5)+628*x(6)+69*x(7)+32.2*x(8)+151.8*x(9)+655.2*x(10)+175.5*x(11)+468*x(12)+330*x(13)+375*x(14)+75*x(15)+1728*x(16)+1190.4*x(17)+172.8*x(18)+24.5108139399735*x(19)+24.5071418162135*x(20)+24.5120378589786*x(21)+0.2352*x(22)+0.2352*x(23)+0.2352*x(24)+100*x(25)+100*x(26)+100*x(27);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf]';
ub = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28.2665880502051,28.2665880502051,28.2665880502051,349.499642346026,349.499642346026,349.499642346026,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3);
             x(4)+x(5)+x(6);
             x(7)+x(8)+x(9);
             x(10)+x(11)+x(12);
             x(13)+x(14)+x(15);
             x(16)+x(17)+x(18);
             x(1)-x(25);
             x(2)-x(26);
             x(3)-x(27);
             x(4)-x(25);
             x(5)-x(26);
             x(6)-x(27);
             x(7)-x(25);
             x(8)-x(26);
             x(9)-x(27);
             x(10)-x(25);
             x(11)-x(26);
             x(12)-x(27);
             x(13)-x(25);
             x(14)-x(26);
             x(15)-x(27);
             x(16)-x(25);
             x(17)-x(26);
             x(18)-x(27);
             -x(19)^2+95*x(1)+157*x(4)+46*x(7)+234*x(10)+75*x(13)+192*x(16);
             -x(20)^2+95*x(2)+157*x(5)+46*x(8)+234*x(11)+75*x(14)+192*x(17);
             -x(21)^2+95*x(3)+157*x(6)+46*x(9)+234*x(12)+75*x(15)+192*x(18);
             -x(22)^2+6300*x(1)+17500*x(4)+4375*x(7)+44800*x(10)+4375*x(13)+44800*x(16);
             -x(23)^2+6300*x(2)+17500*x(5)+4375*x(8)+44800*x(11)+4375*x(14)+44800*x(17);
             -x(24)^2+6300*x(3)+17500*x(6)+4375*x(9)+44800*x(12)+4375*x(15)+44800*x(18)];
cl = [1,1,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Model_P2');
opts.sense = 'min';