% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:35:52
% Model: himmelp3

% Objective
fun = @(x)3.8112755343*x(1)-(0.1269366345*x(1)^2-0.0020567665*x(1)^3+1.0345e-5*x(1)^4+(0.0302344793*x(1)-0.0012813448*x(1)^2+3.52599e-5*x(1)^3-2.266e-7*x(1)^4)*x(2)+0.2564581253*x(2)^2-0.003460403*x(2)^3+1.35139e-5*x(2)^4-28.1064434908/(1+x(2))+(0.0003405462*x(1)-5.2375e-6*x(1)^2-6.3e-9*x(1)^3)*x(2)^2+(7e-10*x(1)^3-1.6638e-6*x(1))*x(2)^3-2.8673112392*exp(0.0005*x(1)*x(2)))+6.8306567613*x(2)-75.1963666677;

% Bounds
lb = [0,0]';
ub = [75,65]';

% Constraints
nlcon = @(x)[x(1)*x(2);
             0.008*x(1)^2-x(2)];
cl = [700,-Inf]';
cu = [Inf,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [31,48]';

% Options
opts = struct('probname','himmelp3');
opts.sense = 'min';
