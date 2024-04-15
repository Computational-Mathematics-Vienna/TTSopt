%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tVRBBO.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tVRBBO generates necessary data for doing tuning the parameters
% of VRBBO by a mixed integer solver
%
% List of tuning parameters:
%
% msmax: maximum number of best points kept
% mqmax: maximum number of memory for L-BFGS
% T0: maximal number of multi-line searches in setScales
% alg: type of algorithm to use
% R: number of random directions
% C: maximal number of coordinate trials
% S: maximal number of subspace directions in multi-line search
% E: maximal number of random trials
% scSub: scale for subspace direction
% scCum: scale for cumulative direction
% scCor: scale for heuristic direction
% cum: select cumulative step type
% a: upper bound for estimating cumulative step-size
% Deltamin: minimium threshold for good impovement
% Deltamax: initial threshold for good impovement
% gammadelta: factor for finding delta
% gammamax: factor for adjusting Deltamax
% gammaE: factor for extrapolation test
% gammalambda: factor for finding initial lambda
% gammaw: factor for angle condition
% Q: factor for adjusting delta
% gammaangle: factor for angle condition
% deltamin: minimum norm of trial step
% deltamax: maximum norm of trial step
% alphamin: minimium threshold for extrapolation step sizes
% gammamin: parameter for extrapolation test
%
% solverParams = struct('msmax',21, 'mqmax',20, 'T0',42, 'alg',5,...
%   'R',20, 'C',20, 'S',1, 'E',10, 'scSub',0.0, 'scCum',0.0,...
%   'scCor',0.0, 'cum',1, 'a',2, 'Deltamin',1e-10, 'Deltamax',0.001,...
%   'gammadelta',1000000.0, 'gammamax',0.001, 'gammaE',4.0,...
%   'gammalambda',1e-06, 'gammaw',1e-10, 'Q',2.0, 'gammaangle',1e-10,...
%   'deltamin',0.0001, 'deltamax',0.1, 'alphamin',1e-50,...
%   'gammamin',1e-06)


function tuneinfo = tVRBBO



  x(1).Values.low = 5;
  x(1).Values.upp = 100;
  x(1).Current = 21;
  x(1).Type = 'integer'; % msmax (integer)
  x(2).Values.low = 5;
  x(2).Values.upp = 100;
  x(2).Current = 20;
  x(2).Type = 'integer'; % mqmax (integer)
  x(3).Values.low = 1;
  x(3).Values.upp = 100;
  x(3).Current = 42;
  x(3).Type = 'integer'; % T0 (integer)
  x(4).Values.all = {1,  2,  3,  4,  5}; % alg (categorical)
  x(4).Current = 5;
  x(4).Type = 'categorical';
  x(5).Values.low = 1;
  x(5).Values.upp = 100;
  x(5).Current = 20;
  x(5).Type = 'integer'; % R (integer)
  x(6).Values.low = 1;
  x(6).Values.upp = 100;
  x(6).Current = 20;
  x(6).Type = 'integer'; % C (integer)
  x(7).Values.low = 1;
  x(7).Values.upp = 20;
  x(7).Current = 1;
  x(7).Type = 'integer'; % S (integer)
  x(8).Values.low = 1;
  x(8).Values.upp = 1000;
  x(8).Current = 10;
  x(8).Type = 'integer'; % E (integer)
  x(9).Values.low = 0;
  x(9).Values.upp = 100;
  x(9).Current = 0.0;
  x(9).Type = 'continuous'; % scSub (continuous)
  x(10).Values.low = 0;
  x(10).Values.upp = 100;
  x(10).Current = 0.0;
  x(10).Type = 'continuous'; % scCum (continuous)
  x(11).Values.low = 0;
  x(11).Values.upp = 100;
  x(11).Current = 0.0;
  x(11).Type = 'continuous'; % scCor (continuous)
  x(12).Values.all = {0,  1,  2}; % cum (categorical)
  x(12).Current = 1;
  x(12).Type = 'categorical';
  x(13).Values.all = {0,  1,  2}; % a (categorical)
  x(13).Current = 2;
  x(13).Type = 'categorical';
  x(14).Values.low = 0;
  x(14).Values.upp = 1;
  x(14).Current = 1e-10;
  x(14).Type = 'log'; % Deltamin (log)
  x(15).Values.low = 0;
  x(15).Values.upp = 1;
  x(15).Current = 0.001;
  x(15).Type = 'log'; % Deltamax (log)
  x(16).Values.low = 1;
  x(16).Values.upp = 100000000.0;
  x(16).Current = 1000000.0;
  x(16).Type = 'log'; % gammadelta (log)
  x(17).Values.low = 1e-10;
  x(17).Values.upp = 1;
  x(17).Current = 0.001;
  x(17).Type = 'log'; % gammamax (log)
  x(18).Values.low = 1;
  x(18).Values.upp = 10;
  x(18).Current = 4.0;
  x(18).Type = 'log'; % gammaE (log)
  x(19).Values.low = 0;
  x(19).Values.upp = 1;
  x(19).Current = 1e-06;
  x(19).Type = 'log'; % gammalambda (log)
  x(20).Values.low = 0;
  x(20).Values.upp = 1;
  x(20).Current = 1e-10;
  x(20).Type = 'log'; % gammaw (log)
  x(21).Values.low = 0;
  x(21).Values.upp = 10;
  x(21).Current = 2.0;
  x(21).Type = 'log'; % Q (log)
  x(22).Values.low = 0;
  x(22).Values.upp = 1;
  x(22).Current = 1e-10;
  x(22).Type = 'log'; % gammaangle (log)
  x(23).Values.low = 0;
  x(23).Values.upp = 1;
  x(23).Current = 0.0001;
  x(23).Type = 'log'; % deltamin (log)
  x(24).Values.low = 0;
  x(24).Values.upp = 1;
  x(24).Current = 0.1;
  x(24).Type = 'log'; % deltamax (log)
  x(25).Values.low = 0;
  x(25).Values.upp = 1;
  x(25).Current = 1e-50;
  x(25).Type = 'log'; % alphamin (log)
  x(26).Values.low = 0;
  x(26).Values.upp = 1;
  x(26).Current = 1e-06;
  x(26).Type = 'log'; % gammamin (log)


  indchange = [9, 10, 11, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,...
    25, 26]; % index set for tuning

  % name of tuning paramters
  xname= {'msmax', 'mqmax', 'T0', 'alg', 'R', 'C', 'S', 'E', 'scSub',...
    'scCum', 'scCor', 'cum', 'a', 'Deltamin', 'Deltamax', 'gammadelta',...
    'gammamax', 'gammaE', 'gammalambda', 'gammaw', 'Q', 'gammaangle',...
    'deltamin', 'deltamax', 'alphamin', 'gammamin'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 1, 1, 2, 1, 1, 1, 1, 0, 0, 0, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3,...
    3, 3, 3, 3, 3];

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
