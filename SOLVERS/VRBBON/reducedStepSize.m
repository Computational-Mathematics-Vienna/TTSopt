%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% reducedStepSize.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [step]=reducedStepSize(step,par,tune)
% reduce the step size
%
% for details of input and output structures see VSBBON.m
%
function [step]=reducedStepSize(step,par,tune)

ok = (step.alow~=0 & ~isinf(step.aupp));
if ok
   step.alp1=step.alow; step.alp3=step.aupp; 
   [step]=bisection(step,par,tune);
   step.alphaE = max(tune.alpmin,min(step.alp,step.alphaE/tune.gammaE));
else
    step.alphaE = max(tune.alpmin,step.alphaE/tune.gammaE);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%