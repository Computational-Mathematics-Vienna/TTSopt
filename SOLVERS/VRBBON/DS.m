
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DS.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [point,par,step,info]=DS(fun,point,step,par,tune,info)
% Repeatedly improve the function value
%
% for details of input and output structures see VSBBON.m
%

function [point,par,step,info]=DS(fun,point,step,par,tune,info)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RLS with R-random direction %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if info.prt>=1
   disp(' ')
   disp(' ')
   disp('start of Phases I & II:')
   disp(' ')
   disp(' ')
end
  


for ii = 1:tune.T0
    
    par.totalngood= 0;
    
    
    

    par.t=0; par.T=tune.R; par.dir = 1;   % pick random direction

    if info.prt>=1, disp('start of RLS using random direction'); end

    % RLS using random direction
    [point,par,step,info] = RLS(fun,point,step,par,tune,info);

    par.totalngood =  par.totalngood+par.ngood;

    if info.done, break; end



    if info.prt>=2 &  par.ngood>0
      disp(['function value improved at nf=',num2str(info.nf),...
            ' to ftrue=',num2str(info.ftrue),' and fnoise=',...
            num2str(point.fm)]) 
    end

    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % RLS with random subspace direction if m>=3 %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if point.m>=3
       if info.prt>=1
         disp('start of RLS using subspace direction')
       end
       
       while 1
            par.t=0; par.T=1; 
            par.dir  = 2;   % pick random subspace direction
            % RLS using random subspace direction
            [point,par,step,info] = RLS(fun,point,step,par,tune,info);
            if info.prt>=2 & par.ngood>0
                disp(['function value improved at nf=',...
                       num2str(info.nf),' to ftrue=',...
                       num2str(info.ftrue),' and fnoise=',...
                       num2str(point.fm)]) 
            end
            par.totalngood =  par.totalngood+par.ngood;
            if info.done, break; end  
            ok = (par.ngood ==0);
            if ok, break; end
       end
       if info.prt>=1, disp('end of RLS using subspace direction'); end 

    end
    
    
    if info.done, break; end  
    
  
    if info.prt>=1
       disp(' ')
       disp(' ')
       disp('end of Phases III')
       disp(' ')
       disp(' ')
    end
   

    if ~info.done


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % construct a robust quadratic model by using %
    % the best points then solve trust region     %
    % subproblem by minq8.m                       %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    if tune.model

    ok = (point.m>=5); % I checked 

    if ok
       info.model = info.model+1;

        if info.prt>=1,disp('start of Phase III'),disp(' '),disp(' '); end

        par.ngoodold = par.ngood;

        % construct a reduced quadratic model
        [point,step] = fit(point,step,tune);

        if ~ point.randg
            info.nquadmodel = info.nquadmodel+1;
            if info.prt>=1
              disp(['fit is successful; the gradient & Hessain', ...
                    ' are estimated'])
            end
            [step]=genRadius(point,step,tune); % generate the radius
            while 1
                par.t = 0; par.T =1; 
                par.dir  = 3;   % pick TR direction
                if info.prt>=1
                    disp('start of RLS using trust region direction')
                end 
                % RLS using random subspace direction
                [point,par,step,info] = ...
                        RLS(fun,point,step,par,tune,info);
                 par.totalngood =  par.totalngood+par.ngood;   
                if info.prt>=1 
                    disp('end of RLS using trust region direction')
                end     

                 if info.prt>=2 & par.ngood>0
                       disp(['function value improved at nf=',...
                       num2str(info.nf),' to ftrue=',...
                       num2str(info.ftrue),' and fnoise=',...
                       num2str(point.fm)]) 
                 end  

                if info.done, break; end  
                ok = (par.ngood ==0);
                if ok, break; end

                step.d = (0.5+rand)*step.d;

            end
        else
            info.nlinearmodel = info.nlinearmodel+1;
            if info.prt>=1
              disp(['fit is successful only for estimating the gradient '])
            end

            while 1
                 par.t=0; par.T=1; 
                 par.dir = 4; % pick  random scaled gradient direction
                if info.prt>=1
                    disp('start of RLS using scaled gradient direction')
                end 
                % RLS using scaled gradient direction
                [point,par,step,info] = ...
                        RLS(fun,point,step,par,tune,info);
                 par.totalngood =  par.totalngood+par.ngood;   
                 if info.prt>=1
                    disp('end of RLS using scaled gradient direction')
                 end     

                if info.prt>=2 & par.ngood>0
                    disp(['function value improved at nf=',...
                         num2str(info.nf),' to ftrue=',...
                         num2str(info.ftrue),' fnoise=',...
                          num2str(point.fm)]) 
                end

                if info.done, break; end  
                ok = (par.ngood ==0);

                if ok, break; end

            end


        end
        

         if info.prt>=1
           disp(' '), disp(' ')
           disp('end of Phase III')
           disp(' '), disp(' ')
         end
         
         if info.done, break; end  
    end


    end % the model used

    end % end of Phase III
 
    
    
    % restart the interval
    res = (par.totalngood==0 & point.m>=3);
    % restate the interval since there is no improvement
    if res 
       if info.prt>=1
          disp('the interval has been restarted by resInterval')
       end
       [step]=resInterval(point,step,tune);
    end
  
end % for loop




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
