%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% gradFin.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [g,adjusted]=gradFin(x,low,upp,g,prt);
% make meaningless gradient components (NaN,inf,-inf) finite
%
% x          % argument of function
% low,upp    % bound constraints
% g          % computed gradient at x
% prt        % printlevel (0=nothing, 1=print anomalies)
%
% g          % adjusted gradient
% adjusted   % was adjustment needed? (1=yes)
%
function [g,adjusted]=gradFin(x,low,upp,g,prt);

if nargin<5, prt=0; end;

adjusted=0;
ind=isnan(g);
if any(ind), 
  if prt, disp(' NaN in gradient'); end;
  adjusted=1;
  % force freeability
  ind2=(x-low>upp-x);
  g(ind&ind2)=1000;
  g(ind&~ind2)=-1000;
end;
ind=(g==inf);
if any(ind), 
  if prt, disp('+inf in gradient'); end;
  adjusted=1;
  g(ind)=1000; 
end;
ind=(g==-inf);
if any(ind), 
  if prt, disp('-inf in gradient'); end;
  adjusted=1;
  g(ind)=-1000; 
end;


