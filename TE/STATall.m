%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analyzes results cumulatively computed with CUTESTall.m
%

clear
clc;format compact;tic            % start timer



disp('===============================================================')
disp('===============================================================')
disp('===============================================================')


global bbo SOLpath TEpath RESpath HITpath PDFpath
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis



cas=0;  % unconstrained and 


        
 param = struct('TEsortOK',1,'userName','users/kimiaei',...
 'probCollect','bcpMint','existData',0,'targetAcc',1e-4,...
 'noisefun',1,'noiselevel',1e-3,'noisetype','absolute',...
 'noisedistr','uniform','solverlistflag',false,'shortTable',1,....
 'scale','none','initPoint','standard',...
 'con','bound constrained','key','DNE','inc',1,...
 'res',1,'solvedByAll',0,'valueBudget','low',...
 'savedTables',0,'defaultDim',0,'LegLocat','southeast',...
 'xlabelSize',15,'ylabelSize',15,'LegFontSize',12,...
 'titleFigureSize',15,'nsolplot',5,'sparsefig',1,...
 'sparseSize',50,'ConvePlotFlag',0,...
 'xTrickarray','[1 3 10 30 100 300 1e3 3e3 1e4 1e5]',...
 'PerProfileName','perp1','BoxPlotName','boxp1',...
 'DataProfileName','datap1',...
 'MoralesProfileName','Moralesp1',...
 'MoralesSol1','MATRS',...
 'MoralesSol2','NOMAD',...
 'refsolver','NOMAD','classdimOk',1,...
 'nfmaxStringflag',true,'secmaxStringflag',true,'prt',0);


 
     
  if ~ param.solverlistflag 
 % list of the solvers ignoring the default which 
  % is based on the problem scale 
  param.solverlist = {'VRBBO'  'VRBBO1' 'VRBBO2' 'VRBBO3' 'VRBBO4' 'VRBBO5' ...
 'BFO'  'RDSfs' 'RDSvs' 'PRDS'  'DSPFD' 'NOMAD1' 'NOMAD2' 'PSM' ...
 'fminunc'  'SDBOX' ...
 'GLOBAL' 'MCS'  'ACRS' 'GLODS' ...
 'adsmax' 'mdsmax' 'nmsmax' 'MDS' 'HOOKE' 'NELDER' 'fminsearch' ...
 'DE' 'GCES' 'PSwarm' 'CMAES' ...
 'BCDFO' 'snobfit' 'bobyqa' 'newuoa' 'uobyqa' };

% param.solverlist = {'VRBBO'  'MCS' 'NOMAD2' 'adsmax' 'mdsmax' ...
%     'nmsmax' 'HOOKE' 'NELDER' 'GCES' 'PSwarm' 'CMAES'   'GLOBAL' ...
%     'GLODS' 'fminunc'  'SDBOX' 'BFO' 'DSPFD' 'PSM'};
% % 
%  param.solverlist = {'VRBBO' 'fminunc'  'SDBOX'}
% 
 param.solverlist = {'DFOTR' 'STBBO1' ...
'FMAES' 'VSBBON1' 'VSBBO' 'uobyqa' 'BCDFO' 'nmsmax' 'NELDER' 'BFO' ...
'fminunc' 'fminunc1' 'fminunc2' 'STOCHASTICRBF' 'DYCORS'  };

%  param.solverlist = {'STBBO1' 'VSBBON1' 'VSBBO' 'fminunc' 'fminunc1' 'fminunc2' };
%  
%  param.solverlist = {'STBBO1' 'VSBBO' 'fminunc'};
%  
  param.solverlist = {'MATRS' 'BCDFO' 'UOBYQA' 'SDBOX' 'GLODS' 'MCS' 'DFOTR' 'FMAES' 'VRBBON' 'VRBBO' ...
         'NMSMAX' 'NEWUOA' 'MADFO' 'BOBYQA' 'DSPFD'}
 param.solverlist = {'MATRS' 'BCDFO' 'UOBYQA' 'SDBOX' 'GLODS' 'MCS' 'DFOTR' 'FMAES' 'VRBBON' 'VRBBO' ...
         'NMSMAX' 'MADFO' 'DSPFD'}
%      param.solverlist = {'MATRS1' 'MATRS2' 'MATRS3' 'MATRS4' 'MATRS5' 'MATRS6' ...
%         'MATRS7' 'MATRS8' 'MATRS9' 'MATRS10' 'MATRS11' 'MATRS12' 'MATRS' 'MADFO'}
% 
param.solverlist = {'NOMAD' 'MATRS' 'BCDFO' 'UOBYQA' 'SDBOX' 'GLODS' 'MCS' 'DFOTR' 'FMAES' 'VRBBON' 'VRBBO' ...
         'NMSMAX' 'NEWUOA' 'MADFO' 'BOBYQA' 'DSPFD'};
     
param.solverlist = {'NOMAD' 'IMATRS' 'MATRS' 'DFLINT'}  

param.solverlist = {'NOMAD' 'MATRS' 'BFO' 'DFL'}  

param.solverlist = {'BCDFO' 'UOBYQA' 'SDBOX'  'DFOTR' 'FMAES' 'VRDFON' 'VRBBO' 'NOMAD1'...
 'NELDER'  'NOMAD2'   'ADSMAX'   'NMSMAX' 'DSPFD' 'BFO' 'FMINUNC' 'FMINUNCL' 'LMMAES' 'NOMAD' 'SSDFO' 'DLMBOPT'};

% param.solverlist = {'MATRS' 'MISO1' 'MISO2' 'NOMAD'}
% 
% param.solverlist = {'NELDER' 'SDBOX' 'VRDFON' 'VRBBO' 'NOMAD1' 'NOMAD2' 'DSPFD' 'BFO' 'FMINUNC' 'FMINUNCL' 'SSDFO'}  
% 
 param.solverlist = {'SSDFO' 'SDBOX' 'VRDFON' 'VRBBO'  'FMINUNC' 'FMINUNCL'}
 
  param.solverlist = {'NOMAD'  'MATRS'  'MATRS1' 'BFO' 'MISO1' 'MISO2' }
 
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

 if param.classdimOk % classified by the dimension is done
                     % in the effciency tables
     param.classdim1=[1 2]; param.classdim2=[3 5];
     param.classdim3=[6 10]; param.classdim4=[11 20];
     param.classdim5=[21 100]; param.classdim6=[101 1000];
     param.classdim7=[1001 5000];
     param.classdim8=[5001 10000];
 end

 disp('initialize the paths for using TE')

 disp(['These are user-dependent and may need',...
       ' to be adapted first!'])

 ok=TEpaths(param.userName,param.probCollect);


 [sollist,problemlist,selectBy,sortBy,info]=ChoicesBBO(param);        
        
       
% run STATanalysis to obtain results.pdf and figures
STATanalysis(sollist,problemlist,selectBy,sortBy,info)

open([PDFpath,'/results.pdf'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





