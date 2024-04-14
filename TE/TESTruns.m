%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTruns.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function TESTruns(prList,soList,info)
%
% TESTruns runs multiple test problems from CUTEST on multiple solvers
%
%
% prList        % list of test problems
% soList        % list of solvers according to TEwrapper.m
% RUNparam      % data struture including parameters to run 
%                 selected solver(s) on selected test problem(s)
%
function TESTruns(prList,soList,RUNparam)

tic
disp('enter TESTruns ...')
global  RESpath  WORKpath


% CUTESTpath    % path to CUTEST directory
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis
% WORKpath      % path for directory where TE is run (not global)
% RESdiary      % relative path of result diary (set locally)
% add defaults where needed
if nargin<1
    disp('List of test problems should be chosen as input')  
    return
end
if nargin<2 
    disp('List of solvers should be chosen as input')  
    return
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load TE and check RUNparam %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[TE,RUNparam]=TESTinit(RUNparam);

prt = RUNparam.prt;
disp(' ');
disp('+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
disp(' ');
npr=length(prList);
prListBug=cell(0); ibug=0;
hitlist=[];updatedHit=[]; 
if RUNparam.con=='L' && RUNparam.initHitVar && RUNparam.updateHitVar
    [s,~]=unix(['ls ',WORKpath,'/LCinfo.mat']);
    if s~=0
      LCinfo = [];
      LCinfo.n_unsucc = 0;
      LCinfo.list_unsucc =cell(0);
      LCinfo.n_nodecision=0;
      LCinfo.list_nodecision =cell(0);
      LCinfo.n_ifeasible = 0;
      LCinfo.list_ifeasible =cell(0);
      LCinfo.n_sfeasible = 0;
      LCinfo.list_sfeasible =cell(0);
      LCinfo.list_maxInfeasible = [];
      eval(['save -mat ',WORKpath,'/LCinfo.mat LCinfo' ])
    end
end


for pr=1:npr % main loop

   probnam=prList{pr}; % problem name
   
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % get the information of each selected problems %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
   [x,dim,t2,func,RUNparam,skippProb]= ...
                                  TESTprob(TE,probnam,RUNparam);
                                   

   if skippProb, continue; end
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % initialize hitlist if requested %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   varHit=1; 
  [updatedHit,hitlist,t3]= TESThit(func,x,hitlist,varHit,...
                       updatedHit,t2,probnam,RUNparam);
                       

  if prt, HitlistCheckTime=showtime(cputime-t3), end
        
   %%%%%%%%%%%%%%%%%%%%%%%
   % check stopping test %
   %%%%%%%%%%%%%%%%%%%%%%%
 
   TESTstop(dim,func,x,hitlist,RUNparam);


   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % run all selected solvers to solve the pr-th problem %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   [updatedHit,hitlist,ibug,prListBug]=  ...
              TESTsolvers(func,x,probnam,soList,hitlist,...
                             ibug,prListBug,t2,updatedHit,RUNparam);

  if prt
     showtime
     disp(' ')
     disp(['****************** problem ',probnam,...
                                       ' done *****************'])
     disp(' ')
  end
end

eval(['save ',RESpath,'/prListBug.mat prListBug'])
disp('solver runs completed');
disp(' ')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [varargout]=cutest_obj(varargin)
% Return function value and gradient if requested.
% Usage:  f=cutest_obj(x)  or  [f,g]=cutest_obj(x)
    varargout=cell(1,nargout);
    if isOctave
      [varargout{:}]=ocutest('obj',varargin{:});
    else
      [varargout{:}]=mcutest('obj',varargin{:});
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [varargout]=cutest_grad(varargin)
% Return gradient if requested.
% Usage:  g=cutest_grad(x)
    varargout=cell(1,nargout);
    if isOctave
      [varargout{:}]=ocutest('grad',varargin{:});
    else
      [varargout{:}]=mcutest('grad',varargin{:});
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
