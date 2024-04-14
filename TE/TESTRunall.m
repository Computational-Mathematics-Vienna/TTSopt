%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% runs multiple test problems on multiple solvers
% 
clear
clc
close all
format compact
tic            % start timer
TypeVar=2;
switch TypeVar
    case 0
     ListCollect = {'bcp'} % 'minlp' 'prince' };
    case 1
    ListCollect = {'bcpInt'}% 'globalInt' 'princeInt' 'minlpInt'}; % 'bcpInt' 'globalInt' 'princeInt' 'infInt' 'minlpInt' };
    case 2
        % 'bcpMint' 'globalMint' 'princeMint' 'infMint' 'minlpMint' 
    ListCollect = {'princeMint' };
     ListCollect = {'bcpMint' 'globalMint' 'princeMint' 'infMint' 'minlpMint' };
end

noiselevel  = [1e-1 1e-2 1e-3];

for ic = 1:length(ListCollect)
    for in = 1: length(noiselevel)

    param = struct('userName','users/kimiaei','un',1,...
    'probCollect',ListCollect{ic},'existData',0,'targetAcc',1e-4,...
    'noisefun',1,'noiselevel',noiselevel(in),'noisetype','absolute',...
    'noisedistr','uniform','soListflag',false,....
    'scale','none','initPoint','standard','xinitType',1,...
    'con','bound constrained','key','DN','inc',1,...
    'res',0,'solvedByAll',0,'valueBudget','low',...
    'defaultDim',0,'refsolver','VRBBO','firstHitUpdate',0,...
    'hitupdate',0,'nfmaxStringflag',true,'secmaxStringflag',true,...
    'prt',1);
       
     if ~ param.soListflag 
         % list of the solvers ignoring the default which 
         % is based on the problem scale 
         param.soList     = {'IMATRS' 'DFLINT' 'BFO' 'NOMAD'}
         param.soList     = {'MCS'  'MATRS' 'BCDFO' 'UOBYQA' 'SDBOX' 'GLODS' 'DFOTR' 'FMAES' 'VRBBON' 'VRBBO' ...
             'NMSMAX' 'MADFO'  'DSPFD'}
    %     param.soList     = {'MATRS' 'MATRS' 'MATRS' 'MATRS' 'MATRS' 'MATRS' ...
    %         'MATRS' 'MATRS' 'MATRS' 'MATRS' 'MATRS' 'MATRS'} 
     param.soList     = {'IMATRS' 'MATRS' 'DFLINT'};
     param.soList     = {'MATRS' 'DFL'  'BFO'};
param.soList     = {'MCS'  'MATRS' 'BCDFO' 'UOBYQA' 'SDBOX' 'GLODS' 'DFOTR' 'FMAES' 'VRBBON' 'VRBBO' ...
             'NMSMAX' 'MADFO'  'DSPFD'};
         
param.soList     = {'IMATRS' 'MATRS' 'DFLINT'};
     param.soList     = {'MCS'  'MATRS'  'UOBYQA' 'SDBOX' 'GLODS' 'FMAES' 'VRBBON' 'VRBBO' ...
             'NMSMAX' 'MADFO'  'DSPFD'};
         
        % param.soList     = {'UOBYQA'  'SDBOX' 'VRBBO' 'FMAES' 'BFO'  'NMSMAX' 'NOMAD' 'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO'  'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO'}
         
       %  param.soList     = {'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO'  'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO' 'MADFO'}
       %  param.TuneCase   = [0 1 2 3 4 5 6 7 8 9 10 11 12] %zeros(1,length(param.soList));
         
         %param.soList     = {'UOBYQA'  'BCDFO' 'SDBOX' 'VRBBO' 'FMAES' 'BFO'  'NMSMAX' 'NOMAD'}
         
        % param.TuneCase   = [zeros(1,8) 0 1 2 3 4 5 6 7 8 9 10 11 12] ;
        
        param.soList     = {'BFO'}
        param.TuneCase   = [0] % zeros(1,length(param.soList));

         param.TypeVar   = TypeVar; % integer
     end  
     if strcmp(param.scale,'none') 
        % choose the dimension ignoring the default which
        % is calssified by the problem scale 
        param.dimension    = [2 30];
     end
     % choose nfmaxString and secmaxString ignoring 
     % the default for param.valueBudget
     if param.nfmaxStringflag, param.nfmaxString  = '1200*n';
     end

     if param.secmaxStringflag, param.secmaxString = '360';
     end

     disp('initialize the paths for using TE')

     disp(['These are user-dependent and may need',...
           ' to be adapted first!'])

     ok=TEpaths(param.userName,param.probCollect);



    [soList,prList,selectBy,sortBy,info]=ChoicesTestBBO(param);
    
    
   % prList={'ex9_2_3_MI1_i8_c8'}
    
    TESTruns(prList,soList,info);
    
    
    end
end
disp('all problems finished')
disp('===============================================================')
disp('===============================================================')
disp('===============================================================')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
