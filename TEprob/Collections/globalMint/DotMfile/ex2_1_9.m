% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:53
% Model: ex2_1_9

% Objective
fun = @(x)-(x(1)*x(2)+x(2)*x(3)+x(3)*x(4)+x(4)*x(5)+x(5)*x(6)+x(6)*x(7)+x(7)*x(8)+x(8)*x(9)+x(9)*x(10)+x(1)*x(3)+x(2)*x(4)+x(3)*x(5)+x(4)*x(6)+x(5)*x(7)+x(6)*x(8)+x(7)*x(9)+x(8)*x(10)+x(1)*x(9)+x(1)*x(10)+x(2)*x(10)+x(1)*x(5)+x(4)*x(7));

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)];
cl = 1';
cu = 1';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,0.25,0.25,0.25,0.25,NaN,NaN,NaN]';

% Options
opts = struct('probname','ex2_1_9');
opts.sense = 'min';