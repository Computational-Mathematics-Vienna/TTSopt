% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:47:06
% Model: hs62

% Objective
fun = @(x)-32.174*(255*log((0.03+x(1)+x(2)+x(3))/(0.03+0.09*x(1)+x(2)+x(3)))+280*log((0.03+x(2)+x(3))/(0.03+0.07*x(2)+x(3)))+290*log((0.03+x(3))/(0.03+0.13*x(3))));

% Bounds
lb = [0,0,0]';
ub = [1,1,1]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)];
cl = 1';
cu = 1';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [NaN,NaN,NaN]';

% Options
opts = struct('probname','hs62');
opts.sense = 'min';