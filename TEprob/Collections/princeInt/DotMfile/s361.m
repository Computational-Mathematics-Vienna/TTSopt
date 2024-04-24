% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:42
% Model: s361

% Objective
fun = @(x)8720288.849*x(1)-x(1)*(150512.5253*x(2)-8720288.849*x(1)-156.6950325*x(3)+476470.3222*x(4)+729482.8271*x(5))+24345;

% Bounds
lb = [0,1.2,20,9,-Inf]';
ub = [Inf,2.4,60,9.3,7]';

% Constraints
nlcon = @(x)[x(1)*(-145421.402+2931.1506*x(2)-40.427932*x(3)+5106.192*x(4)+15711.36*x(5));
             x(1)*(-155011.1084+4360.53352*x(2)+12.9492344*x(3)+10236.884*x(4)+13176.786*x(5));
             x(1)*(-326669.5104+7390.68412*x(2)-27.8986976*x(3)+16643.076*x(4)+30988.146*x(5));
             -x(1)*(-145421.402+2931.1506*x(2)-40.427932*x(3)+5106.192*x(4)+15711.36*x(5));
             -x(1)*(-155011.1084+4360.53352*x(2)+12.9492344*x(3)+10236.884*x(4)+13176.786*x(5));
             -x(1)*(-326669.5104+7390.68412*x(2)-27.8986976*x(3)+16643.076*x(4)+30988.146*x(5))];
cl = [0,0,0,-294000,-294000,-2772000]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [NaN,1.2,20,9,NaN]';

% Options
opts = struct('probname','s361');
opts.sense = 'min';
