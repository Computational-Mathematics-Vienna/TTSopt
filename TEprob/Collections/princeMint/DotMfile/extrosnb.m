% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 00:56:47
% Model: extrosnb

% Objective
fun = @(x)(-1+x(1))^2+100*(x(2)-x(1)^2)^2+100*(x(3)-x(2)^2)^2+100*(x(4)-x(3)^2)^2+100*(x(5)-x(4)^2)^2+100*(x(6)-x(5)^2)^2+100*(x(7)-x(6)^2)^2+100*(x(8)-x(7)^2)^2+100*(x(9)-x(8)^2)^2+100*(x(10)-x(9)^2)^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','extrosnb');
opts.sense = 'min';