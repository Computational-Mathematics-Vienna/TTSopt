%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tMADFO.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tMADFO generates necessary data for doing tuning the parameters
% of MADFO by a mixed integer solver
%
% List of tuning parameters:
%
% lambdaCoeff1: lambda coefficient 1
% lambdaCoeff2: lambda coefficient 2
% muCoeff: mu coefficient
% gammaE_coeff1: coefficient 1 for parameters for expanding step size
% gammaE_coeff2: coefficient 2 for parameters for expanding step size
% E_coeff1: coefficient for maximum iterations of extrapolation step
% E_coeff2: coefficient for maximum iterations of extrapolation step
% sigmainit: initial step size
% gamma: parameter for line search condition
% sigmamin: minimum threshold for sigma
% sigmamax_coeff1: coefficient 1 for maximum value for sigma
% sigmamax_coeff2: coefficient 2 for maximum value for sigma
% kappa: factor for the memory of the non-monotone term
% N: to choose three vertices of the first triangle
%
% solverParams = struct('lambdaCoeff1',4, 'lambdaCoeff2',3, 'muCoeff',2,...
%   'gammaE_coeff1',9.0, 'gammaE_coeff2',9.0, 'E_coeff1',100000.0,...
%   'E_coeff2',100000.0, 'sigmainit',1, 'gamma',1e-12, 'sigmamin',0.01,...
%   'sigmamax_coeff1',0.5, 'sigmamax_coeff2',0.5, 'kappa',5, 'N',10)


function tuneinfo = tMADFO



  x(1).Values.low = 1;
  x(1).Values.upp = 10;
  x(1).Current = 4;
  x(1).Type = 'integer'; % lambdaCoeff1 (integer)
  x(2).Values.low = 1;
  x(2).Values.upp = 10;
  x(2).Current = 3;
  x(2).Type = 'integer'; % lambdaCoeff2 (integer)
  x(3).Values.low = 1;
  x(3).Values.upp = 5;
  x(3).Current = 2;
  x(3).Type = 'integer'; % muCoeff (integer)
  x(4).Values.low = 1.1;
  x(4).Values.upp = 10;
  x(4).Current = 9.0;
  x(4).Type = 'continuous'; % gammaE_coeff1 (continuous)
  x(5).Values.low = 1.1;
  x(5).Values.upp = 10;
  x(5).Current = 9.0;
  x(5).Type = 'continuous'; % gammaE_coeff2 (continuous)
  x(6).Values.low = 2;
  x(6).Values.upp = 100000000.0;
  x(6).Current = 100000.0;
  x(6).Type = 'continuous'; % E_coeff1 (continuous)
  x(7).Values.low = 2;
  x(7).Values.upp = 100000000.0;
  x(7).Current = 100000.0;
  x(7).Type = 'continuous'; % E_coeff2 (continuous)
  x(8).Values.low = 1;
  x(8).Values.upp = 1;
  x(8).Current = 1;
  x(8).Type = 'fix'; % sigmainit (fix)
  x(9).Values.low = 1e-20;
  x(9).Values.upp = 1e-06;
  x(9).Current = 1e-12;
  x(9).Type = 'log'; % gamma (log)
  x(10).Values.low = 0.01;
  x(10).Values.upp = 0.01;
  x(10).Current = 0.01;
  x(10).Type = 'fix'; % sigmamin (fix)
  x(11).Values.low = 0.2;
  x(11).Values.upp = 100;
  x(11).Current = 0.5;
  x(11).Type = 'continuous'; % sigmamax_coeff1 (continuous)
  x(12).Values.low = 0.2;
  x(12).Values.upp = 100;
  x(12).Current = 0.5;
  x(12).Type = 'continuous'; % sigmamax_coeff2 (continuous)
  x(13).Values.low = 5;
  x(13).Values.upp = 5;
  x(13).Current = 5;
  x(13).Type = 'fix'; % kappa (fix)
  x(14).Values.low = 10;
  x(14).Values.upp = 10;
  x(14).Current = 10;
  x(14).Type = 'fix'; % N (fix)


  indchange = [4, 5, 6, 7, 9, 10, 11, 12]; % index set for tuning

  % name of tuning paramters
  xname= {'lambdaCoeff1', 'lambdaCoeff2', 'muCoeff', 'gammaE_coeff1',...
    'gammaE_coeff2', 'E_coeff1', 'E_coeff2', 'sigmainit', 'gamma',...
    'sigmamin', 'sigmamax_coeff1', 'sigmamax_coeff2', 'kappa', 'N'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [1, 1, 1, 0, 0, 0, 0, 4, 3, 4, 0, 0, 4, 4];

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
