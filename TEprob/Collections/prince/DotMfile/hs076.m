% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:44
% Model: hs076

% Objective
fun = @(x)x(1)^2+0.5*x(2)^2+x(3)^2+0.5*x(4)^2-x(1)*x(3)+x(3)*x(4)-x(1)-3*x(2)+x(3)-x(4);

% Bounds
lb = [0,0,0,0]';
ub = [Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+2*x(2)+x(3)+x(4);
             3*x(1)+x(2)+2*x(3)-x(4);
             x(2)+4*x(3)];
cl = [-Inf,-Inf,1.5]';
cu = [5,4,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs076');
opts.sense = 'min';
