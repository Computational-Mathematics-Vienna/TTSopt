% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-May-2015 23:16:52
% Model: inf_nlp_140

% Objective
fun = @(x)2.11*x(2)-3.16*x(2)*x(11)+4.16*x(11)+6.43*x(3)*x(6)+1.6*x(3)+2.61*x(6)+6.17*x(5)*x(8)+0.55*x(5)+4.73*x(8)+8.06*x(1)*x(1)*x(1)+1.35*x(1)+1.79*x(1)*x(10)*x(11)+5.53*x(10)+3.88*x(1)*x(12)*x(12)-1.59*x(12)+8.67*x(2)*x(2)*x(4)-9.11*x(4)+8.5*x(2)*x(2)*x(10)+7.59*x(2)*x(3)*x(12)+4.43*x(2)*x(4)*x(6)+1.09*x(2)*x(6)*x(6)+1.37*x(2)*x(9)*x(9)+3.44*x(9)+8.47*x(3)*x(5)*x(11)+3.95*x(3)*x(9)*x(11)+9.1*x(4)*x(6)*x(7)+7.82*x(7)+3.69*x(4)*x(7)*x(10)+1.69*x(4)*x(8)*x(9)+5.14*x(4)*x(9)*x(9)+2.44*x(4)*x(9)*x(12)+1.68*x(5)*x(8)*x(12)+9.87*x(5)*x(9)*x(12)+1.33*x(6)*x(11)*x(12)+9.05*x(6)*x(12)*x(12)+7.69*x(9)*x(10)*x(11)+3.2*x(1)*x(1)*x(2)*x(10)+6.54*x(1)*x(1)*x(7)*x(8)+5.36*x(1)*x(1)*x(7)*x(12)+3.32*x(1)*x(2)*x(2)*x(4)+7.94*x(1)*x(2)*x(3)*x(4)+1.73*x(1)*x(2)*x(4)*x(7)+2.99*x(1)*x(2)*x(6)*x(8)+8.91*x(1)*x(3)*x(3)*x(8)+1.09*x(1)*x(3)*x(8)*x(11)+7.37*x(1)*x(3)*x(11)*x(12)+1.49*x(1)*x(4)*x(4)*x(7)+9.13*x(1)*x(4)*x(5)*x(11)+1.45*x(1)*x(4)*x(5)*x(12)+2.21*x(1)*x(4)*x(7)*x(7)+7.54*x(1)*x(4)*x(8)*x(9)+4.94*x(1)*x(5)*x(5)*x(8)+6.76*x(1)*x(5)*x(9)*x(12)+8.33*x(1)*x(6)*x(7)*x(7)+0.22*x(1)*x(7)*x(7)*x(8)+1.75*x(1)*x(7)*x(11)*x(11)+7.24*x(2)*x(2)*x(8)*x(8)+2.41*x(2)*x(2)*x(9)*x(9)+2.67*x(2)*x(2)*x(11)*x(11)+3.79*x(2)*x(3)*x(7)*x(12)+5.28*x(2)*x(3)*x(9)*x(12)+3.32*x(2)*x(4)*x(4)*x(8)+9.93*x(2)*x(4)*x(5)*x(8)+4.84*x(2)*x(4)*x(5)*x(9)+1.45*x(2)*x(4)*x(5)*x(10)+5.84*x(2)*x(4)*x(11)*x(12)+3.01*x(2)*x(5)*x(5)*x(7)+5.09*x(2)*x(5)*x(7)*x(8)+6.7*x(2)*x(5)*x(7)*x(9)+0.75*x(2)*x(6)*x(6)*x(12)-9.28*x(2)*x(7)*x(9)*x(10)+4.36*x(2)*x(7)*x(9)*x(12)+0.82*x(2)*x(7)*x(10)*x(10)+1.09*x(2)*x(8)*x(10)*x(12)+9.05*x(3)*x(3)*x(6)*x(9)+1.43*x(3)*x(3)*x(9)*x(11)+7.22*x(3)*x(4)*x(7)*x(12)+4.72*x(3)*x(4)*x(9)*x(11)+8.42*x(3)*x(4)*x(10)*x(11)+9.8*x(3)*x(6)*x(6)*x(6)+3.87*x(3)*x(6)*x(6)*x(12)+3.1*x(3)*x(7)*x(8)*x(12)+8.4*x(3)*x(9)*x(10)*x(11)+9.52*x(3)*x(10)*x(11)*x(12)+0.53*x(3)*x(11)*x(11)*x(11)+6.33*x(4)*x(4)*x(4)*x(10)+0.25*x(4)*x(4)*x(8)*x(8)+5.43*x(4)*x(4)*x(10)*x(11)+2.21*x(4)*x(5)*x(6)*x(7)+4.42*x(4)*x(6)*x(6)*x(11)+7.07*x(4)*x(6)*x(11)*x(11)+1.51*x(4)*x(7)*x(7)*x(11)+8.95*x(4)*x(7)*x(8)*x(11)-4.88*x(4)*x(10)*x(10)*x(10)+1.69*x(5)*x(6)*x(9)*x(12)-1.58*x(5)*x(6)*x(10)*x(12)+1.75*x(5)*x(6)*x(11)*x(11)-6.44*x(5)*x(7)*x(8)*x(9)+0.7*x(5)*x(8)*x(8)*x(8)+6.19*x(6)*x(6)*x(6)*x(12)+4.81*x(6)*x(7)*x(9)*x(10)+9.15*x(6)*x(7)*x(11)*x(11)+4.89*x(7)*x(7)*x(7)*x(7)-5.82*x(7)*x(8)*x(8)*x(12)-3.99*x(7)*x(9)*x(9)*x(12)+0.64*x(8)*x(8)*x(9)*x(9)+5.78*x(8)*x(8)*x(10)*x(12)+0.26*x(8)*x(9)*x(9)*x(11)+1.57*x(9)*x(12)*x(12)*x(12)-8.66*x(1)*x(1)*x(1)*x(1)*x(9)+8.53*x(1)*x(1)*x(1)*x(2)*x(9)+4.3*x(1)*x(1)*x(1)*x(4)*x(12)+7.21*x(1)*x(1)*x(1)*x(7)*x(9)+9.86*x(1)*x(1)*x(1)*x(9)*x(10)+0.97*x(1)*x(1)*x(2)*x(3)*x(6)+9.6*x(1)*x(1)*x(2)*x(3)*x(7)+5.17*x(1)*x(1)*x(2)*x(4)*x(7)-4.87*x(1)*x(1)*x(2)*x(6)*x(12)+9.02*x(1)*x(1)*x(3)*x(6)*x(12)+2.92*x(1)*x(1)*x(3)*x(12)*x(12)+7.79*x(1)*x(1)*x(4)*x(4)*x(8)+9.53*x(1)*x(1)*x(4)*x(5)*x(12)+8.26*x(1)*x(1)*x(4)*x(7)*x(7)+0.48*x(1)*x(1)*x(5)*x(5)*x(5)+5.23*x(1)*x(1)*x(5)*x(7)*x(8)+2.48*x(1)*x(1)*x(6)*x(9)*x(11)+1.79*x(1)*x(1)*x(7)*x(9)*x(12)+8.65*x(1)*x(1)*x(8)*x(9)*x(12)+1.41*x(1)*x(1)*x(8)*x(10)*x(11)+8.93*x(1)*x(2)*x(3)*x(7)*x(12)+4.32*x(1)*x(2)*x(3)*x(12)*x(12)+0.84*x(1)*x(2)*x(4)*x(4)*x(11)+6.3*x(1)*x(2)*x(4)*x(5)*x(11)-0.68*x(1)*x(2)*x(4)*x(5)*x(12)+2.53*x(1)*x(2)*x(4)*x(10)*x(12)+0.71*x(1)*x(2)*x(5)*x(5)*x(8)+4.33*x(1)*x(2)*x(5)*x(9)*x(11)+2.44*x(1)*x(2)*x(6)*x(8)*x(11)+1.67*x(1)*x(2)*x(6)*x(9)*x(11)+1.52*x(1)*x(2)*x(6)*x(10)*x(12)+9.15*x(1)*x(2)*x(7)*x(8)*x(12)+4.35*x(1)*x(2)*x(10)*x(10)*x(12)+8.41*x(1)*x(3)*x(3)*x(8)*x(12)+1.87*x(1)*x(3)*x(3)*x(12)*x(12)+4.6*x(1)*x(3)*x(4)*x(4)*x(4)+0.78*x(1)*x(3)*x(4)*x(6)*x(7)+9.95*x(1)*x(3)*x(4)*x(8)*x(12)+7.54*x(1)*x(3)*x(4)*x(9)*x(9)+1.96*x(1)*x(3)*x(5)*x(5)*x(5)+5.37*x(1)*x(3)*x(5)*x(7)*x(12)+9.36*x(1)*x(3)*x(6)*x(6)*x(11)+9.7*x(1)*x(3)*x(7)*x(8)*x(10)+3.37*x(1)*x(4)*x(4)*x(6)*x(12)+2.29*x(1)*x(4)*x(4)*x(7)*x(7)+7.2*x(1)*x(4)*x(4)*x(10)*x(11)+9.31*x(1)*x(4)*x(5)*x(5)*x(12)+1.62*x(1)*x(4)*x(5)*x(6)*x(7)+3.82*x(1)*x(4)*x(5)*x(7)*x(12)+9.34*x(1)*x(4)*x(5)*x(8)*x(9)+7.78*x(1)*x(4)*x(6)*x(10)*x(10)+6.08*x(1)*x(4)*x(7)*x(9)*x(12)+4.11*x(1)*x(4)*x(7)*x(10)*x(11)+1.09*x(1)*x(4)*x(8)*x(9)*x(10)+3.91*x(1)*x(4)*x(8)*x(10)*x(11)+4.95*x(1)*x(5)*x(5)*x(7)*x(7)+9.26*x(1)*x(5)*x(5)*x(11)*x(11)+7.53*x(1)*x(5)*x(7)*x(7)*x(8)+7*x(1)*x(6)*x(6)*x(8)*x(10)+3.74*x(1)*x(6)*x(6)*x(8)*x(11)+3.54*x(1)*x(6)*x(9)*x(10)*x(10)+0.14*x(1)*x(7)*x(7)*x(10)*x(11)+6.32*x(1)*x(7)*x(7)*x(12)*x(12)+9.98*x(1)*x(7)*x(8)*x(8)*x(8)+1.99*x(1)*x(7)*x(11)*x(11)*x(12)+9.64*x(1)*x(8)*x(9)*x(10)*x(10)+6.75*x(1)*x(9)*x(10)*x(10)*x(10)+4.2*x(1)*x(10)*x(10)*x(11)*x(11)+9.18*x(2)*x(2)*x(2)*x(2)*x(3)-5.05*x(2)*x(2)*x(2)*x(3)*x(10)+0.7*x(2)*x(2)*x(2)*x(6)*x(9)+7.16*x(2)*x(2)*x(3)*x(4)*x(6)+4.26*x(2)*x(2)*x(3)*x(4)*x(9)+9.11*x(2)*x(2)*x(3)*x(6)*x(6)+6.25*x(2)*x(2)*x(5)*x(6)*x(6)+3.34*x(2)*x(2)*x(6)*x(6)*x(10)+2.24*x(2)*x(2)*x(6)*x(9)*x(10)+9.84*x(2)*x(2)*x(6)*x(10)*x(12)+1.61*x(2)*x(2)*x(6)*x(11)*x(11)+0.65*x(2)*x(2)*x(7)*x(7)*x(7)+1.55*x(2)*x(2)*x(7)*x(9)*x(11)+8.4*x(2)*x(3)*x(3)*x(7)*x(10)-5.72*x(2)*x(3)*x(4)*x(5)*x(6)+6.39*x(2)*x(3)*x(4)*x(7)*x(11)+7.79*x(2)*x(3)*x(4)*x(9)*x(12)+3.2*x(2)*x(3)*x(5)*x(8)*x(12)+5.25*x(2)*x(3)*x(6)*x(7)*x(11)+9.53*x(2)*x(3)*x(6)*x(10)*x(10)+3.82*x(2)*x(3)*x(10)*x(10)*x(10)+0.22*x(2)*x(4)*x(4)*x(6)*x(9)+7.68*x(2)*x(4)*x(4)*x(11)*x(11)+9.12*x(2)*x(4)*x(5)*x(5)*x(8)+5.99*x(2)*x(4)*x(5)*x(7)*x(11)+9.68*x(2)*x(4)*x(5)*x(12)*x(12)+0.77*x(2)*x(4)*x(6)*x(7)*x(9)+9.09*x(2)*x(4)*x(7)*x(7)*x(9)+6.74*x(2)*x(4)*x(8)*x(9)*x(11)+8.8*x(2)*x(4)*x(8)*x(10)*x(10)+8.19*x(2)*x(5)*x(5)*x(5)*x(9)+9.14*x(2)*x(5)*x(5)*x(6)*x(7)-3.34*x(2)*x(5)*x(6)*x(6)*x(8)+0.97*x(2)*x(5)*x(6)*x(9)*x(12)+1.45*x(2)*x(5)*x(7)*x(8)*x(11)+2.05*x(2)*x(5)*x(8)*x(10)*x(10)+2.96*x(2)*x(5)*x(10)*x(10)*x(12)+1.08*x(2)*x(6)*x(6)*x(7)*x(12)+8.07*x(2)*x(6)*x(6)*x(8)*x(12)+7.1*x(2)*x(6)*x(6)*x(9)*x(9)+3.95*x(2)*x(6)*x(7)*x(7)*x(7)+7.13*x(2)*x(6)*x(7)*x(7)*x(9)+5.99*x(2)*x(6)*x(7)*x(8)*x(12)+9.84*x(2)*x(6)*x(9)*x(9)*x(11)+3.36*x(2)*x(6)*x(10)*x(10)*x(10)+8.06*x(2)*x(7)*x(8)*x(8)*x(8)-4.21*x(2)*x(7)*x(8)*x(9)*x(12)+8*x(2)*x(7)*x(8)*x(10)*x(11)+0.76*x(2)*x(8)*x(8)*x(8)*x(12)+7.86*x(2)*x(11)*x(11)*x(11)*x(12)+9.74*x(2)*x(11)*x(12)*x(12)*x(12)+3.8*x(3)*x(3)*x(3)*x(5)*x(7)+8.28*x(3)*x(3)*x(3)*x(8)*x(11)+5.94*x(3)*x(3)*x(3)*x(11)*x(11)+0.75*x(3)*x(3)*x(3)*x(11)*x(12)+2.36*x(3)*x(3)*x(4)*x(9)*x(12)+6.84*x(3)*x(3)*x(5)*x(5)*x(5)+3.72*x(3)*x(3)*x(5)*x(6)*x(10)-5.99*x(3)*x(3)*x(6)*x(6)*x(12)+6.49*x(3)*x(3)*x(7)*x(8)*x(12)+8.78*x(3)*x(3)*x(9)*x(10)*x(10)+7.47*x(3)*x(3)*x(10)*x(10)*x(10)+0.41*x(3)*x(3)*x(11)*x(12)*x(12)+7.57*x(3)*x(4)*x(4)*x(6)*x(10)+6.57*x(3)*x(4)*x(5)*x(8)*x(8)+7.42*x(3)*x(4)*x(7)*x(9)*x(11)+7.15*x(3)*x(4)*x(10)*x(10)*x(10)+2.89*x(3)*x(5)*x(6)*x(7)*x(10)+7.91*x(3)*x(5)*x(6)*x(8)*x(12)+3.13*x(3)*x(5)*x(8)*x(11)*x(12)+5.64*x(3)*x(5)*x(11)*x(11)*x(11)+9.05*x(3)*x(7)*x(7)*x(10)*x(10)+6.95*x(3)*x(7)*x(9)*x(9)*x(11)+5.04*x(3)*x(8)*x(8)*x(10)*x(11)+6.06*x(3)*x(8)*x(11)*x(12)*x(12)+1.7*x(3)*x(9)*x(9)*x(10)*x(10)-1.92*x(3)*x(9)*x(10)*x(12)*x(12)+2.4*x(4)*x(4)*x(4)*x(4)*x(10)-9.97*x(4)*x(4)*x(4)*x(4)*x(12)+1.54*x(4)*x(4)*x(4)*x(5)*x(7)+8.83*x(4)*x(4)*x(4)*x(7)*x(7)+7.28*x(4)*x(4)*x(4)*x(7)*x(9)+7.24*x(4)*x(4)*x(4)*x(9)*x(11)+6.53*x(4)*x(4)*x(4)*x(10)*x(10)+1.56*x(4)*x(4)*x(6)*x(9)*x(11)+5.02*x(4)*x(4)*x(7)*x(7)*x(9)-9.2*x(4)*x(4)*x(7)*x(7)*x(10)+0.36*x(4)*x(4)*x(7)*x(8)*x(11)+8.14*x(4)*x(4)*x(8)*x(8)*x(9)+0.74*x(4)*x(4)*x(10)*x(11)*x(11)-8.08*x(4)*x(5)*x(6)*x(7)*x(10)+7.2*x(4)*x(5)*x(6)*x(9)*x(12)+3.28*x(4)*x(5)*x(7)*x(8)*x(11)+2.25*x(4)*x(5)*x(7)*x(11)*x(12)+2.65*x(4)*x(6)*x(6)*x(8)*x(8)+2.64*x(4)*x(6)*x(7)*x(7)*x(12)+7.17*x(4)*x(6)*x(7)*x(8)*x(12)+9.12*x(4)*x(6)*x(8)*x(8)*x(12)+0.16*x(4)*x(6)*x(8)*x(9)*x(10)+0.96*x(4)*x(6)*x(10)*x(10)*x(10)+0.52*x(4)*x(6)*x(11)*x(11)*x(11)+8.07*x(4)*x(7)*x(8)*x(11)*x(11)+4.45*x(4)*x(7)*x(8)*x(12)*x(12)+8.57*x(4)*x(7)*x(9)*x(9)*x(9)+5.81*x(4)*x(7)*x(9)*x(9)*x(10)+4.53*x(4)*x(8)*x(8)*x(8)*x(9)+0.45*x(4)*x(8)*x(8)*x(9)*x(12)+3.76*x(4)*x(8)*x(9)*x(9)*x(9)+4.91*x(4)*x(8)*x(10)*x(12)*x(12)+0.5*x(4)*x(10)*x(10)*x(10)*x(12)+4.76*x(5)*x(5)*x(5)*x(5)*x(7)+2.67*x(5)*x(5)*x(5)*x(5)*x(9)+2.79*x(5)*x(5)*x(5)*x(6)*x(9)+8.68*x(5)*x(5)*x(6)*x(10)*x(10)+2.6*x(5)*x(5)*x(7)*x(8)*x(9)+1.49*x(5)*x(5)*x(8)*x(8)*x(10)+7.6*x(5)*x(6)*x(6)*x(7)*x(7)+2.79*x(5)*x(6)*x(8)*x(8)*x(8)-x(5)*x(6)*x(8)*x(9)*x(11)+5.01*x(5)*x(6)*x(9)*x(12)*x(12)+6.95*x(5)*x(7)*x(8)*x(9)*x(10)+4.18*x(5)*x(7)*x(8)*x(9)*x(12)+8.16*x(5)*x(7)*x(9)*x(10)*x(11)+1.24*x(5)*x(7)*x(11)*x(11)*x(12)+0.43*x(5)*x(8)*x(8)*x(9)*x(10)+4.7*x(5)*x(8)*x(8)*x(10)*x(10)+9.16*x(5)*x(8)*x(10)*x(10)*x(11)+2.48*x(5)*x(8)*x(10)*x(12)*x(12)+8.45*x(6)*x(6)*x(8)*x(10)*x(10)+5.76*x(6)*x(6)*x(11)*x(11)*x(12)+7.84*x(6)*x(6)*x(11)*x(12)*x(12)-2.52*x(6)*x(7)*x(7)*x(8)*x(11)+7.22*x(6)*x(7)*x(8)*x(9)*x(10)-3.74*x(6)*x(7)*x(9)*x(10)*x(11)+5*x(6)*x(7)*x(10)*x(10)*x(10)+0.06*x(6)*x(10)*x(10)*x(12)*x(12)+0.07*x(7)*x(7)*x(9)*x(11)*x(11)+1.54*x(7)*x(7)*x(10)*x(11)*x(12)+2.76*x(7)*x(8)*x(11)*x(12)*x(12)+8.54*x(8)*x(8)*x(8)*x(8)*x(9)+5.01*x(8)*x(8)*x(8)*x(9)*x(12)+6.44*x(8)*x(8)*x(8)*x(11)*x(12)+5.3*x(8)*x(9)*x(9)*x(9)*x(11)+2.02*x(9)*x(11)*x(11)*x(11)*x(11);

% Bounds
lb = [0.72,0,0.82,0.47,0.8,0.35,0.71,0.51,0.52,0.32,0.21,0.86]';
ub = [2.41,2.76,2.28,2.32,2.69,2.91,2.82,2.13,2.1,2.72,2.43,2.23]';

% Constraints
nlcon = @(x)[1.16*x(3)+5.7*x(6)+9.57*x(7)+7.89*x(8)+4.17*x(9)-3.2*x(11);
             8.69*x(1)+2.35*x(3)+1.41*x(7)+0.97*x(9)+1.26*x(10)-0.96*x(12);
             8.84*x(4)-9.88*x(5)+0.36*x(6)-0.1*x(7)+1.61*x(9)+9.96*x(10);
             9.32*x(1)+3.34*x(2)+5.24*x(3)+6.61*x(4)+1.2*x(5)+1.4*x(6)+8.2*x(7)+8.65*x(8)+0.72*x(9)+1.64*x(10)+6.82*x(11)+0.26*x(12);
             3.61*x(2)*x(11)+1.76*x(2)+6.19*x(11)+8.22*x(3)*x(6)+4.4*x(3)+6.92*x(6)+1.54*x(5)*x(8)+3.96*x(5)+1.21*x(8)+9.17*x(1)+8.35*x(4)+4.09*x(7)+7.72*x(9)+1.7*x(10)+3.6*x(12);
             6.5*x(2)*x(11)-6.98*x(2)-9.55*x(11)+6.54*x(3)*x(6)+0.61*x(3)+3.2*x(6)+1.46*x(5)*x(8)+2.22*x(5)-2.98*x(8)+2.78*x(1)*x(1)*x(1)+8.01*x(1)+3.88*x(1)*x(10)*x(11)+1.74*x(10)+2.63*x(1)*x(12)*x(12)+2.48*x(12)+2.5*x(2)*x(2)*x(4)+1.32*x(4)+8.55*x(2)*x(2)*x(10)+4.48*x(2)*x(3)*x(12)+8.94*x(2)*x(4)*x(6)+1.65*x(2)*x(6)*x(6)+7.14*x(2)*x(9)*x(9)+3.06*x(9)+4.3*x(3)*x(5)*x(11)+7.44*x(3)*x(9)*x(11)-7.59*x(4)*x(6)*x(7)+5.61*x(7)+5.84*x(4)*x(7)*x(10)-1.13*x(4)*x(8)*x(9)+8.46*x(4)*x(9)*x(9)+6.88*x(4)*x(9)*x(12)+5.32*x(5)*x(8)*x(12)+5.78*x(5)*x(9)*x(12)+2.33*x(6)*x(11)*x(12)+8.37*x(6)*x(12)*x(12)+9.37*x(9)*x(10)*x(11);
             3.2*x(2)*x(11)+7.17*x(2)+6.58*x(11)+6.35*x(3)*x(6)+3.86*x(3)+3.07*x(6)+5.68*x(5)*x(8)+8.62*x(5)+4.08*x(8)+6.12*x(1)*x(1)*x(1)+9.68*x(1)+3.94*x(1)*x(10)*x(11)+2.39*x(10)+7.93*x(1)*x(12)*x(12)+2.97*x(12)+7.6*x(2)*x(2)*x(4)+0.88*x(4)+7.55*x(2)*x(2)*x(10)+1.27*x(2)*x(3)*x(12)+0.94*x(2)*x(4)*x(6)+7.62*x(2)*x(6)*x(6)-4.07*x(2)*x(9)*x(9)+2.81*x(9)+8.45*x(3)*x(5)*x(11)-5.38*x(3)*x(9)*x(11)+9.22*x(4)*x(6)*x(7)+5.03*x(7)+8.64*x(4)*x(7)*x(10)+7.16*x(4)*x(8)*x(9)+9.03*x(4)*x(9)*x(9)+8.5*x(4)*x(9)*x(12)+0.21*x(5)*x(8)*x(12)+4.95*x(5)*x(9)*x(12)+5.32*x(6)*x(11)*x(12)+4.81*x(6)*x(12)*x(12)+9.59*x(9)*x(10)*x(11)+9.07*x(1)*x(1)*x(2)*x(10)+7.41*x(1)*x(1)*x(7)*x(8)+7.69*x(1)*x(1)*x(7)*x(12)+1.75*x(1)*x(2)*x(2)*x(4)+6.51*x(1)*x(2)*x(3)*x(4)-8.58*x(1)*x(2)*x(4)*x(7)+0.01*x(1)*x(2)*x(6)*x(8)+4.29*x(1)*x(3)*x(3)*x(8)+0.27*x(1)*x(3)*x(8)*x(11)+8.77*x(1)*x(3)*x(11)*x(12)+7.43*x(1)*x(4)*x(4)*x(7)+2.11*x(1)*x(4)*x(5)*x(11)+1.93*x(1)*x(4)*x(5)*x(12)+7.5*x(1)*x(4)*x(7)*x(7)+4*x(1)*x(4)*x(8)*x(9)+8.47*x(1)*x(5)*x(5)*x(8)+0.41*x(1)*x(5)*x(9)*x(12)+2.92*x(1)*x(6)*x(7)*x(7)+4.13*x(1)*x(7)*x(7)*x(8)-2.13*x(1)*x(7)*x(11)*x(11)+7*x(2)*x(2)*x(8)*x(8)+7.18*x(2)*x(2)*x(9)*x(9)+0.74*x(2)*x(2)*x(11)*x(11)+0.91*x(2)*x(3)*x(7)*x(12)+6.7*x(2)*x(3)*x(9)*x(12)+8.05*x(2)*x(4)*x(4)*x(8)+9.63*x(2)*x(4)*x(5)*x(8)+1.36*x(2)*x(4)*x(5)*x(9)+5.7*x(2)*x(4)*x(5)*x(10)+6.72*x(2)*x(4)*x(11)*x(12)+0.22*x(2)*x(5)*x(5)*x(7)+4.74*x(2)*x(5)*x(7)*x(8)+5.22*x(2)*x(5)*x(7)*x(9)+1.96*x(2)*x(6)*x(6)*x(12)+2.4*x(2)*x(7)*x(9)*x(10)+9.28*x(2)*x(7)*x(9)*x(12)+1.51*x(2)*x(7)*x(10)*x(10)+0.45*x(2)*x(8)*x(10)*x(12)-9.73*x(3)*x(3)*x(6)*x(9)+8.61*x(3)*x(3)*x(9)*x(11)+2.16*x(3)*x(4)*x(7)*x(12)+3.37*x(3)*x(4)*x(9)*x(11)+8.84*x(3)*x(4)*x(10)*x(11)+6.55*x(3)*x(6)*x(6)*x(6)+8.62*x(3)*x(6)*x(6)*x(12)+9.25*x(3)*x(7)*x(8)*x(12)+5.09*x(3)*x(9)*x(10)*x(11)+8.02*x(3)*x(10)*x(11)*x(12)+5.02*x(3)*x(11)*x(11)*x(11)+3.09*x(4)*x(4)*x(4)*x(10)+4.51*x(4)*x(4)*x(8)*x(8)+6.31*x(4)*x(4)*x(10)*x(11)+3.19*x(4)*x(5)*x(6)*x(7)+1.71*x(4)*x(6)*x(6)*x(11)+1.91*x(4)*x(6)*x(11)*x(11)+6.52*x(4)*x(7)*x(7)*x(11)+3.94*x(4)*x(7)*x(8)*x(11)-5.33*x(4)*x(10)*x(10)*x(10)+5.36*x(5)*x(6)*x(9)*x(12)+5.35*x(5)*x(6)*x(10)*x(12)+4.62*x(5)*x(6)*x(11)*x(11)+5.45*x(5)*x(7)*x(8)*x(9)+6.81*x(5)*x(8)*x(8)*x(8)+6.99*x(6)*x(6)*x(6)*x(12)+2.88*x(6)*x(7)*x(9)*x(10)-8.93*x(6)*x(7)*x(11)*x(11)+9.03*x(7)*x(7)*x(7)*x(7)+5.42*x(7)*x(8)*x(8)*x(12)+6.75*x(7)*x(9)*x(9)*x(12)+8.34*x(8)*x(8)*x(9)*x(9)+8.73*x(8)*x(8)*x(10)*x(12)+2.85*x(8)*x(9)*x(9)*x(11)-0.9*x(9)*x(12)*x(12)*x(12);
             1.79*x(2)*x(11)-6.04*x(2)+7.86*x(11)+8.23*x(3)*x(6)+4.46*x(3)+0.12*x(6)+4.87*x(5)*x(8)+9.75*x(5)+3.42*x(8)-3.44*x(1)*x(1)*x(1)+8.59*x(1)-1.85*x(1)*x(10)*x(11)+1.1*x(10)+4.3*x(1)*x(12)*x(12)+8.46*x(12)+9.69*x(2)*x(2)*x(4)+9.18*x(4)-9.36*x(2)*x(2)*x(10)+0.61*x(2)*x(3)*x(12)+6.33*x(2)*x(4)*x(6)+1.97*x(2)*x(6)*x(6)+2.84*x(2)*x(9)*x(9)+6.16*x(9)+5.52*x(3)*x(5)*x(11)+2.43*x(3)*x(9)*x(11)+3.95*x(4)*x(6)*x(7)+9.37*x(7)+6.15*x(4)*x(7)*x(10)+7.58*x(4)*x(8)*x(9)+4.99*x(4)*x(9)*x(9)+8.9*x(4)*x(9)*x(12)+3.55*x(5)*x(8)*x(12)+7.89*x(5)*x(9)*x(12)+0.14*x(6)*x(11)*x(12)+5.86*x(6)*x(12)*x(12)+3.78*x(9)*x(10)*x(11)+0.58*x(1)*x(1)*x(2)*x(10)+3.32*x(1)*x(1)*x(7)*x(8)+0.66*x(1)*x(1)*x(7)*x(12)+8.89*x(1)*x(2)*x(2)*x(4)+1.83*x(1)*x(2)*x(3)*x(4)+1.27*x(1)*x(2)*x(4)*x(7)+3.07*x(1)*x(2)*x(6)*x(8)+9.22*x(1)*x(3)*x(3)*x(8)+5.26*x(1)*x(3)*x(8)*x(11)+0.18*x(1)*x(3)*x(11)*x(12)+0.34*x(1)*x(4)*x(4)*x(7)+4.75*x(1)*x(4)*x(5)*x(11)+3.56*x(1)*x(4)*x(5)*x(12)+0.08*x(1)*x(4)*x(7)*x(7)+6.9*x(1)*x(4)*x(8)*x(9)+2.62*x(1)*x(5)*x(5)*x(8)+6.27*x(1)*x(5)*x(9)*x(12)+5.51*x(1)*x(6)*x(7)*x(7)+0.34*x(1)*x(7)*x(7)*x(8)+0.89*x(1)*x(7)*x(11)*x(11)+3.94*x(2)*x(2)*x(8)*x(8)+2.47*x(2)*x(2)*x(9)*x(9)+3.64*x(2)*x(2)*x(11)*x(11)+8.63*x(2)*x(3)*x(7)*x(12)+8.49*x(2)*x(3)*x(9)*x(12)+1.51*x(2)*x(4)*x(4)*x(8)+3.64*x(2)*x(4)*x(5)*x(8)+2.16*x(2)*x(4)*x(5)*x(9)+9.74*x(2)*x(4)*x(5)*x(10)+7.24*x(2)*x(4)*x(11)*x(12)+5.77*x(2)*x(5)*x(5)*x(7)+7.61*x(2)*x(5)*x(7)*x(8)+8.33*x(2)*x(5)*x(7)*x(9)+3.92*x(2)*x(6)*x(6)*x(12)+5.02*x(2)*x(7)*x(9)*x(10)+9.74*x(2)*x(7)*x(9)*x(12)+4.81*x(2)*x(7)*x(10)*x(10)+7.39*x(2)*x(8)*x(10)*x(12)+3.19*x(3)*x(3)*x(6)*x(9)+6.91*x(3)*x(3)*x(9)*x(11)+4.95*x(3)*x(4)*x(7)*x(12)+3.26*x(3)*x(4)*x(9)*x(11)+2.33*x(3)*x(4)*x(10)*x(11)+2.42*x(3)*x(6)*x(6)*x(6)-1.4*x(3)*x(6)*x(6)*x(12)+1.3*x(3)*x(7)*x(8)*x(12)+4.5*x(3)*x(9)*x(10)*x(11)+2.06*x(3)*x(10)*x(11)*x(12)+1.51*x(3)*x(11)*x(11)*x(11)+6.1*x(4)*x(4)*x(4)*x(10)+7.74*x(4)*x(4)*x(8)*x(8)+7.86*x(4)*x(4)*x(10)*x(11)+1.41*x(4)*x(5)*x(6)*x(7)+4.01*x(4)*x(6)*x(6)*x(11)+8.26*x(4)*x(6)*x(11)*x(11)+8.13*x(4)*x(7)*x(7)*x(11)-6.41*x(4)*x(7)*x(8)*x(11)+6.28*x(4)*x(10)*x(10)*x(10)+8.98*x(5)*x(6)*x(9)*x(12)+3.78*x(5)*x(6)*x(10)*x(12)+7.58*x(5)*x(6)*x(11)*x(11)+8.48*x(5)*x(7)*x(8)*x(9)-4.2*x(5)*x(8)*x(8)*x(8)+0.84*x(6)*x(6)*x(6)*x(12)+4.58*x(6)*x(7)*x(9)*x(10)+6.17*x(6)*x(7)*x(11)*x(11)+0.61*x(7)*x(7)*x(7)*x(7)+9.26*x(7)*x(8)*x(8)*x(12)+4.8*x(7)*x(9)*x(9)*x(12)+6.82*x(8)*x(8)*x(9)*x(9)+4.5*x(8)*x(8)*x(10)*x(12)+7.94*x(8)*x(9)*x(9)*x(11)+8.69*x(9)*x(12)*x(12)*x(12)+7.96*x(1)*x(1)*x(1)*x(1)*x(9)+5.24*x(1)*x(1)*x(1)*x(2)*x(9)+6*x(1)*x(1)*x(1)*x(4)*x(12)+1.35*x(1)*x(1)*x(1)*x(7)*x(9)+1.57*x(1)*x(1)*x(1)*x(9)*x(10)-5.02*x(1)*x(1)*x(2)*x(3)*x(6)+0.37*x(1)*x(1)*x(2)*x(3)*x(7)+0.41*x(1)*x(1)*x(2)*x(4)*x(7)+4.83*x(1)*x(1)*x(2)*x(6)*x(12)+4.81*x(1)*x(1)*x(3)*x(6)*x(12)+9.53*x(1)*x(1)*x(3)*x(12)*x(12)-0.11*x(1)*x(1)*x(4)*x(4)*x(8)+6.92*x(1)*x(1)*x(4)*x(5)*x(12)+6.58*x(1)*x(1)*x(4)*x(7)*x(7)+3.56*x(1)*x(1)*x(5)*x(5)*x(5)+1.67*x(1)*x(1)*x(5)*x(7)*x(8)+2.27*x(1)*x(1)*x(6)*x(9)*x(11)+1.81*x(1)*x(1)*x(7)*x(9)*x(12)+0.46*x(1)*x(1)*x(8)*x(9)*x(12)+9.87*x(1)*x(1)*x(8)*x(10)*x(11)+9.95*x(1)*x(2)*x(3)*x(7)*x(12)+6.18*x(1)*x(2)*x(3)*x(12)*x(12)+8.65*x(1)*x(2)*x(4)*x(4)*x(11)+5.91*x(1)*x(2)*x(4)*x(5)*x(11)-9.31*x(1)*x(2)*x(4)*x(5)*x(12)-0.57*x(1)*x(2)*x(4)*x(10)*x(12)+5.77*x(1)*x(2)*x(5)*x(5)*x(8)+6.52*x(1)*x(2)*x(5)*x(9)*x(11)+1.92*x(1)*x(2)*x(6)*x(8)*x(11)+8.27*x(1)*x(2)*x(6)*x(9)*x(11)+3.75*x(1)*x(2)*x(6)*x(10)*x(12)+9.31*x(1)*x(2)*x(7)*x(8)*x(12)+9.75*x(1)*x(2)*x(10)*x(10)*x(12)+8.46*x(1)*x(3)*x(3)*x(8)*x(12)+0.05*x(1)*x(3)*x(3)*x(12)*x(12)+4.35*x(1)*x(3)*x(4)*x(4)*x(4)+9.52*x(1)*x(3)*x(4)*x(6)*x(7)+5.97*x(1)*x(3)*x(4)*x(8)*x(12)+5.22*x(1)*x(3)*x(4)*x(9)*x(9)+2.06*x(1)*x(3)*x(5)*x(5)*x(5)+3.43*x(1)*x(3)*x(5)*x(7)*x(12)+7.19*x(1)*x(3)*x(6)*x(6)*x(11)+6.7*x(1)*x(3)*x(7)*x(8)*x(10)+7.27*x(1)*x(4)*x(4)*x(6)*x(12)+6.05*x(1)*x(4)*x(4)*x(7)*x(7)+2.37*x(1)*x(4)*x(4)*x(10)*x(11)+8.85*x(1)*x(4)*x(5)*x(5)*x(12)+9.61*x(1)*x(4)*x(5)*x(6)*x(7)+7.48*x(1)*x(4)*x(5)*x(7)*x(12)+4.03*x(1)*x(4)*x(5)*x(8)*x(9)+9.25*x(1)*x(4)*x(6)*x(10)*x(10)+0.07*x(1)*x(4)*x(7)*x(9)*x(12)+2.77*x(1)*x(4)*x(7)*x(10)*x(11)+1.73*x(1)*x(4)*x(8)*x(9)*x(10)+1.2*x(1)*x(4)*x(8)*x(10)*x(11)+3.9*x(1)*x(5)*x(5)*x(7)*x(7)+7.57*x(1)*x(5)*x(5)*x(11)*x(11)+3.04*x(1)*x(5)*x(7)*x(7)*x(8)+2.56*x(1)*x(6)*x(6)*x(8)*x(10)+9.67*x(1)*x(6)*x(6)*x(8)*x(11)+0.06*x(1)*x(6)*x(9)*x(10)*x(10)+0.76*x(1)*x(7)*x(7)*x(10)*x(11)+0.76*x(1)*x(7)*x(7)*x(12)*x(12)+4.65*x(1)*x(7)*x(8)*x(8)*x(8)-9.13*x(1)*x(7)*x(11)*x(11)*x(12)+6.39*x(1)*x(8)*x(9)*x(10)*x(10)+4.1*x(1)*x(9)*x(10)*x(10)*x(10)+6.37*x(1)*x(10)*x(10)*x(11)*x(11)+8.74*x(2)*x(2)*x(2)*x(2)*x(3)+9.87*x(2)*x(2)*x(2)*x(3)*x(10)-9.27*x(2)*x(2)*x(2)*x(6)*x(9)+0.54*x(2)*x(2)*x(3)*x(4)*x(6)+8.65*x(2)*x(2)*x(3)*x(4)*x(9)+5.54*x(2)*x(2)*x(3)*x(6)*x(6)-5.18*x(2)*x(2)*x(5)*x(6)*x(6)+5.09*x(2)*x(2)*x(6)*x(6)*x(10)+1.28*x(2)*x(2)*x(6)*x(9)*x(10)+4.39*x(2)*x(2)*x(6)*x(10)*x(12)+2.94*x(2)*x(2)*x(6)*x(11)*x(11)+0.55*x(2)*x(2)*x(7)*x(7)*x(7)+4.9*x(2)*x(2)*x(7)*x(9)*x(11)-2.52*x(2)*x(3)*x(3)*x(7)*x(10)+2.2*x(2)*x(3)*x(4)*x(5)*x(6)+6.64*x(2)*x(3)*x(4)*x(7)*x(11)+3.05*x(2)*x(3)*x(4)*x(9)*x(12)+5.86*x(2)*x(3)*x(5)*x(8)*x(12)+3.68*x(2)*x(3)*x(6)*x(7)*x(11)+5.14*x(2)*x(3)*x(6)*x(10)*x(10)+0.19*x(2)*x(3)*x(10)*x(10)*x(10)-1.17*x(2)*x(4)*x(4)*x(6)*x(9)+7.93*x(2)*x(4)*x(4)*x(11)*x(11)+8.96*x(2)*x(4)*x(5)*x(5)*x(8)+3.6*x(2)*x(4)*x(5)*x(7)*x(11)+3.25*x(2)*x(4)*x(5)*x(12)*x(12)+0.4*x(2)*x(4)*x(6)*x(7)*x(9)+7.53*x(2)*x(4)*x(7)*x(7)*x(9)-1.59*x(2)*x(4)*x(8)*x(9)*x(11)+8.42*x(2)*x(4)*x(8)*x(10)*x(10)+2.72*x(2)*x(5)*x(5)*x(5)*x(9)+8.36*x(2)*x(5)*x(5)*x(6)*x(7)+7.87*x(2)*x(5)*x(6)*x(6)*x(8)+4.24*x(2)*x(5)*x(6)*x(9)*x(12)+0.22*x(2)*x(5)*x(7)*x(8)*x(11)+4.93*x(2)*x(5)*x(8)*x(10)*x(10)+2.23*x(2)*x(5)*x(10)*x(10)*x(12)-5.49*x(2)*x(6)*x(6)*x(7)*x(12)+5.76*x(2)*x(6)*x(6)*x(8)*x(12)+0.78*x(2)*x(6)*x(6)*x(9)*x(9)+7.47*x(2)*x(6)*x(7)*x(7)*x(7)+6.42*x(2)*x(6)*x(7)*x(7)*x(9)+9.74*x(2)*x(6)*x(7)*x(8)*x(12)+9.83*x(2)*x(6)*x(9)*x(9)*x(11)+2.52*x(2)*x(6)*x(10)*x(10)*x(10)+9.18*x(2)*x(7)*x(8)*x(8)*x(8)+6.37*x(2)*x(7)*x(8)*x(9)*x(12)+3.04*x(2)*x(7)*x(8)*x(10)*x(11)+1.92*x(2)*x(8)*x(8)*x(8)*x(12)+8.6*x(2)*x(11)*x(11)*x(11)*x(12)+6.26*x(2)*x(11)*x(12)*x(12)*x(12)+1.21*x(3)*x(3)*x(3)*x(5)*x(7)+1.41*x(3)*x(3)*x(3)*x(8)*x(11)+3.11*x(3)*x(3)*x(3)*x(11)*x(11)+5.18*x(3)*x(3)*x(3)*x(11)*x(12)+4.1*x(3)*x(3)*x(4)*x(9)*x(12)+9.9*x(3)*x(3)*x(5)*x(5)*x(5)+2.01*x(3)*x(3)*x(5)*x(6)*x(10)-9.09*x(3)*x(3)*x(6)*x(6)*x(12)+5.79*x(3)*x(3)*x(7)*x(8)*x(12)+7.61*x(3)*x(3)*x(9)*x(10)*x(10)+8.95*x(3)*x(3)*x(10)*x(10)*x(10)+5.45*x(3)*x(3)*x(11)*x(12)*x(12)-6.28*x(3)*x(4)*x(4)*x(6)*x(10)+0.5*x(3)*x(4)*x(5)*x(8)*x(8)+1.6*x(3)*x(4)*x(7)*x(9)*x(11)+0.73*x(3)*x(4)*x(10)*x(10)*x(10)+9.32*x(3)*x(5)*x(6)*x(7)*x(10)+0.9*x(3)*x(5)*x(6)*x(8)*x(12)+7.69*x(3)*x(5)*x(8)*x(11)*x(12)+4.25*x(3)*x(5)*x(11)*x(11)*x(11)+6.54*x(3)*x(7)*x(7)*x(10)*x(10)+4.47*x(3)*x(7)*x(9)*x(9)*x(11)+7.22*x(3)*x(8)*x(8)*x(10)*x(11)+8.17*x(3)*x(8)*x(11)*x(12)*x(12)-7.78*x(3)*x(9)*x(9)*x(10)*x(10)+3.33*x(3)*x(9)*x(10)*x(12)*x(12)-0.91*x(4)*x(4)*x(4)*x(4)*x(10)-3.8*x(4)*x(4)*x(4)*x(4)*x(12)+7.72*x(4)*x(4)*x(4)*x(5)*x(7)+5.47*x(4)*x(4)*x(4)*x(7)*x(7)+4.96*x(4)*x(4)*x(4)*x(7)*x(9)+4.12*x(4)*x(4)*x(4)*x(9)*x(11)+8.68*x(4)*x(4)*x(4)*x(10)*x(10)-0.46*x(4)*x(4)*x(6)*x(9)*x(11)+1.99*x(4)*x(4)*x(7)*x(7)*x(9)+2.62*x(4)*x(4)*x(7)*x(7)*x(10)+9.78*x(4)*x(4)*x(7)*x(8)*x(11)-1.32*x(4)*x(4)*x(8)*x(8)*x(9)+8.31*x(4)*x(4)*x(10)*x(11)*x(11)+8.26*x(4)*x(5)*x(6)*x(7)*x(10)+2.26*x(4)*x(5)*x(6)*x(9)*x(12)+2.69*x(4)*x(5)*x(7)*x(8)*x(11)+7.36*x(4)*x(5)*x(7)*x(11)*x(12)+6.84*x(4)*x(6)*x(6)*x(8)*x(8)+1.08*x(4)*x(6)*x(7)*x(7)*x(12)+5.25*x(4)*x(6)*x(7)*x(8)*x(12)+9.47*x(4)*x(6)*x(8)*x(8)*x(12)+8.49*x(4)*x(6)*x(8)*x(9)*x(10)+2.78*x(4)*x(6)*x(10)*x(10)*x(10)+6.41*x(4)*x(6)*x(11)*x(11)*x(11)+7.79*x(4)*x(7)*x(8)*x(11)*x(11)+1.46*x(4)*x(7)*x(8)*x(12)*x(12)-9.58*x(4)*x(7)*x(9)*x(9)*x(9)+7.16*x(4)*x(7)*x(9)*x(9)*x(10)+0.57*x(4)*x(8)*x(8)*x(8)*x(9)+2.18*x(4)*x(8)*x(8)*x(9)*x(12)+9.73*x(4)*x(8)*x(9)*x(9)*x(9)+5.3*x(4)*x(8)*x(10)*x(12)*x(12)+9.61*x(4)*x(10)*x(10)*x(10)*x(12)+1.54*x(5)*x(5)*x(5)*x(5)*x(7)+4.13*x(5)*x(5)*x(5)*x(5)*x(9)+4.83*x(5)*x(5)*x(5)*x(6)*x(9)+4.96*x(5)*x(5)*x(6)*x(10)*x(10)+7.44*x(5)*x(5)*x(7)*x(8)*x(9)+9.15*x(5)*x(5)*x(8)*x(8)*x(10)+1.6*x(5)*x(6)*x(6)*x(7)*x(7)-5.96*x(5)*x(6)*x(8)*x(8)*x(8)+3.53*x(5)*x(6)*x(8)*x(9)*x(11)+5.73*x(5)*x(6)*x(9)*x(12)*x(12)-5.24*x(5)*x(7)*x(8)*x(9)*x(10)+8.41*x(5)*x(7)*x(8)*x(9)*x(12)+4.33*x(5)*x(7)*x(9)*x(10)*x(11)-4.78*x(5)*x(7)*x(11)*x(11)*x(12)+7.31*x(5)*x(8)*x(8)*x(9)*x(10)+8.06*x(5)*x(8)*x(8)*x(10)*x(10)+6.45*x(5)*x(8)*x(10)*x(10)*x(11)+8.72*x(5)*x(8)*x(10)*x(12)*x(12)+5.74*x(6)*x(6)*x(8)*x(10)*x(10)+0.36*x(6)*x(6)*x(11)*x(11)*x(12)+6.16*x(6)*x(6)*x(11)*x(12)*x(12)+9.39*x(6)*x(7)*x(7)*x(8)*x(11)+5.48*x(6)*x(7)*x(8)*x(9)*x(10)+6.43*x(6)*x(7)*x(9)*x(10)*x(11)+3.17*x(6)*x(7)*x(10)*x(10)*x(10)+2.11*x(6)*x(10)*x(10)*x(12)*x(12)+5.39*x(7)*x(7)*x(9)*x(11)*x(11)+5.24*x(7)*x(7)*x(10)*x(11)*x(12)+0.68*x(7)*x(8)*x(11)*x(12)*x(12)+6.02*x(8)*x(8)*x(8)*x(8)*x(9)+1.44*x(8)*x(8)*x(8)*x(9)*x(12)+2.16*x(8)*x(8)*x(8)*x(11)*x(12)+1.65*x(8)*x(9)*x(9)*x(9)*x(11)-0.75*x(9)*x(11)*x(11)*x(11)*x(11);
             6.11*x(1)+3.63*x(2)-1.38*x(3)+9.18*x(4)+4.05*x(5)+8.17*x(6)+6.24*x(7)+6.64*x(8)-4*x(9)+3.58*x(10)+8.73*x(11)-6.17*x(12)];
cl = [39.634,21.434,12.75,79.645,133.964,772.254,6560.025,47730.635,67.594]';
cu = [39.634,21.434,12.75,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCC';

% Starting Guess
x0 = [0.72,NaN,0.82,0.47,0.8,0.35,0.71,0.51,0.52,0.32,0.21,0.86]';

% Options
opts = struct('probname','inf_nlp_140');
opts.sense = 'min';
