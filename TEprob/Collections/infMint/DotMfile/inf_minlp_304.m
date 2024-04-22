% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:54:30
% Model: inf_minlp_304

% Objective
fun = @(x)x(1);

% Bounds
lb = [-Inf,1,1]';
ub = [Inf,100,100]';

% Constraints
nlcon = @(x)[-(0.333333333333333*(0.545*(exp(0.25*x(2))+x(2))+0.55*(exp(0.25*x(3))+x(3))+7*exp(0.25*x(2))*x(2)+12*exp(0.25*x(3))*x(3))-((0.5-0.5*0.1^x(2))*(1-0.05^x(3))+(0.8-0.8*0.55^x(2))*(1-0.5^x(3))+(1-0.8^x(2))*(1-0.8^x(3))))+x(1);
             -(0.333333333333333*(0.875*(exp(0.25*x(2))+x(2))+0.25*(exp(0.25*x(3))+x(3))+17*exp(0.25*x(2))*x(2)+10*exp(0.25*x(3))*x(3))-((0.5-0.5*0.038^x(2))*(1-0.145^x(3))+(0.8-0.8*0.273^x(2))*(1-0.77^x(3))+(1-0.513^x(2))*(1-0.9^x(3))))+x(1);
             0.545*(exp(0.25*x(2))+x(2))+0.55*(exp(0.25*x(3))+x(3));
             0.875*(exp(0.25*x(2))+x(2))+0.25*(exp(0.25*x(3))+x(3));
             7*exp(0.25*x(2))*x(2)+12*exp(0.25*x(3))*x(3);
             17*exp(0.25*x(2))*x(2)+10*exp(0.25*x(3))*x(3);
             (0.5-0.5*0.1^x(2))*(1-0.05^x(3))+(0.8-0.8*0.55^x(2))*(1-0.5^x(3))+(1-0.8^x(2))*(1-0.8^x(3));
             (0.5-0.5*0.038^x(2))*(1-0.145^x(3))+(0.8-0.8*0.273^x(2))*(1-0.77^x(3))+(1-0.513^x(2))*(1-0.9^x(3))];
cl = [0,0,-Inf,-Inf,-Inf,-Inf,0,0]';
cu = [0,0,15,15,500,500,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CII';

% Starting Guess
x0 = [NaN,1,1]';

% Options
opts = struct('probname','inf_minlp_304');
opts.sense = 'min';
