%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tLINCOA.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tLINCOA generates necessary data for doing tuning the parameters
% of LINCOA by a mixed integer solver
%
% List of tuning parameters:
%
% npt: number of interpolation points for constructing a model
% rhobeg: initial trust region radius
% rhoend: final trust region radius
% scale: whether to scale the problem according to bounds
%
% solverParams = struct('npt',20, 'rhobeg',0.5, 'rhoend',1e-06,...
%   'scale',0)


function tuneinfo = tLINCOA



  x(1).Values.low = 1;
  x(1).Values.upp = 1000;
  x(1).Current = 20;
  x(1).Type = 'integer'; % npt (integer)
  x(2).Values.low = 0.5;
  x(2).Values.upp = 10;
  x(2).Current = 0.5;
  x(2).Type = 'continuous'; % rhobeg (continuous)
  x(3).Values.low = 0;
  x(3).Values.upp = 1;
  x(3).Current = 1e-06;
  x(3).Type = 'continuous'; % rhoend (continuous)
  x(4).Values.all = {0,  1}; % scale (categorical)
  x(4).Current = 0;
  x(4).Type = 'categorical';


  indchange = [2, 3]; % index set for tuning

  % name of tuning paramters
  xname= {'npt', 'rhobeg', 'rhoend', 'scale'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 0, 0, 2];

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
