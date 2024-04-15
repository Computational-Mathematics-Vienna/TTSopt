%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tCMAES.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tCMAES generates necessary data for doing tuning the parameters
% of CMAES by a mixed integer solver
%
% List of tuning parameters:
%
% sigma: initial standard deviation for the search
% RecombinationWeights: "superlinear", "linear" or "equal"
% theta: threshold to invoke uncertainty treatment
% cum: cumulation constant for uncertainty
% alphaCoeff: alpha: factor for increasing sigma
% epsilon: additional relative perturbation before reevaluation
%
% solverParams = struct('sigma',0.3,...
%   'RecombinationWeights','superlinear', 'theta',0.2, 'cum',0.3,...
%   'alphaCoeff',1, 'epsilon',1e-07)


function tuneinfo = tCMAES



  x(1).Values.low = 0.2;
  x(1).Values.upp = 0.5;
  x(1).Current = 0.3;
  x(1).Type = 'continuous'; % sigma (continuous)
  x(2).Values.all = {'superlinear',  'linear',  'equal'}; % RecombinationWeights (categorical)
  x(2).Current = 'superlinear';
  x(2).Type = 'categorical';
  x(3).Values.low = 0.1;
  x(3).Values.upp = 0.9;
  x(3).Current = 0.2;
  x(3).Type = 'continuous'; % theta (continuous)
  x(4).Values.low = 0;
  x(4).Values.upp = 1;
  x(4).Current = 0.3;
  x(4).Type = 'continuous'; % cum (continuous)
  x(5).Values.low = 1;
  x(5).Values.upp = 100;
  x(5).Current = 1;
  x(5).Type = 'continuous'; % alphaCoeff (continuous)
  x(6).Values.low = 0;
  x(6).Values.upp = 1;
  x(6).Current = 1e-07;
  x(6).Type = 'continuous'; % epsilon (continuous)


  indchange = [1, 3, 4, 5, 6]; % index set for tuning

  % name of tuning paramters
  xname= {'sigma', 'RecombinationWeights', 'theta', 'cum', 'alphaCoeff',...
    'epsilon'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [0, 2, 0, 0, 0, 0];

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
