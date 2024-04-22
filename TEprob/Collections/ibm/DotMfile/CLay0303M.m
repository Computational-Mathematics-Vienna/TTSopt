% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 10:55:09
% Model: CLay0303M

% Objective
fun = @(x)300*x(28)+240*x(29)+100*x(30)+300*x(31)+240*x(32)+100*x(33);

% Bounds
lb = [11.5,12.5,10.5,7,6.5,5.5,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0,0,0,0,0,0]';
ub = [52.5,51.5,53.5,82,82.5,83.5,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)+x(2)+x(28);
             -x(1)+x(3)+x(29);
             -x(2)+x(3)+x(30);
             x(1)-x(2)+x(28);
             x(1)-x(3)+x(29);
             x(2)-x(3)+x(30);
             -x(4)+x(5)+x(31);
             -x(4)+x(6)+x(32);
             -x(5)+x(6)+x(33);
             x(4)-x(5)+x(31);
             x(4)-x(6)+x(32);
             x(5)-x(6)+x(33);
             x(1)-x(2)+46*x(7);
             x(1)-x(3)+46*x(8);
             x(2)-x(3)+46*x(9);
             -x(1)+x(2)+46*x(10);
             -x(1)+x(3)+46*x(11);
             -x(2)+x(3)+46*x(12);
             x(4)-x(5)+81*x(13);
             x(4)-x(6)+81*x(14);
             x(5)-x(6)+81*x(15);
             -x(4)+x(5)+81*x(16);
             -x(4)+x(6)+81*x(17);
             -x(5)+x(6)+81*x(18);
             x(7)+x(10)+x(13)+x(16);
             x(8)+x(11)+x(14)+x(17);
             x(9)+x(12)+x(15)+x(18);
             (-17.5+x(1))^2+(-7+x(4))^2+6814*x(19);
             (-18.5+x(2))^2+(-7.5+x(5))^2+6678*x(20);
             (-16.5+x(3))^2+(-8.5+x(6))^2+6958*x(21);
             (-52.5+x(1))^2+(-77+x(4))^2+6556*x(22);
             (-53.5+x(2))^2+(-77.5+x(5))^2+6697*x(23);
             (-51.5+x(3))^2+(-78.5+x(6))^2+6985*x(24);
             (-32.5+x(1))^2+(-47+x(4))^2+2025*x(25);
             (-33.5+x(2))^2+(-47.5+x(5))^2+2106*x(26);
             (-31.5+x(3))^2+(-48.5+x(6))^2+2317*x(27);
             (-17.5+x(1))^2+(-13+x(4))^2+5950*x(19);
             (-18.5+x(2))^2+(-12.5+x(5))^2+5953*x(20);
             (-16.5+x(3))^2+(-11.5+x(6))^2+6517*x(21);
             (-52.5+x(1))^2+(-83+x(4))^2+7432*x(22);
             (-53.5+x(2))^2+(-82.5+x(5))^2+7432*x(23);
             (-51.5+x(3))^2+(-81.5+x(6))^2+7432*x(24);
             (-32.5+x(1))^2+(-53+x(4))^2+2541*x(25);
             (-33.5+x(2))^2+(-52.5+x(5))^2+2541*x(26);
             (-31.5+x(3))^2+(-51.5+x(6))^2+2584*x(27);
             (-12.5+x(1))^2+(-7+x(4))^2+7189*x(19);
             (-11.5+x(2))^2+(-7.5+x(5))^2+7189*x(20);
             (-13.5+x(3))^2+(-8.5+x(6))^2+7189*x(21);
             (-47.5+x(1))^2+(-77+x(4))^2+6171*x(22);
             (-46.5+x(2))^2+(-77.5+x(5))^2+6172*x(23);
             (-48.5+x(3))^2+(-78.5+x(6))^2+6748*x(24);
             (-27.5+x(1))^2+(-47+x(4))^2+2209*x(25);
             (-26.5+x(2))^2+(-47.5+x(5))^2+2290*x(26);
             (-28.5+x(3))^2+(-48.5+x(6))^2+2458*x(27);
             (-12.5+x(1))^2+(-13+x(4))^2+6325*x(19);
             (-11.5+x(2))^2+(-12.5+x(5))^2+6464*x(20);
             (-13.5+x(3))^2+(-11.5+x(6))^2+6748*x(21);
             (-47.5+x(1))^2+(-83+x(4))^2+7047*x(22);
             (-46.5+x(2))^2+(-82.5+x(5))^2+6907*x(23);
             (-48.5+x(3))^2+(-81.5+x(6))^2+7195*x(24);
             (-27.5+x(1))^2+(-53+x(4))^2+2725*x(25);
             (-26.5+x(2))^2+(-52.5+x(5))^2+2725*x(26);
             (-28.5+x(3))^2+(-51.5+x(6))^2+2725*x(27);
             x(19)+x(22)+x(25);
             x(20)+x(23)+x(26);
             x(21)+x(24)+x(27)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,40,42,41,40,42,41,75.5,76.5,77,75.5,76.5,77,1,1,1,6850,6714,6994,6581,6722,7010,2041,2122,2333,5986,5989,6553,7457,7457,7457,2557,2557,2600,7225,7225,7225,6196,6197,6773,2225,2306,2474,6361,6500,6784,7072,6932,7220,2741,2741,2741,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCBBBBBBBBBBBBBBBBBBBBBCCCCCC';

% Starting Guess
x0 = [11.5,12.5,10.5,7,6.5,5.5,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','CLay0303M');
opts.sense = 'min';
