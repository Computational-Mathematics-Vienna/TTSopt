% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-May-2015 17:31:39
% Model: inf_mip_84

% Objective
fun = @(x)20*x(6)+40*x(14);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(2);
             x(3);
             x(4);
             x(5);
             x(2);
             x(3);
             x(4);
             x(5);
             x(1);
             x(14)+x(15);
             x(14)+x(15);
             x(16)+x(18);
             x(17)+x(20);
             x(16)+x(18);
             x(19)+x(21);
             x(17)+x(20);
             x(19)+x(21);
             x(6)-100000000*x(14);
             x(7)-100000000*x(15);
             x(8)-100000000*x(16);
             x(9)-100000000*x(17);
             x(10)-100000000*x(18);
             x(11)-100000000*x(19);
             x(12)-100000000*x(20);
             x(13)-100000000*x(21);
             -100000000*x(6)+x(14);
             -100000000*x(7)+x(15);
             -100000000*x(8)+x(16);
             -100000000*x(9)+x(17);
             -100000000*x(10)+x(18);
             -100000000*x(11)+x(19);
             -100000000*x(12)+x(20);
             -100000000*x(13)+x(21);
             x(1)-x(2)-100000000*x(14);
             -x(1)+x(2)-100000000*x(15);
             x(2)-x(3)-100000000*x(16);
             x(2)-x(4)-100000000*x(17);
             -x(2)+x(3)-100000000*x(18);
             x(3)-x(5)-100000000*x(19);
             -x(2)+x(4)-100000000*x(20);
             -x(3)+x(5)-100000000*x(21);
             -x(1)+x(2)+100000000*x(14);
             x(1)-x(2)+100000000*x(15);
             -x(2)+x(3)+100000000*x(16);
             -x(2)+x(4)+100000000*x(17);
             x(2)-x(3)+100000000*x(18);
             -x(3)+x(5)+100000000*x(19);
             x(2)-x(4)+100000000*x(20);
             x(3)-x(5)+100000000*x(21);
             x(9)-x(12);
             x(11)-x(13);
             x(6)-x(7)-x(8)-x(9)+x(10)+x(12);
             x(8)-x(10)-x(11)+x(13);
             x(6);
             x(6);
             x(1)-x(2)-0.249149*x(6);
             -x(1)+x(2)-0.249149*x(7);
             x(2)-x(3)-0.249149*x(8);
             x(2)-x(4)-0.249149*x(9);
             -x(2)+x(3)-0.249149*x(10);
             x(3)-x(5)-0.249149*x(11);
             -x(2)+x(4)-0.249149*x(12);
             -x(3)+x(5)-0.249149*x(13)];
cl = [16000000,16000000,16000000,16000000,-Inf,-Inf,-Inf,-Inf,56250000,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,2000000,3000000,0,0,0,-Inf,0,0,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,56250000,56250000,56250000,56250000,56250000,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000000,100000000,100000000,100000000,100000000,100000000,100000000,100000000,2000000,3000000,0,0,Inf,8000000,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_mip_84');
opts.sense = 'min';
