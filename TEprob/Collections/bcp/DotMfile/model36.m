% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 06-Jun-2016 04:10:05
% Model: model36

% Objective
fun = @(x)(4-(exp(x(1))+exp(x(2))))^2+(6-(exp(2*x(1))+exp(2*x(2))))^2+(8-(exp(3*x(1))+exp(3*x(2))))^2+(10-(exp(4*x(1))+exp(4*x(2))))^2+(12-(exp(5*x(1))+exp(5*x(2))))^2+(14-(exp(6*x(1))+exp(6*x(2))))^2+(16-(exp(7*x(1))+exp(7*x(2))))^2+(18-(exp(8*x(1))+exp(8*x(2))))^2+(20-(exp(9*x(1))+exp(9*x(2))))^2+(22-(exp(10*x(1))+exp(10*x(2))))^2;

% Bounds
lb = [-10,-10]';
ub = [10,10]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','model36');
opts.sense = 'min';
