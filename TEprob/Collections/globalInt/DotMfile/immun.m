% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 15:30:05
% Model: immun

% Objective
fun = @(x)(-x(16))^2+(50000-x(17))^2+(42000-x(18))^2+(40000-x(19))^2+(40000-x(20))^2+(45000-x(21))^2;

% Bounds
lb = [-Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [187217.324724184,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-x(10)-x(16);
             1044.80727456326*x(2)+1079.40354193291*x(3)+74.5442033113223*x(4)+36.3324688408125*x(5)+41.3438438533384*x(6)+43.2231094830356*x(7)+43.8495313596014*x(8)+59.5100782737447*x(9)+1.00940093153723*x(10)-x(11)-x(17);
             75.57763951196*x(4)+36.8361604344007*x(5)+41.9170101494904*x(6)+43.8223287926491*x(7)+44.4574350070353*x(8)+60.3350903666908*x(9)+1.0391091639109*x(11)-x(12)-x(18);
             75.456505608033*x(4)+36.7771203803858*x(5)+41.8498266397494*x(6)+43.7520914870108*x(7)+44.3861797694312*x(8)+60.2383868299423*x(9)+1.02284761238063*x(12)-x(13)-x(19);
             1167.30216560492*x(4)+74.4548991299823*x(5)+84.7245403892903*x(6)+88.5756558615307*x(7)+89.8593610189442*x(8)+121.951989954281*x(9)+1.05*x(13)-x(14)-x(20);
             1115.8195763046*x(5)+1126.3428356729*x(6)+134.503508270593*x(7)+136.452834477414*x(8)+185.185989647919*x(9)+1.07600174350434*x(14)-x(15)-x(21);
             x(1)-40.9351218608642*x(2)-43.2018652628815*x(3)-45.3473311101868*x(4)-39.805625287987*x(5)-41.3125769494053*x(6)-41.8781498541141*x(7)-42.1403213448084*x(8)-46.6038914670337*x(9)];
cl = [0,0,0,0,0,0,0]';
cu = [0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [187217.324724184,956.904106888036,NaN,45.5987315339227,NaN,NaN,NaN,NaN,40.6641597628654,NaN,66834.2651808549,33347.8176607291,NaN,18186.5732712855,27099.21721716,NaN,938765.155199853,42000,40000,40000,NaN]';

% Options
opts = struct('probname','immun');
opts.sense = 'min';
