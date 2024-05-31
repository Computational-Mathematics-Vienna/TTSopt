% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:47:06
% Model: hs54

% Objective
fun = @(x)-exp(-0.5*x(7));

% Bounds
lb = [0,-1,0,0,-1,0,0]';
ub = [20000,1,5000000,10,1,60000000,1]';

% Constraints
nlcon = @(x)[-(2.12585034013605e-14*(1.5625e-14*(-1000000+x(1))^2+(-0.5+5e-5*x(1))*(-1+x(2))+(-1+x(2))^2)*(-2000000+x(3))^2+0.0004*(-10+x(4))^2+400*(-0.001+x(5))^2+4e-18*(-100000000+x(6))^2)+x(7);
             x(1)+4000*x(2)];
cl = [0,17600]';
cu = [0,17600]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs54');
opts.sense = 'min';