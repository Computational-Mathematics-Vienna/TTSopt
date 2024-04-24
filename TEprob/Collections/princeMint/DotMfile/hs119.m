% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:47:05
% Model: hs119

% Objective
fun = @(x)(1+x(1)^2+x(1))*(1+x(1)^2+x(1))+(1+x(1)^2+x(1))*(1+x(4)^2+x(4))+(1+x(1)^2+x(1))*(1+x(7)^2+x(7))+(1+x(1)^2+x(1))*(1+x(8)^2+x(8))+(1+x(1)^2+x(1))*(1+x(16)^2+x(16))+(1+x(2)^2+x(2))*(1+x(2)^2+x(2))+(1+x(2)^2+x(2))*(1+x(3)^2+x(3))+(1+x(2)^2+x(2))*(1+x(7)^2+x(7))+(1+x(2)^2+x(2))*(1+x(10)^2+x(10))+(1+x(3)^2+x(3))*(1+x(3)^2+x(3))+(1+x(3)^2+x(3))*(1+x(7)^2+x(7))+(1+x(3)^2+x(3))*(1+x(9)^2+x(9))+(1+x(3)^2+x(3))*(1+x(10)^2+x(10))+(1+x(3)^2+x(3))*(1+x(14)^2+x(14))+(1+x(4)^2+x(4))*(1+x(4)^2+x(4))+(1+x(4)^2+x(4))*(1+x(7)^2+x(7))+(1+x(4)^2+x(4))*(1+x(11)^2+x(11))+(1+x(4)^2+x(4))*(1+x(15)^2+x(15))+(1+x(5)^2+x(5))*(1+x(5)^2+x(5))+(1+x(5)^2+x(5))*(1+x(6)^2+x(6))+(1+x(5)^2+x(5))*(1+x(10)^2+x(10))+(1+x(5)^2+x(5))*(1+x(12)^2+x(12))+(1+x(5)^2+x(5))*(1+x(16)^2+x(16))+(1+x(6)^2+x(6))*(1+x(6)^2+x(6))+(1+x(6)^2+x(6))*(1+x(8)^2+x(8))+(1+x(6)^2+x(6))*(1+x(15)^2+x(15))+(1+x(7)^2+x(7))*(1+x(7)^2+x(7))+(1+x(7)^2+x(7))*(1+x(11)^2+x(11))+(1+x(7)^2+x(7))*(1+x(13)^2+x(13))+(1+x(8)^2+x(8))*(1+x(8)^2+x(8))+(1+x(8)^2+x(8))*(1+x(10)^2+x(10))+(1+x(8)^2+x(8))*(1+x(15)^2+x(15))+(1+x(9)^2+x(9))*(1+x(9)^2+x(9))+(1+x(9)^2+x(9))*(1+x(12)^2+x(12))+(1+x(9)^2+x(9))*(1+x(16)^2+x(16))+(1+x(10)^2+x(10))*(1+x(10)^2+x(10))+(1+x(10)^2+x(10))*(1+x(14)^2+x(14))+(1+x(11)^2+x(11))*(1+x(11)^2+x(11))+(1+x(11)^2+x(11))*(1+x(12)^2+x(12))+(1+x(11)^2+x(11))*(1+x(13)^2+x(13))+(1+x(12)^2+x(12))*(1+x(14)^2+x(14))+(1+x(13)^2+x(13))*(1+x(13)^2+x(13))+(1+x(13)^2+x(13))*(1+x(14)^2+x(14))+(1+x(14)^2+x(14))*(1+x(14)^2+x(14))+(1+x(15)^2+x(15))*(1+x(15)^2+x(15))+(1+x(16)^2+x(16))*(1+x(16)^2+x(16));

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]';

% Constraints
nlcon = @(x)[0.22*x(1)+0.2*x(2)+0.19*x(3)+0.25*x(4)+0.15*x(5)+0.11*x(6)+0.12*x(7)+0.13*x(8)+x(9);
             -1.46*x(1)-1.3*x(3)+1.82*x(4)-1.15*x(5)+0.8*x(7)+x(10);
             1.29*x(1)-0.89*x(2)-1.16*x(5)-0.96*x(6)-0.49*x(8)+x(11);
             -1.1*x(1)-1.06*x(2)+0.95*x(3)-0.54*x(4)-1.78*x(6)-0.41*x(7)+x(12);
             -1.43*x(4)+1.51*x(5)+0.59*x(6)-0.33*x(7)-0.43*x(8)+x(13);
             -1.72*x(2)-0.33*x(3)+1.62*x(5)+1.24*x(6)+0.21*x(7)-0.26*x(8)+x(14);
             1.12*x(1)+0.31*x(4)+1.12*x(7)-0.36*x(9)+x(15);
             0.45*x(2)+0.26*x(3)-1.1*x(4)+0.58*x(5)-1.03*x(7)+0.1*x(8)+x(16)];
cl = [2.5,1.1,-3.1,-3.5,1.3,2.1,2.3,-1.5]';
cu = [2.5,1.1,-3.1,-3.5,1.3,2.1,2.3,-1.5]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs119');
opts.sense = 'min';
