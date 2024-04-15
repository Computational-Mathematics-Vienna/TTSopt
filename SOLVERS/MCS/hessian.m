%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% hessian.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function h = hessian(i,k,x,x0,f,f0,g,G)
% computes the element G(i,k) of the Hessian of the local quadratic 
% model
% Input:
% i, k		indices (k < i)
% x(1:n)	'neighbor' of x0 used for computing G(i,k); differs from
%		x0 only in the ith and kth component
% x0(1:n)	point around which the quadratic model is computed
% f		function value at x
% f0		function value at x0
% g(1:i)	components of the gradient of the local quadratic model 
%		that have already been computed
% G		components of the Hessian of the local quadratic model
%		that have already been computed
% Output:
% h = G(i,k)	newly computed nondiagonal element of the Hessian

function h = hessian(i,k,x,x0,f,f0,g,G)

dxi=x(i)-x0(i);
dxk=x(k)-x0(k);
if dxi==0|dxk==0|~isfinite(f-f0),
  % no interpolation possible; return old value
  h=G(i,k);
else 
  h = f-f0-g(i)*dxi-g(k)*dxk-0.5*G(i,i)*dxi^2-0.5*G(k,k)*dxk^2;
  h = h/dxi/dxk;
end;
    
if ~isfinite(h),
  i,k,x,x0,gi=g(i),gk=g(k),Gii=G(i,i),Gkk=G(k,k),dxi,dxk,f,f0
  disp('bad Hessian entry in hessian.m')
  % return old value 
  h=G(i,k);
end;
