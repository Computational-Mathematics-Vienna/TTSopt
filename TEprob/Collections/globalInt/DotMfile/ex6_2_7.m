% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:54
% Model: ex6_2_7

% Objective
fun = @(x)log(2.4088*x(1)+8.8495*x(4)+2.0086*x(7))*(10.4807341082197*x(1)+38.5043409542885*x(4)+8.73945638067505*x(7))+0.102582206615077*x(1)-4.55292602721008*x(4)+0.0196376909050935*x(7)+0.240734108219679*log(x(1))*x(1)+2.64434095428848*log(x(4))*x(4)+0.399456380675047*log(x(7))*x(7)-0.240734108219679*log(2.4088*x(1)+8.8495*x(4)+2.0086*x(7))*x(1)-2.64434095428848*log(2.4088*x(1)+8.8495*x(4)+2.0086*x(7))*x(4)-0.399456380675047*log(2.4088*x(1)+8.8495*x(4)+2.0086*x(7))*x(7)+11.24*log(x(1))*x(1)+36.86*log(x(4))*x(4)+9.34*log(x(7))*x(7)-11.24*log(2.248*x(1)+7.372*x(4)+1.868*x(7))*x(1)-36.86*log(2.248*x(1)+7.372*x(4)+1.868*x(7))*x(4)-9.34*log(2.248*x(1)+7.372*x(4)+1.868*x(7))*x(7)+log(2.248*x(1)+7.372*x(4)+1.868*x(7))*(2.248*x(1)+7.372*x(4)+1.868*x(7))+2.248*log(x(1))*x(1)+7.372*log(x(4))*x(4)+1.868*log(x(7))*x(7)-2.248*log(2.248*x(1)+5.82088173817021*x(4)+0.382446861901943*x(7))*x(1)-7.372*log(0.972461133672523*x(1)+7.372*x(4)+1.1893141713454*x(7))*x(4)-1.868*log(1.86752460515164*x(1)+2.61699842799583*x(4)+1.868*x(7))*x(7)+log(2.4088*x(2)+8.8495*x(5)+2.0086*x(8))*(10.4807341082197*x(2)+38.5043409542885*x(5)+8.73945638067505*x(8))+0.102582206615077*x(2)-4.55292602721008*x(5)+0.0196376909050935*x(8)+0.240734108219679*log(x(2))*x(2)+2.64434095428848*log(x(5))*x(5)+0.399456380675047*log(x(8))*x(8)-0.240734108219679*log(2.4088*x(2)+8.8495*x(5)+2.0086*x(8))*x(2)-2.64434095428848*log(2.4088*x(2)+8.8495*x(5)+2.0086*x(8))*x(5)-0.399456380675047*log(2.4088*x(2)+8.8495*x(5)+2.0086*x(8))*x(8)+11.24*log(x(2))*x(2)+36.86*log(x(5))*x(5)+9.34*log(x(8))*x(8)-11.24*log(2.248*x(2)+7.372*x(5)+1.868*x(8))*x(2)-36.86*log(2.248*x(2)+7.372*x(5)+1.868*x(8))*x(5)-9.34*log(2.248*x(2)+7.372*x(5)+1.868*x(8))*x(8)+log(2.248*x(2)+7.372*x(5)+1.868*x(8))*(2.248*x(2)+7.372*x(5)+1.868*x(8))+2.248*log(x(2))*x(2)+7.372*log(x(5))*x(5)+1.868*log(x(8))*x(8)-2.248*log(2.248*x(2)+5.82088173817021*x(5)+0.382446861901943*x(8))*x(2)-7.372*log(0.972461133672523*x(2)+7.372*x(5)+1.1893141713454*x(8))*x(5)-1.868*log(1.86752460515164*x(2)+2.61699842799583*x(5)+1.868*x(8))*x(8)+log(2.4088*x(3)+8.8495*x(6)+2.0086*x(9))*(10.4807341082197*x(3)+38.5043409542885*x(6)+8.73945638067505*x(9))+0.102582206615077*x(3)-4.55292602721008*x(6)+0.0196376909050935*x(9)+0.240734108219679*log(x(3))*x(3)+2.64434095428848*log(x(6))*x(6)+0.399456380675047*log(x(9))*x(9)-0.240734108219679*log(2.4088*x(3)+8.8495*x(6)+2.0086*x(9))*x(3)-2.64434095428848*log(2.4088*x(3)+8.8495*x(6)+2.0086*x(9))*x(6)-0.399456380675047*log(2.4088*x(3)+8.8495*x(6)+2.0086*x(9))*x(9)+11.24*log(x(3))*x(3)+36.86*log(x(6))*x(6)+9.34*log(x(9))*x(9)-11.24*log(2.248*x(3)+7.372*x(6)+1.868*x(9))*x(3)-36.86*log(2.248*x(3)+7.372*x(6)+1.868*x(9))*x(6)-9.34*log(2.248*x(3)+7.372*x(6)+1.868*x(9))*x(9)+log(2.248*x(3)+7.372*x(6)+1.868*x(9))*(2.248*x(3)+7.372*x(6)+1.868*x(9))+2.248*log(x(3))*x(3)+7.372*log(x(6))*x(6)+1.868*log(x(9))*x(9)-2.248*log(2.248*x(3)+5.82088173817021*x(6)+0.382446861901943*x(9))*x(3)-7.372*log(0.972461133672523*x(3)+7.372*x(6)+1.1893141713454*x(9))*x(6)-1.868*log(1.86752460515164*x(3)+2.61699842799583*x(6)+1.868*x(9))*x(9)-12.7287341082197*log(x(1))*x(1)-45.8763409542885*log(x(4))*x(4)-10.607456380675*log(x(7))*x(7)-12.7287341082197*log(x(2))*x(2)-45.8763409542885*log(x(5))*x(5)-10.607456380675*log(x(8))*x(8)-12.7287341082197*log(x(3))*x(3)-45.8763409542885*log(x(6))*x(6)-10.607456380675*log(x(9))*x(9);

% Bounds
lb = [1e-07,1e-07,1e-07,1e-07,1e-07,1e-07,1e-07,1e-07,1e-07]';
ub = [0.4,0.4,0.4,0.1,0.1,0.1,0.5,0.5,0.5]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3);
             x(4)+x(5)+x(6);
             x(7)+x(8)+x(9)];
cl = [0.4,0.1,0.5]';
cu = [0.4,0.1,0.5]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCC';

% Starting Guess
x0 = [0.0088,0.33595,0.05525,0.00065,0.00193,0.09742,0.30803,0.147,0.04497]';

% Options
opts = struct('probname','ex6_2_7');
opts.sense = 'min';