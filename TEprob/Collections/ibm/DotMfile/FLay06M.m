% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 21-Jun-2014 09:14:40
% Model: FLay06M

% Objective
fun = @(x)2*x(25)+2*x(26);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [29,29,29,29,29,29,29,29,29,29,29,29,40,50,60,35,75,20,40,50,60,35,75,20,30,30,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(1)-x(13)+x(25);
             -x(2)-x(14)+x(25);
             -x(3)-x(15)+x(25);
             -x(4)-x(16)+x(25);
             -x(5)-x(17)+x(25);
             -x(6)-x(18)+x(25);
             -x(7)-x(19)+x(26);
             -x(8)-x(20)+x(26);
             -x(9)-x(21)+x(26);
             -x(10)-x(22)+x(26);
             -x(11)-x(23)+x(26);
             -x(12)-x(24)+x(26);
             40/x(19)-x(13);
             50/x(20)-x(14);
             60/x(21)-x(15);
             35/x(22)-x(16);
             75/x(23)-x(17);
             20/x(24)-x(18);
             x(1)-x(2)+x(13)+69*x(27);
             x(1)-x(3)+x(13)+69*x(28);
             x(1)-x(4)+x(13)+69*x(29);
             x(1)-x(5)+x(13)+69*x(30);
             x(1)-x(6)+x(13)+69*x(31);
             x(2)-x(3)+x(14)+79*x(32);
             x(2)-x(4)+x(14)+79*x(33);
             x(2)-x(5)+x(14)+79*x(34);
             x(2)-x(6)+x(14)+79*x(35);
             x(3)-x(4)+x(15)+89*x(36);
             x(3)-x(5)+x(15)+89*x(37);
             x(3)-x(6)+x(15)+89*x(38);
             x(4)-x(5)+x(16)+64*x(39);
             x(4)-x(6)+x(16)+64*x(40);
             x(5)-x(6)+x(17)+104*x(41);
             -x(1)+x(2)+x(14)+79*x(42);
             -x(1)+x(3)+x(15)+89*x(43);
             -x(1)+x(4)+x(16)+64*x(44);
             -x(1)+x(5)+x(17)+104*x(45);
             -x(1)+x(6)+x(18)+49*x(46);
             -x(2)+x(3)+x(15)+89*x(47);
             -x(2)+x(4)+x(16)+64*x(48);
             -x(2)+x(5)+x(17)+104*x(49);
             -x(2)+x(6)+x(18)+49*x(50);
             -x(3)+x(4)+x(16)+64*x(51);
             -x(3)+x(5)+x(17)+104*x(52);
             -x(3)+x(6)+x(18)+49*x(53);
             -x(4)+x(5)+x(17)+104*x(54);
             -x(4)+x(6)+x(18)+49*x(55);
             -x(5)+x(6)+x(18)+49*x(56);
             x(7)-x(8)+x(19)+69*x(57);
             x(7)-x(9)+x(19)+69*x(58);
             x(7)-x(10)+x(19)+69*x(59);
             x(7)-x(11)+x(19)+69*x(60);
             x(7)-x(12)+x(19)+69*x(61);
             x(8)-x(9)+x(20)+79*x(62);
             x(8)-x(10)+x(20)+79*x(63);
             x(8)-x(11)+x(20)+79*x(64);
             x(8)-x(12)+x(20)+79*x(65);
             x(9)-x(10)+x(21)+89*x(66);
             x(9)-x(11)+x(21)+89*x(67);
             x(9)-x(12)+x(21)+89*x(68);
             x(10)-x(11)+x(22)+64*x(69);
             x(10)-x(12)+x(22)+64*x(70);
             x(11)-x(12)+x(23)+104*x(71);
             -x(7)+x(8)+x(20)+79*x(72);
             -x(7)+x(9)+x(21)+89*x(73);
             -x(7)+x(10)+x(22)+64*x(74);
             -x(7)+x(11)+x(23)+104*x(75);
             -x(7)+x(12)+x(24)+49*x(76);
             -x(8)+x(9)+x(21)+89*x(77);
             -x(8)+x(10)+x(22)+64*x(78);
             -x(8)+x(11)+x(23)+104*x(79);
             -x(8)+x(12)+x(24)+49*x(80);
             -x(9)+x(10)+x(22)+64*x(81);
             -x(9)+x(11)+x(23)+104*x(82);
             -x(9)+x(12)+x(24)+49*x(83);
             -x(10)+x(11)+x(23)+104*x(84);
             -x(10)+x(12)+x(24)+49*x(85);
             -x(11)+x(12)+x(24)+49*x(86);
             x(27)+x(42)+x(57)+x(72);
             x(28)+x(43)+x(58)+x(73);
             x(29)+x(44)+x(59)+x(74);
             x(30)+x(45)+x(60)+x(75);
             x(31)+x(46)+x(61)+x(76);
             x(32)+x(47)+x(62)+x(77);
             x(33)+x(48)+x(63)+x(78);
             x(34)+x(49)+x(64)+x(79);
             x(35)+x(50)+x(65)+x(80);
             x(36)+x(51)+x(66)+x(81);
             x(37)+x(52)+x(67)+x(82);
             x(38)+x(53)+x(68)+x(83);
             x(39)+x(54)+x(69)+x(84);
             x(40)+x(55)+x(70)+x(85);
             x(41)+x(56)+x(71)+x(86)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,69,69,69,69,69,79,79,79,79,89,89,89,64,64,104,79,89,64,104,49,89,64,104,49,64,104,49,104,49,49,69,69,69,69,69,79,79,79,79,89,89,89,64,64,104,79,89,64,104,49,89,64,104,49,64,104,49,104,49,49,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1,1,1,1,1,1,1,1,1,1,1,1,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','FLay06M');
opts.sense = 'min';