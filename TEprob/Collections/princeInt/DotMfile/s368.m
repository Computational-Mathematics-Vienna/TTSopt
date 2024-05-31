% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:43
% Model: s368

% Objective
fun = @(x)(x(1)^3+x(2)^3+x(3)^3+x(4)^3+x(5)^3+x(6)^3+x(7)^3+x(8)^3)^2-(x(1)^2+x(2)^2+x(3)^2+x(4)^2+x(5)^2+x(6)^2+x(7)^2+x(8)^2)*(x(1)^4+x(2)^4+x(3)^4+x(4)^4+x(5)^4+x(6)^4+x(7)^4+x(8)^4);

% Bounds
lb = [0,0,0,0,0,0,0,0]';
ub = [1,1,1,1,1,1,1,1]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','s368');
opts.sense = 'min';