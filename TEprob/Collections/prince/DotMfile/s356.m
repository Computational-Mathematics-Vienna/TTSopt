% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 15:19:31
% Model: s356

% Objective
fun = @(x)1.10471*x(1)^2*x(2)+0.04811*x(3)*x(4)*(14+x(2));

% Bounds
lb = [0.125,7,0,-Inf,1e-08,-Inf,1e-08,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-0.707*x(1)*x(2)*(0.166666666666667*x(2)^2+0.5*(x(1)+x(3))^2)+x(5);
             -2500000*x(4)^3*x(3)+x(6);
             -4000000*x(4)^3*x(3)+x(7);
             -4243.28147100424/(x(1)*x(2))+x(8);
             -(x(2)^2+(x(1)+x(3))^2)^0.5*(42000+1500*x(2))/x(5)+x(9);
             -x(1)+x(4);
             -1e-6*(x(8)*x(8)+2*x(8)*x(9)*x(2)/(x(2)^2+(x(1)+x(3))^2)^0.5+x(9)*x(9))^0.5;
             -5.04/(x(3)^2*x(4));
             2.04744897959184e-8*(x(6)*x(7))^0.5*(1-0.0357142857142857*(x(6)/x(7))^0.5*x(3));
             -2.1952/(x(3)^3*x(4))];
cl = [0,0,0,0,0,0,-0.0136,-3,0.006,-0.25]';
cu = [0,0,0,0,0,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCC';

% Starting Guess
x0 = [1,7,8,1,1e-08,NaN,1e-08,NaN,NaN]';

% Options
opts = struct('probname','s356');
opts.sense = 'min';