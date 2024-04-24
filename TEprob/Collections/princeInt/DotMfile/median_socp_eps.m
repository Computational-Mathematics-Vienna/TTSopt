% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 04:58:07
% Model: median_socp_eps

% Objective
fun = @(x)x(2)+x(3)+x(4);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(1e-8+(-0.171747132+x(1))^2)^0.5-x(2);
             (1e-8+(-0.843266708+x(1))^2)^0.5-x(3);
             (1e-8+(-0.550375356+x(1))^2)^0.5-x(4)];
cl = [-Inf,-Inf,-Inf]';
cu = [0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','median_socp_eps');
opts.sense = 'min';
