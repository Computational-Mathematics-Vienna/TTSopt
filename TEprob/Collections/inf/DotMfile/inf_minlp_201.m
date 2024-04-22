% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 07-Jan-2016 10:21:00
% Model: inf_minlp_201

% Objective
fun = @(x)13895*x(1)-92*x(1)*x(2)-2669*x(2)-15*x(1)*x(3)+20*x(1)*x(4)-2050*x(4)+687*x(2)*x(3)-867*x(2)*x(4)+40*x(3)*x(4)-451*x(1)^2+691*x(2)^2-487*x(3)^2+1051*x(4)^2-96655;

% Bounds
lb = [0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [100,100,100,100,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-(-3*x(1)*x(2)-23*x(1)+118*x(2)+12*x(1)*x(3)+11*x(1)*x(4)-474*x(4)+196*x(2)*x(3)-180*x(2)*x(4)-8*x(3)*x(4)-19*x(2)^2-173*x(3)^2+207*x(4)^2)+x(5);
             -(4*x(1)*x(2)-712*x(1)-9*x(2)-6*x(1)*x(3)-11*x(1)*x(4)+437*x(4)-162*x(2)*x(3)+171*x(2)*x(4)-3*x(3)*x(4)+24*x(1)^2+4*x(2)^2+140*x(3)^2-187*x(4)^2)+x(6);
             -(119*x(1)-6*x(1)*x(2)+263*x(2)+45*x(1)*x(3)+37*x(1)*x(4)-1609*x(4)+810*x(2)*x(3)-798*x(2)*x(4)-31*x(3)*x(4)-7*x(1)^2-36*x(2)^2-712*x(3)^2+857*x(4)^2)+x(7);
             -(15*x(1)*x(2)-3460*x(1)+236*x(2)+11*x(1)*x(3)-12*x(1)*x(4)+744*x(4)+174*x(2)*x(3)-274*x(2)*x(4)+61*x(3)*x(4)+112*x(1)^2-x(2)^2-215*x(3)^2+47*x(4)^2)+x(8);
             -(-0.15*x(1)*x(2)-0.05*x(1)+2.83*x(2)+0.098*x(1)*x(3)+0.098*x(1)*x(4)-3.53*x(4)+0.89*x(2)*x(3)-2.65*x(2)*x(4)+0.59*x(3)*x(4)+0.59*x(2)^2-1.47*x(3)^2+2.06*x(4)^2)+x(9);
             -(0.36*x(1)*x(2)+0.12*x(1)-4.19*x(2)-0.24*x(1)*x(3)-0.24*x(1)*x(4)+5.88*x(4)-4.81*x(2)*x(3)+1.06*x(2)*x(4)+1.25*x(3)*x(4)+1.25*x(2)^2+3.56*x(3)^2-2.31*x(4)^2)+x(10);
             (-3*x(1)*x(2))-23*x(1)+118*x(2)+12*x(1)*x(3)+11*x(1)*x(4)-474*x(4)+196*x(2)*x(3)-180*x(2)*x(4)-8*x(3)*x(4)-19*x(2)^2-173*x(3)^2+207*x(4)^2;
             4*x(1)*x(2)-712*x(1)-9*x(2)-6*x(1)*x(3)-11*x(1)*x(4)+437*x(4)-162*x(2)*x(3)+171*x(2)*x(4)-3*x(3)*x(4)+24*x(1)^2+4*x(2)^2+140*x(3)^2-187*x(4)^2;
             119*x(1)-6*x(1)*x(2)+263*x(2)+45*x(1)*x(3)+37*x(1)*x(4)-1609*x(4)+810*x(2)*x(3)-798*x(2)*x(4)-31*x(3)*x(4)-7*x(1)^2-36*x(2)^2-712*x(3)^2+857*x(4)^2;
             15*x(1)*x(2)-3460*x(1)+236*x(2)+11*x(1)*x(3)-12*x(1)*x(4)+744*x(4)+174*x(2)*x(3)-274*x(2)*x(4)+61*x(3)*x(4)+112*x(1)^2-x(2)^2-215*x(3)^2+47*x(4)^2;
             (-0.15*x(1)*x(2))-0.05*x(1)+2.83*x(2)+0.098*x(1)*x(3)+0.098*x(1)*x(4)-3.53*x(4)+0.89*x(2)*x(3)-2.65*x(2)*x(4)+0.59*x(3)*x(4)+0.59*x(2)^2-1.47*x(3)^2+2.06*x(4)^2;
             0.36*x(1)*x(2)+0.12*x(1)-4.19*x(2)-0.24*x(1)*x(3)-0.24*x(1)*x(4)+5.88*x(4)-4.81*x(2)*x(3)+1.06*x(2)*x(4)+1.25*x(3)*x(4)+1.25*x(2)^2+3.56*x(3)^2-2.31*x(4)^2;
             (-347.958+0.0036*(13895*x(1)-92*x(1)*x(2)-2669*x(2)-15*x(1)*x(3)+20*x(1)*x(4)-2050*x(4)+687*x(2)*x(3)-867*x(2)*x(4)+40*x(3)*x(4)-451*x(1)^2+691*x(2)^2-487*x(3)^2+1051*x(4)^2))*(0.1356+0.01332*x(2))+0.085*x(1);
             x(1);
             x(1);
             x(2);
             x(2);
             x(3);
             -x(2)+x(3);
             x(4);
             -x(2)+x(4)];
cl = [464,5197,173,25778,0.7772,-1.87,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,14,-Inf,1,-Inf,1,-Inf,1,-Inf]';
cu = [464,5197,173,25778,0.7772,-1.87,-364,-4897,27,-24778,9.2228,5001.87,4,Inf,16,Inf,3,Inf,0,Inf,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIICCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','inf_minlp_201');
opts.sense = 'max';
