%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% AbbSolver.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [aso] = AbbSolver(bbo,sol)
% AbbSlover converts the solver name to its abbrevation 
%

function [aso] = AbbSlover(bbo,sol)



if ~bbo
   switch sol
   case 'ASABCP'
       aso = 'asb';
   case 'BCASTR'
       aso = 'bca';    
   case 'LMBFG-MT'
       aso = 'll1';
   case 'LMBFG-MTBT'
       aso = 'll2';
   case 'LMBFGS-TR'
       aso = 'll3';
   case 'LMBFG-BWX-MS'
       aso = 'lt1';
   case 'LMBFG-DDOGL'
       aso = 'lt2';
  case  'lt3'
       aso = 'lt3'; 
  case  'LMBFG-EIG-curve-inf'
       aso = 'lt4';
  case  'LMBFG-EIG-inf-2'
       aso = 'lt5';
  case  'LMBFG-EIG-MS'
       aso = 'lt6';
  case  'LMBFG-EIG-MS-2-2'
       aso = 'lt7';
  case  'lmopt'
       aso = 'lmo'; 
  case  'lmbopt'
       aso = 'lmb'; 
  case  'lmbopt0'
       aso = 'lmb0';  
  case  'LMBOPT'
       aso = 'lmb'; 
  case  'lmbopt1'
       aso = 'lmb'; 
  case  'lmbopt2'
       aso = 'lmb2'; 
  case  'lmbopt3'
       aso = 'lmb3'; 
  case  'lmbopt4'
       aso = 'lmb4'; 
  case  'lmbopt5'
       aso = 'lmb5'; 
  case  'lmbopt6'
       aso = 'lmb6'; 
  case  'lmbopt7'
       aso = 'lmb7'; 
  case  'lmbopt8'
       aso = 'lmb8'; 
 case  'lmbopt9'
       aso = 'lmb9';       
  case  'lmbopt10'
       aso = 'lmb10'; 
  case  'lmbopt11'
       aso = 'lmb11'; 
  case  'lmbopt12'
       aso = 'lmb12'; 
  case  'lmbopt13'
       aso = 'lmb13'; 
  case  'lmbopt14'
       aso = 'lmb14'; 
  case  'lmbopt15'
       aso = 'lmb15'; 
  case  'lmbopt16'
       aso = 'lmb16'; 
  case  'lmbopt17'
       aso = 'lmb17'; 
  case  'lmbopt18'
       aso = 'lmb18'; 
  case  'l7'
       aso = 'l7'; 
  case  'l8'
       aso = 'l8'; 
  case  'l9'
       aso = 'l9';       
   case 'ASACG'
       aso = 'asa';
   case 'asa1'
       aso = 'asa1';
   case 'asa2'
       aso = 'asa2';
   case 'CGdescent'
       aso = 'cgd';
   case 'CGdescent1'
       aso = 'cgd1';
   case 'CGdescent2'
       aso = 'cgd2';
   case 'SPG'
       aso = 'spg'; 
   case 'LBFGSB'
       aso = 'lbf';
   case 'fmin1'
       aso = 'fm1';
   case 'fmin2'
       aso = 'fm2';
   case 'fmin3'
       aso = 'fm3';
   case 'fmin4'
       aso = 'fm4';
    case 'fmin5'
       aso = 'fm5';
   case 'lbfgsb1'
       aso = 'lbf1';
    
       
   otherwise
       sol
       error('no solver abbreviation found');
   end
  else
     switch sol
      case 'gradmin'
      aso = 'grad';  
      case 'gradmin1'
      aso = 'grad1';     
      case  'RDSfs'
      aso = 'rfs'; 
      case  'RDSvs'
      aso = 'rvs'; 
      case  'PRDS'
      aso = 'prd'; 
     case  'PSM'
       aso = 'psm'; 
     case  'fminunc'
       aso = 'func'; 
     case  'FMINSEARCH'
       aso = 'fmin'; 
    case  'fminunc1'
       aso = 'func1'; 
      case  'fminunc2'
       aso = 'func2'; 
        case  'fminunc4'
       aso = 'stb2'; 
        case  'fminunc3'
       aso = 'stb1'; 
        case  'fminunc5'
       aso = 'func5'; 
       
        case  'fminunc6'
       aso = 'func6'; 
        case  'fminunc7'
       aso = 'func7'; 
        case  'fminunc8'
       aso = 'func8'; 
        case  'FMINUNC'
       aso = 'fmin'; 
       
       
       
     case  'SNOBFIT'
       aso = 'sfit';  
     case 'DFOP'
       aso = 'bfo';
     case 'BFO'
       aso = 'bfo';  
     case 'TRI'
       aso = 'tri';
     case 'TRI1'
       aso = 'tri1';
     case 'TRI2'
       aso = 'tri2';
     case 'POL'
       aso = 'pol';  
     case 'VX1'
       aso = 'vx1';
     case 'VX2'
       aso = 'vx2';
     case 'VX3'
       aso = 'vx3';
     case 'VX4'
       aso = 'v4';
    case 'VX5'
       aso = 'vx5';
     case 'VX6'
       aso = 'vx6';
     case 'VX7'
       aso = 'vx7';
     case 'VX9'
       aso = 'v9';
     case 'VX10'
       aso = 'vx10';
     case 'VX50'
       aso = 'vx50';
     case 'VX51'
       aso = 'vx51';
     case 'VX52'
       aso = 'v52';
     case 'VX95'
       aso = 'vx95';
     case 'VX96'
       aso = 'vx96';
     case 'VX97'
       aso = 'vx97';
     case 'VX98'
       aso = 'v98';
     case 'VX99'
       aso = 'v99';  
     case 'MCS'
       aso = 'mcs';
     case  'DE'
       aso = 'de';
     case  'CMAES'
       aso = 'cma';
     case  'GLOBAL'
       aso = 'glo';
     case  'BIPOP'
       aso = 'bip';
     case  'BCDFO'
       aso = 'bcd';
    case  'VSBBO-basic1'
       aso = 'vsbb1'; 
    case  'VSBBO'
       aso = 'vsbb'; 
    case  'VSBBO-basic2'
       aso = 'vsbb2'; 
    case  'VSBBO-C-Q'
       aso = 'vsbbcq'; 
     case  'VSBBO-Q'
       aso = 'vsbbq'; 
     case  'VSBBO4'
       aso = 'vsbb';
      case  'VSBBO-S'
       aso = 'vsbbs'; 
       
    case  'VRBBO-basic1'
       aso = 'vrbb1'; 
    case  'VRBBO'
       aso = 'vrbbo'; 
    case  'VRBBO-basic2'
       aso = 'vrbb2'; 
    case  'VRBBO-C-Q'
       aso = 'vrbcq'; 
     case  'VRBBO-Q'
       aso = 'vrbq'; 
      case  'VRBBO-S'
       aso = 'vrbs';
       
       
      case  'VSBBO6'
       aso = 'vsbb6';
      case  'VSBBO7'
       aso = 'vsbb7'; 
      case  'VSBBO8'
       aso = 'vsbb8'; 
     case  'GLODS'
       aso = 'glods';  
     case  'GCES'
       aso = 'gecs'; 
     case  'PSWARM'
       aso = 'psw';  
     case  'ADSMAX'
       aso = 'adsm'; 
     case  'MDSMAX'
       aso = 'mdsm';  
      case  'NMSMAX'
       aso = 'nmsm'; 
     case  'MDS'
       aso = 'mds';  
      case  'HOOKE'
       aso = 'hook'; 
     case  'NELDER'
       aso = 'neld';  
     case  'SDBOX'
       aso = 'sdb'; 
     case  'ACRS'
       aso = 'acr';    
    case  'DFLSO'
       aso = 'dfl';  
      case  'DFLSQN'
       aso = 'dflq'; 
      case  'DSDS'
       aso = 'dsds'; 
      case  'SDS'
       aso = 'sds';  
      case  'AHDS'
       aso = 'ahds'; 
       case  'DSPFD'
       aso = 'dspf';  
       case  'DESTRESS'
       aso = 'dest';   
       case  'VNSBBO'
       aso = 'vns';   
    case  'VSBBON'
       aso ='vsn';  
    case  'LSQNONLIN1'
       aso ='lsqn1'; 
    case  'LSQNONLIN2'
       aso ='lsqn2'; 
     case  'CoDoSol1'
       aso ='codo1'; 
      case  'CoDoSol2'
       aso ='codo2'; 
      case  'CoDoSol3'
       aso ='codo3'; 
       case  'CoDoSol4'
       aso ='codo4'; 
    case  'STRSCNE1'
       aso ='strs1'; 
    case  'STRSCNE2'
       aso ='strs2'; 
    case  'STRSCNE3'
       aso ='strs3'; 
    case  'STRSCNE4'
       aso ='strs4'; 

   case  'LSRNewton1'
       aso ='lsrn1';   
    case  'NMPGTR'
       aso ='nmpg';
   case  'lmnls'
       aso ='lmn'; 
    case  'NMPGTR1'
       aso ='nmpg1';
     case  'NMPGTR2'
       aso ='nmpg2';
     case  'NMPGTR3'
       aso ='nmpg3';
     case  'NMPGTR4'
       aso ='nmpg4';
      case  'NMENTR'
       aso ='nmen';
      case  'NMLMTR'
       aso ='nmlm';  
     case  'MINFNCG1'
     aso ='mincg1';   
       case  'MINFNCG2'
       aso ='mincg2';   
       case  'MINFNCG3'
       aso ='mincg3';   
       case  'MINFNCG4'
       aso ='mincg4';   
       case  'MINFNCG5'
       aso ='mincg5';   
       case  'MINFNCG6'
       aso ='mincg6';   
       case  'MINFLBFGSDL2'
       aso ='minlbfgs2';    
        case  'MINFLBFGSDL1'
       aso ='minlbfgs1';   
         case  'MINFLBFGSDL3'
       aso ='minlbfgs3';
         case  'MINFLBFGSDL4'
       aso ='minfbfgs4';  
        case  'MINFLBFGS1'
       aso ='lbfgs1';  
         case  'MINFLBFGS2'
       aso ='lbfgs2';    
        case  'NLS'
       aso ='nls';  
         case  'LS'
       aso ='ls';    
          case  'DFLS'
       aso ='dfls';    
  
       case  'NMTR'
       aso ='nmtr';  
       case  'NATRN1'
       aso ='natrn1'; 
       case  'NATRN2'
       aso ='natrn2';
       case  'NATRN3'
       aso ='natrn3';
       case  'NATRN4'
       aso ='natrn4';
       case  'NATRLS1'
       aso ='natrs1'; 
       case  'NATRLS2'
       aso ='natrs2';
      case  'NATRLS3'
       aso ='natrs3'; 
       case  'NATRLS4'
       aso ='natrs4';  
          case  'LMTR'
       aso ='lmtr';  
           case  'LMTR1'
       aso ='lmtr1'; 
           case  'LMTR2'
       aso ='lmtr2'; 
           case  'LMTR3'
       aso ='lmtr3';
           case  'LMTR4'
       aso ='lmtr4'; 
           case  'LMTR5'
       aso ='lmtr5'; 
           case  'LMTR6'
       aso ='lmtr6'; 
        case  'NLEQ1'
       aso ='nleq1'; 
        case  'NLEQ2'
       aso ='nleq2'; 
        case  'NLSQERR'
       aso ='nleqerr'; 
        case  'NLSQRES'
       aso ='nleqres'; 
        case  'LMBOPTLS'
       aso ='lmbopt'; 
        case  'DOGLEG1'
       aso ='dogleg1';
         case  'DOGLEG2'
       aso ='dogleg2'; 
         case  'DOGLEG3'
       aso ='dogleg3';
          case  'DOGLEG4'
       aso ='dogleg4'; 
        case  'LMLS'
       aso ='lmls'; 
         case  'LMLS1'
       aso ='lmls1'; 
           case  'LMLS2'
       aso ='lmls2'; 
           case  'LMLS3'
       aso ='lmls3';
          case  'LMLS4'
       aso ='lmls4';
      case  'LMLS5'
       aso ='lmls5';
      case  'LMLS6'
       aso ='lmls6';
         case  'LMLS7'
       aso ='lmls7'; 
      case  'LMLS8'
       aso ='lmls8';
       case  'LMLS9'
       aso ='lmls9';
        case  'VRBBON'
       aso = 'vrbbn';
       case  'VSBBON2'
       aso = 'vsbbn2';
       case  'VSBBON3'
       aso = 'vsbbn3';
       case  'VSBBON4'
       aso = 'vsbbn4';
       case  'VSBBON5'
       aso = 'vsbbn1';
        case  'VSBBON6'
       aso = 'vsbbn2';
       case  'STBBO'
       aso = 'stbbo';
         case  'BOBYQA'
       aso = 'boby';
         case  'NEWUOA'
       aso = 'newu';
         case  'UOBYQA'
       aso = 'uoby';
         case  'NOMAD1'
       aso = 'nom1';
         case  'NOMAD2'
       aso = 'nom2';
       case  'SSDFO2'
       aso ='SSDFO2';
       case  'SSDFO1'
       aso ='SSDFO1';
       case  'FMINUNC2'
       aso ='FMINUNC2';
       case  'FMINUNC1'
       aso ='FMINUNC1';
       case  'FMAES'
       aso = 'fmaes';
        case  'LMMAES'
       aso = 'lmmaes';
        case  'BiPopMAES'
       aso = 'bipopm';
           case  'fMABBO'
       aso = 'fMABBO';
       case  'lMABBO'
       aso = 'lMABBO';
           case  'DFOTR'
       aso = 'DFOTR';
           case  'SRBF'
       aso = 'SRBF';
           case  'DYCORS'
       aso = 'DYCORS';
            case  'NOMAD'
       aso = 'NOMAD';
        case  'DFLINT'
       aso = 'DFLINT';
        case  'DFLINT1'
       aso = 'DFLINT1';
        case  'DFLINT2'
       aso = 'DFLINT2';
        case  'DFLINT3'
       aso = 'DFLINT3';
        case  'DFLINT4'
       aso = 'DFLINT4';
        case  'DFLINT5'
       aso = 'DFLINT5';
        case  'IMATRS'
       aso = 'IMATRS';
        case  'IMATRS1'
       aso = 'IMATRS';
         case  'IMATRS2'
       aso = 'IMATRS';
        case  'CMATRS'
       aso = 'CMATRS';
      otherwise
       sol
       error('no solver abbreviation found');
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

