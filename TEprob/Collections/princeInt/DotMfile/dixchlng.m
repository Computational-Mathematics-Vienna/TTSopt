% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 22:28:46
% Model: dixchlng

% Objective
fun = @(x)100*(x(2)-x(1)^2)^2+100*(x(3)-x(2)^2)^2+100*(x(4)-x(3)^2)^2+100*(x(5)-x(4)^2)^2+100*(x(6)-x(5)^2)^2+100*(x(7)-x(6)^2)^2+100*(x(8)-x(7)^2)^2+(-1+x(1))^2+(-1+x(2))^2+(-1+x(3))^2+(-1+x(4))^2+(-1+x(5))^2+(-1+x(6))^2+(-1+x(7))^2+90*(x(4)-x(3)^2)^2+90*(x(5)-x(4)^2)^2+90*(x(6)-x(5)^2)^2+90*(x(7)-x(6)^2)^2+90*(x(8)-x(7)^2)^2+90*(x(9)-x(8)^2)^2+90*(x(10)-x(9)^2)^2+(-1+x(3))^2+(-1+x(4))^2+(-1+x(5))^2+(-1+x(6))^2+(-1+x(7))^2+(-1+x(8))^2+(-1+x(9))^2+10.1*(-1+x(2))^2+10.1*(-1+x(3))^2+10.1*(-1+x(4))^2+10.1*(-1+x(5))^2+10.1*(-1+x(6))^2+10.1*(-1+x(7))^2+10.1*(-1+x(8))^2+10.1*(-1+x(4))^2+10.1*(-1+x(5))^2+10.1*(-1+x(6))^2+10.1*(-1+x(7))^2+10.1*(-1+x(8))^2+10.1*(-1+x(9))^2+10.1*(-1+x(10))^2+(-19.8+19.8*x(2))*(-1+x(4))+(-19.8+19.8*x(3))*(-1+x(5))+(-19.8+19.8*x(4))*(-1+x(6))+(-19.8+19.8*x(5))*(-1+x(7))+(-19.8+19.8*x(6))*(-1+x(8))+(-19.8+19.8*x(7))*(-1+x(9))+(-19.8+19.8*x(8))*(-1+x(10));

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)*x(2);
             x(1)*x(2)*x(3)*x(4);
             x(1)*x(2)*x(3)*x(4)*x(5)*x(6);
             x(1)*x(2)*x(3)*x(4)*x(5)*x(6)*x(7)*x(8);
             x(1)*x(2)*x(3)*x(4)*x(5)*x(6)*x(7)*x(8)*x(9)*x(10)];
cl = [1,1,1,1,1]';
cu = [1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','dixchlng');
opts.sense = 'min';
