% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 00:56:49
% Model: fermat_vareps

% Objective
fun = @(x)(x(3)^2+x(1)^2+x(2)^2)^0.5+(x(3)^2+(-4+x(1))^2+x(2)^2)^0.5+(x(3)^2+(-2+x(1))^2+(-4+x(2))^2)^0.5+x(3);

% Bounds
lb = [-Inf,-Inf,1e-08]';
ub = [Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,1e-08]';

% Options
opts = struct('probname','fermat_vareps');
opts.sense = 'min';