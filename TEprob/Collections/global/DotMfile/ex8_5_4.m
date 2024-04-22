% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 14:33:58
% Model: ex8_5_4

% Objective
fun = @(x)log(x(1))*x(1)+log(x(2))*x(2)-log(x(3)-x(5))+x(3)-log(1+x(5)/x(3))*x(4)/x(5)+0.362259780811985*x(1)+3.27527428318836*x(2)-1;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(3)^3-x(3)^2+(-x(5)^2-x(5)+x(4))*x(3)-x(4)*x(5);
             -(0.352565*x(1)*x(1)+0.844083*x(1)*x(2)+0.844083*x(2)*x(1)+2.14335*x(2)*x(2))+x(4);
             -0.12932*x(1)-0.271567*x(2)+x(5);
             x(1)+x(2)];
cl = [0,0,0,1]';
cu = [0,0,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [0.5,0.5,2,1,1]';

% Options
opts = struct('probname','ex8_5_4');
opts.sense = 'min';
