%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEsort.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function prInfo=TEsort(resdir,soList,selectBy,sortBy);
% creates problem info sorted by selected attributes
%
% input:
%
% resdir         % directory containing result files
% soList{so}     % id of solver number so
% selectBy       % key for selection of problems
%   .dim             %  range of dimensions   
%   .con             %  type of constraints
%   .nf2g2           %  range of second best nf2g
%   .sec2            %  range of second best time sec
%   .solvedByAll     %  1: only those that have solved by all 
%                    %     listed solvers
%                    %  0: those that solved by some listed solvers
%                    %     or have solved by no solver
%   .res             %  1: obtain information from saved information
%                    %     which have obtained by running solvers
%                    %  0: obtain only information from TE.problem
%                    %     without the need to run solvers
%   .listfail        %  failed list
% sortBy          % key for sorting problems
%   .key             %   N: name,  D: dim  E: nfree
%                    %   T: sec2,  F: nf2g2 
%                    %   DEN: dim, nfree and name
%                    %   TNE: sec2, name and nfree, etc.
%                    % 
%   .inc             %   1: increasing order, 0: decreasing order
%
%  TE             % loads data structure for test environment
%                    % obtained by CUTESTvardim
%   .solver.<sol>    %   solver information for solver <sol>
%   .uncon{k}        %   k-th unconstrained problem
%   .listUncon       %   string with names of unconstrained problems
%   .bound{k}        %   k-th bound constrained problem
%   .listBound       %   string with names of bound constrained
%                    %   problems
%   .problem.<prob>  %   problem information for problem <name>
%      .name             %   problem name
%      .dim              %   dimension ([] = variable dimension)
%      .nc               %   number of constraints other than bounds
%                        %   ([] = variable number)
%                        %   the bounds themselves are in hitlist
%      .class            %   classification
%                        %   The CUTE classification scheme is
%                        %   described in
%           %   http://www.cutest.rl.ac.uk/Problems/classification.shtml
%      .obj              %   type of objective function
%                        %   N  no objective function is defined
%                        %   C  objective function is constant 
%                        %   L  objective function is linear
%                        %   Q  objective function is quadratic
%                        %   S  objective function is a sum of squares
%                        %   O  objective function is none of the above
%      .con              %   type of constraints
%                        %   U  unconstrained, 
%                        %   X  only constraints are fixed variables, 
%                        %   B  only constraints are bounds on variables
%                        %   N  only linear network constraints
%                        %   L  constraints are linear 
%                        %   Q  constraints are quadratic
%                        %   O  more general than any of the above alone
%      .sm               %   smoothness
%                        %   R  problem is regular: first and second 
%                        %   derivatives exist and are continuous 
%                        %   everywhere
%                        %   I  the problem is irregular
%      .der              %   number of derivatives available (0, 1, or 2)
%
% output:
% 
% prInfo             % structure with problem information
%   .id{pr}          %   id of problem number pr
%   .info{pr}        %   information for problem number pr
%      .name             %   problem name
%      .dim              %   dimension 
%      .con              %   0: unconstrained, 1: bound constrained,
%                        %   2: general constrained
%      .sec              %   best time
%      .nf               %   best nf          
%      .solvedByAll      %   1: only those that have solved by all 
%                        %   listed solvers
%                        %   0: those that have solved by some listed
%                           solvers or have solve by no solver
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function prInfo=TEsort(resdir,soList,selectBy,sortBy);

function prInfo=TEsort(resdir,soList,selectBy,sortBy)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Check the input arguments for errors %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if ~isfield(selectBy,'res')
   message = ['selectBy.res should exist'];
   disp(message)
   return
end

if ~ismember(selectBy.res,[0 1])
   message = ['selectBy.res should be 0 or 1'];
   disp(message)
   return
end


if selectBy.res==0
   if ~isfield(selectBy,'dim') && ~isfield(selectBy,'con') 
      message = ['selectBy should not be impty'];
      disp(message)
      return
   end
   
   if isfield(selectBy,'dim')
    
       if length(selectBy.dim)~=2
          message = ['length selectBy.dim should be 2'];
          disp(message)
          return
       end

       if (~ isreal(selectBy.dim(1)) || ~ isreal(selectBy.dim(2))) ...
           && (selectBy.dim(1)>0)&&(selectBy.dim(2)>0)
 
          message = ['selectBy.dim takes only real numbers', ...
                     ' grater than 0'];
          disp(message)
          return
       end  

       if selectBy.dim(1)> selectBy.dim(2)
           message = ['selectBy.dim(1) shoulde be smaller', ...
                      ' than or equal selectBy.dim(2)'];
           disp(message)
           return
       end  
    
   end

   if isfield(selectBy,'con')
       if length(selectBy.con)~=2
          message = ['length selectBy.con should be 2'];
          disp(message)
          return
       end

       if~ismember(selectBy.con(1),[0 1 2])|| ...
         ~ismember(selectBy.con(2),[0 1 2])
         message = ['selectBy.con(1) should be to belong', ... 
                    ' to {0,1,2}'];
         disp(message)
         return
       end
   end
      
end

    
if selectBy.res==1
    
    if ~isfield(selectBy,'dim') && ~isfield(selectBy,'con') && ...
       ~isfield(selectBy,'nf') && ~ isfield(selectBy,'sec') ...

       message = ['selectBy should not be impty'];
       disp(message)
      return
    end
    
    if ~isfield(selectBy,'solvedByAll')
       message = ['selectBy.solvedByAll should exist'];
       disp(message)
       return
    end

    if isfield(selectBy,'dim')
    
         if length(selectBy.dim)~=2
            message = ['length selectBy.dim should be 2'];
            disp(message)
            return
         end

         if (~ isreal(selectBy.dim(1)) || ~ isreal(selectBy.dim(2))) ...
            && (selectBy.dim(1)>0)&&(selectBy.dim(2)>0)
 
           message = ['selectBy.dim takes only real numbers',... 
                      ' grater than 0'];
           disp(message)
           return
         end  

          if selectBy.dim(1)> selectBy.dim(2)
              message = ['selectBy.dim(1) shoulde be smaller', ...
                         ' than or equal selectBy.dim(2)'];
              disp(message)
              return
          end  
    
    end

    if isfield(selectBy,'con')
       if length(selectBy.con)~=2
          message = ['length selectBy.con should be 2'];
          disp(message)
          return
       end

        if~ismember(selectBy.con(1),[0 1 2])|| ...
          ~ismember(selectBy.con(2),[0 1 2])
          message = ['selectBy.con(1) should be to belong',...
                    ' to {0,1,2} '];
          disp(message)
          return
        end
    end

    if isfield(selectBy,'nf')
    
        if length(selectBy.nf)~=2
           message = ['length selectBy.nf should be 2'];
           disp(message)
           return
        end

        if (~ isreal(selectBy.nf(1)) || ...
            ~ isreal(selectBy.nf(2))) && ...
            ~ (selectBy.nf(1)>0)&&(selectBy.nf(2)>=0)
           message = ['selectBy.nf takes only real numbers',...
                      ' grater than 0'];
           disp(message)
           return
        end 
   

         if selectBy.nf(1)>selectBy.nf(2)
            message = ['selectBy.nf(1) shoulde be smaller', ...
                       ' than or equal selectBy.nf(2)'];
            disp(message)
            return
         end 
   
    end

    if  isfield(selectBy,'sec') 

        if length(selectBy.sec)~=2
           message = ['length selectBy.sec should be 2'];
           disp(message) 
           return
        end

        if (~ isreal(selectBy.sec(1)) || ...
            ~ isreal(selectBy.sec(2))) && ...
            ~ (selectBy.sec(1)>=0)&&(selectBy.sec(2)>0)
 
           message = ['selectBy.sec takes only real', ...
                      ' numbers grater than 0'];
           disp(message)
           return
        end  

        if selectBy.sec(1)>selectBy.sec(2)
            message = ['selectBy.sec(1) shoulde be smaller',...
                       ' than or equal selectBy.sec(2)'];
           disp(message)
           return
        end 
    
    end

     if length(selectBy.solvedByAll)~=1
         message = ['length selectBy.solvedByAll should be 1'];
         disp(message)
        return
     end

    if ~ismember(selectBy.solvedByAll,[0 1])
        message = ['selectBy.solvedByAll should be 0 or 1'];
        disp(message)
        return
    end

    if ~isfield(sortBy,'key')
        message = ['sortBy.key should exist impty'];
        disp(message)
        return
    end

     if ~ ischar(sortBy.key)
        message = ['sortBy.key should be char'];
        disp(message)
        return
     end

     if ~isfield(sortBy,'inc')
         message = ['sortBy.inc should exist impty'];
         disp(message)
         return
     end

     if length(sortBy.key)>3 || length(sortBy.key)==0
         message = ['length sortBy.inc should be 1'];
         disp(message)
         return
     end

     if length(sortBy.inc)~=1
        message = 'length sortBy.inc should be 1';
        disp(message)
       return
     end
     % generates a list from all cases possible for key
     list1=cell(0);
     for i=1:3
         v = ['N','D','T','F','E'];
         index=1:length(v);
         LL=nchoosek(index,i);
         AA=cell(0);
         for j=1:length(LL)
             AA=[AA v(LL(j,:))];
         end
         list1=[list1,AA];
     end
          
     for i=1:length(list1)
         if length(list1{i})>1 
            BB=perms(list1{i});
            for i=1:length(BB)
                if ~ ismember(BB(i,:),list1)
                    list1=[list1,BB(i,:)];
                end
            end
         end
     end

      if ~ismember(sortBy.key,list1)
           message = ['sortBy.key has not supposed'];
           disp(message)
           return
      end

      if ~ismember(sortBy.inc,[0 1])
          message = ['sortBy.inc can only take 0 or 1'];
          disp(message)
          return
      end
end



% generates a list from all cases possible for key when selectBy.res=0
list2=cell(0);
for i=1:3
   v=['N','D','T','F','E'];
   index=1:length(v);
   indexM=nchoosek(index,i);
   AA=cell(0);
   for j=1:length(indexM)
       AA=[AA v(indexM(j,:))];
   end
   list2=[list2,AA];
end
     
for i=1:length(list2)
    if length(list2{i})>1 
       BB=perms(list2{i});
       for i=1:length(BB)
           if ~ ismember(BB(i,:),list2)
                list2=[list2,BB(i,:)];
           end
       end
    end
end

CC=cell(0);
for i=1:length(list2)
    if ~ isempty(strfind(list2{i},'T'))||...
       ~ isempty(strfind(list2{i},'F'))
       CC=[CC list2{i}];
    end
end

list2=CC;
if selectBy.res==0 && ismember(sortBy.key,list2)
    message = ['TEsort dont work for selectBy.res=0 since', ...
               ' there exists no saved data'];
    disp(message)
    return
end
% load test environment

global CUTESTpath SOLpath TEpath RESpath HITpath PDFpath RESdiary 
% CUTESTpath    % path to CUTEST directory
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis
% WORKpath      % path for directory where TE is run (not global)
% RESdiary      % relative path of result diary (set locally)


TE.problem=[];

fil=[TEpath,'/TE.mat'];
eval(['load ',fil]);
RowNames =fieldnames(TE.problem)';

ind = [];
% there is a wrong file in the Cutest hitlist which is ignored here
for i = 1: length(RowNames)
  if ~isempty(strfind(RowNames{i},'TORSION111')) || ~isempty(strfind(RowNames{i},'BLEACHNG'))
    ind(end+1) = i;
  end
end
RowNames(ind) = [];


if isfield(soList,'list1')
   TE.solver= soList.list1; 
else
   TE.solver= soList;
end

if selectBy.res==1
  TEanalysis(soList,resdir,selectBy.gradacc,RowNames,TE);
  fil=[TEpath,'/TE.mat'];
  eval(['load ',fil]);
end

pr           = 0;
prInfo.info  = cell(0);
prInfo.id    = cell(0);
info1=cell(0);
id1=cell(0);



ii=0;
for field=1:length(RowNames)
    ii = ii+1;
    prob          = RowNames{field};
    probInfo      = getfield(TE.problem,prob);

  switch num2str(selectBy.res)
      case '1' 
           % obtain information from saved information
           %  which have obtained by running solvers 
       
          % locate test results
     
         fil=[RESpath,'/',resdir,'/',prob,'.mat'];
 
         % exdata=1;
         if exist(fil)~=2
            % result file does not exist; skip problem
            disp(['skipped ',prob,' (no file)']);
            continue; 
         end
         % load file
         eval(['load ',fil]);
         
     
         if exist(prob)==0
            % result structure not found; skip problem
            disp(['skipped ',prob,' (no results)']);
            continue; 
         end
         
         if isfield(selectBy,'listfail')
            if ~ ismember(prob,selectBy.listfail)
               % result file does not belong to listfail;
               disp(['skipped ',prob,' (no file)']);
               continue;  
            end
         end
         
         %if ~strcmp(probInfo.obj,'O'), continue;end
             
             
         eval(['data=',prob,';']);
 
          switch probInfo.con
               case 'U'
                    eval(['data1.con=0;']); 
               case 'X' 
                    eval(['data1.con=1;']); 
              case  'B'
                    eval(['data1.con=1;']);  
               otherwise
                   eval(['data1.con=2;']);
          end

          if isfield(data,'probDesc')
             low=data.probDesc.low;
             upp=data.probDesc.upp;


             isfield(data,sortBy.refsolver)
             
             
             if isfield(data,sortBy.refsolver)
                 
                                     
                sol= getfield(data,sortBy.refsolver);
                x  = sol.xbest;
                if length(x)~=length(upp)
                   disp('results file not correct')
                   nact = probInfo.dim;
                else
                   nfree=sum(x>low & x<upp)
                   nact = probInfo.dim-nfree;
                end
                
             else
                if probInfo.dim <=selectBy.dim(2)&& probInfo.dim>=selectBy.dim(1)
                 error(['there is no data for ',sortBy.refsolver,' change refsolver'])
                end
             end
          else
              error('there is no data in probDesc, bug in CUTESTrun')
          end
          
         
          
          eval(['data1.nact=nact;']);
          eval(['data1.name=probInfo.name;']); 
          eval(['data1.dim=probInfo.dim;']);
          eval(['data1.nf=probInfo.run.best.nf;']);
          eval(['data1.solvedByAll=probInfo.run.best.solvedByAll;']);
          eval(['data1.sec=probInfo.run.best.sec;']);
          eval(['data1.nfree=nfree;']); 
           switch probInfo.con
               case 'U'
                    eval(['data1.con=0;']); 
               case 'X' 
                   eval(['data1.con=1;']); 
               case 'B'
                   eval(['data1.con=1;']);   
               otherwise
                   eval(['data1.con=2;']);
           end
        
           stat =((data1.con==selectBy.con(1)| ...
                  data1.con==selectBy.con(2))&...
                  data1.dim <=selectBy.dim(2) & ...
                  data1.dim >=selectBy.dim(1));
               
           if stat
             pr       =  pr + 1;   
             info1{pr} = data1;
             id1{pr}   = prob;
           end
          
         
         
      case '0'
          

         if isfield(selectBy,'listfail')
            if ~ ismember(prob,selectBy.listfail)
               % result file does not belong to listfail; skip problem
               disp(['skipped ',prob,' (no file)']);
               continue;  
            end
         end
         
  
            % obtain only information from TE.problem
            % in the cases where solvers have not run 
            % still on CUTEst
           eval(['data1.name=probInfo.name;']);   
           eval(['data1.dim=probInfo.dim;']);
           
           
           
           switch probInfo.con
               case 'U'
                    eval(['data1.con=0;']); 
               case 'X' 
                   eval(['data1.con=1;']); 
               case 'B'
                   eval(['data1.con=1;']);   
               otherwise
                   eval(['data1.con=2;']);
           end
           
         
           
       

           stat =((data1.con==selectBy.con(1)| ...
                  data1.con==selectBy.con(2))&...
                  data1.dim <=selectBy.dim(2) & ...
                  data1.dim >=selectBy.dim(1));

           if stat
              pr       =  pr + 1;   
              info1{pr} = data1;
              id1{pr}   = prob;
           end

      otherwise
          selectBy.res
          error('selectBy.res should be 0 or 1')
  end
  
end


if isempty(id1)
    
    disp(['error:id1 should not be impty',...
           '. Check selectBy and sortBy in STATall',...
           'they should be same with selectBy and ',...
           'sortBy used in CUTESTall or there is not',...
           ' any the saved data; first run CUTESTall.'])
    prInfo = [];   
       
       return
end


if length(sortBy.key)==1
    
   switch sortBy.key 
    case 'T'
      varkey = 'sec';
    case 'F'
      varkey = 'nf';
    case 'N'
      varkey = 'name';
    case 'D'
      varkey = 'dim';
    case 'E'
      varkey = 'nact';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
   end

   [prInfo]=sortby1(sortBy,varkey,info1);
  
   
elseif length(sortBy.key)==2

    temp=num2cell(sortBy.key);
    
    switch temp{1}
    case 'T'
      varkey1 = 'sec';
    case 'F'
      varkey1 = 'nf';
    case 'N'
      varkey1 = 'name';
    case 'D'
      varkey1 = 'dim';
    case 'E'
      varkey1 = 'nact';  
       otherwise
         error('no sortBy.key found'); 
   end

    switch temp{2}
    case 'T'
      varkey2 = 'sec';
    case 'F'
      varkey2 = 'nf';
    case 'N'
      varkey2 = 'name';
    case 'D'
      varkey2 = 'dim';
    case 'E'
      varkey2 = 'nact';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
   end

    [prInfo]=sortby2(sortBy,varkey1,varkey2,info1,temp);

elseif length(sortBy.key)==3
      temp=num2cell(sortBy.key);
    
   switch temp{1}
    case 'T'
      varkey1 = 'sec';
    case 'F'
      varkey1 = 'nf';
    case 'N'
      varkey1 = 'name';
    case 'D'
      varkey1 = 'dim';
    case 'E'
      varkey1 = 'nact';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
   end
    
    switch temp{2}
    case 'T'
      varkey2 = 'sec';
    case 'F'
      varkey2 = 'nf';
    case 'N'
      varkey2 = 'name';
    case 'D'
      varkey2 = 'dim';
    case 'E'
      varkey2 = 'nact';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
     end
  
    switch temp{3}
    case 'T'
      varkey3 = 'sec';
    case 'F'
      varkey3 = 'nf';
    case 'N'
      varkey3 = 'name';
    case 'D'
      varkey3 = 'dim';
    case 'E'
      varkey3 = 'nact';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
    end
    
    [prInfo]=sortby3(sortBy,varkey1,varkey2,varkey3,info1,temp);
end

idpr = cell(0);
for i=1:length(prInfo.id)
    idpr = [idpr,prInfo.id{i}];
end

com=['save -mat ',RESpath,'/',resdir,'/idpr.mat idpr'];

eval(com)

end

%%%%%%%%%% function sortby1 %%%%%%%%%

function [prInfo]=sortby1(sortBy,varkey,info1)

n = length(info1);
% sort by time (T), nf2g2 (F), dim(D), nfree(E), name(N)

if sortBy.inc==1
    
  
  while (n > 0)
         new = 0;
         for i = 2:n
             % swap elements 
    
             if ~ strcmp(sortBy.key,'N')
                 flag1=...
                 eval(['info1{i}.',varkey,'< info1{i - 1}.',varkey]);
             else
                 flag1=...
                   eval(['abs(info1{i}.',varkey,'(1))',...
                        '< abs(info1{i - 1}.',varkey,'(1))']); 
             end
             
             if flag1
                val          = info1{i};
                info1{i}     = info1{i - 1};
                info1{i - 1} = val;
                new          = i;
             end
         end
         n = new;
  end
  
else
    
%     eval(['array',varkey,'=[];'])
%     for i=1:length(info1)
%         eval(['array',varkey,'=[array',varkey,', info1{',i,'}.',varkey,']'])
%     end
%     eval(['arrayf = array',varkey])
%     [J,I] = sort(arrayf,'descend')
%     next
%     info0 = info1;
%     for i =1:length(info1)
%         info1{i}=info0{I(i)};
%     end
%     
  
     while (n > 0)
            new = 0;
            for i = 2:n
                % swap elements 
                if ~ strcmp(sortBy.key,'N')
                  flag1=...
                  eval(['info1{i}.',varkey,'> info1{i - 1}.',varkey]);
                else
                  flag1=...
                    eval(['abs(info1{i}.',varkey,'(1))',...
                         '> abs(info1{i - 1}.',varkey,'(1))']); 
                end
                if flag1
                   val          = info1{i};
                   info1{i}     = info1{i - 1};
                   info1{i - 1} = val;
                  new          = i;
                end
            end
            n = new;
     end
end
 
n = length(info1);
for i=1:n
    prInfo.id{i}=info1{i}.name;
end

prInfo.info=info1;
  
end

%%%%%%%%%% function sortby2 %%%%%%%%%

function [prInfo]=sortby2(sortBy,varkey1,varkey2,info1,temp)
n = length(info1);
if sortBy.inc==1
   while (n > 0)
          new = 0;
          for i = 2:n
              if isempty(strfind(sortBy.key,'N')), 
                 flag1= eval(['info1{i}.',varkey1,...
                        '< info1{i - 1}.',varkey1]);
                 if~flag1
                    flag2= eval(['info1{i}.',varkey1,...
                           '== info1{i - 1}.',varkey1]);
                 end
              else
                  if strcmp(temp(1),'N')
                     flag1= eval(['abs(info1{i}.',varkey1,'(1))',...
                         '< abs(info1{i - 1}.',varkey1,'(1))']);
                     if~flag1
                        flag2=...
                         eval(['abs(info1{i}.',varkey1,'(1))',...
                        '== abs(info1{i - 1}.',varkey1,'(1))']);
                     end
                  else
                      flag1= eval(['info1{i}.',varkey1,...
                        '< info1{i - 1}.',varkey1]);
                     if~flag1
                        flag2= eval(['info1{i}.',varkey1,...
                           '== info1{i - 1}.',varkey1]);
                     end
                  end
                      
              end
               
               if flag1
                  val          = info1{i};
                  info1{i}     = info1{i - 1};
                  info1{i - 1} = val;
                  new          = i;
               elseif flag2
                   
                  if isempty(strfind(sortBy.key,'N')),
                     flag3= eval(['info1{i}.',varkey2,...
                            '< info1{i - 1}.',varkey2]);
                  else
                      if strcmp(temp(2),'N')
                        flag3= eval(['abs(info1{i}.',varkey2,'(1))',...
                            '< abs(info1{i - 1}.',varkey2,'(1))']);
                      else
                        flag3= eval(['info1{i}.',varkey2,...
                            '< info1{i - 1}.',varkey2]);
                      end
                      
                  end
                  
                  if flag3
                     val          = info1{i};
                     info1{i}     = info1{i - 1};
                     info1{i - 1} = val;
                     new          = i;
                  end
               end
              
          end
          n = new;
  end
  
else
      while (n > 0)
          new = 0;
          for i = 2:n
              
              if isempty(strfind(sortBy.key,'N')), 
                 flag1= eval(['info1{i}.',varkey1,...
                        '> info1{i - 1}.',varkey1]);
                 if~flag1
                    flag2= eval(['info1{i}.',varkey1,...
                           '== info1{i - 1}.',varkey1]);
                 end
                 
              else
                  if strcmp(temp(1),'N')
                     flag1= eval(['abs(info1{i}.',varkey1,'(1))',...
                          '> abs(info1{i - 1}.',varkey1,'(1))']);
                      if~flag1
                        flag2= eval(['abs(info1{i}.',varkey1,'(1))',...
                            '== abs(info1{i - 1}.',varkey1,'(1))']);
                      end
                  else
                     flag1= eval(['info1{i}.',varkey1,...
                        '> info1{i - 1}.',varkey1]);
                     if~flag1
                        flag2= eval(['info1{i}.',varkey1,...
                           '== info1{i - 1}.',varkey1]);
                     end 
                      
                  end
              end
               
               if flag1
                  val          = info1{i};
                  info1{i}     = info1{i - 1};
                  info1{i - 1} = val;
                  new          = i;
               elseif flag2
                   
                  if isempty(strfind(sortBy.key,'N')),
                     flag3= eval(['info1{i}.',varkey2,...
                            '> info1{i - 1}.',varkey2]);
                  elseif strcmp(temp(2),'N')
                     flag3= eval(['abs(info1{i}.',varkey2,'(1))',...
                            '> abs(info1{i - 1}.',varkey2,'(1))']);
                  end
                  
                  if flag3
                     val          = info1{i};
                     info1{i}     = info1{i - 1};
                     info1{i - 1} = val;
                     new          = i;
                  end
               end
              
          end
          n = new;
      end
     
end
        
n = length(info1);
for i=1:n
     prInfo.id{i}=info1{i}.name;
end
prInfo.info=info1;  

end

%%%%%%%%%% function sortby3 %%%%%%%%%

function [prInfo]=sortby3(sortBy,varkey1,varkey2,varkey3,info1,temp)

n = length(info1);
if sortBy.inc==1
   while (n > 0)
          new = 0;
          for i = 2:n
              if isempty(strfind(sortBy.key,'N')), 
                 flag1= eval(['info1{i}.',varkey1,...
                       '< info1{i - 1}.',varkey1]);
                 if~flag1
                    flag2= eval(['info1{i}.',varkey1,...
                       '== info1{i - 1}.',varkey1]);
                 end
              else
                  if strcmp(temp(1),'N')
                     flag1= eval(['abs(info1{i}.',varkey1,'(1))',...
                          '< abs(info1{i - 1}.',varkey1,'(1))']);
                     if~flag1
                        flag2= eval(['abs(info1{i}.',varkey1,'(1))',...
                            '== abs(info1{i - 1}.',varkey1,'(1))']);
                     end
                  else
                     flag1= eval(['info1{i}.',varkey1,...
                       '< info1{i - 1}.',varkey1]);
                     if~flag1
                       flag2= eval(['info1{i}.',varkey1,...
                         '== info1{i - 1}.',varkey1]);
                     end
                  end
              end
               
               if flag1
                  val          = info1{i};
                  info1{i}     = info1{i - 1};
                  info1{i - 1} = val;
                  new          = i;
               elseif flag2
                   
                   if isempty(strfind(sortBy.key,'N')),
                     flag3= eval(['info1{i}.',varkey2,...
                            '< info1{i - 1}.',varkey2]);
                     if~flag3
                       flag4= eval(['info1{i}.',varkey2,...
                              '== info1{i - 1}.',varkey2]);
                    end
                   else
                       if strcmp(temp(2),'N')
                          flag3= eval(['abs(info1{i}.',...
                           varkey2,'(1))','< abs(info1{i - 1}.',...
                           varkey2,'(1))']);
                          if~flag3
                             flag4= eval(['abs(info1{i}.',...
                             varkey2,'(1))','== abs(info1{i - 1}.',...
                             varkey2,'(1))']);
                          end
                       else
                          flag3= eval(['abs(info1{i}.',varkey2,'(1))',...
                          '< abs(info1{i - 1}.',varkey2,'(1))']);
                           if~flag3
                             flag4= eval(['abs(info1{i}.',varkey2,...
                             '(1))','== abs(info1{i - 1}.',...
                             varkey2,'(1))']);
                          end
                       end
                   end 
                  
                   if flag3
                      val          = info1{i};
                      info1{i}     = info1{i - 1};
                      info1{i - 1} = val;
                      new          = i;
                   elseif flag4
                         if isempty(strfind(sortBy.key,'N')),
                           flag5= eval(['info1{i}.',varkey3,...
                                 '< info1{i - 1}.',varkey3]);
                         else
                             if strcmp(temp(3),'N')
                               flag5= eval(['abs(info1{i}.',...
                               varkey3,'(1))','< abs(info1{i - 1}.',...
                               varkey3,'(1))']);
                             else
                                 flag5= eval(['info1{i}.',varkey3,...
                                 '< info1{i - 1}.',varkey3]);
                             end
                         end
                         if flag5
                           val          = info1{i};
                           info1{i}     = info1{i - 1};
                           info1{i - 1} = val;
                           new          = i; 
                         end
                    end
               end
                                    
          end
          n = new;
  end
  
else
   while (n > 0)
         new = 0;
         for i = 2:n
             if isempty(strfind(sortBy.key,'N')), 
                 flag1= eval(['info1{i}.',varkey1,...
                        '> info1{i - 1}.',varkey1]);
                 if~flag1
                    flag2= eval(['info1{i}.',varkey1,...
                           '== info1{i - 1}.',varkey1]);
                 end
             else
                 if strcmp(temp(1),'N')
                   flag1= eval(['abs(info1{i}.',varkey1,'(1))',...
                          '> abs(info1{i - 1}.',varkey1,'(1))']);
                   if~flag1
                     flag2= eval(['abs(info1{i}.',varkey1,'(1))',...
                            '== abs(info1{i - 1}.',varkey1,'(1))']);
                   end
                 else
                     flag1= eval(['info1{i}.',varkey1,...
                        '> info1{i - 1}.',varkey1]);
                     if~flag1
                        flag2= eval(['info1{i}.',varkey1,...
                        '== info1{i - 1}.',varkey1]);
                     end
                     
                 end
              end
               
               if flag1
                  val          = info1{i};
                  info1{i}     = info1{i - 1};
                  info1{i - 1} = val;
                  new          = i;
               elseif flag2
                   
                   if isempty(strfind(sortBy.key,'N')),
                     flag3= eval(['info1{i}.',varkey2,...
                            '> info1{i - 1}.',varkey2]);
                     if~flag3
                       flag4= eval(['info1{i}.',varkey2,...
                              '== info1{i - 1}.',varkey2]);
                    end
                   else
                       if strcmp(temp(2),'N')
                       flag3= eval(['abs(info1{i}.',varkey2,'(1))',...
                             '> abs(info1{i - 1}.',varkey2,'(1))']);
                        if~flag3
                           flag4= eval(['abs(info1{i}.',...
                           varkey2,'(1))','== abs(info1{i - 1}.',...
                           varkey2,'(1))']);
                        end
                       else
                           
                           flag3= eval(['abs(info1{i}.',...
                           varkey2,'(1))','> abs(info1{i - 1}.',...
                           varkey2,'(1))']);
                          if~flag3
                             flag4= eval(['abs(info1{i}.',...
                             varkey2,'(1))','== abs(info1{i - 1}.',...
                             varkey2,'(1))']);
                          end
                       end
                   end 
                  
                   if flag3
                      val          = info1{i};
                      info1{i}     = info1{i - 1};
                      info1{i - 1} = val;
                      new          = i;
                   elseif flag4
                         if isempty(strfind(sortBy.key,'N')),
                           flag5 = eval(['info1{i}.',varkey3,...
                                  '> info1{i - 1}.',varkey3]);
                         else
                             if strcmp(temp(3),'N')
                               flag5  = eval(['abs(info1{i}.',...
                               varkey3,'(1))','> abs(info1{i - 1}.',...
                               varkey3,'(1))']);
                             else
                                flag5 = eval(['info1{i}.',varkey3,...
                                 '> info1{i - 1}.',varkey3]);
                             end
                         end
                          
                         if flag5
                           val          = info1{i};
                           info1{i}     = info1{i - 1};
                           info1{i - 1} = val;
                           new          = i; 
                         end
                    end
               end
                                    
          end
          n = new;
  end
     
end
  
n = length(info1);
for i=1:n
     prInfo.id{i}=info1{i}.name;
end
prInfo.info=info1;  

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

