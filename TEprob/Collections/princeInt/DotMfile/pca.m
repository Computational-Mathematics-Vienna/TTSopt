% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 14:33:16
% Model: pca

% Objective
fun = @(x)(-0.362495170917953-x(7))^2*x(1)+(0.293343952671003-x(8))^2*x(2)+(-0.971598271733424-x(9))^2*x(3)+(-0.362495170917953-x(7))^2*x(4)+(0.293343952671003-x(8))^2*x(5)+(-0.971598271733424-x(9))^2*x(6)+(-0.314891214911083-x(7))^2*x(1)+(0.339335403139788-x(8))^2*x(2)+(-0.759296759067223-x(9))^2*x(3)+(-0.314891214911083-x(7))^2*x(4)+(0.339335403139788-x(8))^2*x(5)+(-0.759296759067223-x(9))^2*x(6)+(-0.30981779086445-x(7))^2*x(1)+(0.313779434378402-x(8))^2*x(2)+(0.343866734864445-x(9))^2*x(3)+(-0.30981779086445-x(7))^2*x(4)+(0.313779434378402-x(8))^2*x(5)+(0.343866734864445-x(9))^2*x(6)+(-0.334161108032512-x(7))^2*x(1)+(0.279125447489466-x(8))^2*x(2)+(1.88353527371645-x(9))^2*x(3)+(-0.334161108032512-x(7))^2*x(4)+(0.279125447489466-x(8))^2*x(5)+(1.88353527371645-x(9))^2*x(6)+(-0.334180701031285-x(7))^2*x(1)+(0.244478366416519-x(8))^2*x(2)+(-1.37547395903746-x(9))^2*x(3)+(-0.334180701031285-x(7))^2*x(4)+(0.244478366416519-x(8))^2*x(5)+(-1.37547395903746-x(9))^2*x(6)+(-0.310490143857947-x(7))^2*x(1)+(0.331547544379238-x(8))^2*x(2)+(-1.15320888763318-x(9))^2*x(3)+(-0.310490143857947-x(7))^2*x(4)+(0.331547544379238-x(8))^2*x(5)+(-1.15320888763318-x(9))^2*x(6)+(-0.233203102005887-x(7))^2*x(1)+(0.381680331194109-x(8))^2*x(2)+(-0.724070400973414-x(9))^2*x(3)+(-0.233203102005887-x(7))^2*x(4)+(0.381680331194109-x(8))^2*x(5)+(-0.724070400973414-x(9))^2*x(6)+(-0.378226025631001-x(7))^2*x(1)+(0.297263691208249-x(8))^2*x(2)+(-0.994592146806168-x(9))^2*x(3)+(-0.378226025631001-x(7))^2*x(4)+(0.297263691208249-x(8))^2*x(5)+(-0.994592146806168-x(9))^2*x(6)+(-0.348748867409573-x(7))^2*x(1)+(0.347659808041416-x(8))^2*x(2)+(1.57098561921639-x(9))^2*x(3)+(-0.348748867409573-x(7))^2*x(4)+(0.347659808041416-x(8))^2*x(5)+(1.57098561921639-x(9))^2*x(6)+(-0.159887220995816-x(7))^2*x(1)+(0.269828144100413-x(8))^2*x(2)+(-0.218174284515045-x(9))^2*x(3)+(-0.159887220995816-x(7))^2*x(4)+(0.269828144100413-x(8))^2*x(5)+(-0.218174284515045-x(9))^2*x(6)+(-0.33686169809354-x(7))^2*x(1)+(0.311895838201148-x(8))^2*x(2)+(-0.262606845513057-x(9))^2*x(3)+(-0.33686169809354-x(7))^2*x(4)+(0.311895838201148-x(8))^2*x(5)+(-0.262606845513057-x(9))^2*x(6)+(-0.326012953930913-x(7))^2*x(1)+(0.246607932730136-x(8))^2*x(2)+(1.98203409295263-x(9))^2*x(3)+(-0.326012953930913-x(7))^2*x(4)+(0.246607932730136-x(8))^2*x(5)+(1.98203409295263-x(9))^2*x(6)+(-0.235870641117781-x(7))^2*x(1)+(0.373681823824468-x(8))^2*x(2)+(-0.752264185266621-x(9))^2*x(3)+(-0.235870641117781-x(7))^2*x(4)+(0.373681823824468-x(8))^2*x(5)+(-0.752264185266621-x(9))^2*x(6)+(-0.259173217400973-x(7))^2*x(1)+(0.371885873436708-x(8))^2*x(2)+(0.843537851675487-x(9))^2*x(3)+(-0.259173217400973-x(7))^2*x(4)+(0.371885873436708-x(8))^2*x(5)+(0.843537851675487-x(9))^2*x(6)+(-0.331134723979505-x(7))^2*x(1)+(0.355888186968682-x(8))^2*x(2)+(0.67338903155342-x(9))^2*x(3)+(-0.331134723979505-x(7))^2*x(4)+(0.355888186968682-x(8))^2*x(5)+(0.67338903155342-x(9))^2*x(6)+(-0.281661336370684-x(7))^2*x(1)+(0.414484379551571-x(8))^2*x(2)+(1.26769122418522-x(9))^2*x(3)+(-0.281661336370684-x(7))^2*x(4)+(0.414484379551571-x(8))^2*x(5)+(1.26769122418522-x(9))^2*x(6)+(-0.202354697781567-x(7))^2*x(1)+(0.245117025060564-x(8))^2*x(2)+(-1.5939849451946-x(9))^2*x(3)+(-0.202354697781567-x(7))^2*x(4)+(0.245117025060564-x(8))^2*x(5)+(-1.5939849451946-x(9))^2*x(6)+(-0.319551133703855-x(7))^2*x(1)+(0.313625770708609-x(8))^2*x(2)+(-0.543445381850842-x(9))^2*x(3)+(-0.319551133703855-x(7))^2*x(4)+(0.313625770708609-x(8))^2*x(5)+(-0.543445381850842-x(9))^2*x(6)+(-0.155850649071239-x(7))^2*x(1)+(0.25775157320127-x(8))^2*x(2)+(-0.713516388434362-x(9))^2*x(3)+(-0.155850649071239-x(7))^2*x(4)+(0.25775157320127-x(8))^2*x(5)+(-0.713516388434362-x(9))^2*x(6)+(-0.304576566694759-x(7))^2*x(1)+(0.317398753412039-x(8))^2*x(2)+(-1.7605082114828-x(9))^2*x(3)+(-0.304576566694759-x(7))^2*x(4)+(0.317398753412039-x(8))^2*x(5)+(-1.7605082114828-x(9))^2*x(6)+(-0.292248443972072-x(7))^2*x(1)+(0.284228121402996-x(8))^2*x(2)+(-0.294661397524564-x(9))^2*x(3)+(-0.292248443972072-x(7))^2*x(4)+(0.284228121402996-x(8))^2*x(5)+(-0.294661397524564-x(9))^2*x(6)+(-0.376980602053093-x(7))^2*x(1)+(0.207111221107938-x(8))^2*x(2)+(-0.0563072421474938-x(9))^2*x(3)+(-0.376980602053093-x(7))^2*x(4)+(0.207111221107938-x(8))^2*x(5)+(-0.0563072421474938-x(9))^2*x(6)+(-0.270432830414563-x(7))^2*x(1)+(0.240726063750643-x(8))^2*x(2)+(1.29408020641401-x(9))^2*x(3)+(-0.270432830414563-x(7))^2*x(4)+(0.240726063750643-x(8))^2*x(5)+(1.29408020641401-x(9))^2*x(6)+(-0.310950522762625-x(7))^2*x(1)+(0.336727724536746-x(8))^2*x(2)+(-0.566939617089715-x(9))^2*x(3)+(-0.310950522762625-x(7))^2*x(4)+(0.336727724536746-x(8))^2*x(5)+(-0.566939617089715-x(9))^2*x(6)+(-0.293604928165698-x(7))^2*x(1)+(0.299144506677769-x(8))^2*x(2)+(0.108550944645801-x(9))^2*x(3)+(-0.293604928165698-x(7))^2*x(4)+(0.299144506677769-x(8))^2*x(5)+(0.108550944645801-x(9))^2*x(6)+(-0.356106500630077-x(7))^2*x(1)+(0.331063664630561-x(8))^2*x(2)+(0.601956022789838-x(9))^2*x(3)+(-0.356106500630077-x(7))^2*x(4)+(0.331063664630561-x(8))^2*x(5)+(0.601956022789838-x(9))^2*x(6)+(-0.337179742155787-x(7))^2*x(1)+(0.302191024664237-x(8))^2*x(2)+(-1.52407070138068-x(9))^2*x(3)+(-0.337179742155787-x(7))^2*x(4)+(0.302191024664237-x(8))^2*x(5)+(-1.52407070138068-x(9))^2*x(6)+(-0.3075525748703-x(7))^2*x(1)+(0.238154230453-x(8))^2*x(2)+(-1.39942354596344-x(9))^2*x(3)+(-0.3075525748703-x(7))^2*x(4)+(0.238154230453-x(8))^2*x(5)+(-1.39942354596344-x(9))^2*x(6)+(-0.403477920442852-x(7))^2*x(1)+(0.236345010791453-x(8))^2*x(2)+(-0.595607268823303-x(9))^2*x(3)+(-0.403477920442852-x(7))^2*x(4)+(0.236345010791453-x(8))^2*x(5)+(-0.595607268823303-x(9))^2*x(6)+(-0.316788193151706-x(7))^2*x(1)+(0.323455592528099-x(8))^2*x(2)+(-0.829414246455166-x(9))^2*x(3)+(-0.316788193151706-x(7))^2*x(4)+(0.323455592528099-x(8))^2*x(5)+(-0.829414246455166-x(9))^2*x(6);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)*x(1)+x(2)*x(2)+x(3)*x(3);
             x(4)*x(4)+x(5)*x(5)+x(6)*x(6);
             x(1)*x(4)+x(2)*x(5)+x(3)*x(6);
             x(4)*x(1)+x(5)*x(2)+x(6)*x(3)];
cl = [1,1,0,0]';
cu = [1,1,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCC';

% Starting Guess
x0 = [-0.241780064467559,-1.14650802158803,-0.215795595893526,-0.944605456286968,0.581414426969417,0.45619219348328,-0.303482374080703,0.303517548021908,-0.217317922829296]';

% Options
opts = struct('probname','pca');
opts.sense = 'min';