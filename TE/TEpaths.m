%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEpaths.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function ok=TEpaths;
% Initializes the (user-dependent) paths for using TE
%
% ok    % 1: ok, 0: some missing directory was created; check!
%
function [ok] = TEpaths(username,probCollect)
if nargin<1
   %username ='users/kimiaei'; probCollect='CUTEst';
   username ='home/romana/OctaveWorkSpace'; probCollect='CUTEst';
end
% paths to directories, without / at the end
global CUTESTsrc SOLpath TEpath RESpath HITpath PDFpath ...
       WORKpath FORTRANpath MEXpath WSOLdir WTUNEdir

% CUTESTpath    % path to CUTEST directory
% FORTRANpath   % path to forectory for FORTRAN code of CUTEST problems
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis
% WORKpath      % path for directory where TE is run (not global)
% MEX           %
% WSOLdir       % 
PATHinit = ['/',username,'/TTSopt-1.0.0/TEprob/Collections'];  
switch probCollect
  case 'CUTEst'
   TEpath = [PATHinit,'/CUTEst'];
   CUTESTsrc = [TEpath,'/INSTALLATION'];
   FORTRANpath = [TEpath,'/FORTRAN'];
   if isOctave
     MEXpath       = [TEpath,'/MEX/mex/'];
   else
     MEXpath       = [TEpath,'/MEX/mexa64/'];
   end
   case  'bcp', TEpath = [PATHinit,'/bcp'];
   case  'bcpInt', TEpath = [PATHinit,'/bcpInt'];
   case  'bcpMint', TEpath = [PATHinit,'/bcpMint'];
   case 'global', TEpath = [PATHinit,'/global']; 
   case 'globalInt', TEpath = [PATHinit,'/globalInt']; 
   case 'globalMint', TEpath = [PATHinit,'/globalMint'];
   case 'minlp', TEpath = [PATHinit,'/minlp']; 
   case 'minlpInt', TEpath = [PATHinit,'/minlpInt'];
   case 'minlpMint', TEpath = [PATHinit,'/minlpMint'];
   case 'inf', TEpath = [PATHinit,'/inf']; 
   case 'infInt', TEpath = [PATHinit,'/infInt']; 
   case 'infMint', TEpath = [PATHinit,'/infMint']; 
   case 'ibm', TEpath = [PATHinit,'/ibm'];
   case 'ibmInt', TEpath = [PATHinit,'/ibmInt'];
   case 'ibmMint', TEpath = [PATHinit,'/ibmMint'];  
   case 'morg', TEpath = [PATHinit,'/morg']; 
   case 'morgInt', TEpath = [PATHinit,'/morgInt']; 
   case 'morgMint', TEpath = [PATHinit,'/morgMint']; 
   case 'prince', TEpath = [PATHinit,'/prince']; 
   case 'princeInt', TEpath = [PATHinit,'/princeInt']; 
   case 'princeMint', TEpath = [PATHinit,'/princeMint']; 
   case 'MIPLIB', TEpath = [PATHinit,'/MIPLIB'];  
   case 'MIPLIBint', TEpath = [PATHinit,'/MIPLIBint'];  
   case 'sluksanInt', TEpath = [PATHinit,'/sluksanInt'];     
   case 'sluksan', TEpath = [PATHinit,'/sluksan'];  
   case 'sluksanMint', TEpath = [PATHinit,'/sluksanMint'];  
   case 'CUTEstInt' 
        TEpath      = [PATHinit,'/CUTEstInt'];
        CUTESTsrc   = [TEpath,'/INSTALLATION']; 
        FORTRANpath = [TEpath,'/FORTRAN'];
        MEXpath     = [TEpath,'/MEX'];
   case 'CUTEstMint' 
        TEpath        = [PATHinit,'/CUTEstMint'];
        CUTESTsrc     = [TEpath,'/INSTALLATION']; 
        FORTRANpath   = [TEpath,'/FORTRAN'];
        MEXpath       = [TEpath,'/MEX'];
end
SOLpath         = ['/',username,'/TEallFinal/SOLVERS'];
RESpath         = ['/',username,'/TEallFinal/RES/',probCollect];
HITpathinit     = ['/',username,'/TEallFinal/HIT/'];  
HITpath         = [HITpathinit,probCollect];
PDFpath         = [RESpath,'/',probCollect,'/PDF'];
WORKpath        = ['/',username,'/TEallFinal'];
WSOLdir         = ['/',username,'/TEallFinal/WRAPPERS'];
WTUNEdir        = ['/',username,'/TEallFinal/TUNERS'];
% check path info
ok=1;
if strcmp(probCollect,'CUTEst')
    direc=TEpath;
    if exist(direc)~=7
      unix(['mkdir ',direc]);
      disp(['missing directory ',direc,' created'])
      ok=0;
    end
    direc=SOLpath;
    if exist(direc)~=7
      unix(['mkdir ',direc]);
      disp(['missing directory ',direc,' created'])
      ok=0;
    end
end
CUTE=(strcmp(probCollect,'CUTEst')||strcmp(probCollect,'CUTEstInt')...
       ||strcmp(probCollect,'CUTEstMint'));
if CUTE
    direc=FORTRANpath;
    if exist(direc)~=7 
      unix(['mkdir ',direc]);
      disp(['missing directory ',direc,' created'])
      ok=0;
    end
end
direc=TEpath;
if exist(direc)~=7
  unix(['mkdir ',direc]);
  disp(['missing directory ',direc,' created'])
  ok=0;
end
direc=WSOLdir;
if exist(direc)~=7
  unix(['mkdir ',direc]);
  disp(['missing directory ',direc,' created'])
  ok=0;
end
direc=RESpath;
if exist(direc)~=7
  unix(['mkdir ',direc]);
  disp(['missing directory ',direc,' created'])
  ok=0;
end
if ismember(probCollect,{'CUTEst' 'CUTEstInt' 'CUTEstMint'})
    direc=MEXpath;
    if exist(direc)~=7
      unix(['mkdir ',direc]);
      disp(['missing directory ',direc,' created'])
      ok=0;
    end
end
direc=HITpathinit;
if exist(direc)~=7
  unix(['mkdir ',direc]);
  disp(['missing directory ',direc,' created'])
  ok=0;
end
direc=HITpath;
if exist(direc)~=7
  unix(['mkdir ',direc]);
  disp(['missing directory ',direc,' created'])
  ok=0;
end
direc=WORKpath;
if exist(direc)~=7
  unix(['mkdir ',direc]);
  disp(['missing directory ',direc,' created'])
  ok=0;
end
if ~ok
  disp('Check paths in TEpaths.m for correctness. ')
  disp('Some missing directories were created.')
end
% restoredefaultpath
% rehash toolboxcache
% savepath
return;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
