%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% runs multiple test problems on multiple solvers
% 
clear
clc
close all
format compact
more off
tic            % start timer

%%%%%%%%%%%%%%%%%%%%
% choose TESTparam %
%%%%%%%%%%%%%%%%%%%%

TESTparam = struct( ...
... % general variables
'userName','home/romana/OctaveWorkSpace','probCollect','CUTEst','prt',0, ...
 ... % noisy variables
'noiseFun',0,'noiseLevel',0.001,'noiseType','absolute',...
'noiseDistribution','uniform',...
... % parameters for stopping test
'accf',0,'nfmaxManual',true,'secmaxManual',true,...
'valueBudget','low',...
... % variables for problem selection
'initPoint','standard','con','unconstrained','key','DN','inc',0,...
'res',0,'solvedByAll',0,'defaultDim',0,...
... % variables for hitlist
'initHitVar',1,'updateHitVar',0,...
... % variables for solvers
'TypeVar',0,'unSol2bcProb',0,'refsolver','VRBBO',...
'scaleProb','none','defaultSolList',false)



 if ~ TESTparam.defaultSolList 
     switch TESTparam.TypeVar
         case 0
         TESTparam.soList = {'BCDFO'};
         case 1
            TESTparam.soList = {'MATRS' 'IMATRS' 'MISO' 'DFLINT' ...
                             'BFO' 'NOMAD'};
             TESTparam.soList = {'VRBBO'};               
         
         case 2
              TESTparam.soList = {'NOMAD'} % 'MISO' 'BFO' 'NOMAD'    
     end
     
     TESTparam.soList = {'UOBYQA'}

     TESTparam.TypeVar = TESTparam.TypeVar*ones(1,length(TESTparam.soList)); 
     TESTparam.TuneCase = zeros(1,length(TESTparam.soList)); 
 end  
 if strcmp(TESTparam.scaleProb,'none') 
    % choose the dimension ignoring the default which
    % is calssified by the problem scale 
    TESTparam.dimension    = [2 30];
 end
 
 if TESTparam.nfmaxManual, TESTparam.nfmaxString  = '400';end

 if TESTparam.secmaxManual, TESTparam.secmaxString = '360'; end
 
 
%%%%%%%%%%%%%%%%%%%%%%
% generate all paths %
%%%%%%%%%%%%%%%%%%%%%%

disp('initialize the paths for using TE')

ok=TEpaths(TESTparam.userName,TESTparam.probCollect);
 
%%%%%%%%%%%%%%%%%%%%%%%
% perform TESTchoices %
%%%%%%%%%%%%%%%%%%%%%%%
global WORKpath

if sum(ismember(TESTparam.soList,'BOBYQA'))|| sum(ismember(TESTparam.soList,'UOBYQA'))||...
 sum(ismember(TESTparam.soList,'LINCOA'))
 sPowell = 1;
else
 sPowell = 0;
end

eval(['save -mat ',WORKpath,'/TE/powell.mat sPowell'])
[soList,prList,selectBy,sortBy,RUNparam]=TESTchoices(TESTparam);

RUNparam.userName = TESTparam.userName;

TESTruns(prList,soList,RUNparam);

disp('all problems finished')
disp('===============================================================')
disp('===============================================================')
disp('===============================================================')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
