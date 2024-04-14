%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTmin.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% runs one problem on one solver
%

global WORKpath

if isOctave
  TEallpath =  substr(WORKpath,1,-10);
else
  TEallpath = extractBefore(WORKpath,length(WORKpath)-10);
end
       
param = struct('userName',TEallpath,...
  'probCollect','CUTEst','existData',0,'accf',-inf,...
  'noiseFun',0,'noiseLevel',1e-3,'noiseType','absolute',...
  'noiseDistr','uniform','soListflag',true,....
  'scaleProb','none','initPoint','standard','xinitType',1,...
  'con','bound constrained','key','DN','inc',0,...
  'res',0,'solvedByAll',0,'valueBudget','low',...
  'defaultDim',0,'refsolver','VRBBO','initHitVar',0,...
  'updateHitVar',0,'nfmaxManual',false,'secmaxManual',false,'prt',0,...
  'unSol2bcProb',0);
  
  
 if strcmp(param.scaleProb,'none') 
            % choose the dimension ignoring the default which
            % is calssified by the problem scale 
            param.dimension    = [2 2];
 end

param.TypeVar  = 1; 

ok=TEpaths(param.userName,param.probCollect);

[soList,prList,selectBy,sortBy,RUNparam]=TESTchoices(param);

RUNparam.userName = param.userName;

prList={'SIM2BQP'};

RUNparam.con = 'U';
RUNparam.userName = param.userName;


TESTruns(prList,soList,RUNparam);

if exist([WORKpath,'/RES/bcp/resQ1--InfresN-100*n-resS180E/results.txt']) == 2
  disp('test successful')
else
  disp('test failed. File results.txt is not created.')
end
disp('===============================================================')
disp('===============================================================')
disp('===============================================================')
