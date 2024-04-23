% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 18:22:37
% Model: biggs6

% Objective
fun = @(x)(-1.07640035028567+exp(-0.1*x(1))*x(3)-exp(-0.1*x(2))*x(4)+exp(-0.1*x(5))*x(6))^2+(-1.49004122924658+exp(-0.2*x(1))*x(3)-exp(-0.2*x(2))*x(4)+exp(-0.2*x(5))*x(6))^2+(-1.395465514579+exp(-0.3*x(1))*x(3)-exp(-0.3*x(2))*x(4)+exp(-0.3*x(5))*x(6))^2+(-1.18443140557593+exp(-0.4*x(1))*x(3)-exp(-0.4*x(2))*x(4)+exp(-0.4*x(5))*x(6))^2+(-0.978846774427044+exp(-0.5*x(1))*x(3)-exp(-0.5*x(2))*x(4)+exp(-0.5*x(5))*x(6))^2+(-0.808571735078932+exp(-0.6*x(1))*x(3)-exp(-0.6*x(2))*x(4)+exp(-0.6*x(5))*x(6))^2+(-0.674456081839291+exp(-0.7*x(1))*x(3)-exp(-0.7*x(2))*x(4)+exp(-0.7*x(5))*x(6))^2+(-0.569938262912808+exp(-0.8*x(1))*x(3)-exp(-0.8*x(2))*x(4)+exp(-0.8*x(5))*x(6))^2+(-0.487923778062043+exp(-0.9*x(1))*x(3)-exp(-0.9*x(2))*x(4)+exp(-0.9*x(5))*x(6))^2+(-0.422599358188832+exp(-x(1))*x(3)-exp(-x(2))*x(4)+exp(-x(5))*x(6))^2+(-0.369619594903334+exp(-1.1*x(1))*x(3)-exp(-1.1*x(2))*x(4)+exp(-1.1*x(5))*x(6))^2+(-0.325852731997495+exp(-1.2*x(1))*x(3)-exp(-1.2*x(2))*x(4)+exp(-1.2*x(5))*x(6))^2+(-0.28907018464926+exp(-1.3*x(1))*x(3)-exp(-1.3*x(2))*x(4)+exp(-1.3*x(5))*x(6))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','biggs6');
opts.sense = 'min';
