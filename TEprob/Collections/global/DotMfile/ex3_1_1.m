% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:53
% Model: ex3_1_1

% Objective
fun = @(x)x(1)+x(2)+x(3);

% Bounds
lb = [100,1000,1000,10,10,10,10,10]';
ub = [10000,10000,10000,1000,1000,1000,1000,1000]';

% Constraints
nlcon = @(x)[0.0025*x(4)+0.0025*x(6);
             -0.0025*x(4)+0.0025*x(5)+0.0025*x(7);
             -0.01*x(5)+0.01*x(8);
             100*x(1)-x(1)*x(6)+833.33252*x(4);
             x(2)*x(4)-x(2)*x(7)-1250*x(4)+1250*x(5);
             x(3)*x(5)-x(3)*x(8)-2500*x(5)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1,1,1,83333.333,0,-1250000]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [579.19,1360.13,5109.92,182.01,295.6,217.99,286.4,395.6]';

% Options
opts = struct('probname','ex3_1_1');
opts.sense = 'min';