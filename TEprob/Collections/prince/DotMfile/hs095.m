% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:48
% Model: hs095

% Objective
fun = @(x)4.3*x(1)+31.8*x(2)+63.3*x(3)+15.8*x(4)+68.5*x(5)+4.7*x(6);

% Bounds
lb = [0,0,0,0,0,0]';
ub = [0.31,0.046,0.068,0.042,0.028,0.0134]';

% Constraints
nlcon = @(x)[17.1*x(1)-169*x(1)*x(3)+204.2*x(3)-3580*x(3)*x(5)+623.4*x(5)-3810*x(4)*x(5)+212.3*x(4)-18500*x(4)*x(6)+1495.5*x(6)-24300*x(5)*x(6)+38.2*x(2);
             17.9*x(1)-139*x(1)*x(3)+113.9*x(3)-2450*x(4)*x(5)+169.7*x(4)+337.8*x(5)-16600*x(4)*x(6)+1385.2*x(6)-17200*x(5)*x(6)+36.8*x(2);
             26000*x(4)*x(5)-70*x(4)-819*x(5)-273*x(2);
             159.9*x(1)-14000*x(1)*x(6)+2198*x(6)-311*x(2)+587*x(4)+391*x(5)];
cl = [4.97,-1.88,-29.08,-78.02]';
cu = [Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs095');
opts.sense = 'min';
