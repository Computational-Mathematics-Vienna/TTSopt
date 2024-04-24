% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 05:03:45
% Model: s374

% Objective
fun = @(x)x(10);

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-(1-x(10))^2+x(11);
             -(1-x(10))^2+x(12);
             -(1-x(10))^2+x(13);
             -(1-x(10))^2+x(14);
             -(1-x(10))^2+x(15);
             -(1-x(10))^2+x(16);
             -(1-x(10))^2+x(17);
             -(1-x(10))^2+x(18);
             -(1-x(10))^2+x(19);
             -(1-x(10))^2+x(20);
             (1+x(10))^2-x(21);
             (1+x(10))^2-x(22);
             (1+x(10))^2-x(23);
             (1+x(10))^2-x(24);
             (1+x(10))^2-x(25);
             (1+x(10))^2-x(26);
             (1+x(10))^2-x(27);
             (1+x(10))^2-x(28);
             (1+x(10))^2-x(29);
             (1+x(10))^2-x(30);
             x(10)^2-x(31);
             x(10)^2-x(32);
             x(10)^2-x(33);
             x(10)^2-x(34);
             x(10)^2-x(35);
             x(10)^2-x(36);
             x(10)^2-x(37);
             x(10)^2-x(38);
             x(10)^2-x(39);
             x(10)^2-x(40);
             x(10)^2-x(41);
             x(10)^2-x(42);
             x(10)^2-x(43);
             x(10)^2-x(44);
             x(10)^2-x(45);
             -(x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9))^2+x(11);
             -((0.996917515468375*x(1)+0.987689065295277*x(2)+0.972371542590523*x(3)+0.951059379407714*x(4)+0.923883964573544*x(5)+0.891012833679746*x(6)+0.852648636231354*x(7)+0.809027886318774*x(8)+0.760419504515733*x(9))^2+(0.078456786528392*x(1)+0.156429889395035*x(2)+0.233438606832989*x(3)+0.30900818248165*x(4)+0.382672732245021*x(5)+0.453978116452753*x(6)+0.52248473961716*x(7)+0.587770260525808*x(8)+0.649432195962017*x(9))^2)+x(12);
             -((0.987689065295277*x(1)+0.951059379407714*x(2)+0.891012833679746*x(3)+0.809027886318774*x(4)+0.70712315999226*x(5)+0.587807739564022*x(6)+0.454019393734376*x(7)+0.309052241682846*x(8)+0.156475645695905*x(9))^2+(0.156429889395035*x(1)+0.30900818248165*x(2)+0.453978116452753*x(3)+0.587770260525808*x(4)+0.707090402001441*x(5)+0.809000655938322*x(6)+0.890991801372532*x(7)+0.95104506302846*x(8)+0.987681817340002*x(9))^2)+x(13);
             -((0.972371542590523*x(1)+0.891012833679746*x(2)+0.760419504515733*x(3)+0.587807739564022*x(4)+0.3827155324173*x(5)+0.156475645695905*x(6)-0.0784106024509497*x(7)-0.308964122617269*x(8)-0.522445238578014*x(9))^2+(0.233438606832989*x(1)+0.453978116452753*x(2)+0.649432195962017*x(3)+0.809000655938322*x(4)+0.923866235580965*x(5)+0.987681817340002*x(6)+0.996921149050054*x(7)+0.951073693745832*x(8)+0.852672840359749*x(9))^2)+x(14);
             -((0.951059379407714*x(1)+0.809027886318774*x(2)+0.587807739564022*x(3)+0.309052241682846*x(4)+4.63267948797357e-5*x(5)-0.30896412261727*x(6)-0.587732780226139*x(7)-0.808973423821615*x(8)-0.951030744608099*x(9))^2+(0.30900818248165*x(1)+0.587770260525808*x(2)+0.809000655938322*x(3)+0.95104506302846*x(4)+0.999999998926914*x(5)+0.951073693745832*x(6)+0.809055114962913*x(7)+0.587845217340699*x(8)+0.309096300220763*x(9))^2)+x(15);
             -((0.923883964573544*x(1)+0.70712315999226*x(2)+0.3827155324173*x(3)+4.63267948797357e-5*x(4)-0.382629931251461*x(5)-0.707057642493085*x(6)-0.923848504605609*x(7)-0.999999995707656*x(8)-0.923919416610224*x(9))^2+(0.382672732245021*x(1)+0.707090402001441*x(2)+0.923866235580965*x(3)+0.999999998926914*x(4)+0.92390169158331*x(5)+0.707155916465471*x(6)+0.382758331768206*x(7)+9.26535896600462e-5*x(8)-0.382587129436711*x(9))^2)+x(16);
             -((0.891012833679746*x(1)+0.587807739564022*x(2)+0.156475645695905*x(3)-0.308964122617269*x(4)-0.707057642493085*x(5)-0.951030744608099*x(6)-0.987703554846558*x(7)-0.809082341870682*x(8)-0.454101945374324*x(9))^2+(0.453978116452753*x(1)+0.809000655938322*x(2)+0.987681817340002*x(3)+0.951073693745832*x(4)+0.707155916465472*x(5)+0.309096300220764*x(6)-0.156338375786216*x(7)-0.587695298665093*x(8)-0.890949731021484*x(9))^2)+x(17);
             -((0.852648636231354*x(1)+0.454019393734376*x(2)-0.07841060245095*x(3)-0.587732780226139*x(4)-0.923848504605609*x(5)-0.987703554846558*x(6)-0.760479673475948*x(7)-0.309140358095306*x(8)+0.233303464007877*x(9))^2+(0.52248473961716*x(1)+0.890991801372532*x(2)+0.996921149050054*x(3)+0.809055114962913*x(4)+0.382758331768206*x(5)-0.156338375786216*x(6)-0.64936173757769*x(7)-0.951016424146663*x(8)-0.972403976586853*x(9))^2)+x(18);
             -((0.809027886318774*x(1)+0.309052241682846*x(2)-0.30896412261727*x(3)-0.808973423821615*x(4)-0.999999995707656*x(5)-0.809082341870682*x(6)-0.309140358095306*x(7)+0.308876000899332*x(8)+0.808918954379672*x(9))^2+(0.587770260525808*x(1)+0.95104506302846*x(2)+0.951073693745832*x(3)+0.587845217340699*x(4)+9.26535896600462e-5*x(5)-0.587695298665094*x(6)-0.951016424146663*x(7)-0.951102316298533*x(8)-0.587920169109122*x(9))^2)+x(19);
             -((0.760419504515733*x(1)+0.156475645695905*x(2)-0.522445238578014*x(3)-0.951030744608099*x(4)-0.923919416610224*x(5)-0.454101945374324*x(6)+0.233303464007877*x(7)+0.808918954379672*x(8)+0.996932036957672*x(9))^2+(0.649432195962017*x(1)+0.987681817340002*x(2)+0.852672840359749*x(3)+0.309096300220763*x(4)-0.382587129436711*x(5)-0.890949731021484*x(6)-0.972403976586853*x(7)-0.587920169109122*x(8)+0.0782720492093242*x(9))^2)+x(20);
             -(x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9))^2+x(21);
             -((0.996917515468375*x(1)+0.987689065295277*x(2)+0.972371542590523*x(3)+0.951059379407714*x(4)+0.923883964573544*x(5)+0.891012833679746*x(6)+0.852648636231354*x(7)+0.809027886318774*x(8)+0.760419504515733*x(9))^2+(0.078456786528392*x(1)+0.156429889395035*x(2)+0.233438606832989*x(3)+0.30900818248165*x(4)+0.382672732245021*x(5)+0.453978116452753*x(6)+0.52248473961716*x(7)+0.587770260525808*x(8)+0.649432195962017*x(9))^2)+x(22);
             -((0.987689065295277*x(1)+0.951059379407714*x(2)+0.891012833679746*x(3)+0.809027886318774*x(4)+0.70712315999226*x(5)+0.587807739564022*x(6)+0.454019393734376*x(7)+0.309052241682846*x(8)+0.156475645695905*x(9))^2+(0.156429889395035*x(1)+0.30900818248165*x(2)+0.453978116452753*x(3)+0.587770260525808*x(4)+0.707090402001441*x(5)+0.809000655938322*x(6)+0.890991801372532*x(7)+0.95104506302846*x(8)+0.987681817340002*x(9))^2)+x(23);
             -((0.972371542590523*x(1)+0.891012833679746*x(2)+0.760419504515733*x(3)+0.587807739564022*x(4)+0.3827155324173*x(5)+0.156475645695905*x(6)-0.0784106024509497*x(7)-0.308964122617269*x(8)-0.522445238578014*x(9))^2+(0.233438606832989*x(1)+0.453978116452753*x(2)+0.649432195962017*x(3)+0.809000655938322*x(4)+0.923866235580965*x(5)+0.987681817340002*x(6)+0.996921149050054*x(7)+0.951073693745832*x(8)+0.852672840359749*x(9))^2)+x(24);
             -((0.951059379407714*x(1)+0.809027886318774*x(2)+0.587807739564022*x(3)+0.309052241682846*x(4)+4.63267948797357e-5*x(5)-0.30896412261727*x(6)-0.587732780226139*x(7)-0.808973423821615*x(8)-0.951030744608099*x(9))^2+(0.30900818248165*x(1)+0.587770260525808*x(2)+0.809000655938322*x(3)+0.95104506302846*x(4)+0.999999998926914*x(5)+0.951073693745832*x(6)+0.809055114962913*x(7)+0.587845217340699*x(8)+0.309096300220763*x(9))^2)+x(25);
             -((0.923883964573544*x(1)+0.70712315999226*x(2)+0.3827155324173*x(3)+4.63267948797357e-5*x(4)-0.382629931251461*x(5)-0.707057642493085*x(6)-0.923848504605609*x(7)-0.999999995707656*x(8)-0.923919416610224*x(9))^2+(0.382672732245021*x(1)+0.707090402001441*x(2)+0.923866235580965*x(3)+0.999999998926914*x(4)+0.92390169158331*x(5)+0.707155916465471*x(6)+0.382758331768206*x(7)+9.26535896600462e-5*x(8)-0.382587129436711*x(9))^2)+x(26);
             -((0.891012833679746*x(1)+0.587807739564022*x(2)+0.156475645695905*x(3)-0.308964122617269*x(4)-0.707057642493085*x(5)-0.951030744608099*x(6)-0.987703554846558*x(7)-0.809082341870682*x(8)-0.454101945374324*x(9))^2+(0.453978116452753*x(1)+0.809000655938322*x(2)+0.987681817340002*x(3)+0.951073693745832*x(4)+0.707155916465472*x(5)+0.309096300220764*x(6)-0.156338375786216*x(7)-0.587695298665093*x(8)-0.890949731021484*x(9))^2)+x(27);
             -((0.852648636231354*x(1)+0.454019393734376*x(2)-0.07841060245095*x(3)-0.587732780226139*x(4)-0.923848504605609*x(5)-0.987703554846558*x(6)-0.760479673475948*x(7)-0.309140358095306*x(8)+0.233303464007877*x(9))^2+(0.52248473961716*x(1)+0.890991801372532*x(2)+0.996921149050054*x(3)+0.809055114962913*x(4)+0.382758331768206*x(5)-0.156338375786216*x(6)-0.64936173757769*x(7)-0.951016424146663*x(8)-0.972403976586853*x(9))^2)+x(28);
             -((0.809027886318774*x(1)+0.309052241682846*x(2)-0.30896412261727*x(3)-0.808973423821615*x(4)-0.999999995707656*x(5)-0.809082341870682*x(6)-0.309140358095306*x(7)+0.308876000899332*x(8)+0.808918954379672*x(9))^2+(0.587770260525808*x(1)+0.95104506302846*x(2)+0.951073693745832*x(3)+0.587845217340699*x(4)+9.26535896600462e-5*x(5)-0.587695298665094*x(6)-0.951016424146663*x(7)-0.951102316298533*x(8)-0.587920169109122*x(9))^2)+x(29);
             -((0.760419504515733*x(1)+0.156475645695905*x(2)-0.522445238578014*x(3)-0.951030744608099*x(4)-0.923919416610224*x(5)-0.454101945374324*x(6)+0.233303464007877*x(7)+0.808918954379672*x(8)+0.996932036957672*x(9))^2+(0.649432195962017*x(1)+0.987681817340002*x(2)+0.852672840359749*x(3)+0.309096300220763*x(4)-0.382587129436711*x(5)-0.890949731021484*x(6)-0.972403976586853*x(7)-0.587920169109122*x(8)+0.0782720492093242*x(9))^2)+x(30);
             -((0.587807739564022*x(1)-0.308964122617269*x(2)-0.951030744608099*x(3)-0.809082341870682*x(4)-0.000138980384242394*x(5)+0.808918954379671*x(6)+0.951116624513056*x(7)+0.309228471853893*x(8)-0.587582846414509*x(9))^2+(0.809000655938322*x(1)+0.951073693745832*x(2)+0.309096300220764*x(3)-0.587695298665093*x(4)-0.999999990342226*x(5)-0.587920169109123*x(6)+0.308831939045964*x(7)+0.950987777100687*x(8)+0.809164012175173*x(9))^2)+x(31);
             -((0.454019393734376*x(1)-0.587732780226139*x(2)-0.987703554846558*x(3)-0.309140358095306*x(4)+0.70699211892404*x(5)+0.951116624513056*x(6)+0.156658667540168*x(7)-0.808864477993411*x(8)-0.891138987363851*x(9))^2+(0.890991801372532*x(1)+0.809055114962913*x(2)-0.156338375786216*x(3)-0.951016424146663*x(4)-0.707221424858789*x(5)+0.308831939045965*x(6)+0.987652804321711*x(7)+0.587995115830435*x(8)-0.453730432305494*x(9))^2)+x(32);
             -((0.309052241682846*x(1)-0.808973423821615*x(2)-0.809082341870682*x(3)+0.308876000899332*x(4)+0.999999982830625*x(5)+0.309228471853893*x(6)-0.808864477993411*x(7)-0.809191232136871*x(8)+0.308699749509403*x(9))^2+(0.95104506302846*x(1)+0.587845217340699*x(2)-0.587695298665094*x(3)-0.951102316298533*x(4)-0.00018530717852469*x(5)+0.950987777100687*x(6)+0.587995115830435*x(7)-0.587545359808766*x(8)-0.951159536908941*x(9))^2)+x(33);
             -((0.156475645695905*x(1)-0.951030744608099*x(2)-0.454101945374324*x(3)+0.808918954379671*x(4)+0.707254176778755*x(5)-0.587582846414509*x(6)-0.891138987363851*x(7)+0.308699749509401*x(8)+0.987746972625147*x(9))^2+(0.987681817340002*x(1)+0.309096300220764*x(2)-0.890949731021484*x(3)-0.587920169109123*x(4)+0.706959354863492*x(5)+0.809164012175173*x(6)-0.453730432305494*x(7)-0.951159536908942*x(8)+0.156063826910204*x(9))^2)+x(34);
             -((4.63267948799578e-5*x(1)-0.999999995707656*x(2)-0.000138980384242394*x(3)+0.999999982830625*x(4)+0.000231633972411061*x(5)-0.999999961368906*x(6)-0.000324287558592111*x(7)+0.999999931322499*x(8)+0.000416941141988366*x(9))^2+(0.999999998926914*x(1)+9.26535896604902e-5*x(2)-0.999999990342226*x(3)-0.000185307178525578*x(4)+0.999999973172851*x(5)+0.000277960765800306*x(6)-0.999999947418788*x(7)-0.00037061435068794*x(8)+0.999999913080038*x(9))^2)+x(35);
             -((-0.156384132758439*x(1)-0.951088006042782*x(2)+0.453854278762345*x(3)+0.80913679047687*x(4)-0.706926589285688*x(5)-0.588032587298223*x(6)+0.890844521682357*x(7)+0.30940469140642*x(8)-0.987616490356327*x(9))^2+(0.9876963111308*x(1)-0.308920062089799*x(2)-0.891075919127608*x(3)+0.587620331759198*x(4)+0.707286927180832*x(5)-0.808837237196309*x(6)-0.454308307417478*x(7)+0.950930458517182*x(8)+0.156887437279891*x(9))^2)+x(36);
             -((-0.30896412261727*x(1)-0.809082341870681*x(2)+0.808918954379672*x(3)+0.309228471853892*x(4)-0.999999961368906*x(5)+0.308699749509405*x(6)+0.809245666850217*x(7)-0.808755504389814*x(8)-0.309492797198844*x(9))^2+(0.951073693745832*x(1)-0.587695298665094*x(2)-0.587920169109121*x(3)+0.950987777100687*x(4)+0.00027796076579853*x(5)-0.951159536908941*x(6)+0.587470382814442*x(7)+0.58814499412915*x(8)-0.950901786980146*x(9))^2)+x(37);
             -((-0.453936838196814*x(1)-0.587882693855759*x(2)+0.987660060755831*x(3)-0.308787876529791*x(4)-0.707319676064948*x(5)+0.950944791224426*x(6)-0.156018067591342*x(7)-0.809300094616445*x(8)+0.890760319796485*x(9))^2+(0.891033864074694*x(1)-0.808946189968712*x(2)-0.156612912583181*x(3)+0.951130930686318*x(4)-0.7068938221907*x(5)-0.309360637514105*x(6)+0.987754201502106*x(7)-0.587395400776865*x(8)-0.454473379502105*x(9))^2)+x(38);
             -((-0.587732780226139*x(1)-0.309140358095306*x(2)+0.951116624513056*x(3)-0.808864477993411*x(4)-0.000324287558592111*x(5)+0.809245666850219*x(6)-0.950916123769078*x(7)+0.308523487519108*x(8)+0.588257389599739*x(9))^2+(0.809055114962913*x(1)-0.951016424146663*x(2)+0.308831939045965*x(3)+0.587995115830435*x(4)-0.999999947418788*x(5)+0.58747038281444*x(6)+0.309448744634699*x(7)-0.95121672485772*x(8)+0.80867375596176*x(9))^2)+x(39);
             -((-0.707057642493085*x(1)-0.000138980384242394*x(2)+0.707254176778755*x(3)-0.999999961368906*x(4)+0.706861053578594*x(5)+0.000416941141990142*x(6)-0.707450656420419*x(7)+0.999999845475625*x(8)-0.706664410050469*x(9))^2+(0.707155916465472*x(1)-0.999999990342226*x(2)+0.706959354863492*x(3)+0.000277960765800306*x(4)-0.707352423431037*x(5)+0.999999913080038*x(6)-0.706762738640287*x(7)-0.000555921510124755*x(8)+0.707548875745007*x(9))^2)+x(40);
             -((0.308876000899332*x(2)-0.808973423821615*x(1)+0.309228471853893*x(3)-0.809191232136871*x(4)+0.999999931322499*x(5)-0.808755504389813*x(6)+0.308523487519108*x(7)+0.309580900334375*x(8)-0.809408929305664*x(9))^2+(0.587845217340699*x(1)-0.951102316298533*x(2)+0.950987777100687*x(3)-0.587545359808766*x(4)-0.000370614350686163*x(5)+0.588144994129151*x(6)-0.95121672485772*x(7)+0.950873107279913*x(8)-0.58724542157454*x(9))^2)+x(41);
             -((0.587657815842754*x(2)-0.890970767153096*x(1)-0.156201102856767*x(3)-0.309316582957848*x(4)+0.707385169279023*x(5)-0.951202430932659*x(6)+0.987601949932901*x(7)-0.808646503014561*x(8)+0.453358840360203*x(9))^2+(0.454060670041596*x(1)-0.809109567042019*x(2)+0.987725273275079*x(3)-0.950959121890779*x(4)+0.706828283449444*x(5)-0.308567554010138*x(6)-0.156978942819512*x(7)+0.588294852231703*x(8)-0.891328088790683*x(9))^2)+x(42);
             -((0.808918954379672*x(2)-0.951030744608099*x(1)-0.587582846414509*x(3)+0.308699749509403*x(4)+0.00041694114198659*x(5)-0.309492797198847*x(6)+0.588257389599736*x(7)-0.809408929305664*x(8)+0.951288163860283*x(9))^2+(0.309096300220763*x(1)-0.587920169109122*x(2)+0.809164012175173*x(3)-0.951159536908941*x(4)+0.999999913080038*x(5)-0.950901786980145*x(6)+0.808673755961762*x(7)-0.58724542157454*x(8)+0.3083031451337*x(9))^2)+x(43);
             -((0.951002101644182*x(2)-0.987674567264993*x(1)-0.890886611154039*x(3)+0.808809994663302*x(4)-0.706795511803316*x(5)+0.587357907867057*x(6)-0.453441423161216*x(7)+0.3083472149345*x(8)-0.15565198099438*x(9))^2+(0.156521401660952*x(1)-0.309184415306382*x(2)+0.454225765524669*x(3)-0.588070057503993*x(4)+0.707417913608843*x(5)-0.809327305894243*x(6)+0.891286079640836*x(7)-0.951273880142905*x(8)+0.987811956200432*x(9))^2)+x(44);
             -((0.999999982830625*x(2)-0.999999995707656*x(1)-0.999999961368906*x(3)+0.999999931322499*x(4)-0.999999892691406*x(5)+0.999999845475625*x(6)-0.999999789675159*x(7)+0.999999725290006*x(8)-0.999999652320168*x(9))^2+(9.26535896604902e-5*x(1)-0.000185307178525578*x(2)+0.000277960765800306*x(3)-0.00037061435068794*x(4)+0.000463267932393965*x(5)-0.000555921510124755*x(6)+0.000648575083081357*x(7)-0.000741228650470145*x(8)+0.000833882211495716*x(9))^2)+x(45)];
cl = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','s374');
opts.sense = 'min';
