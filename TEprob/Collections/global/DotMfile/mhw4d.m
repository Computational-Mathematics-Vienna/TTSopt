% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 16:06:36
% Model: mhw4d

% Objective
fun = @(x)(-1+x(1))^2+(x(1)-x(2))^2+(x(2)-x(3))^3+(x(3)-x(4))^4+(x(4)-x(5))^4;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(2)^2+x(3)^3+x(1);
             -x(3)^2+x(2)+x(4);
             x(1)*x(5)];
cl = [6.24264068711929,0.82842712474619,2]';
cu = [6.24264068711929,0.82842712474619,2]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [-1,2,1,-2,-2]';

% Options
opts = struct('probname','mhw4d');
opts.sense = 'min';