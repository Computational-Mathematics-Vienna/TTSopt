% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:41
% Model: hs034

% Objective
fun = @(x)-x(1);

% Bounds
lb = [0,0,0]';
ub = [100,100,10]';

% Constraints
nlcon = @(x)[-exp(x(1))+x(2);
             -exp(x(2))+x(3)];
cl = [0,0]';
cu = [Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','hs034');
opts.sense = 'min';