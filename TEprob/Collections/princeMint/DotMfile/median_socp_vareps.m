% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 04:58:07
% Model: median_socp_vareps

% Objective
fun = @(x)x(1)+x(3)+x(4)+x(5);

% Bounds
lb = [1e-07,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(x(1)^2+(-0.171747132+x(2))^2)^0.5-x(3);
             (x(1)^2+(-0.843266708+x(2))^2)^0.5-x(4);
             (x(1)^2+(-0.550375356+x(2))^2)^0.5-x(5)];
cl = [-Inf,-Inf,-Inf]';
cu = [0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [1e-07,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','median_socp_vareps');
opts.sense = 'min';