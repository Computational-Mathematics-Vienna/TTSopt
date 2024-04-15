%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tMCS.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tMCS generates necessary data for doing tuning the parameters
% of MCS by a mixed integer solver
%
% List of tuning parameters:
%
% smax: number of levels
% iinit: parameter defining the initialization list
% local: maximal number of steps in local search
% gamma: stopping criterion for local search
%
% solverParams = struct('smax',50, 'iinit',1, 'local',50, 'gamma',1e-10)


function tuneinfo = tMCS



  x(1).Values.low = 1;
  x(1).Values.upp = 1000;
  x(1).Current = 50;
  x(1).Type = 'integer'; % smax (integer)
  x(2).Values.all = {0,  1,  2}; % iinit (categorical)
  x(2).Current = 1;
  x(2).Type = 'categorical';
  x(3).Values.low = 0;
  x(3).Values.upp = 100;
  x(3).Current = 50;
  x(3).Type = 'integer'; % local (integer)
  x(4).Values.low = 1e-20;
  x(4).Values.upp = 1;
  x(4).Current = 1e-10;
  x(4).Type = 'continuous'; % gamma (continuous)


  indchange = [4]; % index set for tuning

  % name of tuning paramters
  xname= {'smax', 'iinit', 'local', 'gamma'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 2, 1, 0];

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
