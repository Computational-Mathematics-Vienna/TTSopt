%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tMDSMAX.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tMDSMAX generates necessary data for doing tuning the parameters
% of MDSMAX by a mixed integer solver
%
% List of tuning parameters:
%
% simplex_form: determines the form of the initial simplex
% muCoeff1: Coefficient1 for expansion factor mu = coeff1+coeff2*n
% muCoeff2: Coefficient2 for expansion factor mu = coeff1+coeff2*n
% thetaCoeff1: Coefficient1 for contraction factor theta =
%   coeff1+coeff2*n
% thetaCoeff2: Coefficient2 for contraction factor theta =
%   coeff1+coeff2*n
%
% solverParams = struct('simplex_form',1, 'muCoeff1',2.0,...
%   'muCoeff2',2.0, 'thetaCoeff1',0.5, 'thetaCoeff2',0.5)


function tuneinfo = tMDSMAX



  x(1).Value = 1;
  x(1).Type = 'fix'; % simplex_form (fix)
  x(2).Values.low = 1;
  x(2).Values.upp = 10;
  x(2).Current = 2.0;
  x(2).Type = 'continuous'; % muCoeff1 (continuous)
  x(3).Values.low = 1;
  x(3).Values.upp = 10;
  x(3).Current = 2.0;
  x(3).Type = 'continuous'; % muCoeff2 (continuous)
  x(4).Values.low = 0;
  x(4).Values.upp = 1;
  x(4).Current = 0.5;
  x(4).Type = 'continuous'; % thetaCoeff1 (continuous)
  x(5).Values.low = 0;
  x(5).Values.upp = 1;
  x(5).Current = 0.5;
  x(5).Type = 'continuous'; % thetaCoeff2 (continuous)


  indchange = [2, 3, 4, 5]; % index set for tuning

  % name of tuning paramters
  xname= {'simplex_form', 'muCoeff1', 'muCoeff2', 'thetaCoeff1',...
    'thetaCoeff2'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [4, 0, 0, 0, 0];

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
