% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 06-Jun-2016 04:10:01
% Model: mexhat

% Objective
fun = @(x)10000*(-0.02+0.0001*(x(2)-x(1)^2)^2+(-1+x(1))^2)^2-2*(-1+x(1))^2;

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
x0 = [0.86,0.72]';

% Options
opts = struct('probname','mexhat');
opts.sense = 'min';