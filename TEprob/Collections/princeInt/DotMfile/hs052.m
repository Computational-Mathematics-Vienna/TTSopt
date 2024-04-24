% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:42
% Model: hs052

% Objective
fun = @(x)(4*x(1)-x(2))^2+(-2+x(2)+x(3))^2+(-1+x(4))^2+(-1+x(5))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+3*x(2);
             x(3)+x(4)-2*x(5);
             x(2)-x(5)];
cl = [0,0,0]';
cu = [0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs052');
opts.sense = 'min';
