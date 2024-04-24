% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 18:22:38
% Model: blend

% Objective
fun = @(x)0.0693*x(1)+0.0577*x(2)+0.05*x(3)+0.2*x(4)+0.26*x(5)+0.55*x(6)+0.06*x(7)+0.1*x(8)+0.12*x(9)+0.18*x(10)+0.1*x(11)+0.09*x(12)+0.0693*x(13)+0.0577*x(14)+0.05*x(15)+0.2*x(16)+0.26*x(17)+0.55*x(18)+0.06*x(19)+0.1*x(20)+0.12*x(21)+0.18*x(22)+0.1*x(23)+0.09*x(24);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(13)/(x(13)+0.758671713695802*x(14)+0.758671713695802*x(15)+0.320917030567686*x(16)+0.364714640198511*x(17)+0.258010532475132*x(18)+0.705492712116606*x(19)+0.519119378384742*x(20)+0.330477796514896*x(21)+0.53442738191911*x(22)+0.957108747558064*x(23)+0.733713829309283*x(24))-123.7*x(1)/(40*x(1)+30.3468685478321*x(2)+30.3468685478321*x(3)+12.8366812227074*x(4)+14.5885856079404*x(5)+10.3204212990053*x(6)+28.2197084846642*x(7)+20.7647751353897*x(8)+13.2191118605958*x(9)+21.3770952767644*x(10)+38.2843499023226*x(11)+29.3485531723713*x(12));
             x(14)/(1.31809316460289*x(13)+x(14)+x(15)+0.422998544395924*x(16)+0.480727874276261*x(17)+0.340081919251024*x(18)+0.929905121518056*x(19)+0.684247704261832*x(20)+0.43560052463931*x(21)+0.704425079084199*x(22)+1.26155849793792*x(23)+0.967103183187181*x(24))-31.7*x(2)/(52.7237265841158*x(1)+40*x(2)+40*x(3)+16.919941775837*x(4)+19.2291149710505*x(5)+13.603276770041*x(6)+37.1962048607222*x(7)+27.3699081704733*x(8)+17.4240209855724*x(9)+28.177003163368*x(10)+50.4623399175168*x(11)+38.6841273274872*x(12));
             x(15)/(1.31809316460289*x(13)+x(14)+x(15)+0.422998544395924*x(16)+0.480727874276261*x(17)+0.340081919251024*x(18)+0.929905121518056*x(19)+0.684247704261832*x(20)+0.43560052463931*x(21)+0.704425079084199*x(22)+1.26155849793792*x(23)+0.967103183187181*x(24))-45.7*x(3)/(52.7237265841158*x(1)+40*x(2)+40*x(3)+16.919941775837*x(4)+19.2291149710505*x(5)+13.603276770041*x(6)+37.1962048607222*x(7)+27.3699081704733*x(8)+17.4240209855724*x(9)+28.177003163368*x(10)+50.4623399175168*x(11)+38.6841273274872*x(12));
             x(16)/(3.11607021363451*x(13)+2.36407432897454*x(14)+2.36407432897454*x(15)+x(16)+1.13647642679901*x(17)+0.803978935049737*x(18)+2.19836482616278*x(19)+1.61761243230516*x(20)+1.02979201798763*x(21)+1.66531324614881*x(22)+2.98241805947471*x(23)+2.28630380884237*x(24))-14.7*x(4)/(124.64280854538*x(1)+94.5629731589814*x(2)+94.5629731589814*x(3)+40*x(4)+45.4590570719603*x(5)+32.1591574019895*x(6)+87.9345930465113*x(7)+64.7044972922063*x(8)+41.1916807195053*x(9)+66.6125298459525*x(10)+119.296722378988*x(11)+91.4521523536949*x(12));
             x(17)/(2.74186964212818*x(13)+2.08017894012388*x(14)+2.08017894012388*x(15)+0.879912663755459*x(16)+x(17)+0.707431246342891*x(18)+1.9343690500952*x(19)+1.42335766423358*x(20)+0.906127037661608*x(21)+1.46533021440605*x(22)+2.62426741914478*x(23)+2.01174767459274*x(24))-84.7*x(5)/(109.674785685127*x(1)+83.2071576049553*x(2)+83.2071576049553*x(3)+35.1965065502183*x(4)+40*x(5)+28.2972498537156*x(6)+77.3747620038079*x(7)+56.9343065693431*x(8)+36.2450815064643*x(9)+58.613208576242*x(10)+104.970696765791*x(11)+80.4699069837097*x(12));
             x(18)/(3.87581076790493*x(13)+2.94046799724708*x(14)+2.94046799724708*x(15)+1.24381368267831*x(16)+1.41356492969396*x(17)+x(18)+2.7343562503*x(19)+2.0120084765717*x(20)+1.28086940228593*x(21)+2.07133940150533*x(22)+3.70957238984155*x(23)+2.84373596019768*x(24))-27.7*x(6)/(155.032430716197*x(1)+117.618719889883*x(2)+117.618719889883*x(3)+49.7525473071325*x(4)+56.5425971877585*x(5)+40*x(6)+109.374250012*x(7)+80.4803390628679*x(8)+51.2347760914371*x(9)+82.8535760602131*x(10)+148.382895593662*x(11)+113.749438407907*x(12));
             x(19)/(1.41744908604345*x(13)+1.07537852718513*x(14)+1.07537852718513*x(15)+0.454883551673945*x(16)+0.516964433416046*x(17)+0.36571679344646*x(18)+x(19)+0.735825288438898*x(20)+0.468435450627693*x(21)+0.757523604057837*x(22)+1.35665291947037*x(23)+1.04000199677189*x(24))-49.7*x(7)/(56.6979634417381*x(1)+43.0151410874054*x(2)+43.0151410874054*x(3)+18.1953420669578*x(4)+20.6785773366419*x(5)+14.6286717378584*x(6)+40*x(7)+29.4330115375559*x(8)+18.7374180251077*x(9)+30.3009441623135*x(10)+54.2661167788148*x(11)+41.6000798708754*x(12));
             x(20)/(1.92633918446954*x(13)+1.46145905024088*x(14)+1.46145905024088*x(15)+0.618195050946143*x(16)+0.702564102564103*x(17)+0.497015798712697*x(18)+1.35901825570791*x(19)+x(20)+0.636612329023796*x(21)+1.02948840704425*x(22)+1.84371608421967*x(23)+1.41338169958567*x(24))-7.1*x(8)/(77.0535673787817*x(1)+58.4583620096352*x(2)+58.4583620096352*x(3)+24.7278020378457*x(4)+28.1025641025641*x(5)+19.8806319485079*x(6)+54.3607302283163*x(7)+40*x(8)+25.4644931609518*x(9)+41.17953628177*x(10)+73.7486433687866*x(11)+56.5352679834268*x(12));
             x(21)/(3.02592189413526*x(13)+2.29568134893324*x(14)+2.29568134893324*x(15)+0.971069868995633*x(16)+1.10359801488834*x(17)+0.780719719133997*x(18)+2.1347658437465*x(19)+1.57081469272428*x(20)+x(21)+1.61713551577442*x(22)+2.89613631430432*x(23)+2.22016074013678*x(24))-2.1*x(9)/(121.03687576541*x(1)+91.8272539573297*x(2)+91.8272539573297*x(3)+38.8427947598253*x(4)+44.1439205955335*x(5)+31.2287887653599*x(6)+85.39063374986*x(7)+62.832587708971*x(8)+40*x(9)+64.6854206309768*x(10)+115.845452572173*x(11)+88.8064296054712*x(12));
             x(22)/(1.87116160928925*x(13)+1.41959738472127*x(14)+1.41959738472127*x(15)+0.600487627365357*x(16)+0.682440033085194*x(17)+0.482779403159743*x(18)+1.32009087854594*x(19)+0.971356251471627*x(20)+0.618377365561177*x(21)+x(22)+1.79090514434556*x(23)+1.37289714960813*x(24))-17.7*x(10)/(74.8464643715698*x(1)+56.7838953888507*x(2)+56.7838953888507*x(3)+24.0195050946143*x(4)+27.2976013234078*x(5)+19.3111761263897*x(6)+52.8036351418377*x(7)+38.8542500588651*x(8)+24.7350946224471*x(9)+40*x(10)+71.6362057738225*x(11)+54.9158859843253*x(12));
             x(23)/(1.0448133532907*x(13)+0.79267033723331*x(14)+0.79267033723331*x(15)+0.335298398835517*x(16)+0.381058726220017*x(17)+0.269572849619661*x(18)+0.7371082062687*x(19)+0.542382858488345*x(20)+0.345287614764849*x(21)+0.558376864993273*x(22)+x(23)+0.766594006356391*x(24))-0.85*x(11)/(41.7925341316279*x(1)+31.7068134893324*x(2)+31.7068134893324*x(3)+13.4119359534207*x(4)+15.2423490488007*x(5)+10.7829139847864*x(6)+29.484328250748*x(7)+21.6953143395338*x(8)+13.811504590594*x(9)+22.3350745997309*x(10)+40*x(11)+30.6637602542556*x(12));
             x(24)/(1.36292919671611*x(13)+1.03401582931865*x(14)+1.03401582931865*x(15)+0.437387190684134*x(16)+0.497080231596361*x(17)+0.351650087770626*x(18)+0.961536615414153*x(19)+0.707522957381681*x(20)+0.450417837736556*x(21)+0.728386682342104*x(22)+1.30447145647927*x(23)+x(24))-0.64*x(12)/(54.5171678686443*x(1)+41.360633172746*x(2)+41.360633172746*x(3)+17.4954876273654*x(4)+19.8832092638544*x(5)+14.066003510825*x(6)+38.4614646165661*x(7)+28.3009182952672*x(8)+18.0167135094622*x(9)+29.1354672936842*x(10)+52.1788582591708*x(11)+40*x(12));
             x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21)+x(22)+x(23)+x(24);
             0.0320266461696131*x(1)+0.0276854928017719*x(2)+0.0287488500459982*x(3)+0.0107874865156419*x(4)+0.0120918984280532*x(5)+0.0109170305676856*x(6)+0.0170334537030728*x(7)+0.0120918984280532*x(8)+0.0123762376237624*x(9)+0.0154997907528248*x(10)+0.0202429149797571*x(11)+0.0203665987780041*x(12)+3.22548884201932*x(13)+2.44708714728149*x(14)+2.44708714728149*x(15)+1.03511430131004*x(16)+1.17638300248139*x(17)+0.832210093622001*x(18)+2.27555887105806*x(19)+1.67441376265599*x(20)+1.06595244519393*x(21)+1.72378955724969*x(22)+3.08714358584762*x(23)+2.36658576967236*x(24)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,1,1.671]';
cu = [0,0,0,0,0,0,0,0,0,0,0,0,1,1.671]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','blend');
opts.sense = 'min';
