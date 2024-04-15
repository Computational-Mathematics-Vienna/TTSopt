%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tVRBBON.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tVRBBON generates necessary data for doing tuning the parameters
% of VRBBON by a mixed integer solver
%
% List of tuning parameters:
%
% mmax: maximum number of best points kept
% T0: maximal number of calls to RLS in DS
% R: number of random direction per subspace direction
% E: maximal number of random trials
% deltamax: initial step size
% gamma: factor for adjusting forcing function
% gammaE: factor for extrapolation test
% gammaX: factor for adjusting X
% gammaa: tiny factor for finding a robustified interval
% gammar: factor for adjusting the random direction
% gammad1: factors for contracting the trust region radius
% gammad2: factors for expanding the trust region radius
% gammav: factor for adjusting sc and y
% alpmin: minimum step size in RLS
% Q: factor for adjusting delta
% dmin: minimum value for the trust region radius
% dmax: maximum value for the trust region radius
% alow: lower bound for initial interval
% aupp: upper bound for initial interval
% gammap: factor for adjusting the trust region direction
% minqeps: minimum threshold for stopping minq8
% minqmax: maximum number of iterations in minq8
% model: use quadratic model otherwise linear model
%
% solverParams = struct('mmax',230, 'T0',5, 'R',20, 'E',1000,...
%   'deltamax',1.0, 'gamma',1e-06, 'gammaE',3.0, 'gammaX',100.0,...
%   'gammaa',1e-05, 'gammar',1e-30, 'gammad1',0.1, 'gammad2',2.0,...
%   'gammav',100.0, 'alpmin',0.0001, 'Q',1.5, 'dmin',0.0001,...
%   'dmax',100.0, 'alow',0.01, 'aupp',0.99, 'gammap',0.25,...
%   'minqeps',1e-08, 'minqmax',10000, 'model',1)


function tuneinfo = tVRBBON



  x(1).Values.low = 1;
  x(1).Values.upp = 1000;
  x(1).Current = 230;
  x(1).Type = 'integer'; % mmax (integer)
  x(2).Values.low = 1;
  x(2).Values.upp = 20;
  x(2).Current = 5;
  x(2).Type = 'integer'; % T0 (integer)
  x(3).Values.low = 1;
  x(3).Values.upp = 100;
  x(3).Current = 20;
  x(3).Type = 'integer'; % R (integer)
  x(4).Values.low = 2;
  x(4).Values.upp = 1000000.0;
  x(4).Current = 1000;
  x(4).Type = 'integer'; % E (integer)
  x(5).Values.low = 0.0001;
  x(5).Values.upp = 1;
  x(5).Current = 1.0;
  x(5).Type = 'continuous'; % deltamax (continuous)
  x(6).Values.low = 1e-08;
  x(6).Values.upp = 0.0001;
  x(6).Current = 1e-06;
  x(6).Type = 'log'; % gamma (log)
  x(7).Values.low = 1.1;
  x(7).Values.upp = 10;
  x(7).Current = 3.0;
  x(7).Type = 'continuous'; % gammaE (continuous)
  x(8).Values.low = 10;
  x(8).Values.upp = 1000;
  x(8).Current = 100.0;
  x(8).Type = 'log'; % gammaX (log)
  x(9).Values.low = 1e-08;
  x(9).Values.upp = 0.01;
  x(9).Current = 1e-05;
  x(9).Type = 'log'; % gammaa (log)
  x(10).Values.low = 1e-30;
  x(10).Values.upp = 1e-08;
  x(10).Current = 1e-30;
  x(10).Type = 'log'; % gammar (log)
  x(11).Values.low = 1e-10;
  x(11).Values.upp = 1;
  x(11).Current = 0.1;
  x(11).Type = 'continuous'; % gammad1 (continuous)
  x(12).Values.low = 1;
  x(12).Values.upp = 10;
  x(12).Current = 2.0;
  x(12).Type = 'continuous'; % gammad2 (continuous)
  x(13).Values.low = 10;
  x(13).Values.upp = 1000;
  x(13).Current = 100.0;
  x(13).Type = 'log'; % gammav (log)
  x(14).Values.low = 1e-08;
  x(14).Values.upp = 1;
  x(14).Current = 0.0001;
  x(14).Type = 'continuous'; % alpmin (continuous)
  x(15).Values.low = 1.25;
  x(15).Values.upp = 10;
  x(15).Current = 1.5;
  x(15).Type = 'continuous'; % Q (continuous)
  x(16).Values.low = 1e-08;
  x(16).Values.upp = 1;
  x(16).Current = 0.0001;
  x(16).Type = 'continuous'; % dmin (continuous)
  x(17).Values.low = 1;
  x(17).Values.upp = 1000;
  x(17).Current = 100.0;
  x(17).Type = 'continuous'; % dmax (continuous)
  x(18).Values.low = 0.0001;
  x(18).Values.upp = 0.1;
  x(18).Current = 0.01;
  x(18).Type = 'log'; % alow (log)
  x(19).Values.low = 0.0001;
  x(19).Values.upp = 1;
  x(19).Current = 0.99;
  x(19).Type = 'continuous'; % aupp (continuous)
  x(20).Values.low = 1e-10;
  x(20).Values.upp = 1;
  x(20).Current = 0.25;
  x(20).Type = 'continuous'; % gammap (continuous)
  x(21).Values.low = 1e-12;
  x(21).Values.upp = 0.0001;
  x(21).Current = 1e-08;
  x(21).Type = 'log'; % minqeps (log)
  x(22).Values.low = 1000;
  x(22).Values.upp = 100000;
  x(22).Current = 10000;
  x(22).Type = 'integer'; % minqmax (integer)
  x(23).Values.all = {0,  1}; % model (categorical)
  x(23).Current = 1;
  x(23).Type = 'categorical';


  indchange = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,...
    20, 21]; % index set for tuning

  % name of tuning paramters
  xname= {'mmax', 'T0', 'R', 'E', 'deltamax', 'gamma', 'gammaE',...
    'gammaX', 'gammaa', 'gammar', 'gammad1', 'gammad2', 'gammav',...
    'alpmin', 'Q', 'dmin', 'dmax', 'alow', 'aupp', 'gammap', 'minqeps',...
    'minqmax', 'model'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 1, 1, 1, 0, 3, 0, 3, 3, 3, 0, 0, 3, 0, 0, 0, 0, 3, 0, 0, 3,...
    1, 2];

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
