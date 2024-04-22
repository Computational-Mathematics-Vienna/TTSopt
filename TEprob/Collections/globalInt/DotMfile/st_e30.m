% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 17:02:59
% Model: st_e30

% Objective
fun = @(x)-x(14);

% Bounds
lb = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0]';
ub = [1,1,1,1,1,1,1,1,1,1,3,3,3,3]';

% Constraints
nlcon = @(x)[-x(12)*x(7)-x(1)+x(3);
             -x(12)*x(8)-x(2)+x(4);
             (-x(13)*x(7))-x(11)*x(9)-x(1)+x(5);
             (-x(13)*x(8))-x(11)*x(10)-x(2)+x(6);
             x(7)^2+x(8)^2;
             x(8)+x(9);
             -x(7)+x(10);
             -x(12)+x(14);
             -x(11)+x(14);
             2*x(1)+x(2);
             2*x(3)+x(4);
             2*x(5)+x(6);
             x(1)+x(2);
             x(3)+x(4);
             x(5)+x(6)];
cl = [0,0,0,0,1,0,0,-Inf,-Inf,-1,-1,-1,-Inf,-Inf,-Inf]';
cu = [0,0,0,0,1,0,0,0,0,Inf,Inf,Inf,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_e30');
opts.sense = 'min';
