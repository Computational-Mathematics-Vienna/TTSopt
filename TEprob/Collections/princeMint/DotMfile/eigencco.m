% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 00:23:13
% Model: eigencco

% Objective
fun = @(x)(-2+x(6)*x(6)*x(1)+x(11)*x(11)*x(2)+x(16)*x(16)*x(3)+x(21)*x(21)*x(4)+x(26)*x(26)*x(5))^2+(-1+x(7)*x(6)*x(1)+x(12)*x(11)*x(2)+x(17)*x(16)*x(3)+x(22)*x(21)*x(4)+x(27)*x(26)*x(5))^2+(-1+x(7)*x(7)*x(1)+x(12)*x(12)*x(2)+x(17)*x(17)*x(3)+x(22)*x(22)*x(4)+x(27)*x(27)*x(5))^2+(x(8)*x(6)*x(1)+x(13)*x(11)*x(2)+x(18)*x(16)*x(3)+x(23)*x(21)*x(4)+x(28)*x(26)*x(5))^2+(-1+x(8)*x(7)*x(1)+x(13)*x(12)*x(2)+x(18)*x(17)*x(3)+x(23)*x(22)*x(4)+x(28)*x(27)*x(5))^2+(x(9)*x(6)*x(1)+x(14)*x(11)*x(2)+x(19)*x(16)*x(3)+x(24)*x(21)*x(4)+x(29)*x(26)*x(5))^2+(x(9)*x(7)*x(1)+x(14)*x(12)*x(2)+x(19)*x(17)*x(3)+x(24)*x(22)*x(4)+x(29)*x(27)*x(5))^2+(x(10)*x(6)*x(1)+x(15)*x(11)*x(2)+x(20)*x(16)*x(3)+x(25)*x(21)*x(4)+x(30)*x(26)*x(5))^2+(x(10)*x(7)*x(1)+x(15)*x(12)*x(2)+x(20)*x(17)*x(3)+x(25)*x(22)*x(4)+x(30)*x(27)*x(5))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(7)*x(6)+x(12)*x(11)+x(17)*x(16)+x(22)*x(21)+x(27)*x(26);
             x(8)*x(6)+x(13)*x(11)+x(18)*x(16)+x(23)*x(21)+x(28)*x(26);
             x(8)*x(7)+x(13)*x(12)+x(18)*x(17)+x(23)*x(22)+x(28)*x(27);
             x(9)*x(6)+x(14)*x(11)+x(19)*x(16)+x(24)*x(21)+x(29)*x(26);
             x(9)*x(7)+x(14)*x(12)+x(19)*x(17)+x(24)*x(22)+x(29)*x(27);
             x(9)*x(8)+x(14)*x(13)+x(19)*x(18)+x(24)*x(23)+x(29)*x(28);
             x(10)*x(6)+x(15)*x(11)+x(20)*x(16)+x(25)*x(21)+x(30)*x(26);
             x(10)*x(7)+x(15)*x(12)+x(20)*x(17)+x(25)*x(22)+x(30)*x(27);
             x(10)*x(8)+x(15)*x(13)+x(20)*x(18)+x(25)*x(23)+x(30)*x(28);
             x(10)*x(9)+x(15)*x(14)+x(20)*x(19)+x(25)*x(24)+x(30)*x(29);
             x(6)*x(6)+x(11)*x(11)+x(16)*x(16)+x(21)*x(21)+x(26)*x(26);
             x(7)*x(7)+x(12)*x(12)+x(17)*x(17)+x(22)*x(22)+x(27)*x(27);
             x(8)*x(8)+x(13)*x(13)+x(18)*x(18)+x(23)*x(23)+x(28)*x(28);
             x(9)*x(9)+x(14)*x(14)+x(19)*x(19)+x(24)*x(24)+x(29)*x(29);
             x(10)*x(10)+x(15)*x(15)+x(20)*x(20)+x(25)*x(25)+x(30)*x(30)];
cl = [0,0,0,0,0,0,0,0,0,0,1,1,1,1,1]';
cu = [0,0,0,0,0,0,0,0,0,0,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','eigencco');
opts.sense = 'min';
