% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-May-2015 23:42:54
% Model: inf_nlp_172

% Objective
fun = @(x)2401.501*x(1)+496.561*x(2);

% Bounds
lb = [0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(4);
             367.41157*x(1)+951.6012*x(2);
             x(1)*x(5)-1006.2871*x(1)+1951.479*x(3);
             1006.2871*x(1)-207.3292*x(4);
             x(1)-x(2)-x(3)];
cl = [14.403,132500,0,37056.237,0]';
cu = [14.403,132500,0,37056.237,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [1,1,1,1,1]';

% Options
opts = struct('probname','inf_nlp_172');
opts.sense = 'min';
