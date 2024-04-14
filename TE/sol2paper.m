%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% sol2paper.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [aso] = sol2paper(bbo,sol)

if ~bbo
   switch sol
   case 'asabcp'
       aso = 'ASABCP';
    case 'BCASTR'
       aso = 'BCASTR';       
   case 'll1'
       aso = 'LMBFG-MT';
   case 'll2'
       aso = 'LMBFG-MTBT';
   case 'll3'
       aso = 'LMBFGS-TR';
   case 'lt1'
       aso = 'LMBFG-BWX-MS';
   case 'lt2'
       aso = 'LMBFG-DDOGL';
  case  'lt4'
       aso = 'LMBFG-EIG-curve-inf';
  case  'lt5'
       aso = 'LMBFG-EIG-inf-2';
  case  'lt6'
       aso = 'LMBFG-EIG-MS';
  case  'lt7'
       aso = 'LMBFG-EIG-MS-2-2';
  case  'lmbopt'
       aso = 'LMBOPT'; 
  case  'lmbopt0'
       aso = 'LMBOPT'; 
  case  'lmbopt1'
       aso = 'LMBOPT'; 
  case  'lmbopt2'
      aso = 'LMBOPT2'; 
  case  'lmbopt3'
      aso = 'LMBOPT'; 
  case  'lmbopt4'
      aso = 'LMBOPT'; 
  case  'lmbopt5'
     aso = 'LMBOPT'; 
  case  'lmbopt6'
      aso = 'LMBOPT'; 
  case  'lmbopt7'
       aso = 'LMBOPT'; 
  case  'lmbopt8'
       aso = 'LMBOPT'; 
  case  'lmbopt9'
       aso = 'LMBOPT'; 
  case  'lmbopt10'
       aso = 'LMBOPT'; 
   case 'asa'
       aso = 'ASACG';
   case 'CGdescent'
       aso = 'CGdescent';
   case 'SPG'
       aso = 'SPG'; 
   case 'lbfgsb'
       aso = 'LBFGSB';
       
    case 'ATR1'
       aso = '{\bf  ATR1}'; 
   case 'ATR2'
       aso = '{\bf  ATR2}'; 
   case 'STHSConjGrad'
       aso = 'STHSConjGrad';
   case 'THSConjGrad'
       aso = 'THSConjGrad';
   case 'DKConjGrad'
       aso = 'DKConjGrad';
   case 'SDKConjGrad'
       aso = 'SDKConjGrad';
   case 'IFRConjGrad'
       aso = 'IFRConjGrad';
   case 'IDYConjGrad'
       aso = 'IDYConjGrad';
   case 'IFDConjGrad'
       aso = 'IFDConjGrad';    
       
   case 'KA1'
       aso = 'KA1';  
   case 'KA2'
       aso = 'KA2';
   case 'KA3'
       aso = 'KA3';      
   case 'Sh1'
       aso = 'Sh1';  
     case 'Sh2'
       aso = 'Sh2';       
   case 'CD'
       aso = 'CD';
   case 'LS'
       aso = 'LS';
   case 'FR'
       aso = 'FR';
   case 'PR'
       aso = 'PR';
   case 'DY'
       aso = 'DY';
   case 'HS'
       aso = 'HS';
   case 'SCD'
       aso = 'SCD';
   case 'SLS'
       aso = 'SLS';
   case 'SFR'
       aso = 'SFR';
   case 'SPR'
       aso = 'SPR';
   case 'SDY'
       aso = 'SDY';
   case 'SHS'
       aso = 'SHS';
  case  'DK'
       aso = 'DK';
  case  'DL'
       aso = 'DL';
  case  'DLL'
       aso = 'DLL';
  case  'DLZ'
       aso = 'DLZ';
  case  'DLB'
       aso = 'DLB';
  case  'DLE'
       aso = 'DLE';
  case  'DLSZ'
       aso = 'DLSZ';
  case  'DLSB'
       aso = 'DLSB'; 
  case  'DLSE'
       aso = 'DLSE'; 
  case  'DLWZ'
       aso = 'DLWZ';
  case  'DLWB'
       aso = 'DLWB';
  case  'DLWE'
       aso = 'DLWE'; 
  case  'TTHS1'
       aso = 'TTHS1'; 
  case  'TTPK'
       aso = 'TTPK';
  case  'TTDong'
       aso = 'TTDong';
  case  'TTDeng'
       aso = 'TTDeng'; 
  case  'TTCheng'
       aso = 'TTCheng'; 
  case  'TTDL'
       aso = 'TTDL';
  case  'TTAS'
       aso = 'TTAS';
  case  'TTAnderi1'
       aso = 'TTAnderi1'; 
  case  'TTAnderi2'
       aso = 'TTAnderi2';      
   case  'TTAnderi3'
       aso = 'TTAnderi3'; 
       
     case 'subspace1'
       aso = 'subspace1';  
        case 'subspace2'
       aso = 'subspace2'; 
        case 'subspace3'
       aso = 'subspace3';  
        case 'subspace4'
       aso = 'subspace4'; 
       case 'subspace5'
       aso = 'subspace5';  
       case 'subspace6'
       aso = 'subspace6';    
       
       
       
       
   case  'AFP'
       aso = 'AFP'; 
     case  'JCJZY'
       aso = 'JCJZY';   
     case  'FA'
       aso = 'FA';   
       
      case 'HZ'
       aso = 'HZ';
        case 'SHZ'
       aso = 'SHZ';
     case 'KD'
       aso = 'KD';
     case  'TTHS2'
       aso = 'TTHS2'; 
   otherwise
       sol
       error('no solver abbreviation found');
   end
  else
     switch sol
      case  'RDSfs'
      aso = 'RDSfs'; 
      case  'RDSvs'
      aso = 'RDSvs'; 
      case  'PRDS'
      aso = 'PRDS'; 
     case  'PSM'
       aso = 'PSM'; 
     case  'fminunc'
       aso = 'FMINUNC'; 
     case  'fminsearch'
       aso = 'FMINSEARCH'; 
     case 'BFO'
       aso = 'BFO';  
       case 'bfo'
       aso = 'BFO'; 
     case 'MCS'
       aso = 'MCS';
     case  'DE'
       aso = 'DE';
     case  'CMAES'
       aso = 'CMAES';
     case  'GLOBAL'
       aso = 'GLOBAL';
     case  'BCDFO'
       aso = 'BCDFO';
   case  'VSBBO0'
       aso = 'VSBBO-basic1'; 
    case  'VSBBO'
       aso = 'VRBBO'; 
    case  'VSBBO1'
       aso = 'VSBBO-basic2'; 
    case  'VSBBO2'
       aso = 'VSBBO-C-Q'; 
     case  'VSBBO3'
       aso = 'VSBBO-Q'; 
     case  'VSBBO4'
       aso = 'VSBBO';
      case  'VSBBO5'
       aso = 'VSBBO-S'; 
       
       
    case  'VRBBO1'
       aso = 'VRBBO-basic1'; 
    case  'VRBBO'
       aso = 'VRBBO'; 
    case  'VRBBO2'
       aso = 'VRBBO-basic2'; 
    case  'VRBBO3'
       aso = 'VRBBO-S'; 
    case  'VRBBO4'
       aso = 'VRBBO-C-Q'; 
    case  'VRBBO5'
        aso = 'VRBBO-Q'; 
       
       
      case  'VSBBO6'
       aso = 'VSBBO';
      case  'VSBBO7'
       aso = 'VSBBO'; 
      case  'VSBBO8'
       aso = 'VSBBO'; 
     case  'GLODS'
       aso = 'GLODS';  
     case  'GCES'
       aso = 'GCES'; 
     case  'PSwarm'
       aso = 'PSWARM';  
     case  'adsmax'
       aso = 'ADSMAX'; 
     case  'mdsmax'
       aso = 'MDSMAX';  
      case  'NMSMAX'
       aso = 'NMSMAX'; 
       
       case  'nmsmax'
       aso = 'NMSMAX'; 
     case  'MDS'
       aso = 'MDS';  
      case  'HOOKE'
       aso = 'HOOKE'; 
     case  'NELDER'
       aso = 'NELDER';  
        case  'nelder'
       aso = 'NELDER';  
     case  'SDBOX'
       aso = 'SDBOX'; 
     case  'ACRS'
       aso = 'ACRS'; 
     case  'DFLSO'
       aso = 'DFLSO'; 
     case  'DFLSQN'
       aso = 'DFLSQN';
   case  'VNSBBO'
       aso = 'VNSBBO';   
    case  'VSBBON'
       aso ='VRBBON';  
        case  'VSBBON1'
       aso ='VRBBON';  
     case  'DSDS'
       aso = 'DSDS'; 
      case  'SDS'
       aso = 'SDS';  
      case  'AHDS'
       aso = 'AHDS'; 
       case  'DSPFD'
       aso = 'DSPFD';  
       case  'DESTRESS'
       aso = 'DESTRESS';      
       
       
       
    case  'LSQNONLIN1'
       aso ='LSQNONLIN1'; 
    case  'LSQNONLIN2'
       aso ='LSQNONLIN2'; 
     case  'CoDoSol1'
       aso ='CoDoSol1'; 
    case  'CoDoSol2'
       aso ='CoDoSol2'; 
     case  'CoDoSol3'
       aso ='CoDoSol3'; 
    case  'CoDoSol4'
       aso ='CoDoSol4'; 
    case  'STRSCNE1'
       aso ='STRSCNE1';
    case  'STRSCNE2'
       aso ='STRSCNE2';
    case  'STRSCNE3'
       aso ='STRSCNE3';
    case  'STRSCNE4'
       aso ='STRSCNE4';
   case  'LSRNewton1'
       aso ='LSRNewton1';   
    case  'NMPGTR1'
       aso ='NMPGTR2';
    case  'NMPGTR2'
       aso ='NMPGTR2';
    case  'NMPGTR3'
       aso ='NMPGTR3';
    case  'NMPGTR4'
       aso ='NMPGTR4';


     case  'NMLMTR'
       aso ='NMLMTR';     
    case  'NMENTR'
       aso ='NMENTR';     
    case  'lmnls'
       aso ='lmnls';     
       case  'MINFNCG1'
       aso ='MINFNCG1';   
       case  'MINFNCG2'
       aso ='MINFNCG2';   
       case  'MINFNCG3'
       aso ='MINFNCG3';   
       case  'MINFNCG4'
       aso ='MINFNCG4';   
       case  'MINFNCG5'
       aso ='MINFNCG5';   
       case  'MINFNCG6'
       aso ='MINFNCG6';   
       case  'MINFLBFGSDL2'
       aso ='MINFLBFGSDL2';    
        case  'MINFLBFGSDL1'
       aso ='MINFLBFGSDL1';   
         case  'MINFLBFGSDL3'
       aso ='MINFLBFGSDL3';
         case  'MINFLBFGSDL4'
       aso ='MINFLBFGSDL4';  
        case  'MINFLBFGS1'
       aso ='MINFLBFGS1';  
         case 'MINFLBFGS2'
       aso ='MINFLBFGS2';    
        case  'NLS'
       aso ='NLS';    
         case  'LS'
       aso ='LS';    
         case  'NMCGTR'
       aso ='NMCGTR';     
          case  'NMTR'
       aso ='NMTR';  
        case  'DFLS'
       aso ='DFLS';   
          case  'LMTR'
       aso ='LMTR'; 
           case  'LMTR1'
       aso ='LMTR1'; 
         case  'LMTR2'
       aso ='LMTR2'; 
         case  'LMTR3'
       aso ='LMTR3';
         case  'LMTR4'
       aso ='LMTR4'; 
         case  'LMTR5'
       aso ='LMTR5'; 
         case  'LMTR6'
       aso ='LMTR6'; 
       case  'NATRN'
       aso ='NATRN';  
       case  'NATRN1'
       aso ='NATRN1';  
       case  'NATRN2'
       aso ='NATRN2'; 
        case  'NATRN3'
       aso ='NATRN3'; 
        case  'NATRN4'
       aso ='NATRN4'; 
        case  'NATRLS1'
       aso ='NATRLS1';  
         case  'NATRLS2'
       aso ='NATRLS2';  
       case  'NATRLS3'
       aso ='NATRLS3';   
       case  'NATRLS4'
       aso ='NATRLS4';  
        case  'NLEQ1'
       aso ='NLEQ1'; 
        case  'NLEQ2'
       aso ='NLEQ2';
        case  'NLSQERR'
       aso ='NLSQERR'; 
        case  'NLSQRES'
       aso ='NLSQRES'; 
         case  'DOGLEG1'
       aso ='DOGLEG1'; 
        case  'DOGLEG2'
       aso ='DOGLEG2';
        case  'DOGLEG3'
       aso ='DOGLEG3'; 
        case  'DOGLEG4'
       aso ='DOGLEG4'; 
       case  'LMBOPTLS'
       aso ='LMBOPT'; 
         case  'LMLS'
       aso ='lmls'; 
          case  'LMLS1'
       aso ='LMLS1'; 
         case  'LMLS2'
       aso ='LMLS2'; 
         case  'LMLS3'
       aso ='LMLS3';
         case  'LMLS4'
       aso ='LMLS4'; 
      case  'LMLS5'
       aso ='LMLS5';
       case  'LMLS6'
       aso ='LMLS6';
          case  'LMLS7'
       aso ='LMLS7'; 
      case  'LMLS8'
       aso ='LMLS8';
       case  'LMLS9'
       aso ='LMLS9';
       case  'fminunc1'
       aso = 'FMINUNC1'; 
        case  'fminunc2'
       aso = 'FMINUNC2'; 
        case  'fminunc4'
       aso = 'STBBO2'; 
        case  'fminunc3'
       aso = 'STBBO1';
        case  'fminunc5'
       aso = 'FMINUNC5';
        case  'fminunc6'
       aso = 'FMINUNC6';
        case  'fminunc7'
       aso = 'FMINUNC7';
        case  'fminunc8'
       aso = 'FMINUNC8';
       case  'VRBBON'
       aso = 'VRBBON';
       case  'bobyqa'
       aso = 'BOBYQA';
         case  'NEWUOA'
       aso = 'NEWUOA';
         case  'UOBYQA'
       aso = 'UOBYQA';
        case  'newuoa'
        aso = 'NEWUOA';
         case  'uobyqa'
         aso = 'UOBYQA';
       
         case  'NOMAD1'
       aso = 'NOMAD1';
         case  'NOMAD2'
       aso = 'NOMAD2';
        case  'snobfit'
       aso = 'SNOBFIT';
        case  'STBBO'
       aso ='SSDFO1';
       case  'STBBO1'
       aso ='SSDFO2';
       case  'STBBO2'
       aso ='STBBO2';
       case  'FMAES'
       aso = 'FMAES';
        case  'LMMAES'
       aso = 'LMMAES';
        case  'BiPopMAES'
       aso = 'BiPopMAES';
         case  'fMABBO'
       aso = 'fMABBO';
       case  'lMABBO'
       aso = 'lMABBO';
         case  'VRBBON22'
       aso = 'VRBBON';
        case  'DFOTR'
       aso = 'DFOTR';
           case  'STOCHASTICRBF'
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
