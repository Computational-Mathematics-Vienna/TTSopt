% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-May-2015 23:13:54
% Model: inf_nlp_116

% Objective
fun = @(x)(x(3)*x(7)+x(5)*x(8))*x(1)+(x(4)*x(7)+x(6)*x(8))*x(2)-(x(9)*(2+x(7))+x(10)*(5+x(8)))-(x(11)*(3-x(7))+x(12)*(10-x(8)))-(x(13)*(-0.2+x(3))+x(14)*(-0.3+x(4))+x(15)*(-0.3+x(5))+x(16)*(-0.2+x(6)))-(x(17)*(0.8-x(3))+x(18)*(0.7-x(4))+x(19)*(0.8-x(5))+x(20)*(0.6-x(6)))-(x(21)*(1-x(3)-x(5))+x(22)*(1-x(4)-x(6)))-x(23)*(3-x(7)-x(8))-x(24)*(20-x(3)-x(4)-x(5)-x(6));

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2);
             x(1)*x(3)+x(2)*x(4)-x(9)+x(11)+x(23);
             x(1)*x(5)+x(2)*x(6)-x(10)+x(12)+x(23);
             x(1)*x(7)-x(13)+x(17)+x(21)+x(24);
             x(2)*x(7)-x(14)+x(18)+x(22)+x(24);
             x(1)*x(8)-x(15)+x(19)+x(21)+x(24);
             x(2)*x(8)-x(16)+x(20)+x(22)+x(24);
             x(7);
             x(8);
             x(7);
             x(8);
             x(3);
             x(4);
             x(5);
             x(6);
             x(3);
             x(4);
             x(5);
             x(6);
             x(3)+x(5);
             x(4)+x(6);
             x(7)+x(8);
             x(3)+x(4)+x(5)+x(6);
             x(9)*(2+x(7));
             x(10)*(5+x(8));
             x(11)*(3-x(7));
             x(12)*(10-x(8));
             x(13)*(-0.2+x(3));
             x(14)*(-0.3+x(4));
             x(15)*(-0.3+x(5));
             x(16)*(-0.2+x(6));
             x(17)*(0.8-x(3));
             x(18)*(0.7-x(4));
             x(19)*(0.8-x(5));
             x(20)*(0.6-x(6));
             x(21)*(1-x(3)-x(5));
             x(22)*(1-x(4)-x(6));
             x(23)*(3-x(7)-x(8));
             x(24)*(20-x(3)-x(4)-x(5)-x(6))];
cl = [1,0,0,0,0,0,0,-2,-5,-Inf,-Inf,0.2,0.3,0.3,0.2,-Inf,-Inf,-Inf,-Inf,1,1,-Inf,-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [1,0,0,0,0,0,0,Inf,Inf,3,10,Inf,Inf,Inf,Inf,0.8,0.7,0.8,0.6,1,1,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [0.5,0.5,0.5,0.5,0.5,0.5,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_nlp_116');
opts.sense = 'max';