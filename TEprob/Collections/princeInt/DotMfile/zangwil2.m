% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 01-Feb-2014 23:50:28
% Model: zangwil2

% Objective
fun = @(x)0.0666666666666667*(16*x(1)^2-56*x(1)+16*x(2)^2-256*x(2)-8*x(1)*x(2))+66.0666666666667;

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
x0 = [3,8]';

% Options
opts = struct('probname','zangwil2');
opts.sense = 'min';