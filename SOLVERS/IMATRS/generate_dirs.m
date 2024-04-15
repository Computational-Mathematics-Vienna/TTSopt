function [Phalton,ihalton,Dout, succout, alpha, iexit] = ...
                    generate_dirs(n,D,succ,a,eta,Phalton,ihalton,betaLS)
    
    mD = size(D,2);
    for j = 1:1000
        %keyboard
        v = 2.0*Phalton(ihalton,:)' - ones(n,1);
        ihalton = ihalton+1;
        v = eta*v./norm(v);

        if (norm(v)<1.e-16)
           break
        end
        d = round(v);
        %now check whether d is a prime vector
        if prime_vector(d)
            trovato = 0;
            %check whether d is already in D
            DIFF1=D-repmat(d,1,mD);
            DIFF2=D+repmat(d,1,mD);
            if( min ( sum(abs(DIFF1),1)) == 0 ) || ...
                              ( min ( sum(abs(DIFF2),1)) == 0 ) 
                trovato = 1;    
            end
            if ~trovato
                H       = [d]; %norm(d)^2*eye(n,n) - 2*d*d';
                Dout    = [H D];
                succout = [0 succ];
                if size(a,1)>1
                   a = a';
                end
                alpha   = [max(betaLS, max(a)) a]; 
                iexit   = 1;
                return
            end
        end
    end
    Dout    = D;
    succout = succ;
    alpha   = a;
    iexit   = 0;
    
end