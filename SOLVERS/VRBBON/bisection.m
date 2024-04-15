%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% bisection.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [step]=bisection(step,par,tune);
%
% generate step size by geometric, cubic or mbis cubic along geometric
%
% for details of input and output structures see VSBBON.m
%

function [step]=bisection(step,par,tune);

switch tune.bis
case 0, step.alp = sqrt(step.alp1*step.alp3);
case 1, step.alp = (step.alp1*step.alp3)^(1/3);
case 2
    if mod(par.t,tune.mbis), step.alp = sqrt(step.alp1*step.alp3);  
    else, step.alp = (step.alp1*step.alp3)^(1/3);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%