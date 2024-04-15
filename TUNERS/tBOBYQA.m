%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tBOBYQA.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tBOBYQA generates necessary data for doing tuning the parameters
% of BOBYQA by a mixed integer solver
%
% List of tuning parameters:
%
% npt: number of points for quadratic approximation
% rhobeg: initial trust region radius
% rhoend: final trust region radius
% scale: whether to scale the problem according to bounds
% honour_x0: whether to respect the user-defiend x0
%
% solverParams = struct('npt',2, 'rhobeg',0.5, 'rhoend',1e-06,...
%   'scale',0, 'honour_x0',0)


function tuneinfo = tBOBYQA



  x(1).Values.low = 2;
  x(1).Values.upp = 10;
  x(1).Current = 2;
  x(1).Type = 'integer'; % npt (integer)
  x(2).Values.low = 0;
  x(2).Values.upp = 10;
  x(2).Current = 0.5;
  x(2).Type = 'continuous'; % rhobeg (continuous)
  x(3).Values.low = 0;
  x(3).Values.upp = 1;
  x(3).Current = 1e-06;
  x(3).Type = 'continuous'; % rhoend (continuous)
  x(4).Values.low = 0;
  x(4).Values.upp = 1;
  x(4).Current = 0;
  x(4).Type = 'integer'; % scale (integer)
  x(5).Values.low = 0;
  x(5).Values.upp = 1;
  x(5).Current = 0;
  x(5).Type = 'integer'; % honour_x0 (integer)


  indchange = [2, 3]; % index set for tuning

  % name of tuning paramters
  xname= {'npt', 'rhobeg', 'rhoend', 'scale', 'honour_x0'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 0, 0, 1, 1];

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
