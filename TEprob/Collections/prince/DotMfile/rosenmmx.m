% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 15:19:30
% Model: rosenmmx

% Objective
fun = @(x)x(5);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)^2-5*x(1)+x(2)^2-5*x(2)+2*x(3)^2-21*x(3)+x(4)^2+7*x(4)-x(5);
             11*(x(1)^2+x(2)^2+x(3)^2+x(4)^2)+5*x(1)-15*x(2)-11*x(3)-3*x(4)+x(3)^2-x(5);
             11*x(1)^2-15*x(1)+21*x(2)^2-5*x(2)+12*x(3)^2-21*x(3)+21*x(4)^2-3*x(4)-x(5);
             11*(x(1)^2+x(2)^2)+15*x(1)-15*x(2)+12*x(3)^2-21*x(3)+x(4)^2-3*x(4)-x(5)];
cl = [-Inf,-Inf,-Inf,-Inf]';
cu = [0,80,100,50]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','rosenmmx');
opts.sense = 'min';
