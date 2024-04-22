% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:54
% Model: ex6_2_14

% Objective
fun = @(x)(log(x(1)/(x(1)+x(3)))+log(x(1)/(x(1)+0.095173*x(3))))*x(1)+(log(x(3)/(x(1)+x(3)))+log(x(3)/(0.30384*x(1)+x(3))))*x(3)+log(x(1)+2.6738*x(3))*(x(1)+2.6738*x(3))+log(0.374*x(1)+x(3))*(0.374*x(1)+x(3))+2.6738*log(x(3)/(x(1)+2.6738*x(3)))*x(3)+0.374*log(x(1)/(0.374*x(1)+x(3)))*x(1)+(log(x(2)/(x(2)+x(4)))+log(x(2)/(x(2)+0.095173*x(4))))*x(2)+(log(x(4)/(x(2)+x(4)))+log(x(4)/(0.30384*x(2)+x(4))))*x(4)+log(x(2)+2.6738*x(4))*(x(2)+2.6738*x(4))+log(0.374*x(2)+x(4))*(0.374*x(2)+x(4))+2.6738*log(x(4)/(x(2)+2.6738*x(4)))*x(4)+0.374*log(x(2)/(0.374*x(2)+x(4)))*x(2)-3.6838*log(x(1))*x(1)-1.59549*log(x(3))*x(3)-3.6838*log(x(2))*x(2)-1.59549*log(x(4))*x(4);

% Bounds
lb = [1e-07,1e-07,1e-07,1e-07]';
ub = [0.5,0.5,0.5,0.5]';

% Constraints
nlcon = @(x)[x(1)+x(2);
             x(3)+x(4)];
cl = [0.5,0.5]';
cu = [0.5,0.5]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCC';

% Starting Guess
x0 = [0.0583,0.4417,0.408,0.092]';

% Options
opts = struct('probname','ex6_2_14');
opts.sense = 'min';
