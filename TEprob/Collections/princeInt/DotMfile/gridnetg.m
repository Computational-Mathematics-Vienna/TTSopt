% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 01:46:35
% Model: gridnetg

% Objective
fun = @(x)0.01*x(1)*x(1)+0.01*x(5)*x(5)+0.01*x(9)*x(9)+0.01*x(11)*x(11)+0.01*x(2)*x(2)+0.01*x(33)*x(33)+0.01*x(24)*x(24)+0.01*x(55)*x(55)+0.01*x(46)*x(46)+0.01*x(56)*x(56)+0.01*x(58)*x(58)+0.01*x(60)*x(60)+0.01*x(4)*x(4)+0.01*x(6)*x(6)+0.01*x(12)*x(12)+0.01*x(23)*x(23)+0.01*x(15)*x(15)+0.01*x(17)*x(17)+0.01*x(14)*x(14)+0.01*x(25)*x(25)+0.01*x(26)*x(26)+0.01*x(28)*x(28)+0.01*x(16)*x(16)+0.01*x(27)*x(27)+0.01*x(37)*x(37)+0.01*x(39)*x(39)+0.01*x(18)*x(18)+0.01*x(29)*x(29)+0.01*x(48)*x(48)+0.01*x(50)*x(50)+0.01*x(20)*x(20)+0.01*x(31)*x(31)+0.01*x(3)*x(3)+0.01*x(57)*x(57)+0.01*x(13)*x(13)+0.01*x(22)*x(22)+1.00000000001191*x(8)*x(8)+1.00000000001191*x(10)*x(10)+1.00000000001191*x(34)*x(34)+1.00000000001191*x(45)*x(45)+1.00000000001191*x(19)*x(19)+1.00000000001191*x(21)*x(21)+1.00000000001191*x(36)*x(36)+1.00000000001191*x(47)*x(47)+1.00000000001191*x(30)*x(30)+1.00000000001191*x(32)*x(32)+1.00000000001191*x(38)*x(38)+1.00000000001191*x(49)*x(49)+1.00000000001191*x(41)*x(41)+1.00000000001191*x(43)*x(43)+1.00000000001191*x(40)*x(40)+1.00000000001191*x(51)*x(51)+1.00000000001191*x(52)*x(52)+1.00000000001191*x(54)*x(54)+1.00000000001191*x(42)*x(42)+1.00000000001191*x(53)*x(53)+1.00000000001191*x(7)*x(7)+1.00000000001191*x(59)*x(59)+1.00000000001191*x(35)*x(35)+1.00000000001191*x(44)*x(44)+0.01*(1+2*x(1)*(x(1)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(2)*(x(2)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(3)*(x(3)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(4)*(x(4)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(5)*(x(5)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(6)*(x(6)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(7)*(x(7)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(8)*(x(8)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(9)*(x(9)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(10)*(x(10)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(11)*(x(11)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(12)*(x(12)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(13)*(x(13)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(14)*(x(14)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(15)*(x(15)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(16)*(x(16)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(17)*(x(17)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(18)*(x(18)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(19)*(x(19)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(20)*(x(20)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(21)*(x(21)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(22)*(x(22)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(23)*(x(23)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(24)*(x(24)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(25)*(x(25)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(26)*(x(26)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(27)*(x(27)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(28)*(x(28)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(29)*(x(29)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(30)*(x(30)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(31)*(x(31)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(32)*(x(32)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(33)*(x(33)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(34)*(x(34)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(35)*(x(35)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(36)*(x(36)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(37)*(x(37)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(38)*(x(38)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(39)*(x(39)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(40)*(x(40)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(41)*(x(41)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(42)*(x(42)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(43)*(x(43)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(44)*(x(44)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(45)*(x(45)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(46)*(x(46)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(47)*(x(47)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(48)*(x(48)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(49)*(x(49)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(50)*(x(50)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(51)*(x(51)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(52)*(x(52)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(53)*(x(53)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(54)*(x(54)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(55)*(x(55)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(56)*(x(56)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(57)*(x(57)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(58)*(x(58)-x(61))+x(61)*x(61))^0.5+0.01*(1+2*x(59)*(x(59)-x(61))+x(61)*x(61))^0.5+8.333333e-6*(10-x(59)+x(60))^4;

% Bounds
lb = [0.1,0.1,0.1,-Inf,0.1,0,0.1,-Inf,0.1,-Inf,0.1,0,0.1,-Inf,0,-Inf,-Inf,0,-Inf,-Inf,0,0.1,-Inf,0.1,-Inf,-Inf,0,-Inf,-Inf,0,-Inf,-Inf,0.1,-Inf,0.1,0,-Inf,-Inf,0,-Inf,-Inf,0,-Inf,0.1,0,4,-Inf,0,-Inf,-Inf,0,-Inf,-Inf,0,4,-Inf,-Inf,-Inf,4,4,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,0,Inf,Inf,Inf,Inf,Inf,0,Inf,Inf,0,Inf,Inf,0,Inf,Inf,0,Inf,Inf,Inf,Inf,Inf,0,Inf,Inf,0,Inf,Inf,Inf,Inf,Inf,0,Inf,Inf,0,Inf,Inf,0,Inf,Inf,0,5,Inf,0,Inf,Inf,0,Inf,Inf,0,5,Inf,Inf,Inf,5,5,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2);
             -x(1)+x(3)+x(4);
             -x(3)+x(5)+x(6);
             -x(5)+x(7)+x(8);
             -x(7)+x(9)+x(10);
             -x(9)+x(11);
             -x(2)+x(12)+x(13);
             -x(4)-x(12)+x(14)+x(15);
             -x(6)-x(14)+x(16)+x(17);
             -x(8)-x(16)+x(18)+x(19);
             -x(10)-x(18)+x(20)+x(21);
             -x(11)-x(20)+x(22);
             -x(13)+x(23)+x(24);
             -x(15)-x(23)+x(25)+x(26);
             -x(17)-x(25)+x(27)+x(28);
             -x(19)-x(27)+x(29)+x(30);
             -x(21)-x(29)+x(31)+x(32);
             -x(22)-x(31)+x(33);
             -x(24)+x(34)+x(35);
             -x(26)-x(34)+x(36)+x(37);
             -x(28)-x(36)+x(38)+x(39);
             -x(30)-x(38)+x(40)+x(41);
             -x(32)-x(40)+x(42)+x(43);
             -x(33)-x(42)+x(44);
             -x(35)+x(45)+x(46);
             -x(37)-x(45)+x(47)+x(48);
             -x(39)-x(47)+x(49)+x(50);
             -x(41)-x(49)+x(51)+x(52);
             -x(43)-x(51)+x(53)+x(54);
             -x(44)-x(53)+x(55);
             -x(46)+x(56);
             -x(48)-x(56)+x(57);
             -x(50)-x(57)+x(58);
             -x(52)-x(58)+x(59);
             -x(54)-x(59)+x(60);
             -x(55)-x(60)];
cl = [10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-10]';
cu = [10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-10]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [0.1,0.1,0.1,NaN,0.1,NaN,0.1,NaN,0.1,NaN,0.1,NaN,0.1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.1,NaN,0.1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.1,NaN,0.1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,0.1,NaN,4,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,4,NaN,NaN,NaN,4,4,NaN]';

% Options
opts = struct('probname','gridnetg');
opts.sense = 'min';