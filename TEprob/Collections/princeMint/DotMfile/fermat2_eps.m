% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 00:56:49
% Model: fermat2_eps

% Objective
fun = @(x)(1e-8+x(1)^2+x(2)^2)^0.5+(1e-8+(-4+x(1))^2+x(2)^2)^0.5+(1e-8+(-2+x(1))^2+(-1+x(2))^2)^0.5;

% Bounds
lb = [-Inf,-Inf]';
ub = [Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','fermat2_eps');
opts.sense = 'min';