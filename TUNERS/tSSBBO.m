%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tSSBBO.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tSSBBO generates necessary data for doing tuning the parameters
% of SSBBO by a mixed integer solver
%
% List of tuning parameters:
%
% DiffMaxChange: maximal value for the finite difference step size
% DiffMinChange: minimal value for the finite difference step size
% rho: line search parameter
% sigma: line search parameter
% mem: subspace dimension
% eps1: tiny parameter for adjusting the initial df
% gammaf1: parameter for reducing df
% gammaf2: parameter for expanding df
% gammaf3: parameter for reducing df
% Deltaangle: regularization angle
% deltaa: tiny factor for starting the step
%
% solverParams = struct('DiffMaxChange',0.1, 'DiffMinChange',1e-08,...
%   'rho',0.0001, 'sigma',0.9, 'mem',10, 'eps1',1e-08, 'gammaf1',0.5,...
%   'gammaf2',2, 'gammaf3',1e-12, 'Deltaangle',1e-13, 'deltaa',1e-08)


function tuneinfo = tSSBBO



  x(1).Values.low = 0.01;
  x(1).Values.upp = 0.1;
  x(1).Current = 0.1;
  x(1).Type = 'continuous'; % DiffMaxChange (continuous)
  x(2).Values.low = 1e-09;
  x(2).Values.upp = 1e-07;
  x(2).Current = 1e-08;
  x(2).Type = 'log'; % DiffMinChange (log)
  x(3).Values.low = 1e-05;
  x(3).Values.upp = 0.001;
  x(3).Current = 0.0001;
  x(3).Type = 'log'; % rho (log)
  x(4).Values.low = 0.1;
  x(4).Values.upp = 0.9;
  x(4).Current = 0.9;
  x(4).Type = 'continuous'; % sigma (continuous)
  x(5).Values.low = 2;
  x(5).Values.upp = 10;
  x(5).Current = 10;
  x(5).Type = 'integer'; % mem (integer)
  x(6).Values.low = 1e-10;
  x(6).Values.upp = 1e-06;
  x(6).Current = 1e-08;
  x(6).Type = 'log'; % eps1 (log)
  x(7).Values.low = 0.01;
  x(7).Values.upp = 0.99;
  x(7).Current = 0.5;
  x(7).Type = 'log'; % gammaf1 (log)
  x(8).Values.low = 1;
  x(8).Values.upp = 3;
  x(8).Current = 2;
  x(8).Type = 'integer'; % gammaf2 (integer)
  x(9).Values.low = 1e-15;
  x(9).Values.upp = 1e-10;
  x(9).Current = 1e-12;
  x(9).Type = 'log'; % gammaf3 (log)
  x(10).Values.low = 1e-15;
  x(10).Values.upp = 1e-10;
  x(10).Current = 1e-13;
  x(10).Type = 'log'; % Deltaangle (log)
  x(11).Values.low = 1e-10;
  x(11).Values.upp = 1e-06;
  x(11).Current = 1e-08;
  x(11).Type = 'log'; % deltaa (log)


  indchange = [1, 2, 3, 4, 6, 7, 9, 10, 11]; % index set for tuning

  % name of tuning paramters
  xname= {'DiffMaxChange', 'DiffMinChange', 'rho', 'sigma', 'mem',...
    'eps1', 'gammaf1', 'gammaf2', 'gammaf3', 'Deltaangle', 'deltaa'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [0, 3, 3, 0, 1, 3, 3, 1, 3, 3, 3];

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
