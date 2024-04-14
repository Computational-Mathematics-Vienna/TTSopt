%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% getProbInfo.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% retruns the information of a problem
%
% input:
%   dim: dimension of the problem
%   S: structure with problem information
%   probnam: problem name
%   probCollect: the collection containing the problem
%
% output:
%   sensef
%   func: function handle
%   low: lower bound
%   upp: upper bound
%   x
%   xtype
%   hitInfo
%   constrInfo
%
 
function [sensef,func,low,upp,x,xtype,hitInfo,constrInfo] = ...
                                getProbInfo(dim,S,probnam,probCollect)

  fieldS = fieldnames(S);

  lc=[]; uc=[]; func=[]; 
  hitInfo.xmin=[]; hitInfo.fmin=[]; hitInfo.xmin1=[]; hitInfo.fmin1=[];
  hitInfo.xmin2=[]; hitInfo.fmin2=[];

 if ismember('prob',fieldS)
     
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     if isfield(S.prob,'obj') 
         fieldO = fieldnames(S.prob.obj);
          if ismember('nol',fieldO)
             nol = S.prob.obj.nol;
             ok0 = ~ isempty(nol);
          else
              if ismember('nl',fieldO)
                nol = S.prob.obj.nl;
                ok0 = ~ isempty(nol);
             else, nol = []; ok0=0;
              end
          end

         if ismember('sense',fieldO)
             sensef = S.prob.obj.sense;
         else
             sensef = [];
         end
          if ismember('const',fieldO)
             constf = S.prob.obj.const; ok1 = ~isempty(constf); 
             if constf==0, ok1=0; constf = []; end
          else, constf = []; ok1=0;
          end
         
         if ismember('lin',fieldO)
             linf = S.prob.obj.lin; ok2 = ~isempty(linf); 
          else, linf = []; ok2=0;
          end
        
          
          if ismember('quad',fieldO)
             quadf = S.prob.obj.lin; ok3 = ~isempty(quadf);
          else,  quadf = []; ok3=0;
          end
          ok = ok1 && ok2 && ok3;
          if ok, func0 = @(x) (constf+linf'*x+0.5*x'*quadf*x);
          elseif ok1&&ok2&&~ok3, func0 = @(x)(constf+linf'*x);
          elseif ok2&&ok3&&~ok1, func0=@(x)(linf'*x+0.5*x'*quadf*x);
          elseif ok1&&ok3&&~ok2, func0=@(x)(constf+0.5*x'*quadf*x);
          elseif ok1&&~ok2&&~ok3, func0 = @(x) (constf);
          elseif ~ok1&&ok2&&~ok3, func0 = @(x) (linf'*x);
          elseif ~ok1&&~ok2&&ok3, func0=@(x)(0.5*x'*quadf*x);
        end
          
          if isempty(nol)
              func = @(x) func0(x);
          elseif~ok1 && ~ok2 && ~ok3, func = nol;
          elseif ok0, 
              func = @(x) func0(x)+nol(x);
          end

        if isfield(S.prob,'con') 
            
           ncon =  length(S.prob.con);
           
            constrInfo.eqcon=cell(0); constrInfo.eqtype=cell(0);
            constrInfo.Aineq=[]; constrInfo.Aeq=[];
            
            
            fieldCin = fieldnames(S.prob.con);
            
           for icon = 1:ncon
                             
              eval(['fieldC = fieldnames(S.prob.con.',...
                                       fieldCin{icon},');']);
                                           

              if isfield(fieldC,'nol')
                 nolc = fieldC.nol;
                 ok0=1;
              else
                 nolc = []; ok0=0;
              end
             
              if isfield(fieldC,'const')
                 constc = fieldC.const;  
                  ok1=1;
              else
                 constc = []; ok1=0;
              end
              
              if isfield(fieldC,'lin')
                 linc = fieldC.lin;  
                 ok2=1;
                 linc = full(linc);
              else
                 linc = []; ok2=0;
              end
              
              if isfield(fieldC,'quad')
                 quadc = fieldC.quad; ok3=1;
                 quadc = full(quadc);
              else
                 quadc = []; ok3=0;
              end
              

             if isfield(fieldC,'lb')
                 lc = fieldC.lb;
             else
                 lc = [];
             end

              if isfield(fieldC,'ub')
                 uc = fieldC.ub;
              else
                 uc = [];
              end
              
              if icon==1
                  if isempty(constc), constc=0; end
                  if length(uc)==0 && length(lc)>0
                      ceq=lc;
                      for ii=1:lebgth(lc)
                          if ~isinf(lc(ii))
                              ceq(ii) = ceq(ii)-constc;
                          else
                              ceq(ii) = -constc;
                          end
                      end
                  elseif length(uc)>0 && length(lc)==0
                      ceq = uc;
                       for ii=1:lebgth(uc)
                          if ~isinf(uc(ii))
                             ceq(ii) = ceq(ii)-constc;
                          else
                               ceq(ii) = -constc;
                          end
                      end
                  elseif length(uc)==0 && length(lc)==0
                       ceq =- constc*ones(length(uc),1);
                  else
                       ceq = [uc; lc];
                       for ii=1:length(ceq)
                          if ~isinf(ceq(ii))
                             ceq(ii) = ceq(ii)-constc;
                          else
                             ceq(ii) = -constc;
                          end
                       end
                  end
                  linc=[linc;-linc];
                  constrInfo.eqcon{icon}  = 'ec'; 
              else
                  if isempty(constc), constc=0; end
                 if length(uc)==0 && length(lc)>0
                      cineq=lc;
                      for ii=1:length(lc)
                          if ~isinf(lc(ii))
                              cineq(ii) = cineq(ii)-constc;
                          else
                              cineq(ii) = -constc;
                          end
                      end
                  elseif length(uc)>0 && length(lc)==0
                      cineq = uc;
                       for ii=1:length(uc)
                          if ~isinf(uc(ii))
                             cineq(ii) = cineq(ii)-constc;
                          else
                               cineq(ii) = -constc;
                          end
                      end
                  elseif length(uc)==0 && length(lc)==0
                       cineq =- constc*ones(length(uc),1);
                  else
                       cineq = [uc; lc];
                       for ii=1:length(cineq)
                          if ~isinf(cineq(ii))
                             cineq(ii) = cineq(ii)-constc;
                          else
                             cineq(ii) = -constc;
                          end
                       end
                  end
                  linc=[linc;-linc];
                  constrInfo.eqcon{icon} = 'ic';
              end
              
              ok = ok1 && ok2 && ok3;
              if ok
                 if icon==1
                  constrInfo.cfunceq=@(x)(linc'*x+0.5*x'*quadc*x+constc); 
                 else
                  constrInfo.cfuncineq=@(x)(linc'*x+0.5*x'*quadc*x+constc);   
                 end
                  constrInfo.eqtype{icon} = 'qc';
                  if icon==1
                     constrInfo.Aeq = linc;
                     constrInfo.beq = ceq;
                  else 
                     constrInfo.Aineq   = linc;
                     constrInfo.bineq   = cineq;
                 end
              elseif ok1&&ok2&&~ok3
                  if icon==1 
                   constrInfo.cfunceq   = @(x)(linc'*x+constc);
                  else
                    constrInfo.cfuncineq   = @(x)(linc'*x+constc);  
                  end
                   constrInfo.eqtype{icon} = 'lc';
                   if icon==1
                      constrInfo.Aeq = linc;
                      constrInfo.beq = ceq;
                   else 
                      constrInfo.Aineq = linc;
                      constrInfo.bineq = cineq;
                   end
              elseif ok2&&ok3&&~ok1
                  if icon==1
                     constrInfo.cfunceq=@(x)(linc'*x+0.5*x'*quadc*x+constc);
                  else
                     constrInfo.cfuncineq=@(x)(linc'*x+0.5*x'*quadc*x+constc);
                  end
                    constrInfo.eqtype{icon} = 'qc';
                    if icon==1
                      constrInfo.Aeq = linc;
                      constrInfo.beq = ceq;
                   else 
                      constrInfo.Aineq = linc;
                      constrInfo.bineq   = cineq;
                   end
              elseif ok1&&ok3&&~ok2
                  if icon==1
                     constrInfo.cfunceq=@(x)(0.5*x'*quadc*x+constc);
                  else
                     constrInfo.cfuncineq=@(x)(0.5*x'*quadc*x+constc); 
                  end
                   constrInfo.eqtype{icon} = 'qc';
              elseif ok1&&~ok2&&~ok3
                  if icon==1
                    constrInfo.cfunceq = @(x) (constc);
                  else
                     constrInfo.cfuncineq = @(x) (constc); 
                  end
                   constrInfo.eqtype{icon} = 'lc';
              elseif ~ok1&&ok2&&~ok3
                  if icon==1
                    constrInfo.cfunceq = @(x) (linc'*x+constc);
                  else
                    constrInfo.cfuncineq = @(x) (linc'*x+constc);  
                  end
                    constrInfo.eqtype{icon} = 'lc';
                    if icon==1
                      constrInfo.Aeq = linc;
                      constrInfo.beq = ceq;
                    else 
                      constrInfo.Aineq = linc;
                      constrInfo.bineq   = cineq;
                    end
              elseif ~ok1&&~ok2&&ok3 
                  if icon==1
                    constrInfo.cfunceq=@(x)(0.5*x'*quadc*x+constc);  
                  else
                    constrInfo.cfuncineq=@(x)(0.5*x'*quadc*x+constc);    
                  end
                   constrInfo.eqtype{icon} = 'qc';
              end
              
              if ~ok1 && ~ok2 && ~ok3 && ok0
                  if icon==1
                      constrInfo.cfunceq = nolc;
                  else
                      constrInfo.cfuncineq = nolc;
                  end
                   constrInfo.eqtype{icon} = 'nc';
              elseif ok0 
                  if icon==1
                     constrInfo.cfunceq = @(x) cfunc(x)+nolc(x);
                  else
                     constrInfo.cfuncineq = @(x) cfunc(x)+nolc(x);   
                  end
                  constrInfo.eqtype{icon} = 'gc';
              end
          end
             constrInfo.lbineq  = lc;
             constrInfo.ubineq  = uc;
        else
               error(['error in the ',...
                 probCollect,'colection: con is not available',...
                 ' in S.prob'])
        end
       
        if ~isfield(constrInfo,'Aeq'),constrInfo.Aeq=[]; end
        if ~isfield(constrInfo,'beq'),constrInfo.beq=[]; end
        if ~isfield(constrInfo,'Aineq'),constrInfo.Aineq=[]; end
        if ~isfield(constrInfo,'bineq'),constrInfo.bineq=[]; end
          

       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

       if isfield(S.prob,'domain') 

          fieldD = fieldnames(S.prob.domain);

         if ismember('xtype',fieldD)
             xtype = S.prob.domain.xtype;
         else
             error(['error in ',probnam,' in the ',...
             probCollect,'colection: domain is not available',...
             ' in S.prob.domain'])
         end

         if ismember('lb',fieldD)
              low = S.prob.domain.lb;
              if isempty(low), low = -1e20*ones(dim,1); end
         else
              low = -1e20*ones(dim,1);
         end
         

          if ismember('ub',fieldD)
             upp = S.prob.domain.ub;
              if isempty(upp), upp = 1e20*ones(dim,1); end
          else
             upp = 1e20*ones(dim,1);
          end
          
                    
           if ismember('startp',fieldD)
             if iscell(S.prob.domain.startp)
                x = S.prob.domain.startp{1,1};
             else
                x = S.prob.domain.startp;
             end
             if any(isnan(x))
                x = zeros(dim,1);
             end
           else
              x = zeros(dim,1);
           end
           %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       else
            error(['error in the ',...
              probCollect,'colection: con is not available',...
             ' in S.prob'])
       end
     else
           error(['error in the ',...
             probCollect,'colection: con is not available',...
             ' in S.prob'])
     end
 else
      error(['error in the ',...
             probCollect,'colection: prob is not available',...
             ' in S'])
 end

  if ismember('hits',fieldS)
     if length(S.hits)==1
        if ~isempty(S.hits{1,1})
            fieldh = fieldnames(S.hits{1,1});
            if ismember('values',fieldh)
               hitInfo.xmin = S.hits{1,1}.values;
            end

            if ismember('obj',fieldh)
               hitInfo.fmin = S.hits{1,1}.obj;
            end
        end
     elseif length(S.hits)>1

      if ~isempty(S.hits{1,1})  
        fieldh = fieldnames(S.hits{1,1});
        if ismember('values',fieldh)
           hitInfo.xmin1 = S.hits{1,1}.values;
        end

        if ismember('obj',fieldh)
           hitInfo.fmin1 = S.hits{1,1}.obj;
        end
      end
     if ~isempty(S.hits{1,2})     
        fieldh = fieldnames(S.hits{1,2});
        if ismember('values',fieldh)
           hitInfo.xmin2 = S.hits{1,2}.values;
        end

        if ismember('obj',fieldh)
           hitInfo.fmin2 = S.hits{1,2}.obj;
        end
     end
     if ~isempty(hitInfo.fmin1)&& ~isempty(hitInfo.fmin2)
       if hitInfo.fmin1<hitInfo.fmin2
          hitInfo.xmin = hitInfo.xmin1; hitInfo.fmin = hitInfo.fmin1;
       end
     elseif isempty(hitInfo.fmin1)&& ~isempty(hitInfo.fmin2)
         hitInfo.xmin = hitInfo.xmin2; hitInfo.fmin = hitInfo.fmin2;
     else
          hitInfo.xmin = hitInfo.xmin1; hitInfo.fmin = hitInfo.fmin1;
     end
     end
   Iinf = find(low==-inf);
   low(Iinf)=-1e20;
   Iinf = find(upp == inf);
   upp(Iinf)=1e20;
 else
       error(['error in the ',...
             probCollect,'colection: hits is not available',...
             ' in S'])        
  end
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
