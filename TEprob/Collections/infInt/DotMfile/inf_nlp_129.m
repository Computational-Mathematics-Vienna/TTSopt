% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-May-2015 23:16:31
% Model: inf_nlp_129

% Objective
fun = @(x)4.61*x(1)*x(3)*x(7)+6.32*x(1)+3.97*x(3)+8.1*x(7)+7.77*x(5)*x(6)*x(8)+5.8*x(5)+8.91*x(6)+7.5*x(8)-1.91*x(7)*x(8)*x(9)+1.74*x(9)+8.73*x(1)*x(5)*x(8)*x(10)+2.36*x(10)+8.34*x(2)*x(3)*x(9)*x(12)+8.88*x(2)+9.31*x(12)+6.95*x(2)*x(3)*x(11)*x(11)+6.11*x(11)+1.76*x(2)*x(5)*x(10)*x(11)+0.01*x(2)*x(9)*x(10)*x(11)+2.16*x(3)*x(3)*x(3)*x(12)+2.29*x(3)*x(3)*x(10)*x(12)+9.32*x(6)*x(6)*x(11)*x(11)-6.4*x(6)*x(6)*x(12)*x(12)+8.84*x(7)*x(8)*x(8)*x(11)+0.18*x(7)*x(9)*x(10)*x(12)+6.91*x(1)*x(6)*x(7)*x(9)*x(12)+1.75*x(1)*x(9)*x(9)*x(9)*x(9)+9.03*x(2)*x(3)*x(3)*x(8)*x(12)+0.76*x(2)*x(3)*x(3)*x(10)*x(10)+3.08*x(2)*x(3)*x(4)*x(6)*x(6)+2.71*x(4)+8.36*x(2)*x(6)*x(6)*x(6)*x(10)+1.99*x(3)*x(4)*x(4)*x(6)*x(11)+3.9*x(3)*x(5)*x(8)*x(11)*x(11)+6.39*x(3)*x(6)*x(8)*x(9)*x(10)+1.08*x(3)*x(7)*x(8)*x(10)*x(10)+2.46*x(4)*x(4)*x(7)*x(8)*x(8)+1.41*x(4)*x(5)*x(7)*x(12)*x(12)+5.42*x(4)*x(5)*x(8)*x(8)*x(8)+7.7*x(4)*x(6)*x(8)*x(12)*x(12)+3.83*x(5)*x(5)*x(5)*x(10)*x(11)+5.54*x(7)*x(9)*x(10)*x(11)*x(11)+5.11*x(8)*x(8)*x(8)*x(11)*x(12);

% Bounds
lb = [0.64,0.09,0.75,0.84,0.94,0.42,0.79,0.61,0.36,0.49,0.35,0.93]';
ub = [2.58,2.68,2.84,2.95,2.37,2.97,2.63,2.45,2.41,2.25,2.07,2.37]';

% Constraints
nlcon = @(x)[-6.03*x(3)+8.91*x(5)+8.7*x(6)+3.67*x(10)+4.62*x(11)-5.42*x(12);
             7.6*x(2)+3.75*x(4)+8.16*x(6)+7.29*x(8)+3.27*x(11)-8.86*x(12);
             3.21*x(1)+2.95*x(2)+6.97*x(3)+2.87*x(5)+5.72*x(6)+8.47*x(12);
             9.07*x(2)+3.49*x(3)+4.76*x(4)+9.02*x(5)-4.02*x(8)+8.21*x(12);
             3.69*x(1)-2.14*x(4)+9.96*x(6)+3.69*x(10)+4.8*x(11)+2.28*x(12);
             3.86*x(3)-1.23*x(6)+4.83*x(7)+5.71*x(8)+6.88*x(10)+6.83*x(11);
             9.22*x(1)-1.8*x(2)+0.87*x(3)+9.51*x(4)+9.91*x(5)+5.03*x(6)+2.33*x(7)+0.08*x(8)+4.11*x(9)+2.1*x(10)+4.45*x(11)-5.83*x(12);
             3.11*x(1)+1.76*x(2)-8.37*x(3)+0.25*x(4)+7.17*x(5)+5.65*x(6)+4.11*x(7)+9.22*x(8)+0.66*x(9)+5.12*x(10)+1.39*x(11)+8.43*x(12);
             7.06*x(1)*x(3)*x(7)+8.54*x(1)+1.7*x(3)+1.63*x(7)+8.42*x(5)*x(6)*x(8)+4.03*x(5)+3.98*x(6)+2.27*x(8)+0.72*x(7)*x(8)*x(9)+7.59*x(9)+9.23*x(2)+1.98*x(4)+2.81*x(10)+7.39*x(11)+1.13*x(12);
             7.76*x(1)*x(3)*x(7)+2.23*x(1)+5.72*x(3)+6.1*x(7)+6.71*x(5)*x(6)*x(8)+4.66*x(5)+2.18*x(6)+8.01*x(8)+8.42*x(7)*x(8)*x(9)+7.87*x(9)+6.73*x(1)*x(5)*x(8)*x(10)+9.88*x(10)-4.08*x(2)*x(3)*x(9)*x(12)-9.17*x(2)+2.67*x(12)+4.3*x(2)*x(3)*x(11)*x(11)+2.95*x(11)+1.39*x(2)*x(5)*x(10)*x(11)+0.33*x(2)*x(9)*x(10)*x(11)+9.07*x(3)*x(3)*x(3)*x(12)+9.07*x(3)*x(3)*x(10)*x(12)+6.78*x(6)*x(6)*x(11)*x(11)-0.31*x(6)*x(6)*x(12)*x(12)+7.32*x(7)*x(8)*x(8)*x(11)+1.26*x(7)*x(9)*x(10)*x(12)+5.88*x(4);
             4.98*x(1)*x(3)*x(7)+6.05*x(1)-6.93*x(3)+1.88*x(7)+4.16*x(5)*x(6)*x(8)+8.9*x(5)+8.61*x(6)+0.06*x(8)+6.15*x(7)*x(8)*x(9)+6.36*x(9)+6.76*x(1)*x(5)*x(8)*x(10)+1.22*x(10)+2.38*x(2)*x(3)*x(9)*x(12)+4.71*x(2)+4.03*x(12)+1.07*x(2)*x(3)*x(11)*x(11)-5.66*x(11)-1.77*x(2)*x(5)*x(10)*x(11)+5.29*x(2)*x(9)*x(10)*x(11)+3.99*x(3)*x(3)*x(3)*x(12)+8.4*x(3)*x(3)*x(10)*x(12)+8.85*x(6)*x(6)*x(11)*x(11)+0.39*x(6)*x(6)*x(12)*x(12)+1.07*x(7)*x(8)*x(8)*x(11)+7.52*x(7)*x(9)*x(10)*x(12)+0.24*x(1)*x(6)*x(7)*x(9)*x(12)+4.2*x(1)*x(9)*x(9)*x(9)*x(9)+9.95*x(2)*x(3)*x(3)*x(8)*x(12)+7.98*x(2)*x(3)*x(3)*x(10)*x(10)+5.26*x(2)*x(3)*x(4)*x(6)*x(6)+5.05*x(4)+9.23*x(2)*x(6)*x(6)*x(6)*x(10)+2.54*x(3)*x(4)*x(4)*x(6)*x(11)+2.14*x(3)*x(5)*x(8)*x(11)*x(11)+0.75*x(3)*x(6)*x(8)*x(9)*x(10)+8.5*x(3)*x(7)*x(8)*x(10)*x(10)+8.12*x(4)*x(4)*x(7)*x(8)*x(8)-0.94*x(4)*x(5)*x(7)*x(12)*x(12)+3.51*x(4)*x(5)*x(8)*x(8)*x(8)+7.04*x(4)*x(6)*x(8)*x(12)*x(12)+6.29*x(5)*x(5)*x(5)*x(10)*x(11)+1.03*x(7)*x(9)*x(10)*x(11)*x(11)+3.92*x(8)*x(8)*x(8)*x(11)*x(12);
             4.54*x(1)+1.29*x(2)+3.02*x(3)+0.81*x(4)+9.32*x(5)+7.45*x(6)+1.11*x(7)+7.61*x(8)+3.53*x(9)+6.01*x(10)+3.87*x(11)+9.71*x(12)];
cl = [20.344,31.955,50.186,50.171,33.393,39.529,65.302,58.992,226.814,1106.827,5736.79,91.473]';
cu = [20.344,31.955,50.186,50.171,33.393,39.529,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCC';

% Starting Guess
x0 = [0.64,0.09,0.75,0.84,0.94,0.42,0.79,0.61,0.36,0.49,0.35,0.93]';

% Options
opts = struct('probname','inf_nlp_129');
opts.sense = 'min';