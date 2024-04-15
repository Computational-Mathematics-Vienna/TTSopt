% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 06-Jun-2016 04:10:01
% Model: median_eps

% Objective
fun = @(x)(1e-8+(-0.171747132+x(1))^2)^0.5+(1e-8+(-0.843266708+x(1))^2)^0.5+(1e-8+(-0.550375356+x(1))^2)^0.5+(1e-8+(-0.301137904+x(1))^2)^0.5+(1e-8+(-0.292212117+x(1))^2)^0.5+(1e-8+(-0.224052867+x(1))^2)^0.5+(1e-8+(-0.349830504+x(1))^2)^0.5+(1e-8+(-0.856270347+x(1))^2)^0.5+(1e-8+(-0.067113723+x(1))^2)^0.5+(1e-8+(-0.500210669+x(1))^2)^0.5+(1e-8+(-0.998117627+x(1))^2)^0.5+(1e-8+(-0.578733378+x(1))^2)^0.5+(1e-8+(-0.991133039+x(1))^2)^0.5+(1e-8+(-0.762250467+x(1))^2)^0.5+(1e-8+(-0.130692483+x(1))^2)^0.5+(1e-8+(-0.639718759+x(1))^2)^0.5+(1e-8+(-0.159517864+x(1))^2)^0.5+(1e-8+(-0.250080533+x(1))^2)^0.5+(1e-8+(-0.668928609+x(1))^2)^0.5;

% Bounds
lb = -Inf';
ub = Inf';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'C';

% Starting Guess
x0 = 0.5';

% Options
opts = struct('probname','median_eps');
opts.sense = 'min';
