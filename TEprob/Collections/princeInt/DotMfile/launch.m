% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:37:28
% Model: launch

% Objective
fun = @(x)x(26)*x(26)+1e-8*(5272.77*exp(1.2781*log(x(1)))*exp(-0.1959*log(x(2)))*exp(2.4242*log(x(3)))*exp(0.38745*log(x(4)))*exp(0.9904*log(x(5)))+160.909*exp(-0.146*log(0.001*x(6)))+282.874*exp(0.648*log(0.001*x(6)))+0.64570846*exp(0.3322*log(x(1)))*exp(-1.5935*log(x(3)))*exp(0.2363*log(x(5)))*exp(0.1079*log(x(7)))+31.136196*exp(0.736*log(0.001*x(6)))+12.092112*exp(-0.229*log(0.001*x(6)))+31.136196*exp(0.736*log(0.001*x(13)))+12.092112*exp(-0.229*log(0.001*x(13)))+0.0002587*x(6))+1e-8*(5272.77*exp(1.2781*log(x(8)))*exp(-0.1959*log(x(9)))*exp(2.4242*log(x(10)))*exp(0.38745*log(x(11)))*exp(0.9904*log(x(12)))+160.909*exp(-0.146*log(0.001*x(13)))+282.874*exp(0.648*log(0.001*x(13)))+0.64570846*exp(0.3322*log(x(8)))*exp(-1.5935*log(x(10)))*exp(0.2363*log(x(12)))*exp(0.1079*log(x(14)))+0.0002587*x(13))+1e-8*(5272.77*exp(1.2781*log(x(15)))*exp(-0.1959*log(x(16)))*exp(2.4242*log(x(17)))*exp(0.38745*log(x(18)))*exp(0.9904*log(x(19)))+181.806*exp(0.539*log(0.001*x(20)))+232.57*exp(0.772*log(0.001*x(20)))+0.49783215*exp(0.3322*log(x(15)))*exp(-1.5935*log(x(17)))*exp(0.2363*log(x(19)))*exp(0.1079*log(x(21)))-0.22424514*exp(-1.33*log(0.01*x(20)))+20.708238*exp(0.498*log(0.01*x(20)))+0.001958*x(20))+2.55000001785e-8*exp(0.46*log(0.003*x(5)+0.003*x(12)+0.003*x(19)))+4.7040096e-7*x(22)-5.64017e-6;

% Bounds
lb = [1e-08,1e-08,0.25,1e-08,1e-08,1e-08,125,1e-08,1e-08,0.24,1e-08,1e-08,1e-08,75,1e-08,1e-08,0.16,1e-08,1e-08,1e-08,50,2.5,1e-08,1e-08,1e-08,-Inf]';
ub = [10000,10000,0.3,10000,10000,10000,150,10000,10000,0.29,10000,10000,10000,100,10000,10000,0.21,10000,10000,10000,70,4,10000,10000,10000,Inf]';

% Constraints
nlcon = @(x)[2*x(1)-x(2);
             -x(8)+0.6*x(9);
             -x(15)+0.7*x(16);
             -x(4)+5*x(6);
             -x(11)+5*x(13);
             x(18)-x(20);
             12*x(2)-x(5);
             17*x(2)-x(5);
             10*x(9)-x(12);
             13*x(9)-x(12);
             7*x(16)-x(19);
             10*x(16)-x(19);
             1.2*x(2)-x(4)+1.2*x(5)+1.2*x(9)+1.2*x(12)+1.2*x(16)+1.2*x(19)+1.2*x(22);
             1.4*x(2)-x(4)+1.4*x(5)+1.4*x(9)+1.4*x(12)+1.4*x(16)+1.4*x(19)+1.4*x(22);
             0.6*x(9)-x(11)+0.6*x(12)+0.6*x(16)+0.6*x(19)+0.6*x(22);
             0.75*x(9)-x(11)+0.75*x(12)+0.75*x(16)+0.75*x(19)+0.75*x(22);
             0.7*x(16)-x(18)+0.7*x(19)+0.7*x(22);
             0.9*x(16)-x(18)+0.9*x(19)+0.9*x(22);
             x(3)*x(22)+20*x(3)-x(22)-x(2)-x(9)-x(12)-x(16)-x(19)-x(26);
             x(10)*x(22)+20*x(10)-x(22)-x(9)-x(16)-x(19)-x(26);
             x(17)*x(22)+20*x(17)-x(22)-x(16)-x(26);
             -x(4)*x(23)+240*x(5);
             -x(4)*x(23)+290*x(5);
             -x(11)*x(24)+240*x(12);
             -x(11)*x(24)+290*x(12);
             -x(18)*x(25)+340*x(19);
             -x(18)*x(25)+375*x(19);
             -(-32*x(4)*x(23)*log(x(3))/x(5)-32*x(11)*x(24)*log(x(10))/x(12)-32*x(18)*x(25)*log(x(17))/x(19));
             (-32*x(4)*x(23)*log(x(3))/x(5))-32*x(11)*x(24)*log(x(10))/x(12)-32*x(18)*x(25)*log(x(17))/x(19)];
cl = [0,0,0,0,0,0,-Inf,0,-Inf,0,-Inf,0,-Inf,-28,-Inf,-15,-Inf,-18,-Inf,-Inf,-Inf,-Inf,0,-Inf,0,-Inf,0,-Inf,-Inf]';
cu = [0,0,0,0,0,0,0,Inf,0,Inf,0,Inf,-24,Inf,-12,Inf,-14,Inf,20,20,20,0,Inf,0,Inf,0,Inf,-35000,50000]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [68,136,0.29988744,3733,2177,746.6,125,28.2,47,0.28939109,480,566,96,75,11.2,16,0.20980926,129,145,129,50,2.5,155,314,403,NaN]';

% Options
opts = struct('probname','launch');
opts.sense = 'min';
