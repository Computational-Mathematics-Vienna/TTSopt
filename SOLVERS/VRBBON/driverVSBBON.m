

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% driverVSBBON.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file illustrates the use of VSBBON
% by showing how to minimize the function f(x)
% The goal assumed in the example is the reduction of the initial 
% objective function value with at most nfmax=200*n 
% function evaluations, to return when one of the two limiting 
% conditions is first satisfied.

 clear;
 
 % add the directory of minq8
 %SOLVERpath = '~kimiaei/MySolvers/VSBBON3.0/minq8';
% eval(['addpath ',SOLVERpath])
 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % choice for the noise type
 noise.noisefun = 1;    % 1: noisy case, 0: noiseless case
 noise.level = 0.9;     % 0.0001/0.1/0.95
 noise.type  = 'ab';    % ab (absoulate) / rel (relative)
 noise.distr = 'uniform'; % uniform/Gauss
 

 
 % choice for the noise type complete
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 % start and stop info
 
 n=15;                 % dimension

 nfmax  = 2*n^2+1000*n+5000;       % stop after nfmax function evaluations
 secmax = inf;         % stop after secmax seconds
 accf   = 0.0001;        % target accuracy

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% create problem definition

% define problem parameters (to be adapted to your problem)

cas=3; % choose the test problem
      
       
switch cas
    case 1 
    
    prob.n=n; prob.name='Extended Rosenbrock';
    fbest=1;  % the optimal value
    
    case 2  
   
    prob.n=n; prob.name='Chained Rosenbrock';
    fbest=1;  % the optimal value
    
    case 3 
        
    prob.n=n; prob.name='DIXMAANE';
    fbest=1;  % the optimal value    
        
end
     
prob.cas=cas;

% Define function values and gradient by subprograms 
% provided in analogy to the following



fun  = @(x) funf(x,prob,noise); 

% To solve your own problem, simply replace in these lines 
% the expression after @(x) by your expression or function call. 
% Parameters in this expression other than x are passed by value, 
% hence are fixed during minimization. 




% starting point

nu  = 2;
for i=1:n, x(i)=(-1)^i*(nu/(i+nu)); end
x=x(:);



% customization
prt=3;          % print level 
                %   -2: nothing, -1: litte, >=0: more and more
                % prt is one of members of {-2,-1,0,1,2,3}
noTuning=0;     % no tuning of VSBBON? (recommended at first)
fullTuning=1;   % full tuning? (for specialists only)

% problem definition complete
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% solve the problem with VSBBON

tic; % set clock

% pass stop and print criteria
% (indefinite run if no stopping criterion is given)
st.secmax  = secmax;        % (default: inf)
st.nfmax   = nfmax;         % (default: inf)
st.accf    = accf;          % (default: 1e-4)   
st.fbest   = fbest;         % (default: 0)
st.prt     = prt;           % (default: -1)

if noTuning 
  % call VSBBON
  [x,f,info] = VRBBON(fun,x,st);
end;

if fullTuning
  
  % maximum number of best points kept
  tune.mmax = min(0.5*n*(n+3),230);

  % maximum number of calls to robustified line search
  % using random direction in DS
  tune.T0 = 2;

  % number of random direction per subspace direction
  tune.R = n; 

  % maximal number of random trials
  tune.E= Inf;

  % minimum threshold for stopping VSBBON
  tune.deltamin = 0;
  
  % initial step size 
  tune.deltamax = 1;

  % factor for adjusting gain
  tune.gamma = 1e-6;

  % factor for extrapolation test
  tune.gammaE = 3; 

  % factor for adjusting X
  tune.gammaX = 100; 
 
  % tiny factor for finding a robustified interval
  tune.gammaa = 0.99; 

  % factor for adjusting the random direction
  tune.gammar = 1e-30; 

  % factors for updating the trust region radius
  tune.gammad1 = 0.1; tune.gammad2 = 2;

  % factor for adjusting sc and y
  tune.gammav = 100; 

  % minimum step size in RLS
  tune.alpmin = 1e-3; 
  

  % factor for adjusting delta
  tune.Q = 1.5; 

  % minimum value for the trust region radius
  tune.dmin = 1e-4; 

  % maximum value for the trust region radius
  tune.dmax = 1e+3; 

  % lower bound for initial interval
  tune.alow = 1e-2; 
  
  % upper bound for initial interval
  tune.aupp = 0.99; 
  

  % factor for adjusting the trust region direction
  tune.gammap = 0.25; 

  % minimum threshild for stopping minq8
  tune.minqeps = 1e-8; 
  
  % maxiumu number of iterations in minq8
  tune.minqmax = 10000; 
  
  % linear or quadratic model
  tune.model = 1; 
  

  % bisection (1: geometric mean, 2: cubic)
  if ~isfield(tune,'bis'), tune.bis = 0; end;
  if  tune.bis==2
     % parameter for bisection
    if ~isfield(tune,'mbis'), tune.mbis = 2; end;
  end

 
   
   % call VSBBON
   [x,f,info] = VRBBON(fun,x,st,tune);
  
end

% the problem solved possibly by VSBBON
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp(' ')   
disp(' ')
disp(' ')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      
% display output
if prt>=-1
disp('==============================================================');
disp('VSBBON completed silently');
disp('==============================================================');
disp('display output:');

format long
info               % progress report by VSBBOn
disp('------------------------------------------------------------');
nfused=info.nf;               % number of function evaluations used
disp(['number of function evaluations used: ',num2str(nfused)])
disp('------------------------------------------------------------');
secused=cputime-info.initTime;   % time used up to now
disp(['time used up to now: ',num2str(secused)])
disp('-------------------------------------------------------------');
ftrue = info.ftrue;
disp(['the true function value at xbest (ftrue): ',num2str(ftrue)])
disp('-------------------------------------------------------------');
disp(['the noisy function value at xbest (f): ',num2str(f)])
disp('-------------------------------------------------------------');
qf = info.qf;
disp(['qf=(ftrue-fbest)/(finit-fbest): ',num2str(qf)])
disp('-------------------------------------------------------------');
disp(['number of quadratic models used: ',num2str(info.nquadmodel)])
disp('-------------------------------------------------------------');
disp(['Total number of linear models used: ',num2str(info.nlinearmodel)])
disp('-------------------------------------------------------------');
disp(['Total number of models used: ',num2str(info.model)])

disp('===============================================================');
end

