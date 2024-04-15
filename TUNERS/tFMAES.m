%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tFMAES.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tFMAES generates necessary data for doing tuning the parameters
% of FMAES by a mixed integer solver
%
% List of tuning parameters:
%
% lambda: offspring population size
% mu: parental population size
% sigma_init: sigma_init=sigma_init_coeff1+sigma_init_coeff2*log(n) is
%   the initial mutation stregth
%
% solverParams = struct('lambda',20, 'mu',10, 'sigma_init',0)


function tuneinfo = tFMAES



  x(1).Values.low = 11;
  x(1).Values.upp = 100;
  x(1).Current = 20;
  x(1).Type = 'integer'; % lambda (integer)
  x(2).Values.low = 1;
  x(2).Values.upp = 10;
  x(2).Current = 10;
  x(2).Type = 'integer'; % mu (integer)
  x(3).Values.low = 0;
  x(3).Values.upp = 2;
  x(3).Current = 0;
  x(3).Type = 'integer'; % sigma_init (integer)


  indchange = []; % index set for tuning

  % name of tuning paramters
  xname= {'lambda', 'mu', 'sigma_init'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 1, 1];

  [xinittune,solverParams,indexVec,low,upp] = getParams(x,xname);

  
  tuneinfo.xi            = xi;
  tuneinfo.nt            = 0;
  tuneinfo.ntbest        = 0;
  tuneinfo.meanqfbest    = Inf;
  for i = 1 : length(x)
    tuneinfo.parambest.(xname{i}) = x(i).Current;
  end 
  tuneinfo.xtable        = [];
  tuneinfo.nsolved       = [];
  tuneinfo.x             = x;
  tuneinfo.xname         = xname;
  tuneinfo.indchange     = indchange;
  tuneinfo.int           = int;
  tuneinfo.xinittune     = xinittune;
  tuneinfo.solverParams  = solverParams;
  tuneinfo.indexVec      = indexVec;
  tuneinfo.low           = low;
  tuneinfo.upp           = upp;
  tuneinfo.getftune.error = '';
  tuneinfo.permut = 1:length(tuneinfo.x);
  tuneinfo.permut = 1:length(xinittune);
  tuneinfo.indch =[];
  tuneinfo.meanqfbest = Inf;
  tuneinfo.nfbest = Inf;
  tuneinfo.secbest = Inf;
  tuneinfo.nt = 0;
  tuneinfo.mqftable = []; 

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
