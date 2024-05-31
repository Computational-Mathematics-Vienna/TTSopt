% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:47:06
% Model: hs268

% Objective
fun = @(x)10197*x(1)*x(1)-12454*x(1)*x(2)-1013*x(1)*x(3)+1948*x(1)*x(4)+329*x(1)*x(5)-12454*x(2)*x(1)+20909*x(2)*x(2)-1733*x(2)*x(3)-4914*x(2)*x(4)-186*x(2)*x(5)-1013*x(3)*x(1)-1733*x(3)*x(2)+1755*x(3)*x(3)+1089*x(3)*x(4)-174*x(3)*x(5)+1948*x(4)*x(1)-4914*x(4)*x(2)+1089*x(4)*x(3)+1515*x(4)*x(4)-22*x(4)*x(5)+329*x(5)*x(1)-186*x(5)*x(2)-174*x(5)*x(3)-22*x(5)*x(4)+27*x(5)*x(5)+18340*x(1)-34198*x(2)+4542*x(3)+8672*x(4)+86*x(5)+14463;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(2)-x(3)-x(4)-x(5);
             10*x(1)+10*x(2)-3*x(3)+5*x(4)+4*x(5);
             -8*x(1)+x(2)-2*x(3)-5*x(4)+3*x(5);
             8*x(1)-x(2)+2*x(3)+5*x(4)-3*x(5);
             -4*x(1)-2*x(2)+3*x(3)-5*x(4)+x(5)];
cl = [-5,20,-40,11,-30]';
cu = [Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','hs268');
opts.sense = 'min';