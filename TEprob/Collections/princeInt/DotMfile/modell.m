% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 12:41:33
% Model: modell

% Objective
fun = @(x)3180*x(1)+3360*x(90)+690*x(446)+510*x(559)+4170*x(624)+4620*x(713)+810*x(915)+1020*x(1098)+720*x(1113)+7395*x(1158)+1230*x(1281)+4935*x(1336)+1140*x(1365)+1050*x(1380)+2400*x(1474);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [1,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,10,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,10,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,10,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,1,1,1,1]';

% Constraints
nlcon = @(x)[-x(1113)+x(1820);
             -x(559)+x(1821);
             -x(1281)+x(1821);
             -x(1380)+x(1822);
             -x(915)+x(1823);
             -x(624)+x(1824);
             -x(1474)+x(1825);
             -x(713)+x(1826);
             -x(91)+x(1824)+x(1826);
             -x(1098)+x(1828);
             -x(1158)+x(1829);
             -x(1)+x(1830);
             -x(1365)+x(1831);
             -x(447)+x(1829)+x(1831);
             x(1820)+x(1821)+x(1822)+x(1823);
             x(1824)+x(1825)+x(1826)+x(1827);
             x(1828)+x(1829)+x(1830)+x(1831);
             -2400*x(1820)+5800*x(1821);
             -2400*x(1820)+3500*x(1822);
             -2400*x(1820)+2700*x(1823);
             -5800*x(1821)+3500*x(1822);
             -5800*x(1821)+2700*x(1823);
             -3500*x(1822)+2700*x(1823);
             -2700*x(1824)+8000*x(1825);
             -2700*x(1824)+4200*x(1826);
             -8000*x(1825)+4200*x(1826);
             -3400*x(1828)+22350*x(1829);
             -3400*x(1828)+10600*x(1830);
             -3400*x(1828)+1500*x(1831);
             -22350*x(1829)+10600*x(1830);
             -22350*x(1829)+1500*x(1831);
             -10600*x(1830)+1500*x(1831);
             -x(1)+x(2)+x(3)+x(4)-x(7)+x(8)-x(96)+x(97)-x(185)+x(186)-x(274)+x(275)-x(363)+x(364)-x(452)+x(453)-x(541)+x(542)-x(630)+x(631)-x(719)+x(720)-x(808)+x(809)-x(897)+x(898)-x(986)+x(987)-x(1075)+x(1076)-x(1164)+x(1165)-x(1253)+x(1254)-x(1342)+x(1343)-x(1431)+x(1432)-x(1514);
             -x(12)+x(13)-x(90)+x(91)+x(92)+x(93)-x(101)+x(102)-x(190)+x(191)-x(279)+x(280)-x(368)+x(369)-x(457)+x(458)-x(546)+x(547)-x(635)+x(636)-x(724)+x(725)-x(813)+x(814)-x(902)+x(903)-x(991)+x(992)-x(1080)+x(1081)-x(1169)+x(1170)-x(1258)+x(1259)-x(1347)+x(1348)-x(1436)+x(1437)-x(1532);
             -x(17)+x(18)-x(106)+x(107)-x(179)+x(180)+x(181)+x(182)-x(195)+x(196)-x(284)+x(285)-x(373)+x(374)-x(462)+x(463)-x(551)+x(552)-x(640)+x(641)-x(729)+x(730)-x(818)+x(819)-x(907)+x(908)-x(996)+x(997)-x(1085)+x(1086)-x(1174)+x(1175)-x(1263)+x(1264)-x(1352)+x(1353)-x(1441)+x(1442)-x(1550);
             -x(22)+x(23)-x(111)+x(112)-x(200)+x(201)-x(268)+x(269)+x(270)+x(271)-x(289)+x(290)-x(378)+x(379)-x(467)+x(468)-x(556)+x(557)-x(645)+x(646)-x(734)+x(735)-x(823)+x(824)-x(912)+x(913)-x(1001)+x(1002)-x(1090)+x(1091)-x(1179)+x(1180)-x(1268)+x(1269)-x(1357)+x(1358)-x(1446)+x(1447)-x(1568);
             -x(27)+x(28)-x(116)+x(117)-x(205)+x(206)-x(294)+x(295)-x(357)+x(358)+x(359)+x(360)-x(383)+x(384)-x(472)+x(473)-x(561)+x(562)-x(650)+x(651)-x(739)+x(740)-x(828)+x(829)-x(917)+x(918)-x(1006)+x(1007)-x(1095)+x(1096)-x(1184)+x(1185)-x(1273)+x(1274)-x(1362)+x(1363)-x(1451)+x(1452)-x(1586);
             -x(32)+x(33)-x(121)+x(122)-x(210)+x(211)-x(299)+x(300)-x(388)+x(389)-x(446)+x(447)+x(448)+x(449)-x(477)+x(478)-x(566)+x(567)-x(655)+x(656)-x(744)+x(745)-x(833)+x(834)-x(922)+x(923)-x(1011)+x(1012)-x(1100)+x(1101)-x(1189)+x(1190)-x(1278)+x(1279)-x(1367)+x(1368)-x(1456)+x(1457)-x(1604);
             -x(37)+x(38)-x(126)+x(127)-x(215)+x(216)-x(304)+x(305)-x(393)+x(394)-x(482)+x(483)-x(535)+x(536)+x(537)+x(538)-x(571)+x(572)-x(660)+x(661)-x(749)+x(750)-x(838)+x(839)-x(927)+x(928)-x(1016)+x(1017)-x(1105)+x(1106)-x(1194)+x(1195)-x(1283)+x(1284)-x(1372)+x(1373)-x(1461)+x(1462)-x(1622);
             -x(42)+x(43)-x(131)+x(132)-x(220)+x(221)-x(309)+x(310)-x(398)+x(399)-x(487)+x(488)-x(576)+x(577)-x(624)+x(625)+x(626)+x(627)-x(665)+x(666)-x(754)+x(755)-x(843)+x(844)-x(932)+x(933)-x(1021)+x(1022)-x(1110)+x(1111)-x(1199)+x(1200)-x(1288)+x(1289)-x(1377)+x(1378)-x(1466)+x(1467)-x(1640);
             -x(47)+x(48)-x(136)+x(137)-x(225)+x(226)-x(314)+x(315)-x(403)+x(404)-x(492)+x(493)-x(581)+x(582)-x(670)+x(671)-x(713)+x(714)+x(715)+x(716)-x(759)+x(760)-x(848)+x(849)-x(937)+x(938)-x(1026)+x(1027)-x(1115)+x(1116)-x(1204)+x(1205)-x(1293)+x(1294)-x(1382)+x(1383)-x(1471)+x(1472)-x(1658);
             -x(52)+x(53)-x(141)+x(142)-x(230)+x(231)-x(319)+x(320)-x(408)+x(409)-x(497)+x(498)-x(586)+x(587)-x(675)+x(676)-x(764)+x(765)-x(802)+x(803)+x(804)+x(805)-x(853)+x(854)-x(942)+x(943)-x(1031)+x(1032)-x(1120)+x(1121)-x(1209)+x(1210)-x(1298)+x(1299)-x(1387)+x(1388)-x(1476)+x(1477)-x(1676);
             -x(57)+x(58)-x(146)+x(147)-x(235)+x(236)-x(324)+x(325)-x(413)+x(414)-x(502)+x(503)-x(591)+x(592)-x(680)+x(681)-x(769)+x(770)-x(858)+x(859)-x(891)+x(892)+x(893)+x(894)-x(947)+x(948)-x(1036)+x(1037)-x(1125)+x(1126)-x(1214)+x(1215)-x(1303)+x(1304)-x(1392)+x(1393)-x(1481)+x(1482)-x(1694);
             -x(62)+x(63)-x(151)+x(152)-x(240)+x(241)-x(329)+x(330)-x(418)+x(419)-x(507)+x(508)-x(596)+x(597)-x(685)+x(686)-x(774)+x(775)-x(863)+x(864)-x(952)+x(953)-x(980)+x(981)+x(982)+x(983)-x(1041)+x(1042)-x(1130)+x(1131)-x(1219)+x(1220)-x(1308)+x(1309)-x(1397)+x(1398)-x(1486)+x(1487)-x(1712);
             -x(67)+x(68)-x(156)+x(157)-x(245)+x(246)-x(334)+x(335)-x(423)+x(424)-x(512)+x(513)-x(601)+x(602)-x(690)+x(691)-x(779)+x(780)-x(868)+x(869)-x(957)+x(958)-x(1046)+x(1047)-x(1069)+x(1070)+x(1071)+x(1072)-x(1135)+x(1136)-x(1224)+x(1225)-x(1313)+x(1314)-x(1402)+x(1403)-x(1491)+x(1492)-x(1730);
             -x(72)+x(73)-x(161)+x(162)-x(250)+x(251)-x(339)+x(340)-x(428)+x(429)-x(517)+x(518)-x(606)+x(607)-x(695)+x(696)-x(784)+x(785)-x(873)+x(874)-x(962)+x(963)-x(1051)+x(1052)-x(1140)+x(1141)-x(1158)+x(1159)+x(1160)+x(1161)-x(1229)+x(1230)-x(1318)+x(1319)-x(1407)+x(1408)-x(1496)+x(1497)-x(1748);
             -x(77)+x(78)-x(166)+x(167)-x(255)+x(256)-x(344)+x(345)-x(433)+x(434)-x(522)+x(523)-x(611)+x(612)-x(700)+x(701)-x(789)+x(790)-x(878)+x(879)-x(967)+x(968)-x(1056)+x(1057)-x(1145)+x(1146)-x(1234)+x(1235)-x(1247)+x(1248)+x(1249)+x(1250)-x(1323)+x(1324)-x(1412)+x(1413)-x(1501)+x(1502)-x(1766);
             -x(82)+x(83)-x(171)+x(172)-x(260)+x(261)-x(349)+x(350)-x(438)+x(439)-x(527)+x(528)-x(616)+x(617)-x(705)+x(706)-x(794)+x(795)-x(883)+x(884)-x(972)+x(973)-x(1061)+x(1062)-x(1150)+x(1151)-x(1239)+x(1240)-x(1328)+x(1329)-x(1336)+x(1337)+x(1338)+x(1339)-x(1417)+x(1418)-x(1506)+x(1507)-x(1784);
             -x(87)+x(88)-x(176)+x(177)-x(265)+x(266)-x(354)+x(355)-x(443)+x(444)-x(532)+x(533)-x(621)+x(622)-x(710)+x(711)-x(799)+x(800)-x(888)+x(889)-x(977)+x(978)-x(1066)+x(1067)-x(1155)+x(1156)-x(1244)+x(1245)-x(1333)+x(1334)-x(1422)+x(1423)-x(1425)+x(1426)+x(1427)+x(1428)-x(1511)+x(1512)-x(1802);
             -x(5)+x(6)+x(9)-x(1515);
             -x(94)+x(95)+x(98)-x(1533);
             -x(183)+x(184)+x(187)-x(1551);
             -x(272)+x(273)+x(276)-x(1569);
             -x(361)+x(362)+x(365)-x(1587);
             -x(450)+x(451)+x(454)-x(1605);
             -x(539)+x(540)+x(543)-x(1623);
             -x(628)+x(629)+x(632)-x(1641);
             -x(717)+x(718)+x(721)-x(1659);
             -x(806)+x(807)+x(810)-x(1677);
             -x(895)+x(896)+x(899)-x(1695);
             -x(984)+x(985)+x(988)-x(1713);
             -x(1073)+x(1074)+x(1077)-x(1731);
             -x(1162)+x(1163)+x(1166)-x(1749);
             -x(1251)+x(1252)+x(1255)-x(1767);
             -x(1340)+x(1341)+x(1344)-x(1785);
             -x(1429)+x(1430)+x(1433)-x(1803);
             -x(10)+x(11)+x(14)-x(1516);
             -x(99)+x(100)+x(103)-x(1534);
             -x(188)+x(189)+x(192)-x(1552);
             -x(277)+x(278)+x(281)-x(1570);
             -x(366)+x(367)+x(370)-x(1588);
             -x(455)+x(456)+x(459)-x(1606);
             -x(544)+x(545)+x(548)-x(1624);
             -x(633)+x(634)+x(637)-x(1642);
             -x(722)+x(723)+x(726)-x(1660);
             -x(811)+x(812)+x(815)-x(1678);
             -x(900)+x(901)+x(904)-x(1696);
             -x(989)+x(990)+x(993)-x(1714);
             -x(1078)+x(1079)+x(1082)-x(1732);
             -x(1167)+x(1168)+x(1171)-x(1750);
             -x(1256)+x(1257)+x(1260)-x(1768);
             -x(1345)+x(1346)+x(1349)-x(1786);
             -x(1434)+x(1435)+x(1438)-x(1804);
             -x(15)+x(16)+x(19)-x(1517);
             -x(104)+x(105)+x(108)-x(1535);
             -x(193)+x(194)+x(197)-x(1553);
             -x(282)+x(283)+x(286)-x(1571);
             -x(371)+x(372)+x(375)-x(1589);
             -x(460)+x(461)+x(464)-x(1607);
             -x(549)+x(550)+x(553)-x(1625);
             -x(638)+x(639)+x(642)-x(1643);
             -x(727)+x(728)+x(731)-x(1661);
             -x(816)+x(817)+x(820)-x(1679);
             -x(905)+x(906)+x(909)-x(1697);
             -x(994)+x(995)+x(998)-x(1715);
             -x(1083)+x(1084)+x(1087)-x(1733);
             -x(1172)+x(1173)+x(1176)-x(1751);
             -x(1261)+x(1262)+x(1265)-x(1769);
             -x(1350)+x(1351)+x(1354)-x(1787);
             -x(1439)+x(1440)+x(1443)-x(1805);
             -x(20)+x(21)+x(24)-x(1518);
             -x(109)+x(110)+x(113)-x(1536);
             -x(198)+x(199)+x(202)-x(1554);
             -x(287)+x(288)+x(291)-x(1572);
             -x(376)+x(377)+x(380)-x(1590);
             -x(465)+x(466)+x(469)-x(1608);
             -x(554)+x(555)+x(558)-x(1626);
             -x(643)+x(644)+x(647)-x(1644);
             -x(732)+x(733)+x(736)-x(1662);
             -x(821)+x(822)+x(825)-x(1680);
             -x(910)+x(911)+x(914)-x(1698);
             -x(999)+x(1000)+x(1003)-x(1716);
             -x(1088)+x(1089)+x(1092)-x(1734);
             -x(1177)+x(1178)+x(1181)-x(1752);
             -x(1266)+x(1267)+x(1270)-x(1770);
             -x(1355)+x(1356)+x(1359)-x(1788);
             -x(1444)+x(1445)+x(1448)-x(1806);
             -x(25)+x(26)+x(29)-x(1519);
             -x(114)+x(115)+x(118)-x(1537);
             -x(203)+x(204)+x(207)-x(1555);
             -x(292)+x(293)+x(296)-x(1573);
             -x(381)+x(382)+x(385)-x(1591);
             -x(470)+x(471)+x(474)-x(1609);
             -x(559)+x(560)+x(563)-x(1627);
             -x(648)+x(649)+x(652)-x(1645);
             -x(737)+x(738)+x(741)-x(1663);
             -x(826)+x(827)+x(830)-x(1681);
             -x(915)+x(916)+x(919)-x(1699);
             -x(1004)+x(1005)+x(1008)-x(1717);
             -x(1093)+x(1094)+x(1097)-x(1735);
             -x(1182)+x(1183)+x(1186)-x(1753);
             -x(1271)+x(1272)+x(1275)-x(1771);
             -x(1360)+x(1361)+x(1364)-x(1789);
             -x(1449)+x(1450)+x(1453)-x(1807);
             -x(30)+x(31)+x(34)-x(1520);
             -x(119)+x(120)+x(123)-x(1538);
             -x(208)+x(209)+x(212)-x(1556);
             -x(297)+x(298)+x(301)-x(1574);
             -x(386)+x(387)+x(390)-x(1592);
             -x(475)+x(476)+x(479)-x(1610);
             -x(564)+x(565)+x(568)-x(1628);
             -x(653)+x(654)+x(657)-x(1646);
             -x(742)+x(743)+x(746)-x(1664);
             -x(831)+x(832)+x(835)-x(1682);
             -x(920)+x(921)+x(924)-x(1700);
             -x(1009)+x(1010)+x(1013)-x(1718);
             -x(1098)+x(1099)+x(1102)-x(1736);
             -x(1187)+x(1188)+x(1191)-x(1754);
             -x(1276)+x(1277)+x(1280)-x(1772);
             -x(1365)+x(1366)+x(1369)-x(1790);
             -x(1454)+x(1455)+x(1458)-x(1808);
             -x(35)+x(36)+x(39)-x(1521);
             -x(124)+x(125)+x(128)-x(1539);
             -x(213)+x(214)+x(217)-x(1557);
             -x(302)+x(303)+x(306)-x(1575);
             -x(391)+x(392)+x(395)-x(1593);
             -x(480)+x(481)+x(484)-x(1611);
             -x(569)+x(570)+x(573)-x(1629);
             -x(658)+x(659)+x(662)-x(1647);
             -x(747)+x(748)+x(751)-x(1665);
             -x(836)+x(837)+x(840)-x(1683);
             -x(925)+x(926)+x(929)-x(1701);
             -x(1014)+x(1015)+x(1018)-x(1719);
             -x(1103)+x(1104)+x(1107)-x(1737);
             -x(1192)+x(1193)+x(1196)-x(1755);
             -x(1281)+x(1282)+x(1285)-x(1773);
             -x(1370)+x(1371)+x(1374)-x(1791);
             -x(1459)+x(1460)+x(1463)-x(1809);
             -x(40)+x(41)+x(44)-x(1522);
             -x(129)+x(130)+x(133)-x(1540);
             -x(218)+x(219)+x(222)-x(1558);
             -x(307)+x(308)+x(311)-x(1576);
             -x(396)+x(397)+x(400)-x(1594);
             -x(485)+x(486)+x(489)-x(1612);
             -x(574)+x(575)+x(578)-x(1630);
             -x(663)+x(664)+x(667)-x(1648);
             -x(752)+x(753)+x(756)-x(1666);
             -x(841)+x(842)+x(845)-x(1684);
             -x(930)+x(931)+x(934)-x(1702);
             -x(1019)+x(1020)+x(1023)-x(1720);
             -x(1108)+x(1109)+x(1112)-x(1738);
             -x(1197)+x(1198)+x(1201)-x(1756);
             -x(1286)+x(1287)+x(1290)-x(1774);
             -x(1375)+x(1376)+x(1379)-x(1792);
             -x(1464)+x(1465)+x(1468)-x(1810);
             -x(45)+x(46)+x(49)-x(1523);
             -x(134)+x(135)+x(138)-x(1541);
             -x(223)+x(224)+x(227)-x(1559);
             -x(312)+x(313)+x(316)-x(1577);
             -x(401)+x(402)+x(405)-x(1595);
             -x(490)+x(491)+x(494)-x(1613);
             -x(579)+x(580)+x(583)-x(1631);
             -x(668)+x(669)+x(672)-x(1649);
             -x(757)+x(758)+x(761)-x(1667);
             -x(846)+x(847)+x(850)-x(1685);
             -x(935)+x(936)+x(939)-x(1703);
             -x(1024)+x(1025)+x(1028)-x(1721);
             -x(1113)+x(1114)+x(1117)-x(1739);
             -x(1202)+x(1203)+x(1206)-x(1757);
             -x(1291)+x(1292)+x(1295)-x(1775);
             -x(1380)+x(1381)+x(1384)-x(1793);
             -x(1469)+x(1470)+x(1473)-x(1811);
             -x(50)+x(51)+x(54)-x(1524);
             -x(139)+x(140)+x(143)-x(1542);
             -x(228)+x(229)+x(232)-x(1560);
             -x(317)+x(318)+x(321)-x(1578);
             -x(406)+x(407)+x(410)-x(1596);
             -x(495)+x(496)+x(499)-x(1614);
             -x(584)+x(585)+x(588)-x(1632);
             -x(673)+x(674)+x(677)-x(1650);
             -x(762)+x(763)+x(766)-x(1668);
             -x(851)+x(852)+x(855)-x(1686);
             -x(940)+x(941)+x(944)-x(1704);
             -x(1029)+x(1030)+x(1033)-x(1722);
             -x(1118)+x(1119)+x(1122)-x(1740);
             -x(1207)+x(1208)+x(1211)-x(1758);
             -x(1296)+x(1297)+x(1300)-x(1776);
             -x(1385)+x(1386)+x(1389)-x(1794);
             -x(1474)+x(1475)+x(1478)-x(1812);
             -x(55)+x(56)+x(59)-x(1525);
             -x(144)+x(145)+x(148)-x(1543);
             -x(233)+x(234)+x(237)-x(1561);
             -x(322)+x(323)+x(326)-x(1579);
             -x(411)+x(412)+x(415)-x(1597);
             -x(500)+x(501)+x(504)-x(1615);
             -x(589)+x(590)+x(593)-x(1633);
             -x(678)+x(679)+x(682)-x(1651);
             -x(767)+x(768)+x(771)-x(1669);
             -x(856)+x(857)+x(860)-x(1687);
             -x(945)+x(946)+x(949)-x(1705);
             -x(1034)+x(1035)+x(1038)-x(1723);
             -x(1123)+x(1124)+x(1127)-x(1741);
             -x(1212)+x(1213)+x(1216)-x(1759);
             -x(1301)+x(1302)+x(1305)-x(1777);
             -x(1390)+x(1391)+x(1394)-x(1795);
             -x(1479)+x(1480)+x(1483)-x(1813);
             -x(60)+x(61)+x(64)-x(1526);
             -x(149)+x(150)+x(153)-x(1544);
             -x(238)+x(239)+x(242)-x(1562);
             -x(327)+x(328)+x(331)-x(1580);
             -x(416)+x(417)+x(420)-x(1598);
             -x(505)+x(506)+x(509)-x(1616);
             -x(594)+x(595)+x(598)-x(1634);
             -x(683)+x(684)+x(687)-x(1652);
             -x(772)+x(773)+x(776)-x(1670);
             -x(861)+x(862)+x(865)-x(1688);
             -x(950)+x(951)+x(954)-x(1706);
             -x(1039)+x(1040)+x(1043)-x(1724);
             -x(1128)+x(1129)+x(1132)-x(1742);
             -x(1217)+x(1218)+x(1221)-x(1760);
             -x(1306)+x(1307)+x(1310)-x(1778);
             -x(1395)+x(1396)+x(1399)-x(1796);
             -x(1484)+x(1485)+x(1488)-x(1814);
             -x(65)+x(66)+x(69)-x(1527);
             -x(154)+x(155)+x(158)-x(1545);
             -x(243)+x(244)+x(247)-x(1563);
             -x(332)+x(333)+x(336)-x(1581);
             -x(421)+x(422)+x(425)-x(1599);
             -x(510)+x(511)+x(514)-x(1617);
             -x(599)+x(600)+x(603)-x(1635);
             -x(688)+x(689)+x(692)-x(1653);
             -x(777)+x(778)+x(781)-x(1671);
             -x(866)+x(867)+x(870)-x(1689);
             -x(955)+x(956)+x(959)-x(1707);
             -x(1044)+x(1045)+x(1048)-x(1725);
             -x(1133)+x(1134)+x(1137)-x(1743);
             -x(1222)+x(1223)+x(1226)-x(1761);
             -x(1311)+x(1312)+x(1315)-x(1779);
             -x(1400)+x(1401)+x(1404)-x(1797);
             -x(1489)+x(1490)+x(1493)-x(1815);
             -x(70)+x(71)+x(74)-x(1528);
             -x(159)+x(160)+x(163)-x(1546);
             -x(248)+x(249)+x(252)-x(1564);
             -x(337)+x(338)+x(341)-x(1582);
             -x(426)+x(427)+x(430)-x(1600);
             -x(515)+x(516)+x(519)-x(1618);
             -x(604)+x(605)+x(608)-x(1636);
             -x(693)+x(694)+x(697)-x(1654);
             -x(782)+x(783)+x(786)-x(1672);
             -x(871)+x(872)+x(875)-x(1690);
             -x(960)+x(961)+x(964)-x(1708);
             -x(1049)+x(1050)+x(1053)-x(1726);
             -x(1138)+x(1139)+x(1142)-x(1744);
             -x(1227)+x(1228)+x(1231)-x(1762);
             -x(1316)+x(1317)+x(1320)-x(1780);
             -x(1405)+x(1406)+x(1409)-x(1798);
             -x(1494)+x(1495)+x(1498)-x(1816);
             -x(75)+x(76)+x(79)-x(1529);
             -x(164)+x(165)+x(168)-x(1547);
             -x(253)+x(254)+x(257)-x(1565);
             -x(342)+x(343)+x(346)-x(1583);
             -x(431)+x(432)+x(435)-x(1601);
             -x(520)+x(521)+x(524)-x(1619);
             -x(609)+x(610)+x(613)-x(1637);
             -x(698)+x(699)+x(702)-x(1655);
             -x(787)+x(788)+x(791)-x(1673);
             -x(876)+x(877)+x(880)-x(1691);
             -x(965)+x(966)+x(969)-x(1709);
             -x(1054)+x(1055)+x(1058)-x(1727);
             -x(1143)+x(1144)+x(1147)-x(1745);
             -x(1232)+x(1233)+x(1236)-x(1763);
             -x(1321)+x(1322)+x(1325)-x(1781);
             -x(1410)+x(1411)+x(1414)-x(1799);
             -x(1499)+x(1500)+x(1503)-x(1817);
             -x(80)+x(81)+x(84)-x(1530);
             -x(169)+x(170)+x(173)-x(1548);
             -x(258)+x(259)+x(262)-x(1566);
             -x(347)+x(348)+x(351)-x(1584);
             -x(436)+x(437)+x(440)-x(1602);
             -x(525)+x(526)+x(529)-x(1620);
             -x(614)+x(615)+x(618)-x(1638);
             -x(703)+x(704)+x(707)-x(1656);
             -x(792)+x(793)+x(796)-x(1674);
             -x(881)+x(882)+x(885)-x(1692);
             -x(970)+x(971)+x(974)-x(1710);
             -x(1059)+x(1060)+x(1063)-x(1728);
             -x(1148)+x(1149)+x(1152)-x(1746);
             -x(1237)+x(1238)+x(1241)-x(1764);
             -x(1326)+x(1327)+x(1330)-x(1782);
             -x(1415)+x(1416)+x(1419)-x(1800);
             -x(1504)+x(1505)+x(1508)-x(1818);
             -x(85)+x(86)+x(89)-x(1531);
             -x(174)+x(175)+x(178)-x(1549);
             -x(263)+x(264)+x(267)-x(1567);
             -x(352)+x(353)+x(356)-x(1585);
             -x(441)+x(442)+x(445)-x(1603);
             -x(530)+x(531)+x(534)-x(1621);
             -x(619)+x(620)+x(623)-x(1639);
             -x(708)+x(709)+x(712)-x(1657);
             -x(797)+x(798)+x(801)-x(1675);
             -x(886)+x(887)+x(890)-x(1693);
             -x(975)+x(976)+x(979)-x(1711);
             -x(1064)+x(1065)+x(1068)-x(1729);
             -x(1153)+x(1154)+x(1157)-x(1747);
             -x(1242)+x(1243)+x(1246)-x(1765);
             -x(1331)+x(1332)+x(1335)-x(1783);
             -x(1420)+x(1421)+x(1424)-x(1801);
             -x(1509)+x(1510)+x(1513)-x(1819);
             -3*x(428)+x(1185)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,-500,1500,-2000,2000,-3000,-4000,-100,1500,-1000,-500,-500,1500,-200,300,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [1,NaN,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,1,1,1,1,1,NaN,1,1,1,1]';

% Options
opts = struct('probname','modell');
opts.sense = 'min';