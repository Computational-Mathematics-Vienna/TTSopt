% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:54
% Model: ex6_2_9

% Objective
fun = @(x)log(4.8274*x(1)+0.92*x(3))*(31.4830434782609*x(1)+6*x(3))-1.36551138119385*x(1)+2.8555953099828*x(3)+11.5030434782609*log(x(1)/(4.8274*x(1)+0.92*x(3)))*x(1)+20.98*log(x(1)/(4.196*x(1)+1.4*x(3)))*x(1)+7*log(x(3)/(4.196*x(1)+1.4*x(3)))*x(3)+log(4.196*x(1)+1.4*x(3))*(4.196*x(1)+1.4*x(3))+1.62*log(x(1)/(7.52678200680961*x(1)+0.443737968424621*x(3)))*x(1)+0.848*log(x(1)/(7.52678200680961*x(1)+0.443737968424621*x(3)))*x(1)+1.728*log(x(1)/(1.82245052351472*x(1)+1.4300083598626*x(3)))*x(1)+1.4*log(x(3)/(0.504772348000588*x(1)+1.4*x(3)))*x(3)+log(4.8274*x(2)+0.92*x(4))*(31.4830434782609*x(2)+6*x(4))-1.36551138119385*x(2)+2.8555953099828*x(4)+11.5030434782609*log(x(2)/(4.8274*x(2)+0.92*x(4)))*x(2)+20.98*log(x(2)/(4.196*x(2)+1.4*x(4)))*x(2)+7*log(x(4)/(4.196*x(2)+1.4*x(4)))*x(4)+log(4.196*x(2)+1.4*x(4))*(4.196*x(2)+1.4*x(4))+1.62*log(x(2)/(7.52678200680961*x(2)+0.443737968424621*x(4)))*x(2)+0.848*log(x(2)/(7.52678200680961*x(2)+0.443737968424621*x(4)))*x(2)+1.728*log(x(2)/(1.82245052351472*x(2)+1.4300083598626*x(4)))*x(2)+1.4*log(x(4)/(0.504772348000588*x(2)+1.4*x(4)))*x(4)-35.6790434782609*log(x(1))*x(1)-7.4*log(x(3))*x(3)-35.6790434782609*log(x(2))*x(2)-7.4*log(x(4))*x(4);

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
x0 = [0.4998,0.0002,0.0451,0.4549]';

% Options
opts = struct('probname','ex6_2_9');
opts.sense = 'min';