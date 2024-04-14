%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% getTestInfo.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
function [] = getTestInfo()

  fieldS = fieldnames(S);


 if ismember('prob',fieldS)

     if isfield(S.prob,'con') 

          fieldC = fieldnames(S.prob.con{1,1});

         if ismember('nol',fieldC)
             cfunc = S.prob.con{1,1}.nol;
         else
             error(['error in ',probnam,' in the ',...
             probCollect,'colection: nol is not available',...
             ' in S.prob.con'])
         end

         if ismember('lb',fieldC)
             lc = S.prob.con{1,1}.lb;
         else
              error(['error in ',probnam,' in the ',...
             probCollect,'colection: lb is not available',...
             ' in S.prob.con'])
         end

          if ismember('ub',fieldC)
             uc = S.prob.con{1,1}.ub;
          else
             error(['error in ',probnam,' in the ',...
             probCollect,'colection: ub is not available',...
             ' in S.prob.con'])
         end

     else
           error(['error in the ',...
             probCollect,'colection: con is not available',...
             ' in S.prob'])
     end

     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     if isfield(S.prob,'obj') 

          fieldO = fieldnames(S.prob.obj);

         if ismember('nol',fieldO)
             func = S.prob.obj.nol;
         else
             error(['error in ',probnam,' in the ',...
             probCollect,'colection: nol is not available',...
             ' in S.prob.obj'])
         end

         if ismember('sense',fieldO)
             sense = S.prob.obj.sense;
         else
              error(['error in ',probnam,' in the ',...
             probCollect,'colection: sense is not available',...
             ' in S.prob.obj'])
         end

          if ismember('const',fieldO)
             const = S.prob.obj.const;
          else
             error(['error in ',probnam,' in the ',...
             probCollect,'colection: const is not available',...
             ' in S.prob.obj'])
         end
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
         else
              error(['error in ',probnam,' in the ',...
             probCollect,'colection: lb is not available',...
             ' in S.prob.con'])
         end

          if ismember('ub',fieldD)
             upp = S.prob.domain.ub;
          else
             error(['error in ',probnam,' in the ',...
             probCollect,'colection: ub is not available',...
             ' in S.prob.con'])
          end

           if ismember('startp',fieldD)
             x = S.prob.domain.startp{1,1};
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
      length(S.hits)
    if length(S.hits)==0
        xmin = [];
        fmin = [];
    elseif length(S.hits)==1

        if ~isempty(S.hits{1,1})
            fieldh = fieldnames(S.hits{1,1});
            if ismember('values',fieldh)
               xmin = S.hits{1,1}.values;
            else
                xmin = [];
            end

            if ismember('obj',fieldh)
               fmin = S.hits{1,1}.obj;
            else
                fmin = [];
            end
        else
            xmin = []; fmin = [];
        end
    else

      if ~isempty(S.hits{1,1})  
        fieldh = fieldnames(S.hits{1,1});
        if ismember('values',fieldh)
           xmin1 = S.hits{1,1}.values;
        else
            xmin1 = [];
        end

        if ismember('obj',fieldh)
           fmin1 = S.hits{1,1}.obj;
        else
            fmin1 = [];
        end

      else
          fmin1 = []; xmin1 = [];
      end
     if ~isempty(S.hits{1,2})     
        fieldh = fieldnames(S.hits{1,2});
        if ismember('values',fieldh)
           xmin2 = S.hits{1,2}.values;
        else
            xmin2 = [];
        end

        if ismember('obj',fieldh)
           fmin2 = S.hits{1,2}.obj;
        else
            fmin2 = [];
        end
     else
          xmin2 = [];  fmin2 = [];
     end
     if ~isempty(fmin1)& ~isempty(fmin2)
       if fmin1<fmin2
          xmin = xmin1; fmin = fmin1;
       else
           xmin = xmin2; fmin = fmin2;
       end

     elseif isempty(fmin1)& ~isempty(fmin2)
         xmin = xmin2; fmin = fmin2;
     else
          xmin = xmin1; fmin = fmin1;
     end
    end

 else
       error(['error in the ',...
             probCollect,'colection: hits is not available',...
             ' in S'])        
  end
