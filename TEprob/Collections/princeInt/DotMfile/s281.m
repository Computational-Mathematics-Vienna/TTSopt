% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:38
% Model: s281

% Objective
fun = @(x)exp(0.333333333333333*log((-1+x(1))^2+8*(-1+x(2))^2+27*(-1+x(3))^2+64*(-1+x(4))^2+125*(-1+x(5))^2+216*(-1+x(6))^2+343*(-1+x(7))^2+512*(-1+x(8))^2+729*(-1+x(9))^2+1000*(-1+x(10))^2));

% Bounds
lb = [1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCC';

% Starting Guess
x0 = [1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001,1.000000001]';

% Options
opts = struct('probname','s281');
opts.sense = 'min';
