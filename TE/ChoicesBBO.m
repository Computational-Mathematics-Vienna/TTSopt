%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% ChoicesBBO.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [sollist,problemlist,selectBy,sortBy,info]=ChoicesBBO(param)
%
% find sollist,problemlist,selectBy,sortBy,info to run STATall.m
% for noisy bbo
%
%% input
%
%  param        data structure 
%
%  .userName     username
%                  * 'kimiaei', 'neum', 'max', 'roman', etc
%
%  .probCollect  which collection of test problems used?
%                  * 1: 'CUTEst'
%                  * 2: 'luksun'
%                  * 3: 'globalTest'
%                  * 4: 'sparseluksan'
%
%  .targetAcc    parameter satisfying the convergence speed
%                            qf = (f-fbest)/(f0-fbest) <= targetAcc
%                  * 1e-4 (small and medium)
%                  * 1e-3 (large and very large)
%                
%  .existData    saved data used?
%                  * 0: no saved data
%                  * 1: load saved data
%  .noisefun    is objective function noisy?
%                  * 1: objective function contaminated by noise
%                  * 0: otherwise
%
%  .noiselevel  level of noise
%
%  .noisetype   type of noise
%                  * absolute
%                  * relative
%
%  .noisedistr  noise distribution
%                 * uniform
%                 * Gauss 
%
%  .scale        problem scale     
%                  * 0: small scale (1<= n <= 20) 
%                  * 1: medium scale (21<= n <= 100) 
%                  * 2: large scale (101<= n <= 1000)
%                  * 3: very large scale (1001<= n <= 9000) 
%
%  .initPoint    type of initial point
%                  * 'standard': standard initial point if exists
%                  * 'shifted':  shifted initial point
%
%  .savedTables   saved tables are available?
%                   * 1: use saved tables
%                   * 0: saved tables are unavailable
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
%                  * 'T': sec
%                  * 'F': nf 
%                  * 'DEN': dim, nfree and name
%                  * 'TNE': sec, name and nfree, etc.
%
%  .inc          sort the above list as increasing/decreasing order
%                  * 1 (increasing order)
%                  * 0 (decreasing order)
%  .res          saved data is available
%                  * 1: obtain information from saved information
%                  * 0: obtain only information from TE.problem
%
%  .solvedByAll  choose whether problems solved by all solvers or not
%                  * 1: only solved by all listed solvers
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
%  .LegLocat     Legend location
%                  * 'north' 
%                  * 'south'
%                  * 'east'  
%                  * 'west'	
%                  * 'northeast' 
%                  * 'northwest'
%                  * 'southeast' 
%                  * 'southwest' 
%                  * 'northoutside' 
%                  * 'southoutside'
%                  * 'eastoutside'
%                  * 'westoutside'
%                  * 'northeastoutside'
%                  * 'northwestoutside'
%                  * 'southeastoutside'
%                  * 'southwestoutside'
%                  * 'best' (default)
%                  * 'bestoutside' 
%                  * 'layout' 
%                  * 'none' 
%
%  .LegFontSize   Legend font size 
%                  * default: LegFontSize=20
%
%  .xlabelSize    xlabel size
%                  * default: xlabelSize=14
%
%  .ylabelSize    ylabel size
%                  * default: ylabelSize=14
%
%  .titleFigureSize  Title figure size
%                      * default: titleFigureSize= 14
%
%  .nsolplot       Number of solvers used in plots
%                    * default: nsolplot= 6
%
%  .sparsefig      The data and performance may be very dense 
%                    * 1: Reduce density of plots (default)
%                    * 0: Otherwise 
%
%  .sparseSize     How many points are needed
%                     * default: sparseSize = 50
%
%  .ConvePlotFlag  Convergence plot needed?
%                     * 1: Convergence plot needed
%                     * 0: Ignore convergence plot (default)
%
%  .xTrickarray    Inset array for xTric for xlabel
%                     * default: 
%                      xTrickarray=[1 3 10 30 100 300 1e3 3e3 1e4 1e5]
%   
%  .PerProfileName  Choose a name for performance profile .eps
%                     * default: PerProfileName = 'perp'       
%
%  .BoxPlotName     Choose a name for box plot .eps
%                     * default: BoxPlotName = 'boxp'
%
%  .DataProfileName  Choose a name for data profile .eps
%                      * default: DataProfileName = 'datap'
%
%  .classdimOk       classified by dimension?
%                      * 1: classified by dimension (default)
%                      * 0: otherwise
% 
%  .classdim        choose lower and upper bounds of each 
%                   dimension range
%                     * default:  classdim1 = [1 2]
%                                 classdim2 = [3 5]
%                                 classdim3 = [6 10]
%                                 classdim4 = [11 20]
%                                 classdim5 = [21 100]
%                                 classdim6 = [101 1000]
%                                 classdim7 = [1001 5000]
%                                 classdim6 = [5001 10000]
%
%  .problemlist     list of problems without TEsort.m
%
%  .solverlist      list of solver not depending on problem scale
%            
%               
%% Output:
%
%  .sollist      liest of solvers
%
%  .problemlist  list of problems
%
%  .selectBy      structure for selecting list of problems
%                  .dim   * range of dimensions   
%                  .con   * type of constraints 
%                  .res   * saved data is available
%                           1: obtain information from saved information
%                           0: obtain only information from TE.problem
%
%  .sortBy     structure for sorting list of problems
%               .key      * key for sorting problems
%               .inc      * type of sorting problems 
%                           1: increasing order
%                           0: decreasing order
%
%  .info   
%        .optcrit          (= targetAcc) 
%        .ODim             (= defaultDim) 
%        .LegLocat         (= param.LegLocat) 
%        .LegFontSize      (= param.LegFontSize)  
%        .xlabelSize       (= param.xlabelSize)
%        .ylabelSize       (= param.ylabelSize)
%        .titleFigureSize  (= param.titleFigureSize)
%        .nsolplot         (= param.nsolplot)
%        .sparsefig        (= param.sparsefig)
%        .sparseSize       (= param.sparseSize)
%        .ConvePlotFlag    (= param.ConvePlotFlag)        
%        .xTrickarray      (= param.xTrickarray)
%        .PerProfileName   (= param.PerProfileName) 
%        .BoxPlotName      (= param.BoxPlotName)
%        .DataProfileName  (= param.DataProfileName)
%        .MoralesProfileName (=param.MoralesProfileName)
%        .resdir            directory of saved data       
%        .infomax           infomation of budgets      
%        .TableEffPart      (param.classdimOk)
%        .classdim         

function [sollist,problemlist,selectBy,sortBy,info]=ChoicesBBO(param)

global  RESpath  PDFpath TEpath
 

fields=fieldnames(param);
for i=1:length(fields)
    field=fields{i}; eval([field,'=param.',field,';']);
end


if existData


 fil           = [RESpath,'/choices.mat'];
 load(fil)
 sollist     = choices.sollist
 problemlist = choices.problemlist
 selectBy    = choices.selectBy
 sortBy      = choices.sortBy
 info        = choices.info
 infomax     = info.infomax

 if info.datasaved==0, info.datasaved=1; end
 return
             
end


if classdimOk % classified by the dimension is done
    classdim = cell(0);
    classdim{1}(1:2) = classdim1;
    classdim{2}(1:2) = classdim2;
    classdim{3}(1:2) = classdim3;
    classdim{4}(1:2) = classdim4;
    classdim{5}(1:2) = classdim5;
    classdim{6}(1:2) = classdim6;
    classdim{7}(1:2) = classdim7;
    classdim{8}(1:2) = classdim8;
end



%%%%%%%% get selectBy and solverlist0 based on scale %%%%%%%%%%%%%


switch param.con
    case 'unconstrained'
        conl=0; conu=0;
    case 'bound constrained'
        conl=1; conu=1;
    case 'unconstrained and bound constrained'
        conl=0; conu=1;
    case 'linearly constrained'
        conl=2; conu=2;
end

selectBy.targetAcc = targetAcc;

selectBy.solvedByAll  = solvedByAll;

%%%%%%%% get noise information %%%%%%%%%%%%%

if noisefun

switch noisetype
    case 'absolute'
        noisetype='ab';
    case 'relative'
        noisetype='rel';
    otherwise
        error('noisetype should be absolute or ralative')
end


resdirnoise=['-',num2str(noiselevel),'-',noisetype,'-',noisedistr];

end


              
switch scale % get solverlist0 and selectBy


    case 'small'
        
        selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=1;
        selectBy.dim(2)=20;
        selectBy.res=1;
        if solverlistflag     
            solverlist = {'VRBBO' 'VRBBO1' 'VRBBO2' ...
            'VRBBO3' 'VRBBO4' 'VRBBO5' 'BFO'  'RDSfs' ...
            'RDSvs' 'PRDS'  'DSPFD' 'PSM' 'fminunc' ...
            'SDBOX' 'GLOBAL' 'MCS' 'ACRS' 'GLODS' ...
            'adsmax' 'mdsmax' 'nmsmax' 'MDS' ...
            'HOOKE' 'NELDER' 'fminsearch' 'DE' 'GCES' ...
            'PSwarm' 'SSBBO' 'VRBBON' 'LMMAES' ...
            'fMAES' 'BiPopMAES' 'CMAES' 'BCDFO' ...
            'bobyqa' 'newuoa' 'uobyqa' 'snobfit' 'GRID'};
    
        end
    
    case 'medium'
       selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=21;
        selectBy.dim(2)=100;
        selectBy.res=1;
        if solverlistflag
            solverlist = {'VRBBO' 'VRBBO5' 'MCS' 'adsmax'...
            'mdsmax' 'nmsmax' 'HOOKE' 'NELDER' 'GCES'...
            'PSwarm' 'CMAES'   'GLOBAL' 'SSBBO' 'VRBBON'...
            'LMMAES' 'fMAES' 'BiPopMAES' ...
            'GLODS' 'fminunc'  'SDBOX' 'BFO' 'DSPFD'};   
        end
    case 'large'
       selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=101;
        selectBy.dim(2)=1000;
        selectBy.res=1;
         if solverlistflag
           solverlist = {'VRBBO' 'VRBBO5' 'MCS'  'adsmax' ...
           'fminunc' 'SDBOX' 'SSBBO' 'VRBBON' 'LMMAES' ...
           'fMAES' 'BiPopMAES' };    
         end
   
    case 'very large'
        
        selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=1001;
        selectBy.dim(2)=5000;
        selectBy.res=1;
        if solverlistflag
            solverlist = {'VRBBO' 'VRBBON' 'adsmax' ...
                            'fminunc' 'SDBOX' 'SSBBO' };    
        end
    case 'none'
        selectBy.con(1)=conl;
        selectBy.con(2)=conu;
        selectBy.dim(1)=dimension(1);
        selectBy.dim(2)=dimension(2);
        selectBy.res=1;
        if solverlistflag
            solverlist = {'VRBBO' 'VRBBON' 'adsmax' 'fminunc' 'SDBOX' };    
        end
end


sollist.refsolver1 = refsolver;
sollist.list1      = solverlist;


%%%%%%%%%%%%%% get budgets and complete selectBy %%%%%%%%%%%%%

if ~ nfmaxStringflag

switch valueBudget
    case 'low'
        nfmaxString = '100*n'; secmaxString ='180';
    case 'medium'
        nfmaxString = '500*n'; secmaxString ='180';
    case 'large'
        nfmaxString = '1000*n'; secmaxString ='180';
end
        
    
end

if ~secmaxStringflag
    
switch valueBudget
    case 'low', secmaxString ='180';
    case 'medium', secmaxString ='180';
    case 'large', secmaxString ='180';
end
    
end




eval(['funcnfmax =@ (n) ',nfmaxString]);


nfmax = funcnfmax(selectBy.dim(2));
info.nfmax = nfmax;



selectBy.nf  = [0 nfmax];


eval(['funcsecmax =@ (n) ',secmaxString]);
secmax = funcsecmax(selectBy.dim(2));


selectBy.sec        = [0 secmax];
info.secmax = secmax;

%%%%%%%%%%%%%%%%%%%%%% get sortBY %%%%%%%%%%%%%%%%%%%%%%%%
sortBy.res          = res; 
sortBy.key          = key; 
sortBy.inc          = inc; 
sortBy.refsolver    = refsolver;


%%%%%%%%%%%%%%%%%%%%%  get resdir and PDFpath %%%%%%%%%%%%


firstPartDirect = 'resQ1-'; nf2gmaxString= nfmaxString;


switch  initPoint
    case 'shifted', StanPoint=0;
    case 'standard', StanPoint=1;
end

if StanPoint % with standard initial point 
  resdir = [firstPartDirect,num2str(targetAcc),'resN','-',...
            nf2gmaxString,'-resS',num2str(secmax),'E'];
else % with shifted initial point
  resdir = [firstPartDirect,num2str(targetAcc),'resN','-',...
            nf2gmaxString,'-resS',num2str(secmax),'N'];
end


if noisefun, resdir=[resdir,resdirnoise]; end

% create PDFpath directory
PDFpath = [RESpath,'/',resdir,'/PDF'];
ex      = exist(PDFpath);

if ex~=7, eval(['! mkdir ',PDFpath]); end;

%%%%%%%%%%%%%%%%% get problemlist %%%%%%%%%%%%%%%%%%%%%
datasaved = 0; loadfigs  = 0;  statprob = savedTables;

if statprob, loadfigs=0; end

switch statprob
    
    
     case 0
         
        prInfo = TEsort(resdir,solverlist,selectBy,sortBy,probCollect);
        if ~ strcmp(probCollect,'CUTEst')||...
                ~ strcmp(probCollect,'CUTEstInt')
            eval(['addpath ',TEpath])
        end
       if isempty(prInfo)
             disp('======================')
             disp('No data is found'); 
             disp('======================')
             return; 
       end
       problemlist   = prInfo.id
       fil           = [RESpath,'/',resdir,...
                       '/problemlist.mat'];
       save(fil)
       datasaved = 0; loadfigs  = 0;

     case 1

    [s,w]=unix(['ls ',RESpath,'/',resdir,...
                '/problemlist.mat']);
    if s~=0

       prInfo = TEsort(resdir,solverlist,selectBy,sortBy,probCollect);
       if ~ strcmp(probCollect,'CUTEst')|| ...
          ~ strcmp(probCollect,'CUTEstInt')
          eval(['addpath ',TEpath])
       end
       
       if isempty(prInfo)
             disp('======================')
             disp('No data is found'); 
             disp('======================')
             return; 
       else 
         fil=[RESpath,'/',resdir,'/problemlist.mat'];
          load(fil)
          problemlist
          datasaved = 1;
          loadfigs  = 1;
       end
    else
        disp('======================')
        disp('No data is found'); 
        disp('======================')
        return; 
    end
end


if defaultDim
   problemlist0 = cell(0);
   for i=1:length(problemlist)
       ind = findstr(problemlist{i},'_');
        if isempty(ind)
           problemlist0=[problemlist0 problemlist{i}];
        end
   end
   problemlist=problemlist0
end  


if ~isfield(param,'shortTable'), param.shortTable=0; end
shortTable = param.shortTable;

%%%%%%%%%%%%%%%%%%%%%%% get info %%%%%%%%%%%%%%%%%%%%%%%%%%

info.LegLocat         = LegLocat;
info.ODim             = defaultDim; 
info.LegLocat         = LegLocat;
info.LegFontSize      = LegFontSize;
info.xlabelSize       = xlabelSize; 
info.ylabelSize       = ylabelSize; 
info.titleFigureSize  = titleFigureSize; 
info.nsolplot         = nsolplot; 
info.sparsefig        = sparsefig; 
info.sparseSize       = sparseSize;
info.ConvePlotFlag    = ConvePlotFlag;         
info.xTrickarray      = xTrickarray;
info.PerProfileName   = PerProfileName;
info.BoxPlotName      = BoxPlotName;
info.DataProfileName  = DataProfileName;
info.resdir           = resdir;
info.optcrit          = targetAcc; 
info.TableEffPart     = classdimOk;
if classdimOk
   info.classdim         = classdim;
end
info.datasaved        = datasaved;
info.loadfigs         = loadfigs;
info.statprob         = statprob;
infomax.nfmaxString   = nfmaxString;
infomax.secmaxString  = secmaxString;
info.infomax          = infomax;
info.solvedByAll      = solvedByAll;
info.MoralesProfileName = MoralesProfileName;
info.MoralesSol1      = MoralesSol1;
info.MoralesSol2      = MoralesSol2;
info.prt              = prt;
info.shortTable       = shortTable;


if noisefun

if selectBy.con(1)== selectBy.con(2)
   if selectBy.con(1)==0
      info.caseTitle  = ['selected nonlinear noisy unconstrained',...
          ' black box optimization problems']; 
   elseif selectBy.con(1)==1
     info.caseTitle = ['nonlinear noisy bound constrained black',...
                          ' box optimization problems']; 
  end
else
  info.caseTitle = ['nonlinear noisy unconstrained and bound',...
      ' constrained black box optimization problems']; 
end

else
    
if selectBy.con(1)== selectBy.con(2)
   if selectBy.con(1)==0
      info.caseTitle  = ['selected nonlinear unconstrained',...
           ' black box optimization problems']; 
   elseif selectBy.con(1)==1
     info.caseTitle = ['nonlinear bound constrained black',...
                          ' box optimization problems']; 
  end
else
  info.caseTitle = ['nonlinear unconstrained and bound',...
      ' constrained black box optimization problems']; 
end

end

info.resdir           = resdir;
info.latexFile        = 'results.tex'; % latex file to be generated 

   
%%%%%%%%%%%%%%%%%%% save output %%%%%%%%%%%%%%%%%%%%%%%%

choices.sollist     = solverlist; 
choices.problemlist = problemlist;
choices.selectBy    = selectBy;
choices.sortBy      = sortBy;
choices.info        = info;

fil           = [RESpath,'/choices.mat'];
save(fil)   
             
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


