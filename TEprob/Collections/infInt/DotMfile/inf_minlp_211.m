% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:23:35
% Model: inf_minlp_211

% Objective
fun = @(x)((-1+x(1))*(-1+x(1))+(-7+x(2))*(-7+x(2)))^0.5+((-5+x(1))*(-5+x(1))+(-5+x(2))*(-5+x(2)))^0.5+((-9+x(1))*(-9+x(1))+(-6+x(2))*(-6+x(2)))^0.5+((-13+x(1))*(-13+x(1))+(-7+x(2))*(-7+x(2)))^0.5+((-17+x(1))*(-17+x(1))+(-4+x(2))*(-4+x(2)))^0.5+((-22.5+x(1))*(-22.5+x(1))+(-13.1+x(2))*(-13.1+x(2)))^0.5;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(-4.45+x(1))*(-4.45+x(1))+(-4.6+x(2))*(-4.6+x(2))-500*x(3);
             -23.169*x(1)+2.9*x(2)-500*x(3);
             3.166*x(1)-2.3*x(2)-500*x(3);
             0.189*x(1)-0.084*x(2)-500*x(4);
             -23.169*x(1)+2.9*x(2)-500*x(4);
             -2.2*x(1)+2.717*x(2)-500*x(4);
             -1.105*x(1)-1.177*x(2)-500*x(5);
             -2.2*x(1)+2.717*x(2)-500*x(5);
             (-(-6.1+x(1))*(-6.1+x(1)))-(-6.7+x(2))*(-6.7+x(2))-500*x(5);
             28.737*x(1)+7.7*x(2)-500*x(5);
             3.166*x(1)-2.3*x(2)-500*x(5);
             -6.2*x(1)+29.169*x(2)-500*x(6);
             2.2*x(1)-2.717*x(2)-500*x(6);
             -23.169*x(1)+2.9*x(2)-500*x(6);
             (-(-6.1+x(1))*(-6.1+x(1)))-(-6.7+x(2))*(-6.7+x(2))-500*x(6);
             23.169*x(1)-2.9*x(2)-500*x(7);
             6.2*x(1)-29.169*x(2)-500*x(7);
             12.7*x(1)+9*x(2)-500*x(7);
             6.2*x(1)-29.169*x(2)-500*x(8);
             -12.7*x(1)-9*x(2)-500*x(8);
             -32.985*x(1)-4.05*x(2)-500*x(8);
             10.3*x(1)+32.667*x(2)-500*x(8);
             x(1)-500*x(8);
             -x(1)-500*x(9);
             6.2*x(1)-29.169*x(2)-500*x(9);
             15.8*x(1)+11*x(2)-500*x(9);
             15.8*x(1)+11*x(2)-500*x(10);
             (-(-4.7+x(1))*(-4.7+x(1)))-(-9.3+x(2))*(-9.3+x(2))-500*x(10);
             -2.4*x(1)+1.5*x(2)-500*x(10);
             -10.3*x(1)-32.667*x(2)-500*x(10);
             -10.3*x(1)-32.667*x(2)-500*x(11);
             -26.518*x(1)-4.2*x(2)-500*x(11);
             -8.6*x(1)+18.443*x(2)-500*x(11);
             14.8*x(1)+13*x(2)-500*x(11);
             2.4*x(1)-1.5*x(2)-500*x(11);
             (-(-4.7+x(1))*(-4.7+x(1)))-(-9.3+x(2))*(-9.3+x(2))-500*x(11);
             -8.6*x(1)+26.468*x(2)-500*x(12);
             120.272*x(1)-4.2*x(2)-500*x(12);
             2.4*x(1)-1.5*x(2)-500*x(12);
             -14.8*x(1)-13*x(2)-500*x(12);
             (-9.2+x(1))*(-9.2+x(1))+(-5.3+x(2))*(-5.3+x(2))-500*x(13);
             (-10.4+x(1))*(-10.4+x(1))+(-8.35+x(2))*(-8.35+x(2))-500*x(14);
             9.265*x(1)-5.879*x(2)-500*x(15);
             11.2*x(1)+19.5*x(2)-500*x(15);
             -x(1)-500*x(15);
             -12.5*x(1)-14.7*x(2)-500*x(15);
             -x(1)-500*x(16);
             -1.2*x(1)+1.7*x(2)-500*x(16);
             (-(-9.6+x(1))*(-9.6+x(1)))-(-7.7+x(2))*(-7.7+x(2))-500*x(16);
             20.737*x(1)+17.4*x(2)-500*x(16);
             18.75*x(1)-7.475*x(2)-500*x(16);
             0.65*x(1)-x(2)-500*x(16);
             -11.2*x(1)-19.5*x(2)-500*x(16);
             20.737*x(1)+17.4*x(2)-500*x(17);
             -18.75*x(1)+7.475*x(2)-500*x(17);
             0.65*x(1)-x(2)-500*x(17);
             39.2*x(1)-9.051*x(2)-500*x(17);
             -0.65*x(1)+x(2)-500*x(18);
             18.75*x(1)-7.475*x(2)-500*x(18);
             -11.2*x(1)-19.5*x(2)-500*x(18);
             11.2*x(1)+19.5*x(2)-500*x(19);
             7.4*x(1)-5.781*x(2)-500*x(19);
             -0.442*x(1)-0.116*x(2)-500*x(19);
             (-(-12.1+x(1))*(-12.1+x(1)))-(-6+x(2))*(-6+x(2))-500*x(20);
             (-(-11.85+x(1))*(-11.85+x(1)))-(-6.2+x(2))*(-6.2+x(2))-500*x(20);
             -x(1)-500*x(20);
             -6.674*x(1)+5.6*x(2)-500*x(20);
             -1.8*x(1)+3.691*x(2)-500*x(20);
             19.797*x(1)+20.5*x(2)-500*x(20);
             0.408*x(1)-0.8*x(2)-500*x(20);
             -0.2*x(1)-0.16*x(2)-500*x(20);
             -6.674*x(1)+5.6*x(2)-500*x(21);
             x(2)-500*x(21);
             1.8*x(1)-3.691*x(2)-500*x(21);
             -1.8*x(1)+3.691*x(2)-500*x(22);
             x(2)-500*x(22);
             20.529*x(1)+22.8*x(2)-500*x(22);
             14.403*x(1)-9*x(2)-500*x(22);
             -19.797*x(1)-20.5*x(2)-500*x(22);
             -14.403*x(1)+9*x(2)-500*x(23);
             -19.797*x(1)-20.5*x(2)-500*x(23);
             0.047*x(1)-0.1*x(2)-500*x(23);
             (-(-14.2+x(1))*(-14.2+x(1)))-(-7.1+x(2))*(-7.1+x(2))-500*x(23);
             42.076*x(1)+17*x(2)-500*x(23);
             (-16.9+x(1))*(-16.9+x(1))+(-4.05+x(2))*(-4.05+x(2))-500*x(24);
             x(1)-500*x(24);
             (-18.8+x(1))*(-18.8+x(1))+(-3.9+x(2))*(-3.9+x(2))-500*x(25);
             -x(1)-500*x(25);
             -x(1)-500*x(26);
             x(1)-500*x(26);
             12.2*x(1)+29.048*x(2)-500*x(26);
             3.42*x(1)-9.293*x(2)-500*x(26);
             (-1.45+x(1))*(-1.45+x(1))+(-6.48+x(2))*(-6.48+x(2))-500*x(27);
             (-1+x(1))*(-1+x(1))+(-6.92+x(2))*(-6.92+x(2))-500*x(28);
             (-(-1.6+x(1))*(-1.6+x(1)))-(-6.1+x(2))*(-6.1+x(2))-500*x(29);
             x(1)-500*x(29);
             -x(1)-500*x(29);
             7.5*x(1)+26.408*x(2)-500*x(29);
             -7.2*x(1)-12.308*x(2)-500*x(29);
             (-(-1.6+x(1))*(-1.6+x(1)))-(-6.1+x(2))*(-6.1+x(2))-500*x(30);
             x(1)-500*x(30);
             -x(1)-500*x(30);
             -x(2)-500*x(30);
             7.2*x(1)+12.308*x(2)-500*x(30);
             (-11.6+x(1))*(-11.6+x(1))+(-5.9+x(2))*(-5.9+x(2))-500*x(31);
             -x(2)-500*x(32);
             -x(1)+33.442*x(2)-500*x(32);
             -70.891*x(1)-12.5*x(2)-500*x(32);
             67.336*x(1)+12.7*x(2)-500*x(32);
             x(1)-500*x(33);
             -9.94*x(1)+9.6*x(2)-500*x(33);
             -37.84*x(1)-34.25*x(2)-500*x(33);
             -x(1)-500*x(34);
             -9.94*x(1)+9.6*x(2)-500*x(34);
             36.3*x(1)+36.3*x(2)-500*x(34);
             23.37*x(1)-14.6*x(2)-500*x(34);
             -x(2)-500*x(34);
             (-19.1+x(1))*(-19.1+x(1))+(-14+x(2))*(-14+x(2))-500*x(35);
             x(2)-500*x(35);
             (-19.3+x(1))*(-19.3+x(1))+(-14.2+x(2))*(-14.2+x(2))-500*x(36);
             -x(2)-500*x(36);
             -x(2)-500*x(37);
             x(2)-500*x(37);
             -x(1)-500*x(37);
             x(1)-500*x(37);
             13.9*x(1)+51.866*x(2)-500*x(38);
             -16.5*x(1)-12.9*x(2)-500*x(38);
             10.4*x(1)-10.583*x(2)-500*x(38);
             x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21)+x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35)+x(36)+x(37)+x(38);
             x(1);
             x(2)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,9,6]';
cu = [1,-68.4951,7.2818,0.252924,-68.4951,5.9774,-10.848708,5.9774,-0.2025,221.2749,7.2818,180.8478,-5.9774,-68.4951,-0.2025,68.4951,-180.8478,114.3,-180.8478,-114.3,-133.58925,336.4701,5.2,-5.2,-180.8478,173.8,173.8,-0.1296,3.6,-336.4701,-336.4701,-111.3756,158.6098,192.4,-3.6,-0.1296,227.6248,505.1424,-3.6,-192.4,0.36,0.0225,54.468935,218.3999,-8,-183.75,-8,2.04,-0.2025,360.823799,140.15625,0,-218.3999,360.823799,-140.15625,0,354.7992,0,140.15625,-218.3999,218.3999,42.7794,-4.880872,-0.0676,-0.01,-11.8,-37.3744,6.6438,405.8385,0.3264,-3.36,-37.3744,8.1,-6.6438,6.6438,8.3,468.0612,129.627,-405.8385,-129.627,-405.8375,0.0047,-0.1225,715.292,1.69,16.9,0.16,-18.8,-16.9,18.8,354.3856,31.78206,0.04,0.09,-0.04,1.9,-1,198.06,-88.6176,-0.04,1.9,-1.7,-6,88.6176,0.04,-6,152.4774,-886.1375,855.1672,22.4,-95.43,-1296.08,-22.4,-95.43,1317.69,341.13,-13,0.04,14,0.04,-14.2,-14,14.2,-18.9,19.6,720.9374,-212.85,-110.0632,35,9,6]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_211');
opts.sense = 'min';
