% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 14:33:16
% Model: palmer6c

% Objective
fun = @(x)(10.678659-x(1))^2+(75.414511-x(1)-2.467400073616*x(2)-6.08806312328024*x(3)-15.0216873985605*x(4)-37.0645125930448*x(5)-91.4529811006199*x(6)-225.651092300072*x(7)-556.771521752729*x(8))^2+(41.513459-x(1)-1.949550365169*x(2)-3.80074662633058*x(3)-7.40974697327763*x(4)-14.4456749175633*x(5)-28.1625708106482*x(6)-54.904350207997*x(7)-107.038795997367*x(8))^2+(20.104735-x(1)-1.4926241929*x(2)-2.22792698123038*x(3)-3.32545771219912*x(4)-4.9636586336943*x(5)-7.40887696194907*x(6)-11.0586689956246*x(7)-16.5064368841425*x(8))^2+(7.432436-x(1)-1.096623651204*x(2)-1.20258343237999*x(3)-1.31878143449399*x(4)-1.44620691183484*x(5)-1.58594470405279*x(6)-1.73918447196602*x(7)-1.90723082576467*x(8))^2+(1.298082-x(1)-0.761544202225*x(2)-0.579949571942512*x(3)-0.44165723409569*x(4)-0.336341505996303*x(5)-0.256138923859109*x(6)-0.195061112429055*x(7)-0.148547659249906*x(8))^2+(0.1713-x(1)-0.616850018404*x(2)-0.380503945205015*x(3)-0.234713865602508*x(4)-0.144783252316581*x(5)-0.0893095518560741*x(6)-0.0550905987060723*x(7)-0.0339826368257281*x(8))^2+(-x(1)-0.536979718521*x(2)-0.288347218102892*x(3)-0.154836608013205*x(4)-0.083144118187677*x(5)-0.0446467051810956*x(6)-0.0239743751810348*x(7)-0.0128737532364289*x(8))^2+(0.068203-x(1)-0.487388289424*x(2)-0.237547344667653*x(3)-0.115777793974781*x(4)-0.0564287409586526*x(5)-0.0275027075301877*x(6)-0.0134044975776667*x(7)-0.00653319514496715*x(8))^2+(0.774499-x(1)-0.373156048225*x(2)-0.139245436326899*x(3)-0.0519602767531113*x(4)-0.0193892915378684*x(5)-0.00723523140815339*x(6)-0.00269987036025992*x(7)-0.0010074729543544*x(8))^2+(2.070002-x(1)-0.274155912801*x(2)-0.0751614645237495*x(3)-0.0206059599139685*x(4)-0.00564924574935486*x(5)-0.00154877412505155*x(6)-0.000424605583976078*x(7)-0.000116408131455363*x(8))^2+(5.574556-x(1)-0.121847072356*x(2)-0.0148467090417283*x(3)-0.00180902803085595*x(4)-0.000220424769369737*x(5)-2.68581128224489e-5*x(6)-3.27258241642255e-6*x(7)-3.98754586484811e-7*x(8))^2+(9.026378-x(1)-0.030461768089*x(2)-0.000927919315108019*x(3)-2.82660629821242e-5*x(4)-8.61034255350534e-7*x(5)-2.62286258031728e-8*x(6)-7.98970316509411e-10*x(7)-2.43380484915046e-11*x(8))^2;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [1,1,1,1,1,1,1,1]';

% Options
opts = struct('probname','palmer6c');
opts.sense = 'min';
