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
function Tablenoise=STATanalysisNoise(resdir,optcrit,solverlist,problemlist,...
         selectBy,sortBy,TableEffPart,datasaved,loadfigs,infomax,glob)

global RESpath bbo

if nargin<10, 
  glob=0;
end;


refsolver1=solverlist.refsolver1;
solverlist1=solverlist.list1 ;

selectBy0 = selectBy;
sortBy0   = sortBy;


flagall = selectBy.con(1)==0 & selectBy.con(2)==1;
flagun  = selectBy.con(1)==0 & selectBy.con(2)==0;
flagbox = selectBy.con(1)==1 & selectBy.con(2)==1;
plots=1;        % create plots?
                %   0: almost nothing, 1: little, >1: more and more
%%% plots=2 does currently not work
                
% latex file to be generated 
filname='results';
texf=[filname,'.tex']; 

if ~bbo
   disp('run gradient-based algorithms on CUTEst')
else
    disp('run gradient-free algorithms on CUTEst');
end

if datasaved ==0
   
    
disp('run STATcollect to generate initial table')
      

problemlist,solverlist1,resdir,refsolver1

[table0,failInfo,statInfo]=...
    STATcollect(problemlist,solverlist1,resdir,infomax,refsolver1)


if plots>1,  
  % make some figures
  mkPlots, 
end;

disp('run STATtable to generate an initial formatted and normalized table')

Tablenoise = STATtableNoise(table0,resdir,optcrit,selectBy0.sec2(2),...
         selectBy0.nf2g2(2),glob);
     
     



fil = [RESpath,'/',resdir,'/Tablenoise.mat'];
save(fil) 


else
    disp('load AllTable')
    fil = [RESpath,'/',resdir,'/Tablenoise.mat'];
    load(fil) 
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
