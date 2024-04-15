% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 06-Jun-2016 04:03:53
% Model: concha1

% Objective
fun = @(x)(1-x(1)-x(2))^2+(1-x(1)-x(2))^2+(3-x(1)-2*x(2))^2+(4-x(1)-3*x(2))^2+(7-x(1)-4*x(2))^2+(11-x(1)-5*x(2))^2+(18-x(1)-6*x(2))^2+(29-x(1)-7*x(2))^2+(47-x(1)-8*x(2))^2+(76-x(1)-9*x(2))^2+(123-x(1)-10*x(2))^2+(199-x(1)-11*x(2))^2+(322-x(1)-12*x(2))^2+(521-x(1)-13*x(2))^2+(843-x(1)-14*x(2))^2+(1364-x(1)-15*x(2))^2+(2207-x(1)-16*x(2))^2+(3571-x(1)-17*x(2))^2+(5778-x(1)-18*x(2))^2+(9529-x(1)-19*x(2))^2+(15307-x(1)-20*x(2))^2+(24836-x(1)-21*x(2))^2;

% Bounds
lb = [-10000,-10000]';
ub = [10000,10000]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CC';

% Starting Guess
x0 = [NaN,NaN]';

% Options
opts = struct('probname','concha1');
opts.sense = 'min';