% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:35:50
% Model: heart8

% Objective
fun = @(x)-0;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2);
             x(3)+x(4);
             x(5)*x(1)+x(6)*x(2)-x(7)*x(3)-x(8)*x(4);
             x(7)*x(1)+x(8)*x(2)+x(5)*x(3)+x(6)*x(4);
             (x(5)*x(5)-x(7)*x(7))*x(1)-2*x(3)*x(5)*x(7)+(x(6)*x(6)-x(8)*x(8))*x(2)-2*x(4)*x(6)*x(8);
             (x(5)*x(5)-x(7)*x(7))*x(3)+2*x(1)*x(5)*x(7)+(x(6)*x(6)-x(8)*x(8))*x(4)+2*x(2)*x(6)*x(8);
             x(1)*x(5)*(x(5)*x(5)-3*x(7)*x(7))+x(3)*x(7)*(x(7)*x(7)-3*x(5)*x(5))+x(2)*x(6)*(x(6)*x(6)-3*x(8)*x(8))+x(4)*x(8)*(x(8)*x(8)-3*x(6)*x(6));
             x(3)*x(5)*(x(5)*x(5)-3*x(7)*x(7))-x(1)*x(7)*(x(7)*x(7)-3*x(5)*x(5))+x(4)*x(6)*(x(6)*x(6)-3*x(8)*x(8))-x(2)*x(8)*(x(8)*x(8)-3*x(6)*x(6))];
cl = [-0.69,-0.044,-1.57,-1.31,-2.65,2,-12.6,9.48]';
cu = [-0.69,-0.044,-1.57,-1.31,-2.65,2,-12.6,9.48]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [NaN,1,NaN,1,1,1,1,1]';

% Options
opts = struct('probname','heart8');
opts.sense = 'min';
