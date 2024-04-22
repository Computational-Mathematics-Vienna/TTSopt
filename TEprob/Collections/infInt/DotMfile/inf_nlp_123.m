% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-May-2015 23:16:27
% Model: inf_nlp_123

% Objective
fun = @(x)log(x(1))*x(1)+log(x(2))*x(2)+log(x(3))*x(3)+x(6)/(x(4)-x(6))-log(x(4)-x(6))-2*x(5)/x(4)+0.430983578191493*x(1)+3.80082402249182*x(2)+2.92297302249182*x(3);

% Bounds
lb = [0.569362956798,0.321423960495,0.262298584597,1e-12,37.319469069482,-40.928866658957]';
ub = [0.569362956798,0.321423960495,0.262298584597,1e-12,37.319469069482,-40.928866658957]';

% Constraints
nlcon = @(x)[x(4)^3-x(4)^2*(1+x(6))+x(5)*x(4)-x(5)*x(6);
             -(0.37943*x(1)*x(1)+0.75885*x(1)*x(2)+0.48991*x(1)*x(3)+0.75885*x(2)*x(1)+0.8836*x(2)*x(2)+0.23612*x(2)*x(3)+0.48991*x(3)*x(1)+0.23612*x(3)*x(2)+0.63263*x(3)*x(3))+x(5);
             -0.14998*x(1)-0.14998*x(2)-0.14998*x(3)+x(6);
             x(1)+x(2)+x(3)];
cl = [0,0,0,1]';
cu = [0,0,0,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCC';

% Starting Guess
x0 = [0.569362956798,0.321423960495,0.262298584597,1e-12,37.319469069482,-40.928866658957]';

% Options
opts = struct('probname','inf_nlp_123');
opts.sense = 'min';