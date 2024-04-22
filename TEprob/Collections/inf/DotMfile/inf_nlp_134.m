% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-May-2015 23:16:42
% Model: inf_nlp_134

% Objective
fun = @(x)7.87*x(1)*x(3)*x(3)+3.8*x(1)-5.01*x(3)+9.13*x(3)*x(5)*x(8)+7.69*x(5)+8.04*x(8)+2.24*x(1)*x(5)*x(7)*x(12)+6.92*x(7)+2.02*x(12)+1.38*x(1)*x(5)*x(8)*x(8)+3.56*x(1)*x(5)*x(9)*x(12)+2.1*x(9)+8.83*x(1)*x(6)*x(10)*x(12)+6.26*x(6)+7.85*x(10)+2.02*x(1)*x(10)*x(10)*x(12)+9.41*x(2)*x(2)*x(4)*x(8)+7.6*x(2)+2.2*x(4)+4.88*x(2)*x(3)*x(8)*x(9)+2.4*x(2)*x(4)*x(6)*x(9)+0.65*x(2)*x(4)*x(9)*x(11)+5*x(11)+8.33*x(2)*x(4)*x(10)*x(11)-0.33*x(2)*x(6)*x(8)*x(8)+2.98*x(2)*x(8)*x(8)*x(10)+6.17*x(3)*x(3)*x(4)*x(5)+8.39*x(5)*x(5)*x(8)*x(10)+3.12*x(5)*x(5)*x(11)*x(12)+8.63*x(5)*x(6)*x(6)*x(10)+3.39*x(6)*x(6)*x(6)*x(8)+3.2*x(7)*x(7)*x(8)*x(8)+9.34*x(1)*x(1)*x(2)*x(4)*x(10)+5.81*x(1)*x(1)*x(4)*x(7)*x(10)+5.15*x(1)*x(1)*x(4)*x(7)*x(11)+1.37*x(1)*x(1)*x(4)*x(9)*x(11)+2.37*x(1)*x(1)*x(8)*x(12)*x(12)+9.08*x(1)*x(2)*x(2)*x(4)*x(5)-9.91*x(1)*x(3)*x(3)*x(3)*x(8)+4.31*x(1)*x(3)*x(5)*x(8)*x(10)+3.56*x(1)*x(3)*x(10)*x(11)*x(11)+7.14*x(1)*x(4)*x(4)*x(4)*x(5)+5.5*x(1)*x(4)*x(8)*x(8)*x(12)+0.39*x(1)*x(5)*x(6)*x(8)*x(9)-9.09*x(1)*x(7)*x(8)*x(8)*x(12)+4.96*x(1)*x(7)*x(8)*x(9)*x(10)+9.17*x(1)*x(9)*x(9)*x(10)*x(11)+5.23*x(2)*x(2)*x(5)*x(6)*x(9)+3.23*x(2)*x(2)*x(6)*x(7)*x(9)+2.36*x(2)*x(3)*x(5)*x(8)*x(12)+3.87*x(2)*x(3)*x(6)*x(11)*x(12)+8.36*x(2)*x(3)*x(7)*x(8)*x(8)+7.65*x(2)*x(3)*x(8)*x(9)*x(12)+8.65*x(2)*x(4)*x(5)*x(7)*x(8)+0.81*x(2)*x(4)*x(6)*x(8)*x(12)+6.02*x(2)*x(5)*x(6)*x(7)*x(12)+7.14*x(3)*x(3)*x(3)*x(8)*x(9)+3.68*x(3)*x(3)*x(6)*x(6)*x(7)+8.24*x(3)*x(4)*x(5)*x(10)*x(12)+0.32*x(3)*x(4)*x(10)*x(12)*x(12)+1.55*x(3)*x(5)*x(8)*x(8)*x(11)+5*x(3)*x(5)*x(9)*x(9)*x(12)+6.48*x(3)*x(6)*x(10)*x(10)*x(10)+4.53*x(3)*x(8)*x(8)*x(8)*x(9)+3.88*x(4)*x(4)*x(4)*x(5)*x(9)+1.38*x(4)*x(7)*x(7)*x(7)*x(8)+9.21*x(4)*x(11)*x(11)*x(11)*x(11)+4.71*x(5)*x(5)*x(5)*x(6)*x(12)+4.74*x(5)*x(5)*x(7)*x(7)*x(10)+2.52*x(5)*x(5)*x(8)*x(9)*x(11)+1.03*x(6)*x(10)*x(10)*x(10)*x(11)+7.57*x(7)*x(8)*x(8)*x(10)*x(12)+3.03*x(8)*x(8)*x(10)*x(11)*x(12)+5.04*x(8)*x(10)*x(10)*x(11)*x(12);

% Bounds
lb = [0.54,0.77,0.28,0.85,0.12,0.17,0.57,0.53,0.43,0.6,0.4,0.4]';
ub = [2.25,2.98,2.31,2.47,2.42,2.26,2.55,2.25,2.34,2.26,2.62,3]';

% Constraints
nlcon = @(x)[6.9*x(1)+6.61*x(2)+6.21*x(3)-3.55*x(4)+2.24*x(5)+3.07*x(6)+10*x(7)+4.82*x(8)+0.79*x(9)+3.8*x(10)+4.28*x(11)-7.12*x(12);
             7.74*x(1)+6.3*x(2)-7.2*x(3)-2.31*x(4)+7.94*x(5)+5.33*x(6)+9.33*x(7)+0.02*x(8)+3.69*x(9)+8.82*x(10)+1.09*x(11)+7.87*x(12);
             2.04*x(1)+3.57*x(2)+5.88*x(3)+6.37*x(4)+4.46*x(5)+6.48*x(6)+6.14*x(7)+3.18*x(8)+5.52*x(9)+9.96*x(10)+1.51*x(11)+9.99*x(12);
             8.2*x(1)+1.79*x(2)-1.35*x(3)+5.82*x(4)+7.78*x(5)+1.58*x(6)+0.55*x(7)+2.78*x(8)+8.68*x(9)-1.28*x(10)+5.37*x(11)-3.66*x(12);
             9.55*x(1)+7.49*x(2)+4.74*x(3)-3.84*x(4)+4.41*x(5)+7.67*x(6)+7.74*x(7)+2.59*x(8)+5.02*x(9)+1.58*x(10)-6.61*x(11)+0.2*x(12);
             0.29*x(1)*x(3)*x(3)-4.55*x(1)+1.01*x(3)+5.86*x(3)*x(5)*x(8)+2.42*x(5)+9.17*x(8)+3.96*x(2)+6.24*x(4)+8.49*x(6)+3.55*x(7)+0.46*x(9)+3*x(10)+6.5*x(11)+7.15*x(12);
             0.81*x(1)*x(3)*x(3)+9.86*x(1)+1.96*x(3)+3.06*x(3)*x(5)*x(8)+0.57*x(5)+0.55*x(8)+0.87*x(1)*x(5)*x(7)*x(12)+3.79*x(7)+7.56*x(12)+4.93*x(1)*x(5)*x(8)*x(8)+9.82*x(1)*x(5)*x(9)*x(12)+3.01*x(9)-3.01*x(1)*x(6)*x(10)*x(12)+3.04*x(6)+0.64*x(10)+0.75*x(1)*x(10)*x(10)*x(12)+4.37*x(2)*x(2)*x(4)*x(8)+0.1*x(2)+3.75*x(4)+2.38*x(2)*x(3)*x(8)*x(9)+4.05*x(2)*x(4)*x(6)*x(9)+8.59*x(2)*x(4)*x(9)*x(11)+3.56*x(11)+3.08*x(2)*x(4)*x(10)*x(11)+2.79*x(2)*x(6)*x(8)*x(8)+0.2*x(2)*x(8)*x(8)*x(10)+6.22*x(3)*x(3)*x(4)*x(5)+8.98*x(5)*x(5)*x(8)*x(10)+4.16*x(5)*x(5)*x(11)*x(12)+6.75*x(5)*x(6)*x(6)*x(10)+9.33*x(6)*x(6)*x(6)*x(8)+7.1*x(7)*x(7)*x(8)*x(8);
             6.3*x(1)-0.34*x(1)*x(3)*x(3)+6.1*x(3)+7.41*x(3)*x(5)*x(8)+5.08*x(5)+3.29*x(8)+3.59*x(1)*x(5)*x(7)*x(12)+7.07*x(7)+2.66*x(12)+8.49*x(1)*x(5)*x(8)*x(8)+9.43*x(1)*x(5)*x(9)*x(12)+2.87*x(9)+4.1*x(1)*x(6)*x(10)*x(12)+2.08*x(6)+2.61*x(10)+8.49*x(1)*x(10)*x(10)*x(12)+1.93*x(2)*x(2)*x(4)*x(8)+2.29*x(2)-7.31*x(4)+7.64*x(2)*x(3)*x(8)*x(9)+2.75*x(2)*x(4)*x(6)*x(9)+4.79*x(2)*x(4)*x(9)*x(11)+6.26*x(11)+6.22*x(2)*x(4)*x(10)*x(11)+3.53*x(2)*x(6)*x(8)*x(8)+5.44*x(2)*x(8)*x(8)*x(10)+6.82*x(3)*x(3)*x(4)*x(5)+1.86*x(5)*x(5)*x(8)*x(10)+3.47*x(5)*x(5)*x(11)*x(12)+7.07*x(5)*x(6)*x(6)*x(10)+6.86*x(6)*x(6)*x(6)*x(8)+3.04*x(7)*x(7)*x(8)*x(8)+9.65*x(1)*x(1)*x(2)*x(4)*x(10)-7.41*x(1)*x(1)*x(4)*x(7)*x(10)-3.71*x(1)*x(1)*x(4)*x(7)*x(11)+5.34*x(1)*x(1)*x(4)*x(9)*x(11)-9.33*x(1)*x(1)*x(8)*x(12)*x(12)+4.49*x(1)*x(2)*x(2)*x(4)*x(5)+2.61*x(1)*x(3)*x(3)*x(3)*x(8)-4.71*x(1)*x(3)*x(5)*x(8)*x(10)-5.37*x(1)*x(3)*x(10)*x(11)*x(11)+9.07*x(1)*x(4)*x(4)*x(4)*x(5)+6.35*x(1)*x(4)*x(8)*x(8)*x(12)+7.61*x(1)*x(5)*x(6)*x(8)*x(9)+7.98*x(1)*x(7)*x(8)*x(8)*x(12)+0.56*x(1)*x(7)*x(8)*x(9)*x(10)-7.67*x(1)*x(9)*x(9)*x(10)*x(11)+2.5*x(2)*x(2)*x(5)*x(6)*x(9)+7.71*x(2)*x(2)*x(6)*x(7)*x(9)+4.03*x(2)*x(3)*x(5)*x(8)*x(12)+2.87*x(2)*x(3)*x(6)*x(11)*x(12)+2.52*x(2)*x(3)*x(7)*x(8)*x(8)+9.72*x(2)*x(3)*x(8)*x(9)*x(12)+8.53*x(2)*x(4)*x(5)*x(7)*x(8)+6.74*x(2)*x(4)*x(6)*x(8)*x(12)+9.42*x(2)*x(5)*x(6)*x(7)*x(12)+9.3*x(3)*x(3)*x(3)*x(8)*x(9)+6.7*x(3)*x(3)*x(6)*x(6)*x(7)-8.62*x(3)*x(4)*x(5)*x(10)*x(12)+8.78*x(3)*x(4)*x(10)*x(12)*x(12)+8.61*x(3)*x(5)*x(8)*x(8)*x(11)+5.54*x(3)*x(5)*x(9)*x(9)*x(12)+9.85*x(3)*x(6)*x(10)*x(10)*x(10)+6.44*x(3)*x(8)*x(8)*x(8)*x(9)+4.68*x(4)*x(4)*x(4)*x(5)*x(9)+8.54*x(4)*x(7)*x(7)*x(7)*x(8)+2.39*x(4)*x(11)*x(11)*x(11)*x(11)+6.22*x(5)*x(5)*x(5)*x(6)*x(12)+8.72*x(5)*x(5)*x(7)*x(7)*x(10)+8.94*x(5)*x(5)*x(8)*x(9)*x(11)+8.65*x(6)*x(10)*x(10)*x(10)*x(11)+8.81*x(7)*x(8)*x(8)*x(10)*x(12)+6.54*x(8)*x(8)*x(10)*x(11)*x(12)+4.33*x(8)*x(10)*x(10)*x(11)*x(12);
             2.69*x(1)+2.03*x(2)+0.4*x(3)+2.47*x(4)+2.57*x(5)+2.23*x(6)+1.95*x(7)+8.37*x(8)+3.99*x(9)+7.02*x(10)+6.52*x(11)+2.58*x(12)];
cl = [53.93,73.342,96.415,51.309,57.295,109.967,1520.728,10145.684,62.623]';
cu = [53.93,73.342,96.415,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCC';

% Starting Guess
x0 = [0.54,0.77,0.28,0.85,0.12,0.17,0.57,0.53,0.43,0.6,0.4,0.4]';

% Options
opts = struct('probname','inf_nlp_134');
opts.sense = 'min';
