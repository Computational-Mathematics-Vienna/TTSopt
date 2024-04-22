% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 17:03:02
% Model: st_ph15

% Objective
fun = @(x)16*x(1)-4*x(1)^2-0.5*x(2)^2+x(2)-2.5*x(3)^2+15*x(3)-x(4)^2+8*x(4);

% Bounds
lb = [0,0,0,0]';
ub = [Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)-x(2)+3*x(3)-2*x(4);
             -x(1)+4*x(2)+x(3)-2*x(4);
             2*x(1)+x(2)+2*x(3)+x(4);
             x(1)-x(2)+x(3)+x(4)];
cl = [-Inf,-Inf,-Inf,-Inf]';
cu = [6,7,29,11]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','st_ph15');
opts.sense = 'min';
