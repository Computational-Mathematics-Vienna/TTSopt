% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 09:52:09
% Model: inf_minlp_137

% Objective
fun = @(x)x(1);

% Bounds
lb = [-Inf,0,0,0,0]';
ub = [Inf,100,100,100,100]';

% Constraints
nlcon = @(x)[-(0.333333333333333*(0.25*(exp(0.25*x(2))+x(2))+0.545*(exp(0.25*x(3))+x(3))+0.55*(exp(0.25*x(4))+x(4))+0.545*(exp(0.25*x(5))+x(5))+10*exp(0.25*x(2))*x(2)+7*exp(0.25*x(3))*x(3)+12*exp(0.25*x(4))*x(4)+10*exp(0.25*x(5))*x(5))-((0.5-0.5*0.145^x(2))*(1-0.1^x(3))*(1-0.05^x(4))*(1-0.115^x(5))+(0.8-0.8*0.77^x(2))*(1-0.55^x(3))*(1-0.5^x(4))*(1-0.65^x(5))+(1-0.9^x(2))*(1-0.8^x(3))*(1-0.8^x(4))*(1-0.85^x(5))))+x(1);
             -(0.333333333333333*(0.38*(exp(0.25*x(2))+x(2))+0.826*(exp(0.25*x(3))+x(3))+0.63*(exp(0.25*x(4))+x(4))+0.62*(exp(0.25*x(5))+x(5))+12*exp(0.25*x(2))*x(2)+3*exp(0.25*x(3))*x(3)+5*exp(0.25*x(4))*x(4)+15*exp(0.25*x(5))*x(5))-((0.5-0.5*0.11^x(2))*(1-0.0600000000000001^x(3))*(1-0.04^x(4))*(1-0.074^x(5))+(0.8-0.8*0.51^x(2))*(1-0.51^x(3))*(1-0.44^x(4))*(1-0.624^x(5))+(1-0.76^x(2))*(1-0.71^x(3))*(1-0.74^x(4))*(1-0.81^x(5))))+x(1);
             -(0.333333333333333*(0.494*(exp(0.25*x(2))+x(2))+0.975*(exp(0.25*x(3))+x(3))+0.74*(exp(0.25*x(4))+x(4))+0.78*(exp(0.25*x(5))+x(5))+13*exp(0.25*x(2))*x(2)+10*exp(0.25*x(3))*x(3)+8*exp(0.25*x(4))*x(4)+12*exp(0.25*x(5))*x(5))-((0.5-0.5*0.0650000000000001^x(2))*(1-0.0449999999999999^x(3))*(1-0.0399999999999999^x(4))*(1-0.0450000000000001^x(5))+(0.8-0.8*0.515^x(2))*(1-0.445^x(3))*(1-0.34^x(4))*(1-0.485^x(5))+(1-0.745^x(2))*(1-0.595^x(3))*(1-0.66^x(4))*(1-0.7^x(5))))+x(1);
             -(0.333333333333333*(0.625*(exp(0.25*x(2))+x(2))+1.08*(exp(0.25*x(3))+x(3))+0.9*(exp(0.25*x(4))+x(4))+1.12*(exp(0.25*x(5))+x(5))+15*exp(0.25*x(2))*x(2)+8*exp(0.25*x(3))*x(3)+10*exp(0.25*x(4))*x(4)+14*exp(0.25*x(5))*x(5))-((0.5-0.5*0.08^x(2))*(1-0.038^x(3))*(1-0.03^x(4))*(1-0.0349999999999999^x(5))+(0.8-0.8*0.38^x(2))*(1-0.388^x(3))*(1-0.28^x(4))*(1-0.365^x(5))+(1-0.68^x(2))*(1-0.548^x(3))*(1-0.53^x(4))*(1-0.615^x(5))))+x(1);
             -(0.333333333333333*(0.79*(exp(0.25*x(2))+x(2))+1.15*(exp(0.25*x(4))+x(4))+13*exp(0.25*x(2))*x(2)+12*exp(0.25*x(4))*x(4))-((0.5-0.5*0.05^x(2))*(1-1^x(3))*(1-0.025^x(4))*(1-1^x(5))+(0.8-0.8*0.3^x(2))*(1-1^x(3))*(1-0.24^x(4))*(1-1^x(5))+(1-0.55^x(2))*(1-1^x(3))*(1-0.42^x(4))*(1-1^x(5))))+x(1);
             -(0.333333333333333*(0.875*(exp(0.25*x(2))+x(2))+17*exp(0.25*x(2))*x(2))-((0.5-0.5*0.038^x(2))*(1-1^x(3))*(1-1^x(4))*(1-1^x(5))+(0.8-0.8*0.273^x(2))*(1-1^x(3))*(1-1^x(4))*(1-1^x(5))+(1-0.513^x(2))*(1-1^x(3))*(1-1^x(4))*(1-1^x(5))))+x(1);
             0.25*(exp(0.25*x(2))+x(2))+0.545*(exp(0.25*x(3))+x(3))+0.55*(exp(0.25*x(4))+x(4))+0.545*(exp(0.25*x(5))+x(5));
             0.38*(exp(0.25*x(2))+x(2))+0.826*(exp(0.25*x(3))+x(3))+0.63*(exp(0.25*x(4))+x(4))+0.62*(exp(0.25*x(5))+x(5));
             0.494*(exp(0.25*x(2))+x(2))+0.975*(exp(0.25*x(3))+x(3))+0.74*(exp(0.25*x(4))+x(4))+0.78*(exp(0.25*x(5))+x(5));
             0.625*(exp(0.25*x(2))+x(2))+1.08*(exp(0.25*x(3))+x(3))+0.9*(exp(0.25*x(4))+x(4))+1.12*(exp(0.25*x(5))+x(5));
             0.79*(exp(0.25*x(2))+x(2))+1.15*(exp(0.25*x(4))+x(4));
             0.875*(exp(0.25*x(2))+x(2));
             10*exp(0.25*x(2))*x(2)+7*exp(0.25*x(3))*x(3)+12*exp(0.25*x(4))*x(4)+10*exp(0.25*x(5))*x(5);
             12*exp(0.25*x(2))*x(2)+3*exp(0.25*x(3))*x(3)+5*exp(0.25*x(4))*x(4)+15*exp(0.25*x(5))*x(5);
             13*exp(0.25*x(2))*x(2)+10*exp(0.25*x(3))*x(3)+8*exp(0.25*x(4))*x(4)+12*exp(0.25*x(5))*x(5);
             15*exp(0.25*x(2))*x(2)+8*exp(0.25*x(3))*x(3)+10*exp(0.25*x(4))*x(4)+14*exp(0.25*x(5))*x(5);
             13*exp(0.25*x(2))*x(2)+12*exp(0.25*x(4))*x(4);
             17*exp(0.25*x(2))*x(2);
             (0.5-0.5*0.145^x(2))*(1-0.1^x(3))*(1-0.05^x(4))*(1-0.115^x(5))+(0.8-0.8*0.77^x(2))*(1-0.55^x(3))*(1-0.5^x(4))*(1-0.65^x(5))+(1-0.9^x(2))*(1-0.8^x(3))*(1-0.8^x(4))*(1-0.85^x(5));
             (0.5-0.5*0.11^x(2))*(1-0.0600000000000001^x(3))*(1-0.04^x(4))*(1-0.074^x(5))+(0.8-0.8*0.51^x(2))*(1-0.51^x(3))*(1-0.44^x(4))*(1-0.624^x(5))+(1-0.76^x(2))*(1-0.71^x(3))*(1-0.74^x(4))*(1-0.81^x(5));
             (0.5-0.5*0.0650000000000001^x(2))*(1-0.0449999999999999^x(3))*(1-0.0399999999999999^x(4))*(1-0.0450000000000001^x(5))+(0.8-0.8*0.515^x(2))*(1-0.445^x(3))*(1-0.34^x(4))*(1-0.485^x(5))+(1-0.745^x(2))*(1-0.595^x(3))*(1-0.66^x(4))*(1-0.7^x(5));
             (0.5-0.5*0.08^x(2))*(1-0.038^x(3))*(1-0.03^x(4))*(1-0.0349999999999999^x(5))+(0.8-0.8*0.38^x(2))*(1-0.388^x(3))*(1-0.28^x(4))*(1-0.365^x(5))+(1-0.68^x(2))*(1-0.548^x(3))*(1-0.53^x(4))*(1-0.615^x(5));
             (0.5-0.5*0.05^x(2))*(1-1^x(3))*(1-0.025^x(4))*(1-1^x(5))+(0.8-0.8*0.3^x(2))*(1-1^x(3))*(1-0.24^x(4))*(1-1^x(5))+(1-0.55^x(2))*(1-1^x(3))*(1-0.42^x(4))*(1-1^x(5));
             (0.5-0.5*0.038^x(2))*(1-1^x(3))*(1-1^x(4))*(1-1^x(5))+(0.8-0.8*0.273^x(2))*(1-1^x(3))*(1-1^x(4))*(1-1^x(5))+(1-0.513^x(2))*(1-1^x(3))*(1-1^x(4))*(1-1^x(5))];
cl = [0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,0.9,0.9,0.9,0.9,0.9,0.9]';
cu = [0,0,0,0,0,0,20,20,20,20,20,20,500,500,500,500,500,500,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_137');
opts.sense = 'min';
