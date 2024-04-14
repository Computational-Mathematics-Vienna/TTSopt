%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% CUTESTvardim.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [TE,listUncon,listBound] = CUTESTvardim
% CUTESTvardim extracts all dimensions of each test problem
% and prepares them to be run separately. For all test problems 
% with variable dimensions, it adds to TE.problem.<prob> the field 
% 'runtest'; the existence of 'runtest' is necessary to separately run 
% each test problem with all allowed dimensions.
%
% example :
%
% TE.problem.NLMSURF_16
%
% ans = 
%
%       name: 'NLMSURF_16'
%      class: 'OXR2-MY-V-0'
%        obj: 'O'
%        con: 'X'
%         sm: 'R'
%        der: '2'
%        dim: 16
%         nc: 0
%    runtest: 'P=4'
%     vardim: 1
%
%
% TE                % data structure for test environment
%   .solver.<sol>   %   solver information for solver <sol>
%   .uncon{k}       %   k-th unconstrained problem
%   .listUncon      %   string with names of unconstrained problems
%   .bound{k}       %   k-th bound constrained problem
%   .listBound      %   string with names of bound constrained problems
%   .problem.<prob> %   problem information for problem <name>
%      .name        %     problem name
%      .dim         %     dimension ([] = variable dimension)
%      .nc          %     number of constraints other than bounds
%                   %     ([] = variable number)
%                   %     the bounds themselves are in hitlist
%      .class       %     classification
%                   %   The CUTE classification scheme is described in
%           %   http://www.cutest.rl.ac.uk/Problems/classification.shtml
%      .obj         %       type of objective function
%                   %       N  no objective function is defined
%                   %       C  objective function is constant 
%                   %       L  objective function is linear
%                   %       Q  objective function is quadratic
%                   %       S  objective function is a sum of squares
%                   %       O  objective function is none of the above
%      .con         %     type of constraints
%                   %       U  unconstrained, 
%                   %       X  only constraints are fixed variables, 
%                   %       B  only constraints are bounds on variables
%                   %       N  only linear network constraints
%                   %       L  constraints are linear 
%                   %       Q  constraints are quadratic
%                   %       O  more general than any of the above alone
%      .sm          %     smoothness
%                   %       R  problem is regular: first and second 
%                   %          derivatives exist and are continuous 
%                   %          everywhere
%                   %       I  the problem is irregular
%      .der         %     number of derivatives available (0, 1, or 2)
%      .run         %     complexity information
%         .best     %       for point with best nf2g for gradacc<1e-6
%         .best    %       for point with 2nd best nf2g 
%                   %     each with some of the following fields:
%           .nf2g   %         nf+2*ng needed          
%           .solver %         name of one solver achieving this

function [TE,listUncon,listBound]=CUTESTvardim

tic

global CUTESTpath SOLpath TEpath RESpath HITpath PDFpath WORKpath 
global FORTRANpath 
% CUTESTpath    % path to CUTEST directory
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis
% WORKpath      % path for directory where TE is run (not global)
% RESdiary      % relative path of result diary (set locally)

eval(['cd ',WORKpath])

cpath=[CUTESTpath,'/sif'];

% prepare CUTEST

unix("rm -f 1* 4* *.d *.f *.6 *.SIF *.mexa64'") 
if ~exist('cutest_setup')
  unix("!. ~kimiaei/.bash_profile")
  eval(['addpath ',CUTESTpath,'/cutest/src/matlab/']);
  eval(['addpath ',CUTESTpath,'/cutest/bin/']);
end;


fil=[TEpath,'/TE.mat']
if exist(fil)==2
  com=['load ',TEpath,'/TE.mat;'];
  eval(com)
else
   CUTESTclass; 
   com=['load ',TEpath,'/TE.mat;'];
   eval(com) 
end

Uncon     = cell(0);
listUncon = [];
Bound     = cell(0);
listBound = [];
listConLin = [];
ConLin  = cell(0);   

for field=fieldnames(TE.problem)',

     prob       = field{1}
     probInfo   = getfield(TE.problem,prob)
     
     % restrict to unconstrained or bound constrained problems
     typeCon = ~(probInfo.con=='U' || probInfo.con=='X' || ...
         probInfo.con=='B' ||probInfo.con=='L');
     if typeCon
         TE.problem=rmfield(TE.problem,prob);
        continue;
     end;
     
    if strcmp(prob,'MOSARQP1'), continue; end
    if strcmp(prob,'MOSARQP2'), continue; end
    if strcmp(prob,'MOSARQP3'), continue; end
    if strcmp(prob,'MOSARQP4'), continue; end
    if strcmp(prob,'MOSARQP5'), continue; end
    if strcmp(prob,'MOSARQP6'), continue; end
    if strcmp(prob,'MOSARQP7'), continue; end
    if strcmp(prob,'MOSARQP8'), continue; end

     % if 'vardim' is not in probInfo, means that 
     % CUTESTvardim didn't run previously; hence,
     % it is necessary that we run once CUTESTvardim.
     % Otherwise, load the information TE
      
     if ~ isfield(probInfo,'vardim')  
         
    
           %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
           % set up CUTEST environment %
           %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

           % check if problem data exist
           
         if strcmp(prob,'X3PK') || strcmp(prob,'X10FOLDTR')
            if exist([CUTESTpath,'/sif/',probInfo.name,'.SIF'])~=2,
              disp(['CUTEST problem ',probInfo.name,' does not exist'])
              continue;
            end;
            if ~isOctave
              com   = [CUTESTpath,'/cutest/bin/cutest2matlab ',...
                     probInfo.name];
            else
              com   = [CUTESTpath,'/cutest/bin/cutest2octave ',...
                     probInfo.name];
            end            
            [s,w] = unix(com);
         else
            if exist([CUTESTpath,'/sif/',prob,'.SIF'])~=2,
              disp(['CUTEST problem ',prob,' does not exist'])
              continue;
            end;
            if ~isOctave
              com   = [CUTESTpath,'/cutest/bin/cutest2matlab ',...
                     prob];
            else
              com   = [CUTESTpath,'/cutest/bin/cutest2octave ',...
                     prob];
            end  
            [s,w] = unix(com);
         end
             
           % note that w is nonempty even when s=0
           if s~=0,
             disp('CUTEST setup failed, reason:');
             disp(w) 
             disp('if error with runcutest, run in the shell');
             disp('! . ~neum/.bash_profile');
             disp('If this does not help, quit Matlab, run the');
             disp('shell script outside, and then restart Matlab.');
             disp('see .../CUTEST/cutest/bin/runcutest .')
             disp(['There might also problems with the',...
                 ' libraries loaded in']);
             disp('~/.matlab7rc.sh');
             return;
           end;
  
           if (~isOctave && ~exist('mcutest')) || (isOctave && ~exist('ocutest')),
               disp('CUTEST setup cannot find mex file')
               disp('which would be needed to run cutest_setup(1)')
           end; 
            
      
           if isempty(probInfo.dim) 
               
                      
               prob = ['/' prob]
               fid  = fopen([cpath,prob,'.SIF'],'r') 
               sif  = textscan(fid,'%s');
               sif  = sif{1};
      
               %%%%%%%%%%%%%%%%%%%%%%%%%%%
               % find locations of '*IE' %
               %%%%%%%%%%%%%%%%%%%%%%%%%%%
     
               [temp,~]  = find(strcmp(sif,'*IE'));
               NN        = sif(temp(1)+1);
               temp1     = temp;
                  
               % remove locations of '*IE' which
               % there is not dimension after them
         
               for j=2:length(temp)
                   if ~ strcmp(sif(temp(j)+1),NN)
                      temp1=setdiff(temp1,temp(j)) ;
                   end
               end
               temp       = temp1 ;
      
              %%%%%%%%%%%%%%%%%%%%%%%%%%
              % find locations of 'IE' %
              %%%%%%%%%%%%%%%%%%%%%%%%%%
         
              [temp2,~]  = find(strcmp(sif,'IE'));
              temp3      = temp2;
         
              % remove some locations 'IE' which
              % there is not dimension after them
 
              for j=1:length(temp2)
                  if ~ strcmp(sif(temp2(j)+1),NN)
                     temp3=setdiff(temp3,temp2(j)) ;
                  end
              end
  
              temp2 = temp3;
       
              temp  = union(temp,temp2);
      
              temp  = sort(temp)
         
            
              if prob(1)=='/',prob=prob(2:end); end;
      
             % the flag 'RemTest' determines whether test
             % problem has orginal dimension (RemTest=1)
             % or not (RemTest=0)
      
             RemTest = 0; 
      
             for ii=1:length(temp)  
                 if ~isOctave
                   com     = ['cutest2matlab ',prob];
                 else
                   com = ['cutest2octave ',prob];
                 end
                 [ss,ww] = unix(com);
                 param   = sif{temp(ii)+1};
                 num     = sif{temp(ii)+2};
          
                switch prob
              
                     case 'SCURLY20'
                  
                          disp(['skipped ',prob,...
                                ' (error in all dimensions )']);
                          continue;
                   
                     case 'SCURLY30'
                          
                          disp(['skipped ',prob,...
                                ' (error in all dimensions )']);
                          continue; 
                   
                      case 'DEGTRID' 
                   
                          disp(['skipped ',prob,...
                                ' (only run for dim=10000)']);
                          if strcmp(num,'10')|strcmp(num,'50')|...
                             strcmp(num,'100')|strcmp(num,'1000')|...    
                             strcmp(num,'10000')
                             continue; 
                          end
                          com    = ['sifdecoder -param',' ',...
                                    param ,'=',num ,' ',prob];
               
                           probInfo.runinfo = cell(1) ;
               
                            probInfo.runinfo{1}= [param ,'=',num];
                  
                       case 'DEGDIAG' 
                   
                            if strcmp(num,'10')|strcmp(num,'50')|...
                               strcmp(num,'100')|strcmp(num,'1000')|...    
                               strcmp(num,'10000')
                           
                               disp(['skipped ',prob,...
                                     ' (only run for dim=10000)']); 
                               continue; 
                            end
                            com    = ['sifdecoder -param',' ',...
                                      param ,'=',num ,' ',prob];
               
                             probInfo.runinfo = cell(1) ;
               
                            probInfo.runinfo{1}= [param ,'=',num];
                   
                       case 'DEGTRID2' 
                   
                            if strcmp(num,'10')|strcmp(num,'50')|...
                               strcmp(num,'100')|strcmp(num,'1000')|...    
                               strcmp(num,'10000')
                               disp(['skipped ',prob,...
                                     ' (only run for dim=10000)']);
                               continue; 
                            end
                            com    = ['sifdecoder -param',' ',...
                                      param ,'=',num ,' ',prob];
                            probInfo.runinfo = cell(1) ;
               
                            probInfo.runinfo{1}= [param ,'=',num];
   
                       case 'EXPQUAD'

                            switch num
                                case '12'
                                     num1 = '6';
                                case '120'
                                     num1 = '10';
                                case '1200'
                                     num1 =  '100';
                            end
                 
                            com=['sifdecoder -param N=',num,...
                                 ' -param M=',num1,' ', prob];
                            
                            probInfo.runinfo = cell(1,2) ;
                            
                            probInfo.runinfo{1}=['N=',num];
                            probInfo.runinfo{2}=['M=',num1];
                                  
                       case 'QUDLIN'
                     
                             com=['sifdecoder -param N=',num,...
                                  ' -param M=',...
                                  num2str(str2num(num)/2),' ', prob];
                              
                            probInfo.runinfo = cell(1,2) ;
                            
                            probInfo.runinfo{1}=['N=',num];
                            probInfo.runinfo{2}= ...
                                ['M=',num2str(str2num(num)/2)]; 
               
                                 
                       case 'QRTQUAD'
                 
                             switch num
                                  case '12'
                                       num1 = '6';
                                  case '120'
                                       num1 = '10';
                                  case '1200'
                                       num1 =  '100';
                                  case '5000'
                                       num1 =  '1100';
                             end
                 
                             com=['sifdecoder -param N=',num,...
                                  ' -param M=',num1,' ', prob];
                              
                            probInfo.runinfo = cell(1,2) ;
                            
                            probInfo.runinfo{1}=['N=',num];
                            probInfo.runinfo{2}=['M=',num1];
                            
%                     case 'MOSARQP1'
%                         
%                         switch num
%                               case '36'
%                                    num1 = '10';num2='2';
%                               case '100'
%                                    num1 = '10';num2='3';
%                               case '900'
%                                    num1 =  '30'; num2='1';
%                               case '900'
%                                    num1 =  '30'; num2='2';
%                         end
%                          com=['! sifdecoder -param N=',num,...
%                                ' -param M=',num1,...
%                                ' -param COND=',num2,' ', prob];
%                               
%                             probInfo.runinfo = cell(1,3) ;
%                             
%                             probInfo.runinfo{1}=['N=',num];
%                             probInfo.runinfo{2}=['M=',num1];
%                             probInfo.runinfo{3}=['M=',num2];
%                         
%                         
% 
% 
% *IE N                   900            $-PARAMETER
% *IE M                   30             $-PARAMETER
% *RE COND                2.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   30             $-PARAMETER
% *RE COND                3.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   60             $-PARAMETER
% *RE COND                1.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   60             $-PARAMETER
% *RE COND                2.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   60             $-PARAMETER
% *RE COND                3.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   90             $-PARAMETER
% *RE COND                1.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   90             $-PARAMETER
% *RE COND                2.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   90             $-PARAMETER
% *RE COND                3.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   120            $-PARAMETER
% *RE COND                1.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   120            $-PARAMETER
% *RE COND                2.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   120            $-PARAMETER
% *RE COND                3.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   300            $-PARAMETER
% *RE COND                1.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   300            $-PARAMETER
% *RE COND                2.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   300            $-PARAMETER
% *RE COND                3.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   600            $-PARAMETER
% *RE COND                1.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   600            $-PARAMETER
% *RE COND                2.0            $-PARAMETER
% 
% *IE N                   900            $-PARAMETER
% *IE M                   600            $-PARAMETER
% *RE COND                3.0            $-PARAMETER
% 
% *IE N                   2500           $-PARAMETER
% *IE M                   700            $-PARAMETER
% *RE COND                1.0            $-PARAMETER
% 
% *IE N                   2500           $-PARAMETER
% *IE M                   700            $-PARAMETER
% *RE COND                2.0            $-PARAMETER
% 
%  IE N                   2500           $-PARAMETER
%  IE M                   700            $-PARAMETER
%  RE COND                3.0            $-PARAMETER
                        
               
                       case 'MINSURF0' 
                
                             com=['sifdecoder -param NX=',num,...
                                  ' -param NY=',num,' ', prob];
                              
                             probInfo.runinfo = cell(1,2) ;
                            
                            probInfo.runinfo{1}=['NX=',num];
                            probInfo.runinfo{2}=['NY=',num]; 
                
                
                       case 'CHENHARK'
                 
                              switch num
                     
                                  case '10'
                                      num1 = '5';
                                      num2 = '2';
                                  case '100'
                                      num1 = '50';
                                      num2 = '20';
                                   case '1000'
                                      num1 =  '500';
                                      num2 =  '200';
                                   case '5000'
                                       num1 =  '2500';
                                       num2 =  '500';
                              end
                 
                              com=['sifdecoder -param N=',num,...
                                   ' -param NFREE=',num1,...
                                   ' -param NDEGEN=',num2,' ',prob];
             
                               
                            probInfo.runinfo = cell(1,3) ;
                            
                            probInfo.runinfo{1}=['N=',num];
                            probInfo.runinfo{2}=['NFREE=',num1];
                            probInfo.runinfo{3}=['NDEGEN=',num2];
                
                
                       case 'HADAMALS'
                              if (strcmp(num,'128')||...
                                 strcmp(num,'256')||strcmp(num,'428'))
                   
                                 disp(['skipped ',prob,...
                                       ' (no results)']);
                                 continue; 
                              end
                       
                              com     = ['sifdecoder -param',' ',...
                              param ,'=',num ,' ',prob];
               
                            probInfo.runinfo = cell(1) ;
               
                            probInfo.runinfo{1}= [param ,'=',num];
                      
                       case 'SCOND1LS'
                  
                              switch num
                        
                                  case '10'
                                      num1 = '9';
                                  case '50'
                                      num1 = '45';
                                  case '100'
                                      num1 =  '90';
                                  case '500'
                                       num1 =  '450';
                                  case '1000'
                                       num1 =  '900';
                                  case '5000'
                                       num1 =  '4500';      
                              end
                 
                              com=['sifdecoder -param N=',num,...
                                   ' -param LN=',num1,' ', prob];
                               
                             probInfo.runinfo = cell(1,2) ;
                            
                             probInfo.runinfo{1}=['N=',num];
                             probInfo.runinfo{2}=['LN=',num1];
                
                                             
                       case 'CHARDIS0'
                 
                           if strcmp(num,'5000')
                             disp(['skipped ',prob,...
                                   ' (take very long times ...)']);
                             continue; 
                           end
                 
                          disp(['running ',prob,' (take many times',...
                              ' in comparison with other test)']);
                  
                          com    = ['sifdecoder -param',' ',...
                                    param ,'=',num ,' ',prob];
               
                            probInfo.runinfo = cell(1) ;
               
                            probInfo.runinfo{1}= [param ,'=',num];
   
                    otherwise
                        
                            com      = ['sifdecoder -param',' ',...
                                        param ,'=',num ,' ',prob];
                                    
                            probInfo.runinfo = cell(1) ;
               
                            probInfo.runinfo{1}= [param ,'=',num];
                            
                end
                
     
               [ss,ww]  =  unix(com);
               
               probstr       = cutest_setup(1);
               probInfo.dim  =  length(probstr.x);
               
               cutest_terminate
               
               
                 if strcmp(sif{temp(ii)+4},'original') | ...
                    strcmp(sif{temp(ii)+7},'original')
                    RemTest          = 1;
                    probInfo.vardim  = 1 ; 
                    probInfo.name    = prob;
                 else
                    probInfo.vardim = 1 ; 
                    probInfo.name   = [prob,'_',num2str(probInfo.dim)];
                 end 
    
                 TE.problem = ...
                     setfield(TE.problem,probInfo.name,probInfo);
       
                 if probInfo.con=='U', 
                    Uncon{end+1}   = probInfo.name; 
                    listUncon      = [listUncon,' ''',...
                                      probInfo.name,''''];
                 end;
  
                 if probInfo.con=='X' || probInfo.con=='B', 
                    Bound{end+1}    = probInfo.name; 
                    listBound       = [listBound,' ''',...
                                       probInfo.name,''''];
                 end;
                 
                 if probInfo.con=='L', 
                    ConLin{end+1}   = probInfo.name; 
                    listConLin     = [listConLin,' ''',...
                                      probInfo.name,''''];
                 end;
             
                 probInfo
                 
                 TE.uncon     = Uncon;
                 TE.bound     = Bound;
                 TE.conlin    = ConLin;
                 TE.listUncon = listUncon;
                 TE.listBound = listBound;  
                 TE.listConLin = listConLin;
                 eval(['save ',TEpath,'/TE.mat TE']);
                 if probInfo.dim>=100000 && probInfo.con=='L', break; end
             end
             
             % if RemTest=0, then this test problem has no orginal
             % dimension; hence, it should be removed in order
             % to prevent again running it
             
             if ~ RemTest && isfield(TE.problem,prob)
                 TE.problem=rmfield(TE.problem,prob);
             end
      
           else
               
                probInfo.vardim  = 0 ; 
                TE.problem       = ...
                setfield(TE.problem,prob,probInfo);
       
                if prob(1)=='/',prob=prob(2:end); end;
       
                if probInfo.con=='U', 
                   Uncon{end+1} = prob; 
                   listUncon    = [listUncon,' ''',prob,''''];
                end;
  
                if probInfo.con=='X'||probInfo.con=='B', 
                   Bound{end+1} = prob; 
                   listBound    = [listBound,' ''',prob,''''];
               end;
             
               if probInfo.con=='L', 
                   ConLin{end+1} = prob; 
                   listConLin    = [listConLin,' ''',prob,''''];
                end;
               
                 TE.uncon     = Uncon;
                 TE.bound     = Bound;
                 TE.conlin    = ConLin;
                 TE.listUncon = listUncon;
                 TE.listBound = listBound;  
                 TE.listConLin = listConLin;
                 eval(['save ',TEpath,'/TE.mat TE']);
           end
     end  
     
    % cutest_terminate
end

unix("rm -f 1* 4* *.d *.f *.6 *.SIF *.mexa64 *.mex") 

showtime
disp('runs completed');
disp(' ')

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
