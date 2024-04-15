%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% triple.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [xbest,fbest,g,G,x1,x2,nfused] = ...
%                            triple(fcn,x,f,x1,x2,u,v,G,hess,nfmax)
% triple search for finding a local quadratic model 
%    q(x) = fbest + g^T(x-xbest) + 0.5(x-xbest)G(x-xbest)
% Returns early if approx. nfmax function values are spent.
%
% Input:
% fcn   	objective function handle
% x(1:n)	start vector
% f		its function value
% x1(1:n), x2(1:n)  'neighbors' of x with x(i), x1(i), x2(i) pairwise
%		distinct for i = 1,...,n
% [u,v]		original box
% G		Hessian of the quadratic model around xbest
% hess		sparsity pattern of the Hessian 
%               (but empty for a diagonal search)
% nfmax         maximal number of fuction values to be spent
%
% Output:
% xbest(1:n)	best point found 
% fbest		its function value
% g, G		gradient and Hessian of the quadratic model around xbest
% x1,x2         neighbors of xbest
% nfused        number of function evaluations used
%
% Uses the following m-files:
% hessian.m
% polint1.m

function [xbest,fbest,g,G,x1,x2,nfused] = ...
                             triple(fcn,x,f,x1,x2,u,v,G,hess,nfmax)
nfree = nfmax;
n = length(x);
g = zeros(n,1);
ind = find(u < x & x < v);
ind1 = find(x <= u | x >= v);
for j=1:length(ind1)
  for k=1:n
    G(ind1(j),k) = 0;
    G(k,ind1(j)) = 0;
  end
end	
xbest = x;
fbest = f;
if ~isempty(ind) 
  g(ind) = 1;
  G(ind,ind) = 1;
end
nfused=0;
if length(ind)<=1, return; end
xbestnew = x;
fbestnew = f;
for j=1:length(ind)
  i = ind(j);
  x = xbest;
  f = fbest;
  x(i) = x1(i);
  f1 = fcn(x);
  x(i) = x2(i);
  f2 = fcn(x);
  nfree = nfree-2;
  [gi,Gii] = polint1([xbest(i) x1(i) x2(i)],[f f1 f2]);
  if ~(isfinite(gi)&isfinite(Gii)),
    xlist=[xbest(i) x1(i) x2(i)]
    flist=[f f1 f2]
    disp('bad diagonal quadratic model in triple search')
    return;
  end;
  g(i)=gi;G(i,i)=Gii;
  if f1 <= f2
    if f1 < fbest
      fbestnew = f1;
      xbestnew(i) = x1(i);
    end
  else
    if f2 < fbest
      fbestnew = f2;
      xbestnew(i) = x2(i);
    end
  end 
  if nfree<=0, break; end;
  if ~isempty(hess)
    k1 = 0;
    if f1 <= f2
      x(i) = x1(i);
    else
      x(i) = x2(i);
    end
    for k=1:i-1
      if hess(i,k)
        if xbest(k) > u(k) & xbest(k) < v(k) & ~isempty(find(ind==k))
          q1=fbest+g(k)*(x1(k)-xbest(k))+0.5*G(k,k)*(x1(k)-xbest(k))^2;
          q2=fbest+g(k)*(x2(k)-xbest(k))+0.5*G(k,k)*(x2(k)-xbest(k))^2; 
          if q1 <= q2
            x(k) = x1(k);
          else
            x(k) = x2(k);
          end
          f12 = fcn(x);
          nfree = nfree-1;
          Gik = hessian(i,k,x,xbest,f12,fbest,g,G);
          G(i,k)=Gik;
          if f12 < fbestnew
            fbestnew = f12;
            xbestnew = x;
            k1 = k;
          end  
          x(k) = xbest(k);
        end
      else
        G(i,k) = 0;
      end
      G(k,i) = G(i,k);
      if nfree<=0, break; end;
    end
  end
  if nfree<=0, break; end;
  if fbestnew < fbest
    if x1(i) == xbestnew(i)
      x1(i) = xbest(i);
    else 
      x2(i) = xbest(i);
    end
    if nargin < 10 & k1 > 0
      if xbestnew(k1) == x1(k1)
        x1(k1) = xbest(k1);
      else
        x2(k1) = xbest(k1);
      end
    end
    for k=1:i
      if ~isempty(find(ind==k))
        g(k) = g(k) + G(i,k)*(xbestnew(i) - xbest(i));
        if nargin < 10 & k1 > 0
          g(k) = g(k) + G(k1,k)*(xbestnew(k1) - xbest(k1));
        end
      end
    end
    xbest = xbestnew;
    fbest = fbestnew;
  end
end

xbest = xbestnew;
fbest = fbestnew;
nfused=nfmax-nfree;

