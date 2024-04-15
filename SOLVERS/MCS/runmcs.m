%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% runmcs.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test driver for running MCS 
% with advice on how to choose the tuning parameters
%
% applied to the Jones test functions with default boxes
%
% To solve your own problem, copy this file (to ownmcs.m, say)
% and adapt the first part labelled `problem definition'.
% Then run the driver by typing `ownmcs' at the Matlab prompt.
%
% If you are not satisfied with the results, or if you want to play 
% with the tuning parameters, you also need to adapt the second part
% labelled `change MCS settings'. In particular, for wide bounds,
% you'll probably get better results if you supply your own 
% initialization list.
% 
% On typing `runmcs' at the Matlab prompt,
% the unmodified file produces test results for the six-hump camel
% function; by only changing the fcn assignment you can also get
% results for the other test functions from Jones et al.
% You may also play with the bounds by modifying the default bounds.
% 

clear; clear mex; clear global; 
format compact;format long

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% problem definition %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define objective function
%
% To optimize a function whose value at x is given by the call 
% fun(x,data), say, use in the call to mcs below '@(x) fun(x,data)'. 
%
% This driver uses '@(x) feval(fcn,x)' to evaluate the functions
% from the Jones et al. test set, and hence needs to specify the name
% fcn of the function whose call at x gives the function value.
%
fcn = 'cam';	% select test function from Jones et al. test set
		% bra  n=2   Branin
		% cam  n=2   six-hump camel
		% gpr  n=2   Goldstein-Price   
		% shu  n=2   Shubert
		% hm3  n=3   Hartman 3
		% s10  n=4   Shekel 10
		% sh5  n=4   Shekel 5
		% sh7  n=4   Shekel 7
		% hm6  n=6   Hartman 6

% add paths needed
if ~exist('gls'), 
   addpath('gls2');	% add path to subdirectory gls2 of mcs2
                        % needed for running mcs 
end; 
if ~exist('minq'), 
   addpath('minq2');	% add path to subdirectory minq2 of mcs2
                        % needed for running mcs  
end;

% define test function handle
% Here, we minimize one of the 9 test problems from Jones et al.,
% f(x):=jones(instance,x) for some instance in 1:9; 
% for the second instance,we need to write
instance=1;

fcn=@(x) jones(instance,x);

% define bounds on variables (+-inf allowed)
% For an unconstrained problem with n variables, use
%     v = Inf(n,1);u=-v; 
% otherwise specify 
% u: column vector of lower bounds
% v: column vector of upper bounds
% u(k)<v(k) is required; u=-inf, v=inf are allowed
%
% For the Jones et al. test set, we get these from
[u,v,fname,glob]=jones(instance); % return bounds, etc.
fglob=glob.fglob;                 % known global optimum

% define maximal number of function evaluationes allowed
n=length(u);                     % number of variables
nfmax = 250+50*n^2   % maximum number of function evaluations 

disp(fname)          % display test problem name
dimension=n	     % display dimension

use_defaults=1;      % use defaults? (yes=1; no=0)
% You should not use defaults when you know the sparsity pattern 
% of your Hessian, since the full call is able to make use of it,
% saving many function values in the local searches.


if use_defaults,

  %%%%%%%%%%%%%% simple MCS call %%%%%%%%%%%%%%%%%%%%
  %%% easy to use version - all parameters preset %%%
  %%% defaults are being used.                    %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  % optionally, provide one or two special points
  % (column vectors of length n = dim x)

  start.try=[];
  % The first point start.try is used at the first function evaluation
  % and should be the best guess at the optimizer available
  % start.try can also be empty, in which case the algorithm selects a 
  % starting point deterministically, or can be randomized in 
  % repeated test runs for the same problem.

  start.poor=[];
  % The second point start.poor is used to derive an appropriate 
  % scaling of the problem, and should be obtained from the starting 
  % point by moving each coordinate a significant amount in the 
  % direction which is believed to degrade the quality of the point.
  % start.poor can also be empty, in which case the algorithm selects 
  % the scaling deterministically based on the bounds.


  % It now suffices to call  
  [xbest,fbest,xmin,fmi,ncall,ncloc]=mcs(fcn,u,v,nfmax,start);
  % or, with less output,
  % [xbest,fbest]=mcs(fcn,u,v,nfmax,start);
  %
  % To optimize another function, say f(x)=fun(x,data), use instead
  % [xbest,fbest,xmin,fmi,ncall,ncloc]=mcs(@(x) fun(x,data),u,v,start);

  % display results
  xbest	  		% best point found
  fbest     		% best function value
  fglob			% global minimum (known for test functions)
  ncall	  		% number of function values used
  ncloc	  		% number of function values in local searches

  % xmin	  	% columns are points in basket
			% may be good alternative local minima
  % fmi	  		% function values in basket
  nbasket = length(fmi) % number of points in basket

  return;

end;

% If you just want to use the default settings,
% you don't need to edit the rest of the file
% (which is not invoked in this case);
% just save the edited file and run it. 
%
% If you are not satisfied with the results
% (this may happen especially when your box bounds are very wide),
% or if you want to play with the tuning parameters,
% set use_defaults=0, and modify the rest of the file 
% according to your curiosity or ingenuity

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% change MCS settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% flexible use version - all parameters may be modified

% 
% define amount of output printed
prt = 1;	% print level 
		% prt = 0: no output
		% prt = 1: # sweep, minimal nonempty level, # f-calls,
		%          best point and function value
		% prt > 1: in addition levels and function values of
		%          boxes containing the known global minimizers
		%          of a test function

% define global strategy 
%
% smax governs the relative amount of global versus local search. By
% increasing smax, more weight is given to global search.
% 
% Increasing or decreasing stop(1) increases or decreases the amount 
% of work allowed before concluding that nothing more is gained; 
% the default choice is quite conservative, and may try to locate
% a better point long after the global minimum has been found.
% stop(1)=5 works for many easier problems, too, with much fewer
% wasted function values.
% 
% Increasing nf allows to spend more time on boxes that have a chance 
% on their level to contain better points. This may be important for
% hard problems, or for problems with very wide bounds.
% 
% But in each case, it is unclear in advance what change would be most 
% beneficial to a particular problem. 
% We had very mixed experience; if you have many similar problems to 
% solve, the best thing to do is to experiment with a few problems to 
% find the best values, and to use these on the others. 
%
smax = 5*n+10;		% number of levels used
nfmax = 250+50*n^2; 	% limit on number of f-calls
stop(1) = 3*n;		% = m, integer defining stopping test
stop(2) = -inf;		% = freach, function value to reach
			% if m>0, run until m sweeps without progress
			% if m=0, run until fbest<=freach
			% (or about nf function calls were used)

if 0, 	% known global optimum, for tests only
	% then the entries of stop have a different meaning
  stop(1) = 1.e-4;	% run until this relative error is achieved
  stop(2) = fglob;	% known global optimum value
  stop(3) = 1.e-10;	% stopping tolerance for tiny fglob
end;

% define initialization strategy
%
% for wide boxes, it is advisable (and for unbounded search regions
% strongly advisable) to define a customized initialization list
% that contains for each coordinate at least three reasonable values.
% Without such an initialization list, mcs makes default assumptions
% that roughly amount to estimating reasonable magnitudes from the 
% bounds and in case iinit=1 from assuming order unity if this is 
% within the bounds. 
%
% for a self-defined initialization list, the user should
% write an m-script file init0.m containing a matrix x0 with n
% rows and at least 3 columns and two n-vectors l and L 
% the ith column of x0 contains the initialization list
% values for the ith coordinate, their number is L(i), and
% x0(i,l(i)) is the ith coordinate of the initial point

iinit = 0;	% 0: simple initialization list
		%    (default for finite bounds;
		%     do not use this for very wide bounds)
		% 1: safeguarded initialization list
		%    (default for unbounded search regions)
		% 2: (5*u+v)/6, (u+v)/2, (u+5*v)/6
		% 3: initialization list with line searches
		% -1: initialization list from starting points
                %     (in easy-to-use version only)
		% else: self-defined initialization list 
		%       stored in file init0.m

% parameters for local search
%
% A tiny gamma (default) gives a quite accurate but in higher 
% dimensions slow local search. Increasing gamma leads to less work 
% per local search but a less accurately localized minimizer
% 
% If it is known that the Hessian is sparse, providing the sparsity 
% pattern saves many function evaluations since the corresponding
% entries in the Hessian need not be estimated. The default pattern
% is a full matrix.
% 
local = 50;		% local = 0: no local search
			% else: maximal number of steps in local search
gamma = eps;		% acceptable relative accuracy for local search
hess = ones(n,n);	% sparsity pattern of Hessian



% defaults are not being used, use the full calling sequence
% (including at least the modified arguments)
%%%%%%%%%%%%%%%%%%%%%%%%%%%% full MCS call %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[xbest,fbest,xmin,fmi,ncall,ncloc]=...
                mcs(fcn,u,v,nfmax,prt,smax,stop,iinit,local,gamma,hess);
%
% To optimize a data-dependent function, say f(x)=fun(x,data), use
% [xbest,fbest,xmin,fmi,ncall,ncloc]=...
%  mcs(@(x) fun(x,data),u,v,prt,smax,nfmax,stop,iinit,local,gamma,hess);

% display results
xbest	  		% best point found
fbest     		% best function value
fglob			% global minimum (known for test functions)
ncall	  		% number of function values used
ncloc	  		% number of function values in local searches

% xmin	  	        % columns are points in basket
		        % may be good alternative local minima
% fmi	  		% function values in basket
nbasket = length(fmi)   % number of points in basket


