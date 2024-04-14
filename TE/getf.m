%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% getf.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function f=getf(x);
% computes function value of func at x
% collects statistics and enforces stopping test
%
% must be initialized by a call to funInit.m
%
% x      % argument
% f      % function value 
%
% global variable
% finfo            % structure containing function info and statistics
%   .solver        %   name of solver requesting the evaluation
%   .prob          %   problem name
%   .func          %   function handle
%   .low           %   lower bounds
%   .upp           %   upper bounds
%   .accf          %   desired target accuracy
%   .ngmax         %   bounds on number of gradients
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
function f=getf(x,username)
  
global finfo RESpath WORKpath

large = 1e7;

if isOctave
  if nargin > 1
    WORKpath = [username,'/TEallFinal']; 
  end
  eval(['load ',WORKpath, '/TE/powell.mat']);
  if sPowell==1
    eval(['load ',WORKpath, '/TE/finfo.mat']);
  
    % there is a bug in Octave: if we save a function handle in a structure
    % Octave reads @@ instead of @. So we convert it to a string and then
    % back to a function handle.    
         
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if  ~isempty(strfind(finfo.func,"cutest_obj"))
      finfo.func = str2func(finfo.func);
      CUTESTsrc = [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/',...
        'cutest/src/octave']; 
      unix(['cp ',WORKpath,'/TEprob/Collections/CUTEst/MEX/mex/', ...
        finfo.prob, '/*.mex ',CUTESTsrc]);
      unix(['cp ',WORKpath,'/TEprob/Collections/CUTEst/MEX/mex/', ...
        finfo.prob,'/*.d ',CUTESTsrc]);
      cd(CUTESTsrc)

      pr = cutest_setup();

    else
      finfo.func = str2func(finfo.func);
    end
    cd([WORKpath,'/TE'])
  end
end
if nargin==0
  if ~isfinite(finfo.fbest)&& isfield(finfo,'fbestinfeasLC')
      finfo.done=0;
      finfo.fbest  = finfo.fbestinfeasLC;
      finfo.qbest  = finfo.qfinfeasLC;
      finfo.xbest  = finfo.xbestinfeasLC;
  end
  return
end

RESdiary = finfo.RESdiary; finfo.done=0; epsFeasibile=finfo.epsFeasibile;
% RESdiary  % relative path of result diary
% enforce stopping tests
finfo.error=[];
prt = finfo.prt;finfo.done=0;

if finfo.qbest<=finfo.accf 
  finfo.error='accuracy reached'; finfo.done=1;
elseif finfo.fbest<=-large
    finfo.error='function -1e+12 reached'; finfo.done=1;
elseif finfo.nf>=finfo.nfmax
      finfo.error='nfmax reached'; finfo.done=1;
elseif cputime-finfo.cpu0>=finfo.secmax
    finfo.error='secmax reached'; finfo.done=1;
end

if finfo.done
  % optimization stopped
  % print result summary on screen
  if ~isfinite(finfo.fbest)
      finfo.fbest  = finfo.fbestinfeasLC;
      finfo.qbest  = finfo.qfinfeasLC;
      finfo.xbest  = finfo.xbestinfeasLC;
  end

  nf = finfo.nf;
  if prt > 0
      disp(['==================================================',...
            '===========']);
      disp([finfo.solver,' finished: ',finfo.error])
      disp([finfo.prob,': nf=',num2str(nf),...
            sprintf(', qbest=%9.3e',qbest)]);
      disp(['===================================================',...
            '==========']);
  end

  % print result summary on results diary
  fid=fopen(RESdiary,'a'); 
  % append to current file
  if fid<0, RESdiary
    disp('file not accessible - permissions?'); 
    error('file not accessible - permissions?'); 
  end
  if prt > 0
      fprintf(fid,['==========================================',...
                   '==========\n']);
      fprintf(fid,[finfo.solver,' finished: ',finfo.error,'\n']);
      fprintf(fid,[finfo.prob,': nf=',num2str(nf),...
              sprintf(', qbest=%9.3e',qbest)]);
      fprintf(fid,['============================================',...
                   '========\n']);
      fprintf(fid,'\n\n');
  end
  if isOctave
    if sPowell == 1
      finfo.func=func2str(finfo.func);
      eval(['save -mat ',WORKpath, '/TE/finfo.mat finfo'])
    end
  end
  error(finfo.error);
end
if size(x,1)>1, ok=0; else; ok=1; end
if ok
    ok = isempty(strfind(finfo.solver,'DYCORS'))|...
    isempty(strfind(finfo.solver,'STOCHASTICRBF'))|...
    isempty(strfind(finfo.solver,'MATSUMOTO'))|...
    isempty(strfind(finfo.solver,'GRID'));
end
if ok
   if strcmp(finfo.point,'N')
       xs =  x'+Shiftofx(length(x),finfo.low,finfo.upp);
   else, xs =  x';
   end
else
    if strcmp(finfo.point,'N')
        xs =  x+Shiftofx(length(x),finfo.low,finfo.upp);
    else, xs =  x;
   end
end
if ismember(finfo.TEcase,[3,22:29])
   if any(isinf(x(finfo.Ii))) || ...
      any(floor(x(finfo.Ii))~=x(finfo.Ii))
      disp(['bug in solver; round the integer part',...
            ' of x to integer'])
      x(finfo.Ii) = round(x(finfo.Ii));
   end
elseif ismember(finfo.TEcase,[2,13:21])
   if any(isinf(x)) || any(floor(x)~=x)
       disp('bug in solver; round x to integer')
       x= round(x);
   end
end

finfo.nf=finfo.nf+1; 


%if exist([WORKpath,'/TE/res.mat']) ~= 0
%  eval(['load ',WORKpath,'/TE/res.mat']);
%end

if ismember(finfo.TEcase,[2,13:21]) % integer case
    y = finfo.low+xs.*(finfo.upp-finfo.low)./100 ;
    y = y';
    [f]=finfo.func(y);
    xx=max(finfo.ilow,min(xs(:),finfo.iupp));
    infeasBD=norm(xx-xs,inf);
    if isnan(f), f=inf; end
    f=max(-1e50,min(f,1e50));
elseif ismember(finfo.TEcase,[3,22:29]) % mixed inetegr case
    Ic=finfo.Ic;
    Ii=finfo.Ii;
    y=xs;
    y(Ii) = finfo.low(Ii)+xs(Ii).*(finfo.upp(Ii)-finfo.low(Ii))./100;  
    [f]=finfo.func(y);
    
    if isnan(f), f=inf; end
    f=max(-1e50,min(f,1e50));
    xx=y;
    xx(Ic)=max(finfo.low(Ic),min(xs(Ic),finfo.upp(Ic)));
    xx(Ii)=max(finfo.ilow ,min(xs(Ii),finfo.iupp));
    infeasBD=norm(xx-xs,inf);
else % continuous case
    if isOctave && sPowell && exist('ocutest') ~= 0
      cd(CUTESTsrc)
      [f]=finfo.func(xs);
      cutest_terminate()
      unix(['rm ',CUTESTsrc,'/ocutest.mex']);
      clear ocutest        
      cd([WORKpath,'/TE'])
    else
      [f]=finfo.func(xs);
    end
    if isnan(f), f=inf; end
    f=max(-1e50,min(f,1e50));
    xx=max(finfo.low,min(xs(:),finfo.upp));
    infeasBD=norm(xx-xs,inf);
end

finfo.f = f;

if finfo.con=='L'
    AP=finfo.AP;
    bP=finfo.bP;
    AE=finfo.AE;
    bE=finfo.bE;
    P=finfo.P;
    E=finfo.E;
    if ~isempty(P), infeasLCP = max(max(0,AP*xs -bP));
    else, infeasLCP = 0; 
    end
    if ~isempty(E), infeasLCE = max(abs(AE*xs-bE));
    else, infeasLCE = 0;
    end
    infeasLC    = max(infeasLCP,infeasLCE);
else
    infeasLC = 0;
end
finit = finfo.finit;
fopt = finfo.fopt;


if f-fopt == 0
  qf = 0;
else
  if finit-fopt == 0
    error("finit and fopt are equal")
  else
    qf = (f-fopt)/(finit-fopt);
  end
end

qfrd = qf*10e6;
qfrd = round(qfrd);
qfrd = qfrd*10e-6;


if qfrd<0 && f-fopt < 0
   name = finfo.prob;
   file = [RESpath,'/HITupdate.mat'];
   if exist(file) == 2
     eval(['load ',RESpath,'/HITupdate.mat']);
   end
   HITupdate.(name).coll = finfo.collection;
   HITupdate.(name).solver = finfo.solver;
   HITupdate.(name).TEcase = finfo.TEcase;
   HITupdate.(name).x = x;
   HITupdate.(name).f = f;
   HITupdate.(name).func = finfo.func;
   HITupdate.(name).low = finfo.low;
   HITupdate.(name).upp = finfo.upp;
   if isOctave
     HITupdate.(name).func = func2str(finfo.func);
   end
   com=['save -mat ',RESpath,'/HITupdate.mat HITupdate'];
   eval(com)
   disp("Warning: qf<0")
end
finfo.qf = qf;

df       = (fopt-f)/(abs(fopt)+abs(f)+realmin);
ftrue     = f;
if finfo.noiseFun
   switch finfo.noiseDistribution
       case 'uniform'
           if finfo.noiseLevel>0.1 && strcmp(finfo.noiseType,'rel')
              epsilon = max(0.1*rand,2*rand-1)*finfo.noiseLevel;
           else
               epsilon = (2*rand-1)*finfo.noiseLevel;
           end
       case 'Gauss'
           if finfo.noiseLevel > 0.1 && strcmp(finfo.noiseType,'rel')
              epsilon = max(0.1*rand,randn)*finfo.noiseLevel;
           else
               epsilon = randn*finfo.noiseLevel;
           end
       otherwise
        disp('error: noisy.distr should be either uniform or Gauss')
        disp('Go to CUTESTall and choose truly noisy.distr')
   end
   switch finfo.noiseType
       case 'ab', f = f+epsilon;
       case 'rel', f= f*(1+epsilon);
       otherwise 
           disp('error: noisy.type should be either ab or rel ')
           disp('Go to CUTESTall and choose truly noisy.type')
   end
end

if (~isinf(finfo.qf) && ~isnan(finfo.qf))
     finfo.arrayaccb       = [finfo.arrayaccb   finfo.qf];
     finfo.arraynfbestacc  = [finfo.arraynfbestacc finfo.nf];
end

if ~finfo.unSol2bcProb, infeasBD=0;end
finfo.maxInfeas=max(finfo.maxInfeas,infeasBD);
finfo.maxInfeasLC=max(finfo.maxInfeasLC,infeasLC);
if finfo.nf==1
     finfo.qfinfeasLC = qf;
     finfo.fbestinfeasLC=f;
     finfo.xbestinfeasLC=x;
elseif ~infeasBD&&infeasLC>epsFeasibile && infeasLC<finfo.infeasLCold
         finfo.qfinfeasLC=qf;
         finfo.fbestinfeasLC=f;
         finfo.xbestinfeasLC=x;
end
finfo.infeasLCold = infeasLC;

% check feasibility
if infeasBD<=epsFeasibile && qf<finfo.qbest && infeasLC<=epsFeasibile
  finfo.fsec=cputime-finfo.cpu0;
  finfo.fbest=f;  
  finfo.xbest=x;  
  finfo.nfbest=finfo.nf;
  if cputime>finfo.time2print
     % print at most once per second
     finfo.time2print=cputime+1;
     if prt
        disp([finfo.prob,': nf=',num2str(finfo.nf),...
        sprintf(', qbest=%9.3e',finfo.qbest),...
        sprintf(', qf=%7.1e',qf),sprintf(', relgain=%9.3e',df)]);
     end
  end
  for i=1:5
    for k=1:7
      if finfo.nf<i*10^k, finfo.fbestf2f(i,k)=f; end
    end
  end
  format long
  if prt
      disp(['function value improved at nf=',num2str(finfo.nf),...
            ' to f=',num2str(f)]) 
  end
  if finfo.qf < finfo.qbest 
       finfo.xbest  = x;     finfo.qbest   = qf;
       finfo.fqbest  = ftrue; finfo.nfqbest = finfo.nf;
       finfo.qsec    = cputime-finfo.cpu0;
       for i=1:5
           for k=1:7
              if finfo.nf<i*10^k, finfo.qbestf2f(i,k)=qf; end
           end
       end
       while finfo.qf<=finfo.nextacc&& finfo.qf>0
            % first time acc<=10^(1-k);
            finfo.kacc=finfo.kacc+1;
            finfo.nfacc{finfo.kacc}=finfo.nf; 
            finfo.nextacc=finfo.nextacc/10;
       end
  end  
end

if ~isreal(finfo.xbest) || ~isreal(finfo.fbest)
  finfo.error = sprintf(['\n xbest = ',mat2str(finfo.xbest), '\n',' fbest = ',...
  num2str(finfo.fbest),'\n not allowed, please check the tuning parameters!']);
  error(finfo.error)
end

if isOctave
  if sPowell == 1
    finfo.func = func2str(finfo.func);
    eval(['save -mat ',WORKpath, '/TE/finfo.mat finfo'])
  end
end

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
