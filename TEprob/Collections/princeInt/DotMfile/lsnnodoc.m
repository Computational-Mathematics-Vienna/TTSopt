% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:40:33
% Model: lsnnodoc

% Objective
fun = @(x)exp(x(1)+x(3))*x(2)+x(3)^2*x(4)^2+(x(3)-x(5))^2;

% Bounds
lb = [2,6,0,-10000,-10000]';
ub = [4,8,2,6,8]';

% Constraints
nlcon = @(x)[x(1)+x(2);
             -x(1)-x(3)+x(4);
             -x(2)+x(3)+x(5);
             -x(4)-x(5)];
cl = [10,0,0,-10]';
cu = [10,0,0,-10]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [4,8,2,6,8]';

% Options
opts = struct('probname','lsnnodoc');
opts.sense = 'min';