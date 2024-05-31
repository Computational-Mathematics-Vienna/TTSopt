% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:04:05
% Model: springs_exp

% Objective
fun = @(x)50*(x(1)^2+x(2)^2+x(3)^2+x(4)^2+x(5)^2+x(6)^2+x(7)^2+x(8)^2+x(9)^2+x(10)^2)+9.8*x(23)+9.8*x(24)+9.8*x(25)+9.8*x(26)+9.8*x(27)+9.8*x(28)+9.8*x(29)+9.8*x(30)+9.8*x(31);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-7.5,-1]';
ub = [1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,-1]';

% Constraints
nlcon = @(x)[exp((x(12)-x(11))^2+(x(23)-x(22))^2-(0.447213595499958+x(1))^2);
             exp((x(13)-x(12))^2+(x(24)-x(23))^2-(0.447213595499958+x(2))^2);
             exp((x(14)-x(13))^2+(x(25)-x(24))^2-(0.447213595499958+x(3))^2);
             exp((x(15)-x(14))^2+(x(26)-x(25))^2-(0.447213595499958+x(4))^2);
             exp((x(16)-x(15))^2+(x(27)-x(26))^2-(0.447213595499958+x(5))^2);
             exp((x(17)-x(16))^2+(x(28)-x(27))^2-(0.447213595499958+x(6))^2);
             exp((x(18)-x(17))^2+(x(29)-x(28))^2-(0.447213595499958+x(7))^2);
             exp((x(19)-x(18))^2+(x(30)-x(29))^2-(0.447213595499958+x(8))^2);
             exp((x(20)-x(19))^2+(x(31)-x(30))^2-(0.447213595499958+x(9))^2);
             exp((x(21)-x(20))^2+(x(32)-x(31))^2-(0.447213595499958+x(10))^2)];
cl = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
cu = [1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,2,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,-1]';

% Options
opts = struct('probname','springs_exp');
opts.sense = 'min';