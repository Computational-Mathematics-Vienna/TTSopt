%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% GenMixIntTE.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% generate TE.mat and TEmint for any collection of the test problems
% with continuous and mixed-integer variables, respectively
%

clear

username='home/romana/OctaveWorkSpace';

probcollect = 'sluksan';

if ~strcmp(probcollect,'CUTEstMint')
   Table2TE(username,probcollect);
   
end


switch probcollect
    
    case 'CUTEstMint'
       TEpath  = ['/',username,'/TEallFinal/TEprob/Collections/CUTEST/TEmint'];
    otherwise
     TEpath  = ['/',username,...
         '/TEallFinal/TEprob/Collections/',probcollect];   
    
end

TEfilenam = '/TE.mat';

eval(['load ',TEpath,TEfilenam]);
 
 RowNames = fieldnames(TE.problem)';
 
 np = length(RowNames);
 
 for i=1:np
     prob      = RowNames{i}
     probInfo  = getfield(TE.problem,prob);
     n         = probInfo.dim;
     if n>=2
        switch n
            case   2
                 probInfo.name  = [prob,'_MI_i1_c1'];
                 indMI          = [0 1];
                 probInfo.indMI = indMI;
                 
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                TE.problem=rmfield(TE.problem,prob);
               
            case   3
               
                 
                 probInfo.name  = [prob,'_MI1_i1_c2'];
                 indMI          = [0 1 0];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 probInfo.name  = [prob,'_MI2_i2_c1'];
                 indMI          = [0 1 1];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 
                TE.problem=rmfield(TE.problem,prob);
                
                
 
                 
            case   4
                
                 probInfo.name  = [prob,'_MI1_i2_c2'];
                 indMI          = [0 0 1 1];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 probInfo.name  = [prob,'_MI2_i3_c1'];
                 indMI          = [0 1 1 1];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 probInfo.name  = [prob,'_MI3_i1_c3'];
                 indMI          = [0 0 0 1];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 TE.problem=rmfield(TE.problem,prob);
                
                
 
            case 5
                
                 
                indMI          = [ones(2,1); zeros(3,1)];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(3,1); zeros(2,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(1,1); zeros(4,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(4,1); zeros(1,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
               
                TE.problem=rmfield(TE.problem,prob);
                
 
            case 6

                 indMI          = [ones(3,1); zeros(3,1)];
                  probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               

                 indMI          = [ones(2,1); zeros(4,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               

                 indMI          = [ones(4,1); zeros(2,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             

               
                TE.problem=rmfield(TE.problem,prob);
                
                 
            case 7
                
                indMI          = [ones(3,1); zeros(4,1)];
                  probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(4,1); zeros(3,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(2,1); zeros(5,1)];
                  probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(5,1); zeros(2,1)];
                  probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
              
               
                 TE.problem=rmfield(TE.problem,prob);
 
                 
            case 8
                
                
                  indMI          = [ones(4,1); zeros(4,1)];
                  probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(3,1); zeros(5,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(5,1); zeros(3,1)];
                 probInfo.indMI = indMI;
                  probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
               
               
               
                 TE.problem=rmfield(TE.problem,prob);
 
           case 9
                
                
                  indMI          = [ones(4,1); zeros(5,1)];
                  probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(5,1); zeros(4,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(3,1); zeros(6,1)];
                  probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                  indMI          = [ones(6,1); zeros(3,1)];
                  probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                  
             
               
               
               TE.problem=rmfield(TE.problem,prob);
                
                
        
            case 10
                
                
                 indMI          = [ones(5,1); zeros(5,1)];
                  probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                indMI          = [ones(4,1); zeros(6,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                indMI          = [ones(6,1); zeros(4,1)];
                  probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
              
               TE.problem=rmfield(TE.problem,prob);
   
                 
          case 11
                
                
                 indMI          = [ones(5,1); zeros(6,1)];
                  probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                indMI          = [ones(6,1); zeros(5,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(4,1); zeros(7,1)];
                  probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                indMI          = [ones(7,1); zeros(4,1)];
                  probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
             
               

               
                TE.problem=rmfield(TE.problem,prob);
                
                
  
                 
            case 12
                
                 indMI          = [ones(6,1); zeros(6,1)];
                  probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(5,1); zeros(7,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(7,1); zeros(5,1)];
                  probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 
               
            TE.problem=rmfield(TE.problem,prob);
                
                
  
         case 13
                
                 indMI          = [ones(5,1); zeros(8,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(8,1); zeros(5,1)];
                  probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                indMI          = [ones(4,1); zeros(9,1)];
                  probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
             
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(9,1); zeros(4,1)];
                  probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
             
                
               TE.problem=rmfield(TE.problem,prob);
                
                
  
            case 14
                
                 indMI          = [ones(7,1); zeros(7,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
               
                indMI          = [ones(5,1); zeros(9,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                indMI          = [ones(9,1); zeros(5,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
                
               
               TE.problem=rmfield(TE.problem,prob);
                
                
  
                 
          case 15
                
                 indMI          = [ones(7,1); zeros(8,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                indMI          = [ones(8,1); zeros(7,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(6,1); zeros(9,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(9,1); zeros(6,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
             
               
                TE.problem=rmfield(TE.problem,prob);
                
                
  
                 
          case 16
                
                indMI          = [ones(8,1); zeros(8,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(7,1); zeros(9,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(9,1); zeros(7,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 
             
                 
               
              TE.problem=rmfield(TE.problem,prob);
                
  
                 
          case 17
                
                 indMI          = [ones(7,1); zeros(10,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(10,1); zeros(7,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(6,1); zeros(11,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(11,1); zeros(6,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
              
             
                
               
               TE.problem=rmfield(TE.problem,prob);
                
                
  
          case 18
                

                 indMI          = [ones(9,1); zeros(9,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
               
               
                 indMI          = [ones(7,1); zeros(11,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(11,1); zeros(7,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
             
               
               TE.problem=rmfield(TE.problem,prob);
                
     
                 
          case 19
                
                 indMI          = [ones(8,1); zeros(11,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ones(11,1); zeros(8,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                indMI          = [ones(7,1); zeros(12,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(12,1); zeros(7,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
                             
               
               TE.problem=rmfield(TE.problem,prob);
                
                
           
                 
         case 20
             
             
                 indMI          = [ones(10,1); zeros(10,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                
               
                 indMI          = [ones(7,1); zeros(13,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [ones(13,1); zeros(7,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
             
               
                TE.problem=rmfield(TE.problem,prob);
                
                
        
                 
         case 21
                
                 
                 indMI          = [ zeros(10,1) ; ones(11,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(11,1) ; ones(10,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(9,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [zeros(12,1) ; ones(9,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
                
                 TE.problem=rmfield(TE.problem,prob);
                
                
         
                 
         case 22
                
                 indMI          = [ zeros(11,1) ; ones(11,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(10,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(12,1) ; ones(10,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 
             
                
                 TE.problem=rmfield(TE.problem,prob);
                
                
   
                 
         case 23
                
                 indMI          = [ zeros(11,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(12,1) ; ones(11,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(10,1) ; ones(13,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [zeros(13,1) ; ones(10,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
             
             
                
                TE.problem=rmfield(TE.problem,prob);
                
                
       
                 
         case 24
                
                 
                 indMI          = [ zeros(12,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(13,1) ; ones(11,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(11,1) ; ones(13,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 
                TE.problem=rmfield(TE.problem,prob);
                
                
      
                 
                 
           case 25
                
                
                 indMI          = [ zeros(13,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(13,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(11,1) ; ones(14,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [zeros(14,1) ; ones(11,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
                
                
                 TE.problem=rmfield(TE.problem,prob);
                
                
    
                 
                 
         case 26
                
                 indMI          = [ zeros(13,1) ; ones(13,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(14,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(12,1) ; ones(14,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
                
                 TE.problem=rmfield(TE.problem,prob);
                
    
                 
        case 27
                
                 indMI          = [ zeros(13,1) ; ones(14,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(14,1) ; ones(13,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(12,1) ; ones(15,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [zeros(15,1) ; ones(12,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
                
                
                
                TE.problem=rmfield(TE.problem,prob);
                
                
    
                 
         case 28
                
                 indMI          = [ zeros(14,1) ; ones(14,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(15,1) ; ones(13,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(13,1) ; ones(15,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                
                
               TE.problem=rmfield(TE.problem,prob);
                
                
    
                 
                 
         case 29
                
                 indMI          = [ zeros(14,1) ; ones(15,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(15,1) ; ones(14,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(13,1) ; ones(16,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 indMI          = [zeros(16,1) ; ones(13,1)];
                 probInfo.name  = [prob,'_MI4','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 
                 TE.problem=rmfield(TE.problem,prob);
                
                
    
                 
        case 30
                
                 indMI          = [ zeros(15,1); ones(15,1)];
                 probInfo.name  = [prob,'_MI1','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [ zeros(16,1); ones(14,1)];
                 probInfo.name  = [prob,'_MI2','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                   setfield(TE.problem,probInfo.name,probInfo);
               
                 indMI          = [zeros(14,1); ones(16,1)];
                 probInfo.name  = [prob,'_MI3','_i',...
                 num2str(length(find(indMI==1))),'_c',...
                 num2str(length(find(indMI==0)))];
                 probInfo.indMI = indMI;
                 TE.problem = ...
                 setfield(TE.problem,probInfo.name,probInfo);
             
                 
                 TE.problem=rmfield(TE.problem,prob);
            otherwise
                
               TE.problem=rmfield(TE.problem,prob);
    
        end
     else
         TE.problem=rmfield(TE.problem,prob);
     end
 end
 addpath(['/',username,'/TEallFinal/TE']);
 disp(['save -mat ',TEpath,'/TE.mat TE']);
 eval(['save -mat ',TEpath,'/TE.mat TE']);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
