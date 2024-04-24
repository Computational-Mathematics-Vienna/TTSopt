% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:42
% Model: s348

% Objective
fun = @(x)x(18)+x(19)+x(20);

% Bounds
lb = [-Inf,13.13,-Inf,1e-05,1e-05,1e-05,-Inf,1e-05,1e-07,1e-07,-Inf,-Inf,-Inf,-Inf,-Inf,6000,1e-07,-Inf,-Inf,-Inf]';
ub = [0.044,24,600,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0.9999,6000,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-0.487157283637153*x(2)/x(1)+x(4);
             -0.34361140625*x(2)+x(5);
             -0.00694444444444444*(7.88*x(2)-0.07878*x(2)/x(1))+x(6);
             144*x(7)*x(6)-58.84866*x(3)*x(2);
             -2.0372460496614*x(7)+x(8);
             -0.0589268024397802*x(7)/exp(0.35*log(x(8)))+x(9);
             -0.40867125*x(3)*x(2)+x(10);
             -7.36144578313253e-5*x(7)^2*(x(4)/x(6)*(1/x(8))^0.5+0.1*x(5)/x(6))+x(11);
             -0.0732*x(9)^0.5+x(12);
             x(13);
             x(4)*(1-x(13))/(x(4)+x(5))+x(14);
             log(1-x(15))+4.16666666666667*x(14)*x(9)*(x(4)+x(5))/x(10);
             -7.2*x(15)*x(10)+x(16);
             -6.76105093775776e-6*x(11)*x(10)+x(17);
             -13.9275766016713*x(17)^0.5+x(18);
             -0.0114648324284722*x(2)/x(1)+x(19);
             -0.281022225355218*x(2)+x(20)];
cl = [0,0,0,0,0,0,0,0,0,0.99,1,0,0,0,4,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0.99,1,0,0,0,4,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,13.13,NaN,1e-05,1e-05,1e-05,NaN,1e-05,1e-07,1e-07,NaN,NaN,NaN,NaN,NaN,6000,1e-07,NaN,NaN,NaN]';

% Options
opts = struct('probname','s348');
opts.sense = 'min';