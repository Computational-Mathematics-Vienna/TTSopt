% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 17:11:31
% Model: aircrftb

% Objective
fun = @(x)(x(1)+x(6))^2+(x(2)+x(7))^2+(x(3)+x(8))^2+(x(4)+x(9))^2+(x(5)+x(10))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-0.05,0.1,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,-0.05,0.1,0]';

% Constraints
nlcon = @(x)[-(8.39*x(13)*x(14)-0.727*x(12)*x(13)-684.4*x(14)*x(15)+63.5*x(14)*x(12))+x(1);
             -(0.949*x(11)*x(13)+0.173*x(11)*x(15))+x(2);
             -(-0.716*x(11)*x(12)-1.578*x(11)*x(14)+1.132*x(14)*x(12))+x(3);
             x(11)*x(15)+x(4);
             -x(11)*x(14)+x(5);
             x(6)+3.933*x(11)-0.107*x(12)-0.126*x(13)+9.99*x(15)+45.83*x(17)+7.64*x(18);
             x(7)+0.987*x(12)+22.95*x(14)+28.37*x(16);
             x(8)-0.002*x(11)+0.235*x(13)-5.67*x(15)+0.921*x(17)+6.51*x(18);
             x(9)-x(12)+x(14)+0.168*x(16);
             x(10)+x(13)+0.196*x(15)+0.0071*x(17)];
cl = [0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,-0.05,0.1,NaN]';

% Options
opts = struct('probname','aircrftb');
opts.sense = 'min';
