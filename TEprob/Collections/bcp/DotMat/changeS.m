%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%  changeS.m  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% author: Romana Jezek

% date: 2022/07/08


files=dir('*.mat')

for i = 1: length(files)
    name = files(i).name
    load(name,'S')
    if isfield(S,'prob')
      if isfield(S.prob,'con')
         if iscell(S.prob.con)
           if isempty(S.prob.con)
              S.prob.con = struct()
           else
              fields = {}
              for j = 1:size(S.prob.con,2)
                  fields{j} = ['data',num2str(j)];
               end
              S.prob.con = cell2struct(S.prob.con, fields, 2)
           end 
          end
          save(name,'S') 
       else
          disp([name,': prob does not have con'])
       end
     else
       disp([name,' does not have prob'])
     end
end



