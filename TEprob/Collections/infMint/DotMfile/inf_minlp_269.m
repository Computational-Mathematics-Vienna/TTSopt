% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:30:51
% Model: inf_minlp_269

% Objective
fun = @(x)0.2*x(1)*x(3)*x(5)+200*x(3)*x(5)+5*x(5)+0.22*x(2)*x(4)*x(6)+220*x(4)*x(6)+5.5*x(6);

% Bounds
lb = [1,1,1,1,1,1]';
ub = [600,600,50,50,30,30]';

% Constraints
nlcon = @(x)[450*(1/(x(1)*x(3)*x(5))+1/(x(2)*x(4)*x(6)))+200*(1/(x(3)*x(5))+1/(x(4)*x(6)))+250*(1/x(5)+1/x(6));
             -x(3)*x(5);
             x(3)*x(5);
             -x(4)*x(6);
             x(4)*x(6);
             x(5)/x(6)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,1]';
cu = [3.18517584662293,-1,300,-1,300,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIIII';

% Starting Guess
x0 = [1,1,1,1,1,1]';

% Options
opts = struct('probname','inf_minlp_269');
opts.sense = 'min';
