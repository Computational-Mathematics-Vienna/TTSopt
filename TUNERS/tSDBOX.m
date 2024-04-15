%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tSDBOX.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tSDBOX generates necessary data for doing tuning the parameters
% of SDBOX by a mixed integer solver
%
% List of tuning parameters:
%
% gamma: line search parameter
% theta: line search multiplier
%
% solverParams = struct('gamma',1e-06, 'theta',0.5)


function tuneinfo = tSDBOX



  x(1).Values.low = 1e-08;
  x(1).Values.upp = 0.0001;
  x(1).Current = 1e-06;
  x(1).Type = 'log'; % gamma (log)
  x(2).Values.low = 0;
  x(2).Values.upp = 1;
  x(2).Current = 0.5;
  x(2).Type = 'continuous'; % theta (continuous)


  indchange = [1, 2]; % index set for tuning

  % name of tuning paramters
  xname= {'gamma', 'theta'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [3, 0];

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
