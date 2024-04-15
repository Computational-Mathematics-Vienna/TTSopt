
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% SDBOX - a Derivative-Free algorithm for bound   %
% constrained optimization problems               %
% Copyright (C) 2011  G.Liuzzi, S. Lucidi         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x,f]=sdbox(fun,n,x,f,bl,bu,alfa_stop,nf_max,maxiter,nf,iprint)

%   initialization
eta       = 1.e-6; 
num_fal   = 0;
istop     = 0; 
flag_fail = zeros(1,n);
fstop     = zeros(1,n+1);
alfa_d    = zeros(1,n);
d         = ones(1,n);
	
format100 = ' ni=%4d  nf=%5d   f=%12.5e   alfamax=%12.5e';

% ---- choice of the starting stepsizes along the directions --------

for i=1:n
    alfa_d(i) = max(1.e-3,min(1.0,abs(x(i))));
	 if iprint >= 1, fprintf(' alfainiz(%d)=%e',i,alfa_d(i)); end
end

alfa_max = max(alfa_d);
f = fun(x);
nf = nf+1;
i_corr = 1;
fstop(i_corr) = f;

%---------------------------   
%     main loop
%---------------------------

for ni=1:maxiter

    if iprint >= 0, fprintf(format100 , ni,nf,f,alfa_max); end

    %-------------------------------------
    %    sampling along coordinate i_corr
    %-------------------------------------
    
	 [alfa, fz, nf, i_corr_fall] = linesearchbox_cont ...
           (fun,n,x,f,d,alfa_d,i_corr,alfa_max,iprint,bl,bu,nf);

    if abs(alfa) >= 1.e-12
	    flag_fail(i_corr) = 0;
		x(i_corr) = x(i_corr) + alfa*d(i_corr);
		f = fz;
		fstop(i_corr) = f;
		num_fal = 0;
		ni = ni+1;

    else

	    flag_fail(i_corr) = 1;
	     if i_corr_fall < 2
			fstop(i_corr) = fz;
			num_fal = num_fal+1;
			ni = ni+1;
         end
    end

    if i_corr < n, i_corr = i_corr+1; else, i_corr = 1; end

    %[istop, alfa_max] = stop(n,alfa_d,nf,ni,fstop,f,...
    %                         alfa_stop,nf_max,flag_fail);

     if istop >= 1
		if iprint >= 0, fprintf(format100, ni,nf,f,alfa_max); end
	    break
     end
end


