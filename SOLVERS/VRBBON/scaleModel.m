
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% scaleModel.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [point,step]=scaleModel(point,step,tune) 
% do scaling for the model to insure the affine invarriant of fitting
% procedure
%
% for details of input and output structures see VSBBON.m
%

function [point,step]=scaleModel(point,step,tune) 

xm = point.X(:,point.b)'; mmax = tune.mmax; X = point.X';

if ~ismember(point.m,point.Is) 
  I1=find(point.Is<point.m);
  msim=(-3+sqrt(9+8*point.Is(I1(end))))/2;
else
  msim = 0.5*(-3+sqrt(9+8*point.m)); 
end

if msim < point.n
  I   = randperm(point.n,msim);
  X   = X(:,I);
  xm  = xm(I);
end

point.msim=msim;

K         = min(size(X,1)-1,mmax);
distance  = sum((X-ones(size(X,1),1)*xm).^2,2);
[~,ind]   = sort(distance);
ind       = ind(2:K+1);
S         = X(ind,:) -ones(K,1)*xm;
R         = triu(qr(S,0));
R         = R(1:msim,:);

warning off
L = inv(R)';
warning on
step.sc=sum((S*L').^2,2).^(3/2);

point.ind=ind; point.K=K; step.distance=distance;
point.xxm=xm; point.XX=X;


clear ind R S distance K L xm mmax dd K X

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%