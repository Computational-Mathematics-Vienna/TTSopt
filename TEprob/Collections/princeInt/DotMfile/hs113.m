% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:47:04
% Model: hs113

% Objective
fun = @(x)x(1)^2+x(2)^2+x(1)*x(2)-14*x(1)-16*x(2)+(-10+x(3))^2+4*(-5+x(4))^2+(-3+x(5))^2+2*(-1+x(6))^2+5*x(7)^2+7*(-11+x(8))^2+2*(-10+x(9))^2+(-7+x(10))^2+45;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-4*x(1)-5*x(2)+3*x(7)-9*x(8);
             -10*x(1)+8*x(2)+17*x(7)-2*x(8);
             8*x(1)-2*x(2)-5*x(9)+2*x(10);
             (-3*(-2+x(1))^2)-4*(-3+x(2))^2-2*x(3)^2+7*x(4);
             (-5*x(1)^2)-(-6+x(3))^2-8*x(2)+2*x(4);
             (-0.5*(-8+x(1))^2)-2*(-4+x(2))^2-3*x(5)^2+x(6);
             (-x(1)^2)-2*(-2+x(2))^2+2*x(1)*x(2)-14*x(5)+6*x(6);
             -12*(-8+x(9))^2+3*x(1)-6*x(2)+7*x(10)];
cl = [-105,0,-12,-120,-40,-30,0,0]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs113');
opts.sense = 'min';
