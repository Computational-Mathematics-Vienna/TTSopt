% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:51
% Model: ex14_1_6

% Objective
fun = @(x)x(9);

% Bounds
lb = [-1,-1,-1,-1,-1,-1,-1,-1,-Inf]';
ub = [1,1,1,1,1,1,1,1,Inf]';

% Constraints
nlcon = @(x)[0.004731*x(1)*x(3)-0.1238*x(1)-0.3578*x(2)*x(3)-0.001637*x(2)-0.9338*x(4)+x(7)-x(9);
             0.1238*x(1)-0.004731*x(1)*x(3)+0.3578*x(2)*x(3)+0.001637*x(2)+0.9338*x(4)-x(7)-x(9);
             0.2238*x(1)*x(3)+0.2638*x(1)+0.7623*x(2)*x(3)-0.07745*x(2)-0.6734*x(4)-x(7)-x(9);
             (-0.2238*x(1)*x(3))-0.2638*x(1)-0.7623*x(2)*x(3)+0.07745*x(2)+0.6734*x(4)+x(7)-x(9);
             x(6)*x(8)+0.3578*x(1)+0.004731*x(2)-x(9);
             -x(6)*x(8)-0.3578*x(1)-0.004731*x(2)-x(9);
             -0.7623*x(1)+0.2238*x(2);
             x(1)^2+x(2)^2-x(9);
             (-x(1)^2)-x(2)^2-x(9);
             x(3)^2+x(4)^2-x(9);
             (-x(3)^2)-x(4)^2-x(9);
             x(5)^2+x(6)^2-x(9);
             (-x(5)^2)-x(6)^2-x(9);
             x(7)^2+x(8)^2-x(9);
             (-x(7)^2)-x(8)^2-x(9)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-0.3461,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [0.3571,-0.3571,0.6022,-0.6022,0,0,-0.3461,1,-1,1,-1,1,-1,1,-1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex14_1_6');
opts.sense = 'min';
