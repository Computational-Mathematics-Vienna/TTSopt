%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTinit %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TESTinit initializes TESTruns
%
% input
%
% RUNparam     % data struture to run selected solver(s) on selected
%                test problem(s)
% output
%
% TE          % data structure for test environment    
% RUNparam    % defined above
%
function [TE,RUNparam]=TESTinit(RUNparam)

global RESpath TEpath CUTESTsrc finfo WORKpath
if ~isfield(RUNparam,'probCollect'),RUNparam.probCollect='CUTEst';end
switch RUNparam.probCollect
  case 'CUTEst', TEcase = 1;
  case 'CUTEstInt', TEcase = 2;
  case 'CUTEstMint', TEcase = 3;
  %%%%%%%%%%%% continuous case %%%%%%%%%%%%%%
  case  'bcp', TEcase = 4;
  case 'global', TEcase = 5;
  case 'minlp', TEcase = 6;
  case 'inf', TEcase = 7;
  case 'ibm', TEcase = 8;
  case 'morg', TEcase = 9;
  case 'prince', TEcase = 10;
  %%%%%%%%%%%% integer case %%%%%%%%%%%%%%%%%    
  case  'bcpInt', TEcase = 13;
  case 'globalInt', TEcase = 14;
  case 'minlpInt', TEcase = 15;
  case 'infInt', TEcase = 16;
  case 'ibmInt', TEcase = 17;
  case 'morgInt', TEcase = 18;
  case 'princeInt', TEcase = 19;
  %%%%%%%%%%%% mixed-integer case %%%%%%%%%%%%%%     
  case 'bcpMint', TEcase = 22;
  case 'globalMint', TEcase = 23;
  case 'minlpMint', TEcase = 24;
  case 'infMint', TEcase = 25;
  case 'ibmMint', TEcase = 26;
  case 'morgMint', TEcase = 27;
  case 'princeMint', TEcase = 28;
    otherwise
        error('probCollect is not correct')
end
RUNparam.TEcase  = TEcase;
if isfield(RUNparam,'resDir')
    resDir=RUNparam.resDir;
    if exist(resDir)~=7, unix(['mkdir ',RESpath,'/',resDir]);end;
     resfile=[resDir,'/results.txt'];
else
    error('resDir should be chosen')
end
RUNparam.resfile = resfile; finfo.prt   = RUNparam.prt;
if ~isfield(RUNparam,'xinitType'), RUNparam.xinitType=0;end
if ~isfield(RUNparam,'updateHitVar'), RUNparam.updateHitVar=0;end
if ~isfield(RUNparam,'initHitVar'), RUNparam.initHitVar=0;end
if ~isfield(RUNparam,'nfmaxString'), RUNparam.nfmaxString='inf'; end
if ~isfield(RUNparam,'secmaxString'), RUNparam.secmaxString='inf';end
% load TE
eval(['load ',TEpath,'/TE.mat'])

if ismember(TEcase,1:3)
    EXEdir = [WORKpath,'/EXE'];
    if exist(EXEdir)~=7, mkdir(EXEdir); end
    if ~isempty(ls(EXEdir)), unix(['rm ',WORKpath,'/EXE/*.*']); end
    if ~isOctave
       unix("rm -f 1* 4* *.d *.f *.6 *.SIF *.mexa64");
       eval(['addpath ',CUTESTsrc,'/cutest/src/matlab/']);
    else
       unix("rm -f 1* 4* *.d *.f *.6 *.SIF *.mex");
       eval(['addpath ',CUTESTsrc,'/cutest/src/octave/']);
       clear ocutest;
    end
    eval(['addpath ',CUTESTsrc,'/cutest/bin/']);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
