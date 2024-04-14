%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% STATanalysis.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function STATanalysis(resdir,optcrit,solverlist,selectBy,sortBy,glob)
%
% analysis of results from CUTESTruns.m
%
% resdir            % directory containing result files
% optcrit           % desired accuracy
% solverlist        % list of solvers according to LMwrapper.m
% selectBy          % info for selection of problems
%   .dim            %   range of dimensions   
%   .con            %   range of constraints
%   .nf2g2          %   range of second best nf2g
%   .sec2           %   range of second best time sec
%   .solvedByAll    %   1: only those that have solved by all 
%                   %      listed solvers
%                   %   0: those that solved by some listed solvers
%                   %      or have solved by no solver
%   .res            %   1: obtain information from saved information
%                   %      which have obtained by running solvers
%                   %   0: obtain only information from TE.problem
%                   %      without the need to run solvers
% sortBy            % info for sorting problems
%   .key            %   sort key
%                   %     N: name,  D: dim
%                   %     T: sec2, F: nf2g2 
%                   %     DN: dim and name
%                   %     TN: sec2 and name, etc.
%   .inc            %   1: increasing order, 0: decreasing order
% glob	            % perform global solver analysis?
%
function STATanalysis(solverlist,problemlist,selectBy,sortBy,info)

global RESpath bbo


resdir   = info.resdir; 
%loadfigs = info.loadfigs; 
optcrit  = info.optcrit;
TableEffPart = info.TableEffPart;
datasaved = info.datasaved;
infomax   = info.infomax;

if isfield(solverlist,'refsolver1')
   refsolver1  = solverlist.refsolver1;
   solverlist1 = solverlist.list1 ;
else
    refsolver1= sortBy.refsolver;
    solverlist1 = solverlist;
end



selectBy0  = selectBy;
sortBy0    = sortBy;


flagall = selectBy.con(1)==0 & selectBy.con(2)==1;
flagun  = selectBy.con(1)==0 & selectBy.con(2)==0;
flagbox = selectBy.con(1)==1 & selectBy.con(2)==1;


               
if ~bbo
   disp('run gradient-based algorithms on CUTEst')
else
   disp('run gradient-free algorithms on CUTEst');
end



if TableEffPart
    
    
if datasaved ==0
    

disp('run STATcollect to generate initial table')
      


[table0,failInfo,statInfo]=...
    STATcollect(problemlist,solverlist1,resdir,infomax,refsolver1)
  

for i=1:4
    switch i
        case 1
            disp(['run STATtable to generate an initial formatted',...
                  ' and normalized table']);
             table0.message = ''; 
             table1         = STATtable(table0,resdir,optcrit);
             table0.mindim  = 1;
             table0.maxdim  = selectBy0.dim(2);
             tableinit      = table0;

        case 2
              
              disp('run STATallTab to generate time tables')
              tableinit.bmsec = table1.bmsec;
              
              if flagall
                 tableinit.message = 'all:all';
   
              AllTable0         = STATallTab(tableinit,resdir,...
                                  selectBy.dim,optcrit);
              AllTable.tableu   = AllTable0.tableu;
              AllTable.tableb   = AllTable0.tableb;
                  
               elseif flagun 
  
              tableinit.message = 'all:un';
              AllTable0 = STATallTab(tableinit,resdir,...
                       selectBy.dim,optcrit);
     
   
              elseif  flagbox
               tableinit.message = 'all:box'; 
              AllTable0 = STATallTab(tableinit,resdir,...
                       selectBy.dim,optcrit);
                  
              else
                   error('error in choosing selectBy.con')
              end
              
               if isfield(AllTable0,'tablet1')
                   AllTable.tablet1   = AllTable0.tablet1;
               end
               if isfield(AllTable0,'tablet2')
                   AllTable.tablet2  = AllTable0.tablet2;
               end
               if isfield(AllTable0,'tablet3')
                   AllTable.tablet3   = AllTable0.tablet3;
               end
               if isfield(AllTable0,'tablet4')
                   AllTable.tablet4  = AllTable0.tablet4;
               end
            
            
            
        case 3
            
            disp('run STATallTab to generate dim tables')
            
            
           

            if flagall
               tableinit.message = 'all:dim';
            elseif flagun 
               tableinit.message = 'un:dim';
            elseif  flagbox
               tableinit.message = 'box:dim'; 
            else
               error('error in choosing selectBy.con')
            end
            
            
            for p=1:length(info.classdim)
                
                info.classdim
                dim(1) = info.classdim{p}(1);
                dim(2) = info.classdim{p}(2);
                
                
                AllTabledim = STATallTab(tableinit,resdir,dim,optcrit);

                
                if ~isempty(AllTabledim)
                  eval(['AllTable.tabled',char(num2str(p)),...
                       '= AllTabledim.tabled']);
                end
              
            end
            
            
  
        case 4
            
            disp('call STATplot')
            
         
            info.secmax = selectBy0.sec(2);
            info.nf2gmax  = selectBy0.nf(2);
            info.fig = 2;
            
            table0=STATplot(selectBy,table1,info);        
        
            table0.mindim  = 1;
            table0.maxdim  = selectBy0.dim(2);
            AllTable.table0 = table0;

    end
end


disp('save AllTable')
fil = [RESpath,'/',resdir,'/AllTable.mat'];
save(fil) 
else
    disp('load AllTable0 -- AllTable')
    
    fil = [RESpath,'/',resdir,'/AllTable.mat'];
    load(fil) 
end 

    
else
    
   

if datasaved ==0
   
    
disp('run STATcollect to generate initial table')
      




[table0,failInfo,statInfo]=...
    STATcollect(problemlist,solverlist1,resdir,infomax,refsolver1)



disp(['run STATtable to generate an initial formatted',...
    ' and normalized table'])

table0 = STATtable(table0,resdir,optcrit);

table0.mindim  = 1;
table0.maxdim  = selectBy.dim(2);
info.fig = 2;

disp('call STATplot')
table0
table0=STATplot(selectBy,table0,info);

            
            
disp('run STATallTab to generate AllTable0')


if flagall
   table0.message = 'all:all';
   AllTable0 = STATallTab(table0,resdir,selectBy.dim,optcrit);
   AllTable.tableu   = AllTable0.tableu;
   AllTable.tableb   = AllTable0.tableb;
    if isfield(AllTable0,'tablet1')
      AllTable.tablet1   = AllTable0.tablet1;
   end
   if isfield(AllTable0,'tablet2')
      AllTable.tablet2  = AllTable0.tablet2;
   end
   AllTable.table0 = table0;
elseif flagun 
   table0.message = 'all:un';
   AllTable0 = STATallTab(table0,resdir,selectBy.dim,optcrit);
    if isfield(AllTable0,'tablet1')
      AllTable.tablet1   = AllTable0.tablet1;
   end
   if isfield(AllTable0,'tablet2')
      AllTable.tablet2  = AllTable0.tablet2;
   end
   AllTable.tableu = AllTable0.tableu;
elseif  flagbox
   table0.message = 'all:box'; 
   AllTable0 = STATallTab(table0,resdir,selectBy.dim,optcrit);
    if isfield(AllTable0,'tablet1')
      AllTable.tablet1   = AllTable0.tablet1;
   end
   if isfield(AllTable0,'tablet2')
      AllTable.tablet2  = AllTable0.tablet2;
   end
   AllTable.tableb = AllTable0.tableb;
else
    error('error in choosing selectBy.con')
end   



    

fil = [RESpath,'/',resdir,'/AllTable.mat'];
save(fil) 


else
    disp('load AllTable')
    fil = [RESpath,'/',resdir,'/AllTable.mat'];
    load(fil) 
end

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



disp('generate latex')

% generate latex
STATlatex(AllTable,selectBy0,sortBy0,info);    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
