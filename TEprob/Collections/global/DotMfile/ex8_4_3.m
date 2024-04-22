% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 14:33:57
% Model: ex8_4_3

% Objective
fun = @(x)(-0.113+x(1))^2+(-1.851+x(2))^2+(-0.126+x(3))^2+(-1.854+x(4))^2+(-0.172+x(5))^2+(-1.849+x(6))^2+(-0.155+x(7))^2+(-1.815+x(8))^2+(-0.219+x(9))^2+(-1.828+x(10))^2+(-0.245+x(11))^2+(-1.847+x(12))^2+(-0.274+x(13))^2+(-1.804+x(14))^2+(-0.264+x(15))^2+(-1.832+x(16))^2+(-0.312+x(17))^2+(-1.838+x(18))^2+(-0.324+x(19))^2+(-1.817+x(20))^2+(-0.333+x(21))^2+(-1.82+x(22))^2+(-0.399+x(23))^2+(-1.845+x(24))^2+(-0.417+x(25))^2+(-1.829+x(26))^2+(-0.419+x(27))^2+(-1.832+x(28))^2+(-0.439+x(29))^2+(-1.82+x(30))^2+(-0.475+x(31))^2+(-1.82+x(32))^2+(-0.506+x(33))^2+(-1.799+x(34))^2+(-0.538+x(35))^2+(-1.838+x(36))^2+(-0.538+x(37))^2+(-1.835+x(38))^2+(-0.591+x(39))^2+(-1.811+x(40))^2+(-0.578+x(41))^2+(-1.794+x(42))^2+(-0.626+x(43))^2+(-1.825+x(44))^2+(-0.659+x(45))^2+(-1.801+x(46))^2+(-0.668+x(47))^2+(-1.81+x(48))^2+(-0.687+x(49))^2+(-1.802+x(50))^2;

% Bounds
lb = [-0.387,1.351,-0.374,1.354,-0.328,1.349,-0.345,1.315,-0.281,1.328,-0.255,1.347,-0.226,1.304,-0.236,1.332,-0.188,1.338,-0.176,1.317,-0.167,1.32,-0.101,1.345,-0.083,1.329,-0.081,1.332,-0.061,1.32,-0.025,1.32,0.00600000000000001,1.299,0.038,1.338,0.038,1.335,0.091,1.311,0.078,1.294,0.126,1.325,0.159,1.301,0.168,1.31,0.187,1.302,1,2]';
ub = [0.613,2.351,0.626,2.354,0.672,2.349,0.655,2.315,0.719,2.328,0.745,2.347,0.774,2.304,0.764,2.332,0.812,2.338,0.824,2.317,0.833,2.32,0.899,2.345,0.917,2.329,0.919,2.332,0.939,2.32,0.975,2.32,1.006,2.299,1.038,2.338,1.038,2.335,1.091,2.311,1.078,2.294,1.126,2.325,1.159,2.301,1.168,2.31,1.187,2.302,10,10]';

% Constraints
nlcon = @(x)[1/(x(1)-x(52))-x(2)+x(51);
             1/(x(3)-x(52))-x(4)+x(51);
             1/(x(5)-x(52))-x(6)+x(51);
             1/(x(7)-x(52))-x(8)+x(51);
             1/(x(9)-x(52))-x(10)+x(51);
             1/(x(11)-x(52))-x(12)+x(51);
             1/(x(13)-x(52))-x(14)+x(51);
             1/(x(15)-x(52))-x(16)+x(51);
             1/(x(17)-x(52))-x(18)+x(51);
             1/(x(19)-x(52))-x(20)+x(51);
             1/(x(21)-x(52))-x(22)+x(51);
             1/(x(23)-x(52))-x(24)+x(51);
             1/(x(25)-x(52))-x(26)+x(51);
             1/(x(27)-x(52))-x(28)+x(51);
             1/(x(29)-x(52))-x(30)+x(51);
             1/(x(31)-x(52))-x(32)+x(51);
             1/(x(33)-x(52))-x(34)+x(51);
             1/(x(35)-x(52))-x(36)+x(51);
             1/(x(37)-x(52))-x(38)+x(51);
             1/(x(39)-x(52))-x(40)+x(51);
             1/(x(41)-x(52))-x(42)+x(51);
             1/(x(43)-x(52))-x(44)+x(51);
             1/(x(45)-x(52))-x(46)+x(51);
             1/(x(47)-x(52))-x(48)+x(51);
             1/(x(49)-x(52))-x(50)+x(51)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [-0.215252868,2.194266708,0.176375356,1.655137904,-0.035787883,1.573052867,0.00483050400000007,2.171270347,-0.213886277,1.828210669,0.743117627,1.925733378,0.765133039,2.066250467,-0.105307517,1.971718759,-0.028482136,1.588080533,0.492928609,1.752356381,0.192700266,1.671441368,0.03049159,1.495101788,0.50611365,2.159892812,0.149815738,1.99773446,0.714857606,1.623658477,0.085492291,1.822384866,0.166172762,2.171462311,0.303114545,1.623814322,0.631955922,2.057719071,0.719248677,1.774797865,0.491306994,1.411695357,0.440212267,1.371551514,0.497550272,1.483099593,0.813727127,1.870745547,0.95696172,1.599805864,6.949956349,8.046573392]';

% Options
opts = struct('probname','ex8_4_3');
opts.sense = 'min';
