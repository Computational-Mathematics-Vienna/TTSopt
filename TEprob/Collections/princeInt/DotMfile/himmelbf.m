% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:35:51
% Model: himmelbf

% Objective
fun = @(x)10000*((-1+0.135299688810716*x(1)^2)^2+(-1+(x(1)^2+0.000428*x(2)^2+1.83184e-7*x(3)^2)/(11.18+0.00478504*x(4)^2))^2+(-1+(x(1)^2+0.001*x(2)^2+1e-6*x(3)^2)/(16.44+0.01644*x(4)^2))^2+(-1+(x(1)^2+0.00161*x(2)^2+2.5921e-6*x(3)^2)/(16.2+0.026082*x(4)^2))^2+(-1+(x(1)^2+0.00209*x(2)^2+4.3681e-6*x(3)^2)/(22.2+0.046398*x(4)^2))^2+(-1+(x(1)^2+0.00348*x(2)^2+1.21104e-5*x(3)^2)/(24.02+0.0835896*x(4)^2))^2+(-1+(x(1)^2+0.00525*x(2)^2+2.75625e-5*x(3)^2)/(31.32+0.16443*x(4)^2))^2);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCC';

% Starting Guess
x0 = [2.7,90,1500,10]';

% Options
opts = struct('probname','himmelbf');
opts.sense = 'min';