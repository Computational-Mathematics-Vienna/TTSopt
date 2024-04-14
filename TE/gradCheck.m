%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% gradCheck.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [relacc,bad]=gradCheck(func,x,prt);
% gradient check for evaluation routine 
%    results depend on random choices 
%    repeat with several x for higher reliability
%
% func          % function handle
%                % [f,g]=func(x) is supposed to compute 
%                % for a column vector of size n 
%                % a function value f=f(x) and its gradient g=f'(x)^T
% x              % approximate point of evaluation 
%                %   (should be generic, not very close to stationary)
%
% relacc         % estimated relative accuracy of gradient
% bad            % list of bad gradient components
%
function [relacc,bad]=gradCheck(func,x,TEcase)
global finfo
prt=finfo.prt;
ni=20; % number of trial evaluations
qi=zeros(ni,1);
n=length(x);
bad=zeros(n,1);
x(x==0)=0.001;            % enforce nonzero components
x=x.*(1+1e-8*rand(n,1));  % random perturbation of starting point
if ismember(TEcase,[2,13:21])
    y = finfo.clow+x.*(finfo.cupp-finfo.clow)./100;  
    y=y';
    f0=func(y);
elseif ismember(TEcase,[3,22:29])
    indMI=finfo.indMI;
    Ic = find(indMI==0); Ii = find(indMI==1);
    y(Ii) = finfo.clow(Ii)+x(Ii).*(finfo.cupp(Ii)-finfo.clow(Ii))./100;  
    y (Ic) = x(Ic);
    y = y';
    f0=func(y);
else
    f0=func(x);
end
df=[];
if isempty(df)
    n=length(x);
    for i=1:n
       %  choice of the steplenght for the forward differences
        % get the step size
        h=sqrt(eps);
        if x(i)~=0
           h=h*sign(x(i))*max(abs(x(i)),norm(x,1)/n);
        end
        % compute the scaled random direction
        p       = 1e-30*(rand(n,1)-0.5);
        p(i)    = p(i)+h;
        % compuet the new trial point and its function value
        xh      = x+p; 
        if ismember(TEcase,[2,13:21])
            y = finfo.clow+xh.*(finfo.cupp-finfo.clow)./100;  
            y=y'; fh=func(y);
        elseif ismember(TEcase,[3,22:29])
            indMI=finfo.indMI;
            Ic = find(indMI==0); Ii = find(indMI==1);
            y(Ii) = finfo.clow(Ii)+xh(Ii).*(finfo.cupp(Ii)-...
                    finfo.clow(Ii))./100;  
            y (Ic) = xh(Ic);
            y = y';
            fh=func(y);
        else
            fh=func(xh);
        end
        df(i)   = (fh-f0)/h;
    end
    df=df';
end
n0=n;
n=length(df);
% random direction with sensible scale
if n<n0, x = x(1:n); p=(1+rand(n,1)).*abs(x);
else, p=(1+rand(n,1)).*abs(x); 
end
p(p==0) = abs(x(p==0)); % enforce nonzero components
for k=0:n
  if k>0
    % check k-th component of gradient separately
    if prt
       disp(['check ',num2str(k),'th component of gradient separately'])
    end
    p=zeros(n,1); p(k)=abs(x(k)); 
  end
  gTp=df'*p;
  for i=1:ni
      alp=eps*10^i; 
       if ismember(TEcase,[2,13:21])
            y = finfo.clow+(x+alp*p).*(finfo.cupp-finfo.clow)./100;  
            y=y'; fi=func(y);
       elseif ismember(TEcase,[3,22:29])
            xx = x+alp*p;
            indMI=finfo.indMI;
            Ic = find(indMI==0); Ii = find(indMI==1);
            y(Ii) = finfo.clow(Ii)+xx(Ii).*(finfo.cupp(Ii)-...
                    finfo.clow(Ii))./100;  
            y (Ic) = xx(Ic);
            y = y';fi=func(y);
       else
           fi=func(x+alp*p);
       end
       qi(i)=(fi-f0)/(alp*gTp);
  end
  acc=abs(qi-1);
  % most of the first few components should be <<1
  if prt
    if k==0
      disp('most of the first few numbers in the following list')
      disp('should be <<1:');
    end
    fprintf(1,'%7.1e  ',acc);
    disp(' ');
  end
  good=0; maxgood=0;
  for i=1:ni
    if acc(i)<=0.1,good=good+1;
    else,good=0;
    end
    if good>maxgood
      maxgood=good; igood=i;
    end
  end
  if maxgood>2
    % directional derivative seems ok
    if k==0
      ind=[igood+1-maxgood:igood];
      relacc=min(acc(ind));
      break;
    end
  else
    % directional derivative seems erroneous
    if k==0,relacc=min(acc(acc>0.1));
    else, bad(k)=1;
    end
  end
  if nargout<2, return; end
end
% find list of bad components
bad=find(bad)';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
