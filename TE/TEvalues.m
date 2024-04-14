%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEvalues.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function values=TEvalues(func,x,low,upp);
% calculates diagnostic values at x
%
% func         % function handle, [f,g]=func(x) calculate f and g
% x            % argument (column vector)
% low,upp      % column vector of lower and upper bounds
% 
% values       % result structure
%   .x         %   feasible coordinate vector (projected to box)
%   .f         %   function value
%   .nfree     %   number of free variables
%   .normx     %   maximum norm of coordinate vector 
%   .checked   %   = 1, indicating that the values are checked
%
function values=TEvalues(func,TEcase,x)
global finfo
% project to feasible
Ic=finfo.Ic; Ii=finfo.Ii;
x=x(:);
% evaluate function value and gradient
if ismember(TEcase,1:3)
   if TEcase==2
        y = finfo.low+x.*(finfo.upp-finfo.low)./100;
        y=y'; f=func(y);
   elseif TEcase==3
        y(Ii) = finfo.low(Ii)+x(Ii).*(finfo.upp(Ii)-finfo.low(Ii))./100;  
        y (Ic)= x(Ic); y = y'; f=func(y);
   else
       f=func(x);
  end
else
    if ismember(TEcase,13:21)
        y = finfo.low+x.*(finfo.upp-finfo.low)./100;
        y=y'; f=func(y);
    elseif ismember(TEcase,22:29)
        y(Ii) = finfo.low(Ii)+x(Ii).*(finfo.upp(Ii)-finfo.low(Ii))./100;  
        y (Ic) = x(Ic); y = y'; f=func(y); 
    else
       f=func(x);  
    end
end
% adjust meaningless values
if ~isfinite(f), f=realmax; end
values.x=x; values.f=f; values.checked=1;
% number of free variables at solution
if length(Ic)>0&&length(Ii)>0
  nfree = sum(x(Ic) > finfo.clow(Ic) & x(Ic) < finfo.cupp(Ic));
  values.nfree = nfree+sum(x(Ii) > finfo.ilow & x(Ii) < finfo.iupp);  
else
   values.nfree=sum(x>finfo.low & x<finfo.upp);
end
% maximum norm of coordinate vector 
values.normx=norm(x,inf); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
