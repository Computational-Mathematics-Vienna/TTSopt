%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% intRecombination.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [xbest,fbest,nx,xf,fes,yes,esok,good]=...
             intRecombination(fun,n,good,mu,sum_d,xbest,fbest,nx,xf,tune)
         
global finfo
fes=[]; yes=[]; esok=0;
% compute a weighted average of affine scaling matrix directions
 beta = 2*rand(n,1)-1; beta=beta/norm(beta); 
 d = ceil(beta.*sum_d);
 if norm(d)==0, % null step
    % compute random subspace direction
    X    = xf(finfo.nf-n+1:finfo.nf,1:nx)';
    len  = size(X,2);
    beta = 2*rand(len,1)-1;
    beta = beta/norm(beta); 
    for i=1:len, dX(:,i) = beta(i)*(X(:,i)-xbest); end
    % enforce componenets to be integer
    d = ceil(sum(dX')');
 end
 
 okRecombonation = (mu>=2 && ~good &&  norm(d)~=0);
 
if okRecombonation,
    good=0;  
    % initialize vector alpha_max
    alphamax = Inf * ones(n,1);
    % caluclate max alpha
    ind = ( d > 0 );
    alphamax(ind)=( finfo.upp(ind) - xbest(ind) )./ d(ind);
    ind = ( d < 0 );
    alphamax(ind)=( finfo.low(ind) - xbest(ind) )./ d(ind);
    %compute starting alpha
    alpha_bar  = floor( min(alphamax) );
    alphain    = min(sigma,alpha_bar);
    [alpha,ytrial,ftrial,xf]= discLSS(fun,nx,xf,xbest,...
                             d,alphain,alpha_bar,fbest,tune);
     if finfo.done; return; end 

     if alpha<=0
       d=-d;
       % initialize vector alpha_max
       alphamax = Inf * ones(n,1);
       % caluclate max alpha
       ind = ( d > 0 );
       alphamax(ind)=( finfo.upp(ind) - xbest(ind) )./ d(ind);
       ind = ( d < 0 );
       alphamax(ind)=( finfo.low(ind) - xbest(ind) )./ d(ind);
       % compute starting alpha
       alpha_bar  = floor( min(alphamax));
       alphain    = min(sigma,alpha_bar);
       [alpha,ytrial,ftrial,xf]= discLSS(fun,nx,xf,...
                        xbest,d,alphain,alpha_bar,fbest,tune);
      if finfo.done; return; end 

      if alpha>0
         if(ftrial < fbest)
           fbest = ftrial; xbest = ytrial; good=1;
           if finfo.prt>=3
               fprintf('integer line search was successful\n')
           end
         else
            fes = ftrial; yes = ytrial; esok=1;
         end
      end
     else
        if(ftrial < fbest)
           if finfo.prt>=3
             fprintf('integer line search was successful\n')
           end 
           fbest  = ftrial; xbest = ytrial; good=1;
        else
           fes = ftrial; yes = ytrial; esok=1;
        end
     end
     if cputime-finfo.cpu0>=finfo.secmax
       finfo.error='secmax reached'; finfo.done=1;
    end
    if finfo.done; return; end 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


