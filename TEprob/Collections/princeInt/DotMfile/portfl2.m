% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 14:44:18
% Model: portfl2

% Objective
fun = @(x)(-0.01997628+0.02802144*x(1)+0.06839808*x(2)+0.03009985*x(3)+0.02765259*x(4)+0.01934344*x(5)+0.02026545*x(6)+0.02575342*x(7)+0.01944241*x(8)+0.03257355*x(9)+0.02936247*x(10)+0.0142632*x(11)+0.04961332*x(12))^2+(-0.03237346-0.000237*x(1)+0.11464542*x(2)+0.00113202*x(3)+0.00825095*x(4)-0.0001824*x(5)+0.02412925*x(6)+0.04711538*x(7)-0.0001799*x(8)+0.11882583*x(9)+0.02728753*x(10)+0.02913527*x(11)+0.10977209*x(12))^2+(-0.04106029+0.01635846*x(1)+0.02391108*x(2)+0.02014134*x(3)+0.02300206*x(4)+0.01368738*x(5)+0.02670218*x(6)+0.04213856*x(7)+0.01340651*x(8)+0.0200098*x(9)+0.01895524*x(10)+0.00045297*x(11)+0.04399932*x(12))^2+(-0.01081711+0.01119664*x(1)+0.01730916*x(2)+0.00609629*x(3)-0.0109541*x(4)-0.0011702*x(5)+0.00685114*x(6)+0.00156648*x(7)-0.0015981*x(8)+0.00994581*x(9)+0.02426429*x(10)-0.0110172*x(11)-0.0011856*x(12))^2+(-0.02543629-0.0063052*x(1)+0.03985465*x(2)+0.00041314*x(3)+0.0075051*x(4)+0.0063987*x(5)+0.00436018*x(6)+0.04701857*x(7)+0.0084482*x(8)+0.04788101*x(9)-0.0079572*x(10)+0.00610407*x(11)+0.04759078*x(12))^2+(-0.00561933+0.00162501*x(1)-0.0284541*x(2)-0.0022713*x(3)-0.0013018*x(4)-0.0012536*x(5)-0.0003288*x(6)-0.0128839*x(7)-0.0003527*x(8)-0.023203*x(9)-0.0007959*x(10)+0.02745336*x(11)-0.0030388*x(12))^2+(0.00470983+0.01506489*x(1)+0.03014387*x(2)+0.01628035*x(3)+0.02042146*x(4)+0.01631848*x(5)+0.01644953*x(6)+0.02269933*x(7)+0.01270289*x(8)+0.02328976*x(9)+0.03278387*x(10)+0.01660762*x(11)+0.02769167*x(12))^2+(-0.0044915+0.01248192*x(1)-0.0043781*x(2)+0.01568015*x(3)+0.01036122*x(4)+0.00855757*x(5)+0.01831952*x(6)+0.00268196*x(7)+0.00749129*x(8)-0.0285306*x(9)-0.0042126*x(10)+0.01974878*x(11)-0.0027146*x(12))^2+(-0.0131747+0.00819364*x(1)+0.04352908*x(2)+0.00915592*x(3)+0.00786683*x(4)+0.00629811*x(5)+0.01716356*x(6)+0.02979155*x(7)+0.00717621*x(8)+0.01515152*x(9)+0.01608771*x(10)+0.0011392*x(11)+0.02207884*x(12))^2+(0.00922058+0.00469729*x(1)-0.0313116*x(2)-0.0006622*x(3)-0.0013241*x(4)+0.00756259*x(5)-0.0061246*x(6)-0.0151365*x(7)+0.00429221*x(8)-0.0187389*x(9)-0.0134287*x(10)-0.0152905*x(11)-0.0142039*x(12))^2+(0.02131721+0.0141744*x(1)-0.0604625*x(2)+0.01722995*x(3)+0.02267969*x(4)+0.01708222*x(5)+0.01024964*x(6)+0.00081848*x(7)+0.01931789*x(8)-0.0351782*x(9)+0.01224441*x(10)+0.00137224*x(11)-0.0637882*x(12))^2+(0.0161736+0.02114737*x(1)+0.03727582*x(2)+0.01700326*x(3)+0.01487547*x(4)+0.01891594*x(5)+0.02626665*x(6)+0.06069968*x(7)+0.0208805*x(8)+0.04382249*x(9)+0.0277158*x(10)+0.04046159*x(11)+0.01581788*x(12))^2+(-0.03444857+0.00566105*x(1)+0.01361736*x(2)+0.00634168*x(3)+0.00531164*x(4)+0.00524476*x(5)+0.00958273*x(6)-0.0102801*x(7)+0.0122392*x(8)+0.01976048*x(9)+0.01154154*x(10)+0.01122972*x(11)+0.0276185*x(12))^2+(-0.01110046-0.0045603*x(1)-0.0138246*x(2)-0.0091024*x(3)-0.0015382*x(4)-0.0021532*x(5)-0.001622*x(6)-0.0141954*x(7)-0.0060861*x(8)+6.52e-5*x(9)-5.65e-5*x(10)-0.0300932*x(11)+0.03916249*x(12))^2+(-0.0109786+0.01052255*x(1)+0.00565259*x(2)+0.0141967*x(3)+0.01232501*x(4)+0.00431571*x(5)+0.0159456*x(6)-0.0088682*x(7)+0.01232854*x(8)+0.00978601*x(9)+0.01739818*x(10)+0.07110043*x(11)+0.01596138*x(12))^2+(0.00335938+0.00701282*x(1)-0.004328*x(2)+0.01805168*x(3)+0.021637*x(4)+0.0098339*x(5)+0.00527126*x(6)+0.02879164*x(7)+0.00701669*x(8)-0.0084636*x(9)+0.01421354*x(10)+0.02401848*x(11)-0.006546*x(12))^2+(0.00039194+0.00499437*x(1)-0.0246133*x(2)-0.0075903*x(3)-0.0068652*x(4)+0.00196399*x(5)-0.0166735*x(6)-0.0216998*x(7)+0.00448502*x(8)-0.0374014*x(9)-0.0241966*x(10)-0.0161092*x(11)-0.0384127*x(12))^2+(0.02195734+0.02714435*x(2)-0.0169895*x(3)-0.0156514*x(4)+0.00236851*x(5)-0.025704*x(6)-0.0183082*x(7)+0.00039866*x(8)-0.0066337*x(9)-0.0285554*x(10)-0.0216779*x(11)+0.00045683*x(12))^2+(0.01395125+0.00524953*x(1)-0.0513326*x(2)-0.0010204*x(3)-0.0011925*x(4)+0.01417746*x(5)+0.00830207*x(6)-0.0087868*x(7)+0.01235355*x(8)-0.0414991*x(9)-0.0282975*x(10)-0.0265765*x(11)-0.121106*x(12))^2+(0.00276468+0.02764239*x(1)-0.0578522*x(2)+0.0119382*x(3)+0.03608384*x(4)+0.02771752*x(5)-0.1286899*x(6)+0.04911805*x(7)+0.0371595*x(8)+0.02509598*x(9)-0.083264*x(10)-0.0605873*x(11)+0.01876118*x(12))^2+(0.04476517+0.0328613*x(1)+0.11776573*x(2)+0.04706328*x(3)+0.03060179*x(4)+0.01993433*x(5)+0.06852863*x(6)+0.06639076*x(7)+0.0224685*x(8)+0.06727235*x(9)+0.03474878*x(10)+0.00856515*x(11)+0.06550317*x(12))^2+(-0.0524968+0.01121753*x(1)-0.0294416*x(2)-0.0065674*x(3)-0.0001242*x(4)+0.00774124*x(5)-0.0098919*x(6)+0.03177555*x(7)+0.00853749*x(8)+0.03385535*x(9)-0.0091473*x(10)-0.0087101*x(11)+0.01441183*x(12))^2+(0.00851582+0.01998054*x(1)+0.04846583*x(2)+0.00533721*x(3)+0.01261183*x(4)+0.01201704*x(5)-0.0326849*x(6)+0.02006112*x(7)+0.02164152*x(8)+0.0318039*x(9)+0.02921277*x(10)+0.03675771*x(11)+0.04188729*x(12))^2+(-0.0193047+0.01507346*x(1)+0.0021062*x(2)+0.0316723*x(3)+0.01822198*x(4)+0.01525628*x(5)+0.01682627*x(6)+0.00975647*x(7)+0.01433821*x(8)+0.01803119*x(9)+0.03329852*x(10)-0.0057913*x(11)+0.00322029*x(12))^2+(-0.02383436+0.00545113*x(1)+0.07112832*x(2)-0.0015788*x(3)+0.0208484*x(4)+0.02701902*x(5)-0.0275797*x(6)+0.10423007*x(7)+0.03395369*x(8)+0.04092867*x(9)+0.00214044*x(10)+0.00028415*x(11)+0.08396028*x(12))^2+(-0.02649318+0.01265034*x(1)-0.0261799*x(2)+0.04234509*x(3)+0.02921733*x(4)+0.00641488*x(5)-0.0260791*x(6)-0.010197*x(7)+0.0005496*x(8)-0.0186249*x(9)+0.02699496*x(10)+0.04552234*x(11)+0.00564501*x(12))^2+(0.01649359+0.00086154*x(1)-0.0217402*x(2)+0.02123953*x(3)+0.01559901*x(4)-0.0007161*x(5)+0.08026138*x(6)+0.01517472*x(7)+0.00205987*x(8)-0.0076148*x(9)-0.021606*x(10)+0.0116832*x(11)+0.00358885*x(12))^2+(-0.01863354+0.01629365*x(1)+0.01046127*x(2)+0.02167813*x(3)+0.00265402*x(4)+0.00121838*x(5)+0.04569663*x(6)+0.040661*x(7)+0.00356311*x(8)-0.0016527*x(9)-0.0312352*x(10)-0.002417*x(11)-0.041766*x(12))^2+(-0.03071646+0.02674088*x(1)+0.08218002*x(2)+0.02929614*x(3)+0.03300293*x(4)+0.01281317*x(5)+0.06344316*x(6)+0.09204718*x(7)+0.02239519*x(8)+0.09317725*x(9)+0.07112818*x(10)+0.06218872*x(11)+0.07382422*x(12))^2+(-0.05287288-0.0028283*x(1)+0.06404283*x(2)-0.0015172*x(3)+0.01390252*x(4)+0.03569157*x(5)+0.02979956*x(6)+0.075359*x(7)+0.02758114*x(8)+0.04970254*x(9)-0.0417093*x(10)+0.0644405*x(11)+0.10782392*x(12))^2+(-0.04607389+0.00608639*x(1)-0.0309792*x(2)-0.0125235*x(3)+0.02618702*x(4)+0.03316501*x(5)+0.04064994*x(6)-0.0047691*x(7)+0.04185351*x(8)-0.0021639*x(9)+0.09619381*x(10)+0.01547711*x(11)-0.0317326*x(12))^2+(-0.0049013-0.0120404*x(1)-0.03096*x(2)+0.03889626*x(3)+0.02305596*x(4)+0.02476882*x(5)+0.01009655*x(6)-0.0071033*x(7)+0.02545069*x(8)-0.0077451*x(9)+0.00996696*x(10)-0.0056861*x(11)-0.055244*x(12))^2+(-0.04302799+0.0242554*x(1)+0.06890906*x(2)+0.02053325*x(3)+0.00676091*x(4)+0.01933613*x(5)+0.01584007*x(6)+0.02237111*x(7)+0.0194659*x(8)+0.03382422*x(9)+0.04349692*x(10)+0.03572692*x(11)+0.08599692*x(12))^2+(-0.01793607+0.02048871*x(1)-0.0099322*x(2)-0.0012012*x(3)-0.0050875*x(4)-0.0151122*x(5)-0.0668351*x(6)+0.01449517*x(7)-0.014977*x(8)-0.0108723*x(9)-0.0438425*x(10)+0.01895492*x(11)-0.0217804*x(12))^2+(0.001762+0.02713002*x(1)+0.02470467*x(2)+0.01257767*x(3)+0.02495398*x(4)-0.0032742*x(5)+0.0445981*x(6)-0.0150544*x(7)+0.00411921*x(8)-0.0003053*x(9)+0.00419287*x(10)+0.02731691*x(11)+0.03927492*x(12))^2+(-0.03769779+0.00382081*x(1)+0.01070497*x(2)+0.00841293*x(3)-0.0082318*x(4)-0.0117874*x(5)+0.00965304*x(6)-0.0181191*x(7)-0.0118846*x(8)+0.00463222*x(9)+0.02622986*x(10)+0.00391517*x(11)+0.05519274*x(12))^2+(0.01069194-0.0174316*x(1)-0.0648169*x(2)-0.0258624*x(3)-0.0199205*x(4)-0.0197497*x(5)-0.0387893*x(6)+0.01805729*x(7)-0.0260699*x(8)-0.0396736*x(9)-0.0362526*x(10)-0.0623984*x(11)-0.0400785*x(12))^2+(0.05121277-0.0057826*x(1)-0.0867818*x(2)-0.0102267*x(3)-0.0122157*x(4)+0.00079793*x(5)+0.04251449*x(6)-0.0015568*x(7)-0.0097793*x(8)-0.0400464*x(9)-0.003085*x(10)-0.0530907*x(11)-0.0666771*x(12))^2+(0.01676267-0.0075103*x(1)-0.0118189*x(2)-0.004479*x(3)-0.0138737*x(4)-0.0090359*x(5)+0.00283502*x(6)+0.0053461*x(7)-0.0127247*x(8)-0.016379*x(9)-0.0045062*x(10)+0.00024404*x(11)-0.005139*x(12))^2+(0.04179831-0.0137687*x(1)-0.0292303*x(2)-0.0310854*x(3)-0.0156497*x(4)-0.0077774*x(5)-0.0290312*x(6)-0.0277516*x(7)-0.0138505*x(8)-0.0098904*x(9)-0.0205606*x(10)-0.0496492*x(11)+0.0202388*x(12))^2+(0.04932335+0.00490366*x(1)-0.0474585*x(2)-0.0043269*x(3)-0.0069589*x(4)+0.0058112*x(5)-0.0475923*x(6)+0.00586828*x(7)+0.00429157*x(8)-0.0321688*x(9)-0.0288991*x(10)-0.0034015*x(11)-0.0702606*x(12))^2+(0.02471277+0.00430564*x(1)+0.01299229*x(2)+0.0192379*x(3)+0.01854347*x(4)+0.0069869*x(5)-0.0070546*x(6)-0.0188615*x(7)+0.01786986*x(8)+0.01481136*x(9)+0.02540138*x(10)+0.00772798*x(11)+0.02115788*x(12))^2+(-0.00948359-0.015834*x(1)+0.02902949*x(2)-0.030522*x(3)-0.0196348*x(4)-0.0068717*x(5)-0.0179988*x(6)-0.0192241*x(7)-0.0171108*x(8)-0.005114*x(9)-0.0243807*x(10)+0.00134202*x(11)+0.01612974*x(12))^2+(0.02326606-0.0020909*x(1)+0.00934787*x(2)+0.00311075*x(3)-0.0026452*x(4)-0.0115544*x(5)+0.01344507*x(6)+0.009359*x(7)-0.0081542*x(8)-0.0292249*x(9)+0.0041841*x(10)-0.0003191*x(11)-0.0542889*x(12))^2+(-0.01390141+0.01344508*x(1)-0.0394707*x(2)+0.0101588*x(3)-0.0041136*x(4)+0.00686421*x(5)-0.0137426*x(6)-0.0105551*x(7)+0.00593762*x(8)-0.0286768*x(9)+0.00393836*x(10)+0.01589632*x(11)-0.0285207*x(12))^2+(-0.01200623+0.01659775*x(1)+0.02680211*x(2)+0.02429471*x(3)+0.02315343*x(4)+0.0161998*x(5)+0.00554952*x(6)+0.02764189*x(7)+0.01381592*x(8)+0.03834375*x(9)+0.01091591*x(10)+0.02193175*x(11)+0.08278316*x(12))^2+(0.0010985-0.0014688*x(1)-0.0302386*x(2)-0.0176725*x(3)-0.0198672*x(4)-0.009432*x(5)-0.0219556*x(6)-0.0143381*x(7)-0.0106845*x(8)-0.0092614*x(9)-0.0323941*x(10)-0.0211536*x(11)+0.01565405*x(12))^2+(0.01546921+0.0115983*x(1)-0.0227665*x(2)+0.01294056*x(3)+0.01392878*x(4)+0.02105545*x(5)+0.00705348*x(6)-0.0082625*x(7)+0.01985384*x(8)-0.0008335*x(9)-0.0103458*x(10)+0.00986305*x(11)-0.0458125*x(12))^2+(-0.00930821+0.01107383*x(1)+0.02188145*x(2)+0.00420648*x(3)-0.0044366*x(4)+0.00866881*x(5)-0.0832572*x(6)+0.00481108*x(7)+0.01020926*x(8)-0.014421*x(9)+0.00099841*x(10)-0.0356454*x(11)-0.0263263*x(12))^2+(0.05444887+0.01687134*x(1)-0.0726653*x(2)+0.00449915*x(3)+0.00977181*x(4)+0.0170584*x(5)-0.0902205*x(6)+0.08875394*x(7)+0.01952169*x(8)-0.0623375*x(9)-0.0562074*x(10)-0.0262546*x(11)-0.0636084*x(12))^2+(-0.02379838+0.01485068*x(1)+0.06472895*x(2)+0.00212687*x(4)+0.01658024*x(5)+0.04980283*x(6)+0.05749222*x(7)+0.02056397*x(8)+0.02637348*x(9)+0.0586224*x(10)+0.01305068*x(11)+0.02148485*x(12))^2+(-0.05456901+0.03430532*x(1)+0.04080201*x(2)+0.06800865*x(3)+0.0311986*x(4)+0.02052897*x(5)+0.07888147*x(6)+0.05203367*x(7)+0.02473456*x(8)+0.05629201*x(9)+0.03905103*x(10)+0.04276746*x(11)+0.05500192*x(12))^2+(0.00570933-0.0043532*x(1)-0.0176916*x(2)-0.0112316*x(3)+0.00308721*x(4)-0.0102431*x(5)-0.0188265*x(6)-0.0166313*x(7)-0.0103614*x(8)-0.0117171*x(9)-0.0012433*x(10)-0.04001*x(11)-0.0387375*x(12))^2+(-0.02049717+0.0195711*x(1)-0.0174385*x(2)+0.02515601*x(3)+0.03221339*x(4)+0.01558603*x(5)+0.05618347*x(6)-0.0419138*x(7)+0.01671624*x(8)-0.0052961*x(9)+0.04589181*x(10)+0.02436634*x(11)+0.03604668*x(12))^2+(-0.03162393+0.01179293*x(1)+0.11707885*x(2)+0.02306449*x(3)+0.01610098*x(4)+0.01086556*x(5)+0.06146955*x(6)-0.0565902*x(7)+0.01351589*x(8)+0.07478219*x(9)+0.02250717*x(10)+0.04495887*x(11)+0.1128135*x(12))^2+(-0.03721348+0.00847671*x(1)-0.0196384*x(2)+0.0073444*x(3)-0.0060155*x(4)+0.01153823*x(5)-0.0185803*x(6)-0.0079726*x(7)+0.00889043*x(8)-0.0229678*x(9)-0.0007407*x(10)-0.0062248*x(11)-0.0066382*x(12))^2+(0.0214338+0.0146095*x(1)+0.00977683*x(2)+0.01564303*x(3)+0.01156268*x(4)+0.01518881*x(5)+0.01385571*x(6)-0.0460882*x(7)+0.01487755*x(8)+0.00530076*x(9)+0.0114906*x(10)+0.00411447*x(11)-0.0038363*x(12))^2+(-0.01360452+0.01750579*x(1)+0.04120185*x(2)+0.03084961*x(3)+0.03117856*x(4)+0.02004731*x(5)+0.04288407*x(6)+0.04327144*x(7)+0.02683807*x(8)+0.03977533*x(9)+0.0482672*x(10)+0.02287322*x(11)+0.03565365*x(12))^2+(-0.02610563+0.00833576*x(1)-0.0051549*x(2)+0.01560227*x(3)+0.02853774*x(4)+0.01107311*x(5)+0.0279033*x(6)-0.0362028*x(7)+0.01081704*x(8)+0.00440966*x(9)+0.02911506*x(10)+0.0187145*x(11)-0.0019992*x(12))^2+(-0.02125572+0.02196482*x(1)+0.04551689*x(2)+0.01436445*x(3)+0.01889475*x(4)+0.01026376*x(5)+0.07149137*x(6)-0.0009689*x(7)+0.01298278*x(8)+0.04653715*x(9)+0.02470034*x(10)+0.01414485*x(11)+0.05372596*x(12))^2+(-0.01780339-0.0148144*x(1)-0.0252174*x(2)-0.0139043*x(3)-0.0084619*x(4)-0.0163459*x(5)+0.00892353*x(6)-0.0056484*x(7)-0.022308*x(8)-0.0302045*x(9)+0.00525668*x(10)-0.0208345*x(11)-0.0050188*x(12))^2+(0.00559995+0.00907008*x(1)+0.01001894*x(2)+0.01262528*x(3)+0.01389078*x(4)+0.00490451*x(5)-0.0082346*x(6)+0.00556576*x(7)+0.00526547*x(8)-0.0035146*x(9)+0.00579451*x(10)-0.0014776*x(11)+0.02036761*x(12))^2;

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [1,1,1,1,1,1,1,1,1,1,1,1]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)];
cl = 1';
cu = 1';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCC';

% Starting Guess
x0 = [0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333,0.0833333333333333]';

% Options
opts = struct('probname','portfl2');
opts.sense = 'min';
