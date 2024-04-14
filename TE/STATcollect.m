%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATcollect.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [table,failInfo,statInfo]=...
%            STATcollect(problemlist1,solverlist,resdir,refsolver,glob);
% collects results from resdir
%
% problemlist1     % list of test problems
% solverlist       % list of solvers
% resdir           % directory containing the result files
% refsolver        % reference solver for activities
% glob	           % perform global solver analysis?
%
% table            % structure of tables with the results
%   .con{pr}       % 
%   .pr{pr}        %   name of problem number pr
%                  %     (only problems with at least one result)
%   .dim{pr}       %   dimension of problem number pr
%   .nfree{pr}     %   number of free variables of problem number pr
%   .so{so}        %   name of solver number so
%   .acc{pr,so}    %   accuracy reached
%   .accf{pr,so}   %   objective function accuracy, fbest-fhitlist
%   .nf{pr,so}     %   number of function values needed
%   .sec{pr,so}    %   number of seconds needed
% statInfo{pr,so}  % structure with info about the solution run
%   .funInfo       %   info from function statistics
%   .info          %   old version of info (for older run data)
%
function [table,failInfo,statInfo]= STATcollect(problemlist1,...
                           solverlist,resdir,infomax,refsolver,glob)
if nargin<6, glob=0;end
global  TEpath RESpath HITpath 
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% load TE

eval(['load ',RESpath,'/',resdir,'/idpr.mat']);

eval(['load ',TEpath,'/TE.mat'])                  
% initialize tables
npr         = length(problemlist1); nso = length(solverlist);
table.pr    = cell(npr,1);          table.con    = cell(npr,1);
table.dim   = cell(npr,1);          table.nfree  = cell(npr,1);
table.nact  = cell(npr,1);          table.so     = solverlist;
table.acc   = cell(npr,nso);        table.accf   = cell(npr,nso);
table.nf    = cell(npr,nso);        table.sec    = cell(npr,nso);
table.fbest = cell(npr,nso);        table.err    = cell(npr,nso);
table.nfmax = cell(npr,1);          table.secmax = cell(npr,1);
statInfo    = cell(npr,nso);

for pr=1:npr,
   prob=char(problemlist1(pr));
  if strcmp(prob,'3PK'), prob = 'X3PK'; end
  if glob == 1,
    fil=[HITpath, '/', prob, '.mat'];
    if exist(fil)~=2 % hitlist file does not exist; skip problem
      disp(['skipped ',prob,' (no histlist file)']);
      continue;
    end;
    eval(['load ',fil]);
    if exist('hitlist')==0 % hitlist structure not found; skip problem
      disp(['skipped ',prob,' (no hitlist results)']);
      continue; 
    end;  
    hitlist;
  end
  % locate test results
  fil=[RESpath,'/',resdir,'/',prob,'.mat'];

  if exist(fil)~=2 % result file does not exist; skip problem
    disp(['skipped ',prob,' (no file)']);
    continue 
  end
  % load file
  eval(['load ',fil]);
  if exist(prob)==0 % result structure not found; skip problem
    disp(['skipped ',prob,' (no results)']);
    continue; 
  end;
  eval(['data=',prob,';'])

  listProbError= ...
            {'SSCOSINE_1000000' 'SCURLY10_1000000' 'SCURLY10_100000'};
  if ismember(prob,listProbError), continue; end;
  probInfo = getfield(TE.problem,prob);
  if probInfo.con=='X'||probInfo.con=='B', table.con{pr} = 1;
  else, table.con{pr} = 0; 
  end;
  table.pr{pr}=prob;
  if isfield(data,'dim'), 
      table.dim{pr} = data.dim;
      eval(['funcnfmax =@ (n) ',infomax.nfmaxString,';']);
      table.nfmax{pr} = funcnfmax(data.dim);
      eval(['funcsecmax =@ (n) ',infomax.secmaxString,';']);
      table.secmax{pr} = funcsecmax(data.dim);
  else
       probInfo      = getfield(TE.problem,prob);
       dim           = probInfo.dim;
       table.dim{pr} = dim;
       eval(['funcnfmax =@ (n) ',infomax.nfmaxString,';']);
       table.nfmax{pr} = funcnfmax(dim);
       eval(['funcsecmax =@ (n) ',infomax.secmaxString,';']);
       table.secmax{pr} = funcsecmax(dim);
  end;
  if isfield(data,'maxlow'), table.maxlow{pr}=data.maxlow;
  else,table.maxlow{pr}=NaN;
  end;
  if isfield(data,'minupp'), table.minupp{pr}=data.minupp;
  else,table.minupp{pr}=NaN;
  end;
  table.nfree{pr}=-1;
  for so=1:nso,
    solvid=solverlist{so};
    if isfield(data,solvid), 
      sol=getfield(data,solvid); % content of data.<solvid>
      if isfield(sol,'funInfo')
        % new data format
        statInfo{pr,so}.funInfo = sol.funInfo;
        statInfo{pr,so}.info    = [];
        table.acc{pr,so}        = sol.funInfo.qbest;
        table.nf{pr,so}         = sol.funInfo.nf;
        table.sec{pr,so}        = sol.funInfo.fsec;
        table.fbest{pr,so}      = sol.funInfo.fbest;
        table.err{pr,so}        = sol.funInfo.error;
        % simplify errors
        if isempty(table.err{pr,so}),table.err{pr,so}='unknown'; end
        if strcmp(table.err{pr,so},...
                 'ndirectional derivative not sufficiently negative')
           table.err{pr,so}='no descent direction';
        end
        if ~isempty(strfind(table.err{pr,so},'nfev'))
           table.err{pr,so}='there is a bug'; 
        end
        if ~isempty(strfind(table.err{pr,so},'reduction of f'))
            table.err{pr,so}='reduction of $f$ too small';
        end
        if ~isempty(strfind(table.err{pr,so},'Equal upper and lower'))
             table.err{pr,so}='equal upper and lower not permitted';
        end
        if ~isempty(strfind(table.err{pr,so},...
                                          'Problem appears unbounded'))
            table.err{pr,so}='problem appears unbounded';
         end
         if ~isempty(strfind(table.err{pr,so},'Local minimum possible'))
              table.err{pr,so}='Local minimum possible';
         end
         if ~isempty(strfind(table.err{pr,so},...
                                       ' Maximum number of function'))
              table.err{pr,so}='nfmax reached';
         end
         if ~isempty(strfind(table.err{pr,so}, ...
                                         'Solver stopped prematurely'))
              table.err{pr,so}='Solver stopped prematurely';
         end
         if ~isempty(strfind(table.err{pr,so},'current x satisfies'))
              table.err{pr,so}='failed';
         end
         if ~isempty(strfind(table.err{pr,so},...
                                       'is not a descent direction'))
             table.err{pr,so}='no descent direction';
         end
         if ~isempty(strfind(table.err{pr,so},...
                                       'index out of bounds because'))
              table.err{pr,so}='index out of bounds';
         end
         if ~isempty(strfind(table.err{pr,so},...
                       'Point set indices must be integers between'))
              table.err{pr,so}='Point set indices must be integers';
         end
         if ~isempty(strfind(table.err{pr,so},...
                    'Line search cannot find an acceptable point'))
              table.err{pr,so}= ...
                    'Line search cannot find an acceptable point ...';
         end
         if ~isempty(strfind(table.err{pr,so},'Input to ROOTS'))
              table.err{pr,so}='Roots are inf or nan in line search';
         end
         if glob, table.accf{pr,so}=sol.funInfo.fbest-hitlist.minf.f;       
         else,table.accf{pr,so}=[];
         end
      end
      if strcmp(solvid,refsolver)
         if isfield(data,'probDesc')
              low=data.probDesc.low; upp=data.probDesc.upp;
              if length(x)~=length(upp)
                prob,size(x),size(low),size(upp),nfree=NaN
                error('results file not correct')
              else
                 nfree=sum(x>low & x<upp);
              end
          else
              nfree=NaN;
          end
          table.nfree{pr} = nfree;
      else
          table.nfree{pr} = NaN;
      end
    else
      if strcmp(solvid,'BCDFO'), table.err{pr,so}='dimension $\\ge$ 30';
      else
         table.err{pr,so}=NaN;
      end
      table.acc{pr,so}   = inf;
      table.nf{pr,so}    = table.nfmax{pr};
      table.sec{pr,so}   = table.secmax{pr};
      table.fbest{pr,so} = NaN;
      table.accf{pr,so}  = inf;
      table.time{pr,so}  = NaN;
      table.err{pr,so}   = 'there is no data';
    end; % of if isfield(data...
  end; % of for so
end; % of for pr
for i=1:npr
    prob=table.pr{i};
    ind = findstr(prob,'_');
    if length(ind)>0
        prob=prob(setdiff(1:length(prob),ind));
        table.pr{i}=[prob,'x'];
    end
end

% cut tables to size      
table.pr(pr+1:end)=[];
% table.so keeps its size
table.acc(pr+1:end,:)=[]; table.nf(pr+1:end,:)=[];
table.sec(pr+1:end,:)=[]; failInfo=[];
statInfo=cell(npr,nso); table.so=solverlist;
if pr==0 % no problems found
  disp('no problem fits the specification');
  return;
end;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
