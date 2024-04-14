%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% initf.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function initf(solvid,prob,func,low,upp,RUNparam); 
% initializes global data structure for getfg.m
% 
% solvid        % solver name
% prob          % problem name
% func          % function handle
% low           % lower bounds
% upp           % upper bounds
% RUNparam        % run time RUNparam
%   .accf       %   desired accuray for the convergence speed qf
%   .nfmax      %   bounds on number of function values
%   .secmax     %   bounds on number of seconds
%   .indMI      % 
%
% global variable
% finfo            % structure containing function info and statistics
%   .solver        %   name of solver requesting the evaluation
%   .prob          %   problem name
%   .func          %   function handle
%   .low           %   lower bounds
%   .upp           %   upper bounds
%   .accf          %   desired target accuracy
%   .nfmax         %   bounds on number of function values
%   .secmax        %   bounds on number of seconds
%   .maxInfeas     %   maximal infeasibility
%   .acc           %   qf<= accf holds
%   .nf            %   number of function evaluations
%   .f             %   function value
%   .fbest         %   best function value
%   .nfbest        %   nf of best function value
%   .fsec          %   number of CPU seconds for best function value
%   .qbest         %   best acc = qf
%   .xqbest        %   point with best accf
%   .fqbest        %   function value at best accf
%   .nfqbest       %   nf of best accf
%   .qsec          %   number of CPU seconds for best accf
%   .nextacc       %   next accf threshold to reach
%   .kacc          %   accf<10^{-k} reached (unless accf=0)
%   .nacc{k}       %   ng of accf<10^{1-k} reached (unless accf=0)
%   .nfacc{k}      %   nf of accf<10^{1-k} reached (unless accf=0)
%   .fbestf2f(i,k) %   best function value with nf<i*10^k
%   .qbestf2f(i,k) %   best accuracy with nf<i*10^k
%   .time2print    %   time to print feasible summary line
%   .time2print0   %   time to print infeasible summary line 
%   .cpu0          %   cputime at start of process
%   .error         %   error message
%   .draw          %   draw progress? (1=yes; assumes min f = 0)
%   .drawstyle     %   marking style (default: 'bo') 
%   .ndraw         %   the number of draw
%
function initf(solvid,prob,func,low,upp,RUNparam)

global finfo 

finfo.prt = RUNparam.prt;
finfo.RESdiary = RUNparam.RESdiary;
finfo.collection = RUNparam.probCollect;
if isfield(RUNparam,'indMI'), finfo.indMI = RUNparam.indMI;  end
finfo.TEcase  = RUNparam.TEcase;
finfo.noiseFun = RUNparam.noiseFun;
if finfo.noiseFun, 
    finfo.noiseLevel          = RUNparam.noiseLevel;
    finfo.noiseDistribution   = RUNparam.noiseDistribution;
    finfo.noiseType           = RUNparam.noiseType;
end

finfo.point=RUNparam.point;
finfo.solver=solvid;
finfo.prob=prob;
finfo.func=func;
finfo.low=low; 
finfo.upp=upp;
finfo.accf=RUNparam.accf;
finfo.nfmax=RUNparam.nfmax;
finfo.secmax=RUNparam.secmax;
finfo.nf=0;
finfo.f=NaN;
finfo.fbest=inf;
if isfield(RUNparam,'indMI')
   finfo.x=NaN+ones(length(RUNparam.indMI),1);
else  
   finfo.x=NaN+low;
end

finfo.f=NaN;
finfo.nfbest=0;
if isfield(RUNparam,'indMI')
   finfo.xbest=NaN+ones(length(RUNparam.indMI),1); 
else
   finfo.xbest=NaN+low;
end

finfo.fqbest=NaN;
finfo.nfqbest=NaN;
finfo.xqbest=NaN+low;
finfo.qsec=NaN;
finfo.qbest=inf;
finfo.fbest=inf;
finfo.secbest=0;
finfo.nextacc=1;
finfo.kacc=0;
finfo.nacc=cell(0);
finfo.nfacc=cell(0);
finfo.fsec=NaN;        
finfo.fbestf2f=inf(5,7);
finfo.qbestf2f=inf(5,7);
finfo.maxInfeas=0;
finfo.maxInfeasLC=0; 
finfo.time2print=cputime+1;
finfo.time2print0=cputime+1;
finfo.cpu0=cputime;
finfo.error=[];
finfo.arraynfbestacc    = [];
finfo.arrayaccb         = [];
finfo.draw              = 0;        
finfo.drawstyle         = '';  
finfo.xinit             = RUNparam.x;
finfo.updateHitVar      = RUNparam.updateHitVar;
finfo.unSol2bcProb = RUNparam.unSol2bcProb;
finfo.qbestInfeas  = inf;
finfo.epsFeasibile=1e-6;


if isOctave
  WORKpath = ['/',RUNparam.userName,'/TEallFinal']; 
  eval(['load ',WORKpath, '/TE/powell.mat']);
  if sPowell==1
    %eval(['load ',WORKpath, '/TE/finfo.mat']);
    finfo.func = func2str(finfo.func);
    eval(['save -mat ',WORKpath, '/TE/finfo.mat finfo']);
  end
end
     
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

