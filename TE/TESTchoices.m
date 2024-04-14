%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% TESTchoices.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [soList,prList,selectBy,sortBy,RUNparam]=TESTchoices(TESTparam)
%
% find soList,prList,selectBy,sortBy,RUNparam to run STATall.m
% for noisy bbo
%
%% input
%
%  TESTparam        data structure 
%
%  .userName     username
%                  * 'kimiaei', 'neum', 'romana', 'max', 'roman', etc
%
%  .probCollect  which collection of test problems used?
%     continuous:     'CUTEst', 'bcp', 'prince', 'global', 'inf', 'minlp'
%
%     integer:       'CUTEstInt', 'bcpInt', 'princeInt', 'globalInt',
%                    'infInt', 'minlpInt' 
%
%     mixed-integer:  'CUTEstMint', 'bcpMint', 'princeMint', 'globalMint',
%                     'infMint', 'minlpMint' 
%
%  .accf    parameter satisfying the convergence speed
%                            qf = (f-fbest)/(f0-fbest) <= accf
%                  * 1e-4 (small and medium)
%                  * 1e-3 (large and very large)
%                
%  .noiseFun    is objective function noisy?
%                  * 1: objective function contaminated by noise
%                  * 0: otherwise
%
%  .noiseLevel  level of noise
%
%  .noiseType   type of noise
%                  * absolute
%                  * relative
%
%  .noiseDistribution  noise distribution
%                 * uniform
%                 * Gauss 
%
%  .scaleProb        problem scaleProb     
%                  * 0: small scaleProb (1<= n <= 20) 
%                  * 1: medium scaleProb (21<= n <= 100) 
%                  * 2: large scaleProb (101<= n <= 1000)
%                  * 3: very large scaleProb (1001<= n <= 9000) 
%
%  .initPoint    type of initial point
%                  * 'standard': standard initial point if exists
%                  * 'shifted':  shifted initial point
%
%
%  .con          type of constraint
%                  * 0: unconstrained
%                  * 1: bound constrained
%                  * 2: unconstrained and bound constrained
%                  * 3: linearly constrained
%
%  .key          sort list of test problems
%                  * 'N': name 
%                  * 'D': dim  
%                  * 'E': nfree
%                  * 'T': sec2
%                  * 'F': nf 
%                  * 'DEN': dim, nfree and name
%                  * 'TNE': sec2, name and nfree, etc.
%
%  .inc          sort the above list as increasing/decreasing order
%                  * 1 (increasing order)
%                  * 0 (decreasing order)
%  .res          saved data is available
%                  * 1: obtain information from saved information
%                  * 0: obtain only information from TE.problem
%
%  .solvedByAll  choose whether problems solved by all solvers or not
%                  * 1: solved by at least one of the listed solvers
%                  * 0: otherwise
%
%  .refsolver    
%
%  .defaultDim   only when CUTEst is used
%                  * 1: original dimension
%                  * 0: otherwise
%
%  .valueBudget  type of budget
%                  * 'low'    (default: nfmax=100*n)
%                  * 'medium' (default: nfmax=500*n)
%                  * 'large'  (default: nfmax=1000*n)
%
%  .prList     list of problems without TEsort.m
%
%  .soList      list of solver not depending on problem scaleProb
%            
%               
%% Output:
%
%  .soList      liest of solvers
%
%  .prList  list of problems
%
%  .selectBy     pick a list of test problems
%                  .dim   * range of dimensions   
%                  .con   * type of constraints 
%                  .res   * saved data is available
%                           1: obtain information from saved information
%                           0: obtain only information from TE.problem
%
%  .sortBy     struture for sorting list of problems
%               .key      * key for sorting problems
%               .inc      * type of sorting problems 
%                           1: increasing order
%                           0: decreasing order
%
%  .RUNparam   
%        .optcrit          (= accf) 
%        .ODim             (= defaultDim) 
%        .LegLocat         (= TESTparam.LegLocat) 
%        .resDir            directory of saved data 
%      
function [soList,prList,selectBy,sortBy,RUNparam]=TESTchoices(TESTparam)
 
global TEpath RESpath PDFpath  
%%%%%%%% get selectBy and solverlist0 based on scaleProb %%%%%%%%%%%%%
switch TESTparam.con
    case 'unconstrained'
        conl=0; conu=0; RUNparam.con = 'U';
    case 'bound constrained'
        conl=1; conu=1; RUNparam.con = 'B';
    case 'unconstrained and bound constrained'
        conl=0; conu=1;
    case 'linearly constrained'
        conl=2; conu=2; RUNparam.con  = 'L';
end
selectBy.gradacc = TESTparam.accf;
selectBy.solvedByAll  = TESTparam.solvedByAll;

%%%%%%%% get noise information %%%%%%%%%%%%%
if TESTparam.noiseFun
    switch TESTparam.noiseType
        case 'absolute', TESTparam.noiseType='ab';
        case 'relative', TESTparam.noiseType='rel';
        otherwise, error('noiseType should be absolute or ralative')
    end
    resdirnoise=['-',num2str(TESTparam.noiseLevel),'-',...
                 TESTparam.noiseType,'-',TESTparam.noiseDistribution];

     RUNparam.noiseFun        = TESTparam.noiseFun;
     RUNparam.noiseLevel      = TESTparam.noiseLevel;
     RUNparam.noiseType       = TESTparam.noiseType;
     RUNparam.noiseDistribution   = TESTparam.noiseDistribution;
else
    RUNparam.noiseFun   = 0; 
end
switch TESTparam.scaleProb % get solverlist0 and selectBy
    case 'small'
        selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=1;
        selectBy.dim(2)=20;
        selectBy.res=TESTparam.res;
        if ~isfield(TESTparam,'soList')   
            TESTparam.soList = {'VRBBO' 'VRBBO1' 'VRBBO2' ...
            'VRBBO3' 'VRBBO4' 'VRBBO5' 'BFO'  'RDSfs' ...
            'RDSvs' 'PRDS'  'DSPFD' 'PSM' 'fminunc' ...
            'SDBOX' 'GLOBAL' 'MCS' 'ACRS' 'GLODS' ...
            'adsmax' 'mdsmax' 'nmsmax' 'MDS' ...
            'HOOKE' 'NELDER' 'fminsearch' 'DE' 'GCES' ...
            'PSwarm' 'SSBBO' 'VRBBON' 'LMMAES' ...
            'fMAES' 'BiPopMAES' 'CMAES' 'BCDFO' ...
            'bobyqa' 'newuoa' 'uobyqa' 'snobfit' 'GRID'};
             TESTparam.TuneCase = zeros(1,length( TESTparam.soList));
             TESTparam.TypeVar  = 0;
        end
        soList = TESTparam.soList;
    case 'medium'
       selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=21;
        selectBy.dim(2)=100;
        selectBy.res=TESTparam.res;
        if ~isfield(TESTparam,'soList') 
            TESTparam.soList = {'VRBBO' 'VRBBO5' 'MCS' 'adsmax'...
            'mdsmax' 'nmsmax' 'HOOKE' 'NELDER' 'GCES'...
            'PSwarm' 'CMAES'   'GLOBAL' 'SSBBO' 'VRBBON'...
            'LMMAES' 'fMAES' 'BiPopMAES' ...
            'GLODS' 'fminunc'  'SDBOX' 'BFO' 'DSPFD'}; 
            TESTparam.TuneCase = zeros(1,length( TESTparam.soList));
            TESTparam.TypeVar  = 0;
        end
        soList = TESTparam.soList;
    case 'large'
       selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=101;
        selectBy.dim(2)=1000;
        selectBy.res=TESTparam.res;
         if ~isfield(TESTparam,'soList') 
           TESTparam.soList = {'VRBBO' 'VRBBO5' 'MCS'  'adsmax' ...
           'fminunc' 'SDBOX' 'SSBBO' 'VRBBON' 'LMMAES' ...
           'fMAES' 'BiPopMAES' };
            TESTparam.TuneCase = zeros(1,length( TESTparam.soList));
            TESTparam.TypeVar  = 0;
         end
         soList = TESTparam.soList;
    case 'very large'
        selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=1001;
        selectBy.dim(2)=5000;
        selectBy.res=TESTparam.res;
        if ~isfield(TESTparam,'soList') 
            TESTparam.soList = {'VRBBO' 'VRBBON' 'adsmax' ...
                            'fminunc' 'SDBOX' 'SSBBO' };  
            TESTparam.TuneCase = zeros(1,length( TESTparam.soList));  
            TESTparam.TypeVar  = 0;
        end
        soList = TESTparam.soList;
    case 'none'
        selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=TESTparam.dimension(1);
        selectBy.dim(2)=TESTparam.dimension(2);
        selectBy.res=TESTparam.res;
        if ~isfield(TESTparam,'soList') 
            TESTparam.soList = {'VRBBO' 'VRBBON' }; 
            TESTparam.TuneCase = zeros(1,length( TESTparam.soList));
            TESTparam.TypeVar  = 0;
        end
        soList = TESTparam.soList;
end
%%%%%%%%%%%%%% get budgets and complete selectBy %%%%%%%%%%%%%
if ~ TESTparam.nfmaxManual
    switch TESTparam.valueBudget
        case 'low', nfmaxString = '100*n'; secmaxString ='180';
        case 'medium', nfmaxString = '500*n'; secmaxString ='180';
        case 'large', nfmaxString = '1000*n'; secmaxString ='180';
    end
else
    nfmaxString=TESTparam.nfmaxString;
end
if ~TESTparam.secmaxManual
    switch TESTparam.valueBudget
        case 'low', secmaxString ='180';
        case 'medium', secmaxString ='180';
        case 'large', secmaxString ='180';
    end
else
    secmaxString=TESTparam.secmaxString;
end

eval(['funcnfmax =@ (n) ',nfmaxString,';']);
nfmax = funcnfmax(selectBy.dim(2));
RUNparam.nfmax = nfmax;
selectBy.nf = [0 nfmax];
eval(['funcsecmax =@ (n) ',secmaxString,';']);
secmax = funcsecmax(selectBy.dim(2));
selectBy.sec2        = [0 secmax];
RUNparam.secmax = secmax;

%%%%%%%%%%%%%%%%%%%%%% get sortBY %%%%%%%%%%%%%%%%%%%%%%%%
sortBy.key          = TESTparam.key; 
sortBy.inc          = TESTparam.inc; 
sortBy.refsolver    = TESTparam.refsolver;
%%%%%%%%%%%%%%%%%%%%%  get resDir and PDFpath %%%%%%%%%%%%
firstPartDirect = 'resQ1-'; nf2gmaxString= nfmaxString;
switch  TESTparam.initPoint
    case 'shifted', StanPoint=0;
    case 'standard', StanPoint=1;
end
if StanPoint % with standard initial point 
  resDir = [firstPartDirect,num2str(TESTparam.accf),'resN','-',...
            nf2gmaxString,'-resS',num2str(secmax),'E'];
  RUNparam.point = 'E';
else % with shifted initial point
  resDir = [firstPartDirect,num2str(TESTparam.accf),'resN','-',...
            nf2gmaxString,'-resS',num2str(secmax),'N'];
  RUNparam.point = 'N';     
end
if TESTparam.noiseFun, resDir=[resDir,resdirnoise]; end
Ires = [RESpath,'/',resDir]; ex = exist(Ires);
if ex~=7, folder = fullfile(Ires);mkdir(folder); end;
PDFpath =[Ires,'/PDF']; ex=exist(PDFpath);
if ex~=7, mkdir(PDFpath); end;
prt = TESTparam.prt;
prInfo = TEsort(resDir,soList,selectBy,sortBy);
if ~ strcmp(TESTparam.probCollect,'CUTEst')|| ...
   ~ strcmp(TESTparam.probCollect,'CUTEstInt')
    eval(['addpath ',TEpath])
end
if isempty(prInfo)
     disp('======================')
     disp('No data is found'); 
     disp('======================')
     prList = [];
     RUNparam.resDir = resDir;
     RUNparam.nfmaxString      = nfmaxString;
     RUNparam.secmaxString     = secmaxString;
     RUNparam.prt              = TESTparam.prt;
     RUNparam.probCollect      = TESTparam.probCollect; 
     return; 
end
prList   = prInfo.id;
if TESTparam.defaultDim
   problemlist0 = cell(0);
   for i=1:length(prList)
       ind = findstr(prList{i},'_');
        if isempty(ind)
           problemlist0=[problemlist0 prList{i}];
        end
   end
   prList=problemlist0;
end  
%%%%%%%%%%%%%%%%%%%%%%% get RUNparam %%%%%%%%%%%%%%%%%%%%%%%%%%
RUNparam.defaultDim       = TESTparam.defaultDim; 
RUNparam.resDir           = resDir;
RUNparam.accf             = TESTparam.accf; 
RUNparam.nfmaxString      = nfmaxString;
RUNparam.secmaxString     = secmaxString;
RUNparam.solvedByAll      = TESTparam.solvedByAll;
RUNparam.initHitVar       = TESTparam.initHitVar;
RUNparam.updateHitVar     = TESTparam.updateHitVar;
RUNparam.resDir           = resDir;
RUNparam.probCollect      = TESTparam.probCollect; 
RUNparam.TuneCase         = TESTparam.TuneCase;
if TESTparam.initHitVar==0 && TESTparam.updateHitVar==0 || ...
   TESTparam.initHitVar==1 && TESTparam.updateHitVar==1 
   RUNparam.xinitType        = 1;
else
   RUNparam.xinitType        = 0;
end
if TESTparam.initHitVar==0 && TESTparam.updateHitVar==1 || ...
   TESTparam.initHitVar==1 && TESTparam.updateHitVar==1 
   if TESTparam.accf~=-inf
      error('accf should be -inf when hitlist is updated')
   end
end
RUNparam.TypeVar          = TESTparam.TypeVar;
RUNparam.prt              = TESTparam.prt;
RUNparam.unSol2bcProb     = TESTparam.unSol2bcProb;
%RUNparam.discretizeParams = TESTparam.discretizeParams;  MK: fix it                                                                                                            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
