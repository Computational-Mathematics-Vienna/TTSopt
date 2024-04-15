%     *********************************************************
%     *         
%     *                 Continuous Linesearch
%     *
%     *********************************************************

function [alfa,f,nf,i_corr_fall]=linesearchbox_cont ...
    (fun,n,x,f,d,alfa_d,j,alfa_max,iprint,bl,bu,nf)
      
	z = x;
    gamma = 1.e-6;
	delta =0.5;
	delta1=0.5;
	i_corr_fall =0;
	ifront      =0;

	if iprint >= 1
       fprintf('j =%2d    d(j) =%2.0f alfa=%2e', j,d(j),alfa_d(j));
    end
    
    if abs(alfa_d(j)) <= 1.e-3*min(1.0,alfa_max)
		alfa = 0;
		if iprint >= 1
			disp(' alfa piccolo');
			fprintf(' alfa_d(j)=%2e    alfamax=%2e' , alfa_d(j),alfa_max);
        end
        return
    end
    
    for ielle=1:2 
        if d(j) > 0
           if (alfa_d(j)-(bu(j)-x(j))) < -1.e-6
				alfa = max(1.e-24,alfa_d(j));
           else
				alfa = bu(j)-x(j);
				ifront=1;
				if iprint >=1, disp(' point on the boundary. *'); end
           end
        else
            
             if (alfa_d(j)-(x(j)-bl(j))) < -1.e-6
				alfa = max(1.e-24,alfa_d(j));
             else
				alfa = x(j)-bl(j);
				ifront=1;
				if iprint >= 1, disp(' point on the boundary. *'); end
             end
        end
        
        if abs(alfa) <= 1.e-3*min(1.0,alfa_max)

			d(j) = -d(j);
			i_corr_fall = i_corr_fall+1;
			ifront = 0;

			if iprint >= 1
				disp(' direzione opposta per alfa piccolo')
				fprintf(' j =%2d    d(j) =%2.0f', j,d(j))
				fprintf(' alfa=%2e    alfamax=%2e', alfa,alfa_max)
            end

			alfa = 0;
			continue
        end
        alfaex = alfa;
		z(j) = x(j) + alfa*d(j);

		fz  = fun(z);
		nf = nf+1;

		if iprint >= 1, fprintf(' fz =%2.0f   alfa =%2e', fz,alfa); end
                
        if iprint >= 2
			for i=1:n
				print(' z(%2d)=%2f',i,z(i))
            end
        end

		fpar = f - gamma*alfa^2;

		if fz < fpar
            % expansion step

			while true

				if ifront==1

					if iprint >= 1
					  fprintf([' accetta punto sulla frontiera fz =%2.0f',...
                          '   alfa =%2.0f', fz,alfa])
                    end

					alfa_d(j) = delta*alfa;
					return;
                end

				if d(j) > 0

					if (alfa/delta1-(bu(j)-x(j))) < -1.e-6
						alfaex = alfa/delta1;
                    else
						alfaex = bu(j)-x(j);
						ifront = 1;
						if iprint >= 1
							fprintf(' punto espan. sulla front.')
                        end
                    end

                else

					if (alfa/delta1-(x(j)-bl(j))) < -1.e-6
						alfaex = alfa/delta1;
                    else
						alfaex = x(j)-bl(j);
						ifront = 1;
						if iprint >= 1
							disp(' punto espan. sulla front.')
                        end
                    end
                end

				z(j) = x(j) + alfaex*d(j); 

				fzdelta = fun(z);
				nf     = nf+1;

				if iprint >= 1
					fprintf(' fzex=%2.0f  alfaex=%2.0f',fzdelta,alfaex);
                end

				fpar = f - gamma*alfaex^2;

				if fzdelta < fpar
					fz   = fzdelta;
					alfa = alfaex;
                else
					alfa_d(j) = delta*alfa;

					if iprint>= 1
						fprintf(' accetta punto fz =%f   alfa =%f', fz,alfa);
                    end

					return;
                end
            end

		else  % opposite direction    

			d(j) = -d(j);
			ifront = 0;

			if iprint >= 1
				disp(' direzione opposta')
				fprintf(' j =%d    d(j) =%f',j,d(j));
            end
        end
    end

	if i_corr_fall ~= 2
		alfa_d(j) = delta*alfa_d(j);
    end

	alfa = 0;

	if iprint >= 1
		print(' failure along the direction')
    end
end
