% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 15:35:59
% Model: Model_P1

% Objective
fun = @(x)((0.013+0.0024*x(4)/x(1))*x(1)+10*x(1)+0.06*x(4)/x(1))*x(7)+((0.01+0.002*x(5)/x(2))*x(2)+10*x(2)+0.06*x(5)/x(2))*x(8)+((0.014+0.0028*x(6)/x(3))*x(3)+10*x(3)+0.06*x(6)/x(3))*x(9)+100*x(7)+100*x(8)+100*x(9)+0.2352*((6300*x(10)+17500*x(13)+4375*x(16)+44800*x(19)+4375*x(22)+44800*x(25))^0.5+(6300*x(11)+17500*x(14)+4375*x(17)+44800*x(20)+4375*x(23)+44800*x(26))^0.5+(6300*x(12)+17500*x(15)+4375*x(18)+44800*x(21)+4375*x(24)+44800*x(27))^0.5)+9.5*x(10)+475*x(11)+684*x(12)+31.4*x(13)+533.8*x(14)+518.1*x(15)+41.4*x(16)+9.2*x(17)+119.6*x(18)+514.8*x(19)+58.5*x(20)+304.2*x(21)+285*x(22)+337.5*x(23)+22.5*x(24)+1612.8*x(25)+1094.4*x(26)+38.4*x(27);

% Bounds
lb = [1,1,1,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [250,250,250,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(10)+x(11)+x(12);
             x(13)+x(14)+x(15);
             x(16)+x(17)+x(18);
             x(19)+x(20)+x(21);
             x(22)+x(23)+x(24);
             x(25)+x(26)+x(27);
             -x(7)+x(10);
             -x(8)+x(11);
             -x(9)+x(12);
             -x(7)+x(13);
             -x(8)+x(14);
             -x(9)+x(15);
             -x(7)+x(16);
             -x(8)+x(17);
             -x(9)+x(18);
             -x(7)+x(19);
             -x(8)+x(20);
             -x(9)+x(21);
             -x(7)+x(22);
             -x(8)+x(23);
             -x(9)+x(24);
             -x(7)+x(25);
             -x(8)+x(26);
             -x(9)+x(27);
             x(4)-23750*x(10)-39250*x(13)-11500*x(16)-58500*x(19)-18750*x(22)-48000*x(25);
             x(5)-23750*x(11)-39250*x(14)-11500*x(17)-58500*x(20)-18750*x(23)-48000*x(26);
             x(6)-23750*x(12)-39250*x(15)-11500*x(18)-58500*x(21)-18750*x(24)-48000*x(27)];
cl = [1,1,1,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0]';
cu = [1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [1,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','Model_P1');
opts.sense = 'min';
