%-----------------------------------------------------------------------
%      Starting point and bound calculation
%-----------------------------------------------------------------------

[bl, bu] = setbounds();	
x = startp();
n = length(x);
alfa_stop   = 1.e-6;
maxiter     = 20000;
nf_max      = 20000;
iprint      = 0;

fob   = funct(x);
finiz = fob;
num_funct = 1;

xstar, f = sd_box(n,x,fob,bl,bu,alfa_stop,nf_max,maxiter,num_funct,iprint)
