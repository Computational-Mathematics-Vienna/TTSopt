% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 17:11:31
% Model: aircrfta

% Objective
fun = @(x)-0;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,0.1,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,0.1,0,0]';

% Constraints
nlcon = @(x)[0.107*x(2)-0.727*x(2)*x(3)+0.126*x(3)+8.39*x(3)*x(4)-684.4*x(4)*x(5)-9.99*x(5)+63.5*x(2)*x(4)-3.933*x(1)-45.83*x(7)-7.64*x(8);
             0.949*x(1)*x(3)+0.173*x(1)*x(5)-0.987*x(2)-22.95*x(4)-28.37*x(6);
             0.002*x(1)-0.716*x(1)*x(2)-1.578*x(1)*x(4)+1.132*x(2)*x(4)-0.235*x(3)+5.67*x(5)-0.921*x(7)-6.51*x(8);
             -x(1)*x(5)+x(2)-x(4)-1.168*x(6);
             x(1)*x(4)-x(3)-0.196*x(5)-0.0071*x(7)];
cl = [0,0,0,0,0]';
cu = [0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,0.1,NaN,NaN]';

% Options
opts = struct('probname','aircrfta');
opts.sense = 'min';