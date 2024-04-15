%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tLMMAES.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tLMMAES generates necessary data for doing tuning the parameters
% of LMMAES by a mixed integer solver
%
% List of tuning parameters:
%
% lambda: offspring population size
% mu: parental population size
% gamma: number of path vectors used
% sigma_init_coeff1: coefficient 1 for initial mutation stregth sigma
% sigma_init_coeff2: coefficient 2 for initial mutation stregth sigma
%
% solverParams = struct('lambda',20, 'mu',10, 'gamma',20,...
%   'sigma_init_coeff1',1.0, 'sigma_init_coeff2',1.0)


function tuneinfo = tLMMAES



  x(1).Values.low = 1;
  x(1).Values.upp = 100;
  x(1).Current = 20;
  x(1).Type = 'integer'; % lambda (integer)
  x(2).Values.low = 1;
  x(2).Values.upp = 100;
  x(2).Current = 10;
  x(2).Type = 'integer'; % mu (integer)
  x(3).Values.low = 1;
  x(3).Values.upp = 100;
  x(3).Current = 20;
  x(3).Type = 'integer'; % gamma (integer)
  x(4).Values.low = 0;
  x(4).Values.upp = 10;
  x(4).Current = 1.0;
  x(4).Type = 'continuous'; % sigma_init_coeff1 (continuous)
  x(5).Values.low = 0;
  x(5).Values.upp = 10;
  x(5).Current = 1.0;
  x(5).Type = 'continuous'; % sigma_init_coeff2 (continuous)


  indchange = [4, 5]; % index set for tuning

  % name of tuning paramters
  xname= {'lambda', 'mu', 'gamma', 'sigma_init_coeff1',...
    'sigma_init_coeff2'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 1, 1, 0, 0];

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
