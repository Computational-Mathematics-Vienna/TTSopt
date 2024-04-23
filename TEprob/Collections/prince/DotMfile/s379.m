% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:45
% Model: s379

% Objective
fun = @(x)(1.366-(exp(-(-x(9))^2*x(6))*x(2)+exp(-(-x(10))^2*x(7))*x(3)+exp(-(-x(11))^2*x(8))*x(4))-x(1))^2+(1.191-(exp(-0.1*x(5))*x(1)+exp(-(0.1-x(9))^2*x(6))*x(2)+exp(-(0.1-x(10))^2*x(7))*x(3)+exp(-(0.1-x(11))^2*x(8))*x(4)))^2+(1.112-(exp(-0.2*x(5))*x(1)+exp(-(0.2-x(9))^2*x(6))*x(2)+exp(-(0.2-x(10))^2*x(7))*x(3)+exp(-(0.2-x(11))^2*x(8))*x(4)))^2+(1.013-(exp(-0.3*x(5))*x(1)+exp(-(0.3-x(9))^2*x(6))*x(2)+exp(-(0.3-x(10))^2*x(7))*x(3)+exp(-(0.3-x(11))^2*x(8))*x(4)))^2+(0.991-(exp(-0.4*x(5))*x(1)+exp(-(0.4-x(9))^2*x(6))*x(2)+exp(-(0.4-x(10))^2*x(7))*x(3)+exp(-(0.4-x(11))^2*x(8))*x(4)))^2+(0.885-(exp(-0.5*x(5))*x(1)+exp(-(0.5-x(9))^2*x(6))*x(2)+exp(-(0.5-x(10))^2*x(7))*x(3)+exp(-(0.5-x(11))^2*x(8))*x(4)))^2+(0.831-(exp(-0.6*x(5))*x(1)+exp(-(0.6-x(9))^2*x(6))*x(2)+exp(-(0.6-x(10))^2*x(7))*x(3)+exp(-(0.6-x(11))^2*x(8))*x(4)))^2+(0.847-(exp(-0.7*x(5))*x(1)+exp(-(0.7-x(9))^2*x(6))*x(2)+exp(-(0.7-x(10))^2*x(7))*x(3)+exp(-(0.7-x(11))^2*x(8))*x(4)))^2+(0.786-(exp(-0.8*x(5))*x(1)+exp(-(0.8-x(9))^2*x(6))*x(2)+exp(-(0.8-x(10))^2*x(7))*x(3)+exp(-(0.8-x(11))^2*x(8))*x(4)))^2+(0.725-(exp(-0.9*x(5))*x(1)+exp(-(0.9-x(9))^2*x(6))*x(2)+exp(-(0.9-x(10))^2*x(7))*x(3)+exp(-(0.9-x(11))^2*x(8))*x(4)))^2+(0.746-(exp(-x(5))*x(1)+exp(-(1-x(9))^2*x(6))*x(2)+exp(-(1-x(10))^2*x(7))*x(3)+exp(-(1-x(11))^2*x(8))*x(4)))^2+(0.679-(exp(-1.1*x(5))*x(1)+exp(-(1.1-x(9))^2*x(6))*x(2)+exp(-(1.1-x(10))^2*x(7))*x(3)+exp(-(1.1-x(11))^2*x(8))*x(4)))^2+(0.608-(exp(-1.2*x(5))*x(1)+exp(-(1.2-x(9))^2*x(6))*x(2)+exp(-(1.2-x(10))^2*x(7))*x(3)+exp(-(1.2-x(11))^2*x(8))*x(4)))^2+(0.655-(exp(-1.3*x(5))*x(1)+exp(-(1.3-x(9))^2*x(6))*x(2)+exp(-(1.3-x(10))^2*x(7))*x(3)+exp(-(1.3-x(11))^2*x(8))*x(4)))^2+(0.616-(exp(-1.4*x(5))*x(1)+exp(-(1.4-x(9))^2*x(6))*x(2)+exp(-(1.4-x(10))^2*x(7))*x(3)+exp(-(1.4-x(11))^2*x(8))*x(4)))^2+(0.606-(exp(-1.5*x(5))*x(1)+exp(-(1.5-x(9))^2*x(6))*x(2)+exp(-(1.5-x(10))^2*x(7))*x(3)+exp(-(1.5-x(11))^2*x(8))*x(4)))^2+(0.602-(exp(-1.6*x(5))*x(1)+exp(-(1.6-x(9))^2*x(6))*x(2)+exp(-(1.6-x(10))^2*x(7))*x(3)+exp(-(1.6-x(11))^2*x(8))*x(4)))^2+(0.626-(exp(-1.7*x(5))*x(1)+exp(-(1.7-x(9))^2*x(6))*x(2)+exp(-(1.7-x(10))^2*x(7))*x(3)+exp(-(1.7-x(11))^2*x(8))*x(4)))^2+(0.651-(exp(-1.8*x(5))*x(1)+exp(-(1.8-x(9))^2*x(6))*x(2)+exp(-(1.8-x(10))^2*x(7))*x(3)+exp(-(1.8-x(11))^2*x(8))*x(4)))^2+(0.724-(exp(-1.9*x(5))*x(1)+exp(-(1.9-x(9))^2*x(6))*x(2)+exp(-(1.9-x(10))^2*x(7))*x(3)+exp(-(1.9-x(11))^2*x(8))*x(4)))^2+(0.649-(exp(-2*x(5))*x(1)+exp(-(2-x(9))^2*x(6))*x(2)+exp(-(2-x(10))^2*x(7))*x(3)+exp(-(2-x(11))^2*x(8))*x(4)))^2+(0.649-(exp(-2.1*x(5))*x(1)+exp(-(2.1-x(9))^2*x(6))*x(2)+exp(-(2.1-x(10))^2*x(7))*x(3)+exp(-(2.1-x(11))^2*x(8))*x(4)))^2+(0.694-(exp(-2.2*x(5))*x(1)+exp(-(2.2-x(9))^2*x(6))*x(2)+exp(-(2.2-x(10))^2*x(7))*x(3)+exp(-(2.2-x(11))^2*x(8))*x(4)))^2+(0.644-(exp(-2.3*x(5))*x(1)+exp(-(2.3-x(9))^2*x(6))*x(2)+exp(-(2.3-x(10))^2*x(7))*x(3)+exp(-(2.3-x(11))^2*x(8))*x(4)))^2+(0.624-(exp(-2.4*x(5))*x(1)+exp(-(2.4-x(9))^2*x(6))*x(2)+exp(-(2.4-x(10))^2*x(7))*x(3)+exp(-(2.4-x(11))^2*x(8))*x(4)))^2+(0.661-(exp(-2.5*x(5))*x(1)+exp(-(2.5-x(9))^2*x(6))*x(2)+exp(-(2.5-x(10))^2*x(7))*x(3)+exp(-(2.5-x(11))^2*x(8))*x(4)))^2+(0.612-(exp(-2.6*x(5))*x(1)+exp(-(2.6-x(9))^2*x(6))*x(2)+exp(-(2.6-x(10))^2*x(7))*x(3)+exp(-(2.6-x(11))^2*x(8))*x(4)))^2+(0.558-(exp(-2.7*x(5))*x(1)+exp(-(2.7-x(9))^2*x(6))*x(2)+exp(-(2.7-x(10))^2*x(7))*x(3)+exp(-(2.7-x(11))^2*x(8))*x(4)))^2+(0.533-(exp(-2.8*x(5))*x(1)+exp(-(2.8-x(9))^2*x(6))*x(2)+exp(-(2.8-x(10))^2*x(7))*x(3)+exp(-(2.8-x(11))^2*x(8))*x(4)))^2+(0.495-(exp(-2.9*x(5))*x(1)+exp(-(2.9-x(9))^2*x(6))*x(2)+exp(-(2.9-x(10))^2*x(7))*x(3)+exp(-(2.9-x(11))^2*x(8))*x(4)))^2+(0.5-(exp(-3*x(5))*x(1)+exp(-(3-x(9))^2*x(6))*x(2)+exp(-(3-x(10))^2*x(7))*x(3)+exp(-(3-x(11))^2*x(8))*x(4)))^2+(0.423-(exp(-3.1*x(5))*x(1)+exp(-(3.1-x(9))^2*x(6))*x(2)+exp(-(3.1-x(10))^2*x(7))*x(3)+exp(-(3.1-x(11))^2*x(8))*x(4)))^2+(0.395-(exp(-3.2*x(5))*x(1)+exp(-(3.2-x(9))^2*x(6))*x(2)+exp(-(3.2-x(10))^2*x(7))*x(3)+exp(-(3.2-x(11))^2*x(8))*x(4)))^2+(0.375-(exp(-3.3*x(5))*x(1)+exp(-(3.3-x(9))^2*x(6))*x(2)+exp(-(3.3-x(10))^2*x(7))*x(3)+exp(-(3.3-x(11))^2*x(8))*x(4)))^2+(0.372-(exp(-3.4*x(5))*x(1)+exp(-(3.4-x(9))^2*x(6))*x(2)+exp(-(3.4-x(10))^2*x(7))*x(3)+exp(-(3.4-x(11))^2*x(8))*x(4)))^2+(0.391-(exp(-3.5*x(5))*x(1)+exp(-(3.5-x(9))^2*x(6))*x(2)+exp(-(3.5-x(10))^2*x(7))*x(3)+exp(-(3.5-x(11))^2*x(8))*x(4)))^2+(0.396-(exp(-3.6*x(5))*x(1)+exp(-(3.6-x(9))^2*x(6))*x(2)+exp(-(3.6-x(10))^2*x(7))*x(3)+exp(-(3.6-x(11))^2*x(8))*x(4)))^2+(0.405-(exp(-3.7*x(5))*x(1)+exp(-(3.7-x(9))^2*x(6))*x(2)+exp(-(3.7-x(10))^2*x(7))*x(3)+exp(-(3.7-x(11))^2*x(8))*x(4)))^2+(0.428-(exp(-3.8*x(5))*x(1)+exp(-(3.8-x(9))^2*x(6))*x(2)+exp(-(3.8-x(10))^2*x(7))*x(3)+exp(-(3.8-x(11))^2*x(8))*x(4)))^2+(0.429-(exp(-3.9*x(5))*x(1)+exp(-(3.9-x(9))^2*x(6))*x(2)+exp(-(3.9-x(10))^2*x(7))*x(3)+exp(-(3.9-x(11))^2*x(8))*x(4)))^2+(0.523-(exp(-4*x(5))*x(1)+exp(-(4-x(9))^2*x(6))*x(2)+exp(-(4-x(10))^2*x(7))*x(3)+exp(-(4-x(11))^2*x(8))*x(4)))^2+(0.562-(exp(-4.1*x(5))*x(1)+exp(-(4.1-x(9))^2*x(6))*x(2)+exp(-(4.1-x(10))^2*x(7))*x(3)+exp(-(4.1-x(11))^2*x(8))*x(4)))^2+(0.607-(exp(-4.2*x(5))*x(1)+exp(-(4.2-x(9))^2*x(6))*x(2)+exp(-(4.2-x(10))^2*x(7))*x(3)+exp(-(4.2-x(11))^2*x(8))*x(4)))^2+(0.653-(exp(-4.3*x(5))*x(1)+exp(-(4.3-x(9))^2*x(6))*x(2)+exp(-(4.3-x(10))^2*x(7))*x(3)+exp(-(4.3-x(11))^2*x(8))*x(4)))^2+(0.672-(exp(-4.4*x(5))*x(1)+exp(-(4.4-x(9))^2*x(6))*x(2)+exp(-(4.4-x(10))^2*x(7))*x(3)+exp(-(4.4-x(11))^2*x(8))*x(4)))^2+(0.708-(exp(-4.5*x(5))*x(1)+exp(-(4.5-x(9))^2*x(6))*x(2)+exp(-(4.5-x(10))^2*x(7))*x(3)+exp(-(4.5-x(11))^2*x(8))*x(4)))^2+(0.633-(exp(-4.6*x(5))*x(1)+exp(-(4.6-x(9))^2*x(6))*x(2)+exp(-(4.6-x(10))^2*x(7))*x(3)+exp(-(4.6-x(11))^2*x(8))*x(4)))^2+(0.668-(exp(-4.7*x(5))*x(1)+exp(-(4.7-x(9))^2*x(6))*x(2)+exp(-(4.7-x(10))^2*x(7))*x(3)+exp(-(4.7-x(11))^2*x(8))*x(4)))^2+(0.645-(exp(-4.8*x(5))*x(1)+exp(-(4.8-x(9))^2*x(6))*x(2)+exp(-(4.8-x(10))^2*x(7))*x(3)+exp(-(4.8-x(11))^2*x(8))*x(4)))^2+(0.632-(exp(-4.9*x(5))*x(1)+exp(-(4.9-x(9))^2*x(6))*x(2)+exp(-(4.9-x(10))^2*x(7))*x(3)+exp(-(4.9-x(11))^2*x(8))*x(4)))^2+(0.591-(exp(-5*x(5))*x(1)+exp(-(5-x(9))^2*x(6))*x(2)+exp(-(5-x(10))^2*x(7))*x(3)+exp(-(5-x(11))^2*x(8))*x(4)))^2+(0.559-(exp(-5.1*x(5))*x(1)+exp(-(5.1-x(9))^2*x(6))*x(2)+exp(-(5.1-x(10))^2*x(7))*x(3)+exp(-(5.1-x(11))^2*x(8))*x(4)))^2+(0.597-(exp(-5.2*x(5))*x(1)+exp(-(5.2-x(9))^2*x(6))*x(2)+exp(-(5.2-x(10))^2*x(7))*x(3)+exp(-(5.2-x(11))^2*x(8))*x(4)))^2+(0.625-(exp(-5.3*x(5))*x(1)+exp(-(5.3-x(9))^2*x(6))*x(2)+exp(-(5.3-x(10))^2*x(7))*x(3)+exp(-(5.3-x(11))^2*x(8))*x(4)))^2+(0.739-(exp(-5.4*x(5))*x(1)+exp(-(5.4-x(9))^2*x(6))*x(2)+exp(-(5.4-x(10))^2*x(7))*x(3)+exp(-(5.4-x(11))^2*x(8))*x(4)))^2+(0.71-(exp(-5.5*x(5))*x(1)+exp(-(5.5-x(9))^2*x(6))*x(2)+exp(-(5.5-x(10))^2*x(7))*x(3)+exp(-(5.5-x(11))^2*x(8))*x(4)))^2+(0.729-(exp(-5.6*x(5))*x(1)+exp(-(5.6-x(9))^2*x(6))*x(2)+exp(-(5.6-x(10))^2*x(7))*x(3)+exp(-(5.6-x(11))^2*x(8))*x(4)))^2+(0.72-(exp(-5.7*x(5))*x(1)+exp(-(5.7-x(9))^2*x(6))*x(2)+exp(-(5.7-x(10))^2*x(7))*x(3)+exp(-(5.7-x(11))^2*x(8))*x(4)))^2+(0.636-(exp(-5.8*x(5))*x(1)+exp(-(5.8-x(9))^2*x(6))*x(2)+exp(-(5.8-x(10))^2*x(7))*x(3)+exp(-(5.8-x(11))^2*x(8))*x(4)))^2+(0.581-(exp(-5.9*x(5))*x(1)+exp(-(5.9-x(9))^2*x(6))*x(2)+exp(-(5.9-x(10))^2*x(7))*x(3)+exp(-(5.9-x(11))^2*x(8))*x(4)))^2+(0.428-(exp(-6*x(5))*x(1)+exp(-(6-x(9))^2*x(6))*x(2)+exp(-(6-x(10))^2*x(7))*x(3)+exp(-(6-x(11))^2*x(8))*x(4)))^2+(0.292-(exp(-6.1*x(5))*x(1)+exp(-(6.1-x(9))^2*x(6))*x(2)+exp(-(6.1-x(10))^2*x(7))*x(3)+exp(-(6.1-x(11))^2*x(8))*x(4)))^2+(0.162-(exp(-6.2*x(5))*x(1)+exp(-(6.2-x(9))^2*x(6))*x(2)+exp(-(6.2-x(10))^2*x(7))*x(3)+exp(-(6.2-x(11))^2*x(8))*x(4)))^2+(0.098-(exp(-6.3*x(5))*x(1)+exp(-(6.3-x(9))^2*x(6))*x(2)+exp(-(6.3-x(10))^2*x(7))*x(3)+exp(-(6.3-x(11))^2*x(8))*x(4)))^2+(0.054-(exp(-6.4*x(5))*x(1)+exp(-(6.4-x(9))^2*x(6))*x(2)+exp(-(6.4-x(10))^2*x(7))*x(3)+exp(-(6.4-x(11))^2*x(8))*x(4)))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','s379');
opts.sense = 'min';
