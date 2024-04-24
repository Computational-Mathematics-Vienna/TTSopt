% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 04:58:07
% Model: methanl8

% Objective
fun = @(x)(0.01*(0.000826446280991736*x(25)*x(2)*exp(18.5751-3632.649/(239.2+x(1)))-x(5)*(693.37+x(25))+693.37*x(2)))^2+(0.000869565217391304*exp(18.5751-3632.649/(239.2+x(19)))*x(20)-x(23))^2+(0.01*(-0.000826446280991736*x(25)*x(2)*exp(18.5751-3632.649/(239.2+x(1)))-x(8)*(693.37+x(26))+x(5)*(693.37+x(25))+0.000833333333333333*x(26)*x(5)*exp(18.5751-3632.649/(239.2+x(4)))))^2+(-4.5125+0.01*(-0.000833333333333333*x(26)*x(5)*exp(18.5751-3632.649/(239.2+x(4)))-x(11)*(-442.13+x(27))+x(8)*(693.37+x(26))+0.000840336134453782*x(27)*x(8)*exp(18.5751-3632.649/(239.2+x(7)))))^2+(0.01*(-0.000840336134453782*x(27)*x(8)*exp(18.5751-3632.649/(239.2+x(7)))-x(14)*(-442.13+x(28))+x(11)*(-442.13+x(27))+0.000847457627118644*x(28)*x(11)*exp(18.5751-3632.649/(239.2+x(10)))))^2+(0.01*(-0.000847457627118644*x(28)*x(11)*exp(18.5751-3632.649/(239.2+x(10)))-x(17)*(-442.13+x(29))+x(14)*(-442.13+x(28))+0.000854700854700855*x(29)*x(14)*exp(18.5751-3632.649/(239.2+x(13)))))^2+(0.01*(-0.000854700854700855*x(29)*x(14)*exp(18.5751-3632.649/(239.2+x(13)))-x(20)*(-442.13+x(30))+x(17)*(-442.13+x(29))+0.000862068965517241*x(30)*x(17)*exp(18.5751-3632.649/(239.2+x(16)))))^2+(0.01*(-0.000862068965517241*x(30)*x(17)*exp(18.5751-3632.649/(239.2+x(16)))-x(23)*(-442.13+x(31))+x(20)*(-442.13+x(30))+0.000869565217391304*x(31)*x(20)*exp(18.5751-3632.649/(239.2+x(19)))))^2+(0.01*(0.000826446280991736*x(25)*x(3)*exp(18.3443-3841.2203/(228+x(1)))-x(6)*(693.37+x(25))+693.37*x(3)))^2+(0.000869565217391304*exp(18.3443-3841.2203/(228+x(19)))*x(21)-x(24))^2+(0.01*(-0.000826446280991736*x(25)*x(3)*exp(18.3443-3841.2203/(228+x(1)))-x(9)*(693.37+x(26))+x(6)*(693.37+x(25))+0.000833333333333333*x(26)*x(6)*exp(18.3443-3841.2203/(228+x(4)))))^2+(-6.8425+0.01*(-0.000833333333333333*x(26)*x(6)*exp(18.3443-3841.2203/(228+x(4)))-x(12)*(-442.13+x(27))+x(9)*(693.37+x(26))+0.000840336134453782*x(27)*x(9)*exp(18.3443-3841.2203/(228+x(7)))))^2+(0.01*(-0.000840336134453782*x(27)*x(9)*exp(18.3443-3841.2203/(228+x(7)))-x(15)*(-442.13+x(28))+x(12)*(-442.13+x(27))+0.000847457627118644*x(28)*x(12)*exp(18.3443-3841.2203/(228+x(10)))))^2+(0.01*(-0.000847457627118644*x(28)*x(12)*exp(18.3443-3841.2203/(228+x(10)))-x(18)*(-442.13+x(29))+x(15)*(-442.13+x(28))+0.000854700854700855*x(29)*x(15)*exp(18.3443-3841.2203/(228+x(13)))))^2+(0.01*(-0.000854700854700855*x(29)*x(15)*exp(18.3443-3841.2203/(228+x(13)))-x(21)*(-442.13+x(30))+x(18)*(-442.13+x(29))+0.000862068965517241*x(30)*x(18)*exp(18.3443-3841.2203/(228+x(16)))))^2+(0.01*(-0.000862068965517241*x(30)*x(18)*exp(18.3443-3841.2203/(228+x(16)))-x(24)*(-442.13+x(31))+x(21)*(-442.13+x(30))+0.000869565217391304*x(31)*x(21)*exp(18.3443-3841.2203/(228+x(19)))))^2+(-1+0.000826446280991736*exp(18.5751-3632.649/(239.2+x(1)))*x(2)+0.000826446280991736*exp(18.3443-3841.2203/(228+x(1)))*x(3))^2+(-1+0.000833333333333333*exp(18.5751-3632.649/(239.2+x(4)))*x(5)+0.000833333333333333*exp(18.3443-3841.2203/(228+x(4)))*x(6))^2+(-1+0.000840336134453782*exp(18.5751-3632.649/(239.2+x(7)))*x(8)+0.000840336134453782*exp(18.3443-3841.2203/(228+x(7)))*x(9))^2+(-1+0.000847457627118644*exp(18.5751-3632.649/(239.2+x(10)))*x(11)+0.000847457627118644*exp(18.3443-3841.2203/(228+x(10)))*x(12))^2+(-1+0.000854700854700855*exp(18.5751-3632.649/(239.2+x(13)))*x(14)+0.000854700854700855*exp(18.3443-3841.2203/(228+x(13)))*x(15))^2+(-1+0.000862068965517241*exp(18.5751-3632.649/(239.2+x(16)))*x(17)+0.000862068965517241*exp(18.3443-3841.2203/(228+x(16)))*x(18))^2+(-1+0.000869565217391304*exp(18.5751-3632.649/(239.2+x(19)))*x(20)+0.000869565217391304*exp(18.3443-3841.2203/(228+x(19)))*x(21))^2+(-1+0.00087719298245614*exp(18.5751-3632.649/(239.2+x(22)))*x(23)+0.00087719298245614*exp(18.3443-3841.2203/(228+x(22)))*x(24))^2+(-83.862+1e-5*(0.000826446280991736*x(25)*x(2)*exp(18.5751-3632.649/(239.2+x(1)))*(9566.67+0.0422*x(1)*x(1)-1.59*x(1))+693.37*(0.0422*x(1)*x(1)+15.97*x(1))*x(2)-x(5)*(693.37+x(25))*(0.0422*x(4)*x(4)+15.97*x(4))+0.000826446280991736*x(25)*x(3)*exp(18.3443-3841.2203/(228+x(1)))*(10834.67+8.74*x(1))+12549.997*x(3)*x(1)-18.1*x(6)*(693.37+x(25))*x(4)))^2+(1e-5*(0.000833333333333333*x(26)*x(5)*exp(18.5751-3632.649/(239.2+x(4)))*(9566.67+0.0422*x(4)*x(4)-1.59*x(4))+x(5)*(693.37+x(25))*(0.0422*x(4)*x(4)+15.97*x(4))-0.000826446280991736*x(25)*x(2)*exp(18.5751-3632.649/(239.2+x(1)))*(9566.67+0.0422*x(1)*x(1)-1.59*x(1))-x(8)*(693.37+x(26))*(0.0422*x(7)*x(7)+15.97*x(7))+0.000833333333333333*x(26)*x(6)*exp(18.3443-3841.2203/(228+x(4)))*(10834.67+8.74*x(4))+18.1*x(6)*(693.37+x(25))*x(4)-0.000826446280991736*x(25)*x(3)*exp(18.3443-3841.2203/(228+x(1)))*(10834.67+8.74*x(1))-18.1*x(9)*(693.37+x(26))*x(7)))^2+(-18.9447111025+1e-5*(0.000840336134453782*x(27)*x(8)*exp(18.5751-3632.649/(239.2+x(7)))*(9566.67+0.0422*x(7)*x(7)-1.59*x(7))+x(8)*(693.37+x(26))*(0.0422*x(7)*x(7)+15.97*x(7))-0.000833333333333333*x(26)*x(5)*exp(18.5751-3632.649/(239.2+x(4)))*(9566.67+0.0422*x(4)*x(4)-1.59*x(4))-x(11)*(-442.13+x(27))*(0.0422*x(10)*x(10)+15.97*x(10))+0.000840336134453782*x(27)*x(9)*exp(18.3443-3841.2203/(228+x(7)))*(10834.67+8.74*x(7))+18.1*x(9)*(693.37+x(26))*x(7)-0.000833333333333333*x(26)*x(6)*exp(18.3443-3841.2203/(228+x(4)))*(10834.67+8.74*x(4))-18.1*x(12)*(-442.13+x(27))*x(10)))^2+(1e-5*(0.000847457627118644*x(28)*x(11)*exp(18.5751-3632.649/(239.2+x(10)))*(9566.67+0.0422*x(10)*x(10)-1.59*x(10))+x(11)*(-442.13+x(27))*(0.0422*x(10)*x(10)+15.97*x(10))-0.000840336134453782*x(27)*x(8)*exp(18.5751-3632.649/(239.2+x(7)))*(9566.67+0.0422*x(7)*x(7)-1.59*x(7))-x(14)*(-442.13+x(28))*(0.0422*x(13)*x(13)+15.97*x(13))+0.000847457627118644*x(28)*x(12)*exp(18.3443-3841.2203/(228+x(10)))*(10834.67+8.74*x(10))+18.1*x(12)*(-442.13+x(27))*x(10)-0.000840336134453782*x(27)*x(9)*exp(18.3443-3841.2203/(228+x(7)))*(10834.67+8.74*x(7))-18.1*x(15)*(-442.13+x(28))*x(13)))^2+(1e-5*(0.000854700854700855*x(29)*x(14)*exp(18.5751-3632.649/(239.2+x(13)))*(9566.67+0.0422*x(13)*x(13)-1.59*x(13))+x(14)*(-442.13+x(28))*(0.0422*x(13)*x(13)+15.97*x(13))-0.000847457627118644*x(28)*x(11)*exp(18.5751-3632.649/(239.2+x(10)))*(9566.67+0.0422*x(10)*x(10)-1.59*x(10))-x(17)*(-442.13+x(29))*(0.0422*x(16)*x(16)+15.97*x(16))+0.000854700854700855*x(29)*x(15)*exp(18.3443-3841.2203/(228+x(13)))*(10834.67+8.74*x(13))+18.1*x(15)*(-442.13+x(28))*x(13)-0.000847457627118644*x(28)*x(12)*exp(18.3443-3841.2203/(228+x(10)))*(10834.67+8.74*x(10))-18.1*x(18)*(-442.13+x(29))*x(16)))^2+(1e-5*(0.000862068965517241*x(30)*x(17)*exp(18.5751-3632.649/(239.2+x(16)))*(9566.67+0.0422*x(16)*x(16)-1.59*x(16))+x(17)*(-442.13+x(29))*(0.0422*x(16)*x(16)+15.97*x(16))-0.000854700854700855*x(29)*x(14)*exp(18.5751-3632.649/(239.2+x(13)))*(9566.67+0.0422*x(13)*x(13)-1.59*x(13))-x(20)*(-442.13+x(30))*(0.0422*x(19)*x(19)+15.97*x(19))+0.000862068965517241*x(30)*x(18)*exp(18.3443-3841.2203/(228+x(16)))*(10834.67+8.74*x(16))+18.1*x(18)*(-442.13+x(29))*x(16)-0.000854700854700855*x(29)*x(15)*exp(18.3443-3841.2203/(228+x(13)))*(10834.67+8.74*x(13))-18.1*x(21)*(-442.13+x(30))*x(19)))^2+(1e-5*(0.000869565217391304*x(31)*x(20)*exp(18.5751-3632.649/(239.2+x(19)))*(9566.67+0.0422*x(19)*x(19)-1.59*x(19))+x(20)*(-442.13+x(30))*(0.0422*x(19)*x(19)+15.97*x(19))-0.000862068965517241*x(30)*x(17)*exp(18.5751-3632.649/(239.2+x(16)))*(9566.67+0.0422*x(16)*x(16)-1.59*x(16))-x(23)*(-442.13+x(31))*(0.0422*x(22)*x(22)+15.97*x(22))+0.000869565217391304*x(31)*x(21)*exp(18.3443-3841.2203/(228+x(19)))*(10834.67+8.74*x(19))+18.1*x(21)*(-442.13+x(30))*x(19)-0.000862068965517241*x(30)*x(18)*exp(18.3443-3841.2203/(228+x(16)))*(10834.67+8.74*x(16))-18.1*x(24)*(-442.13+x(31))*x(22)))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','methanl8');
opts.sense = 'min';
