% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 00:56:49
% Model: fermat_socp_vareps

% Objective
fun = @(x)x(3)+x(4)+x(5);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,1e-08]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[(x(6)^2+x(1)^2+x(2)^2)^0.5+x(6)-x(3);
             (x(6)^2+(-4+x(1))^2+x(2)^2)^0.5+x(6)-x(4);
             (x(6)^2+(-2+x(1))^2+(-4+x(2))^2)^0.5+x(6)-x(5)];
cl = [-Inf,-Inf,-Inf]';
cu = [0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,1e-08]';

% Options
opts = struct('probname','fermat_socp_vareps');
opts.sense = 'min';
