%     *********************************************************
%     *         
%     *                 stop condition verify
%     *
%     *********************************************************

function [istop, alfa_max]=stop(n,alfa_d,nf,ni,fstop,f,alfa_stop,nf_max, flag_fail)
istop = 0;
alfa_max = 0;
for i=1:n
    if alfa_d(i) > alfa_max
			alfa_max = alfa_d(i);
    end
end

if ni >= (n+1)
    ffm = f; 
    for i=1:n
        ffm = ffm+fstop(i);
    end
    
    ffm = ffm/float(n+1);

    ffstop = (f-ffm)^2  ;  
    
    for i=1:n
        ffstop = ffstop+(fstop(i)-ffm)^2;
    end

   ffstop = sqrt(ffstop/float(n+1));
end
     
if alfa_max <= alfa_stop, istop = 1; end

if nf > nf_max, istop = 2; end

end