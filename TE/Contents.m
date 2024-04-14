%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CUTESTclass.m %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function [TE,problemlist,cl]=CUTESTclass(dir); 
% get list of all CUTEST problems from /mastsif/  
% and corresponding classification code 
% 
% The CUTE classification scheme is described in 
% http://www.cutest.rl.ac.uk/Problems/classification.shtml 
% 
% saves results in <dir>/TE.mat; takes 70 seconds 
% 
% TE.problem.<prob> % problem information for problem <name> 
%      .name        %   problem name 
%      .class       %   classification 
% problemlist{pr}   % problem name of problem number pr 
% cl{pr}            % classification of problem number pr               
% 
% dir               % relative path of directory where to save results 
%                   % (current directory when missing) 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CUTESTtest.m %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
% test for the CUTEst installation 
% runs the CUTEst functions: cutest_setup, cutest_terminate and 
% cutest_objcons 
% 
% 
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
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% ChoiceSolPlot.m %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% pick a few solvers to draw the performance and data profiles and box 
% plots 
%  
% used in STATplot.m 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%% ChoicesBBO.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function [sollist,problemlist,selectBy,sortBy,info]=ChoicesBBO(param) 
% 
% find sollist,problemlist,selectBy,sortBy,info to run STATall.m 
% for noisy bbo 
% 
%% input 
% 
%  param        data structure  
% 
%  .userName     username 
%                  * 'kimiaei', 'neum', 'max', 'roman', etc 
% 
%  .probCollect  which collection of test problems used? 
%                  * 1: 'CUTEst' 
%                  * 2: 'luksun' 
%                  * 3: 'globalTest' 
%                  * 4: 'sparseluksan' 
% 
%  .targetAcc    parameter satisfying the convergence speed 
%                            qf = (f-fbest)/(f0-fbest) <= targetAcc 
%                  * 1e-4 (small and medium) 
%                  * 1e-3 (large and very large) 
%                 
%  .existData    saved data used? 
%                  * 0: no saved data 
%                  * 1: load saved data 
%  .noisefun    is objective function noisy? 
%                  * 1: objective function contaminated by noise 
%                  * 0: otherwise 
% 
%  .noiselevel  level of noise 
% 
%  .noisetype   type of noise 
%                  * absolute 
%                  * relative 
% 
%  .noisedistr  noise distribution 
%                 * uniform 
%                 * Gauss  
% 
%  .scale        problem scale      
%                  * 0: small scale (1<= n <= 20)  
%                  * 1: medium scale (21<= n <= 100)  
%                  * 2: large scale (101<= n <= 1000) 
%                  * 3: very large scale (1001<= n <= 9000)  
% 
%  .initPoint    type of initial point 
%                  * 'standard': standard initial point if exists 
%                  * 'shifted':  shifted initial point 
% 
%  .savedTables   saved tables are available? 
%                   * 1: use saved tables 
%                   * 0: saved tables are unavailable 
% 
%  .con          type of constraint 
%                  * 0: unconstrained 
%                  * 1: bound constrained 
%                  * 2: unconstrained and bound constrained 
%                  * 3: linearly constrained 
% 
%  .key          sort list of test problems 
%                  * 'N': name  
%                  * 'D': dim   
%                  * 'E': nfree 
%                  * 'T': sec 
%                  * 'F': nf  
%                  * 'DEN': dim, nfree and name 
%                  * 'TNE': sec, name and nfree, etc. 
% 
%  .inc          sort the above list as increasing/decreasing order 
%                  * 1 (increasing order) 
%                  * 0 (decreasing order) 
%  .res          saved data is available 
%                  * 1: obtain information from saved information 
%                  * 0: obtain only information from TE.problem 
% 
%  .solvedByAll  choose whether problems solved by all solvers or not 
%                  * 1: only solved by all listed solvers 
%                  * 0: otherwise 
% 
%  .refsolver     
% 
%  .defaultDim   only when CUTEst is used 
%                  * 1: original dimension 
%                  * 0: otherwise 
% 
%  .valueBudget  type of budget 
%                  * 'low'    (default: nfmax=100*n) 
%                  * 'medium' (default: nfmax=500*n) 
%                  * 'large'  (default: nfmax=1000*n) 
% 
%  .LegLocat     Legend location 
%                  * 'north'  
%                  * 'south' 
%                  * 'east'   
%                  * 'west'	 
%                  * 'northeast'  
%                  * 'northwest' 
%                  * 'southeast'  
%                  * 'southwest'  
%                  * 'northoutside'  
%                  * 'southoutside' 
%                  * 'eastoutside' 
%                  * 'westoutside' 
%                  * 'northeastoutside' 
%                  * 'northwestoutside' 
%                  * 'southeastoutside' 
%                  * 'southwestoutside' 
%                  * 'best' (default) 
%                  * 'bestoutside'  
%                  * 'layout'  
%                  * 'none'  
% 
%  .LegFontSize   Legend font size  
%                  * default: LegFontSize=20 
% 
%  .xlabelSize    xlabel size 
%                  * default: xlabelSize=14 
% 
%  .ylabelSize    ylabel size 
%                  * default: ylabelSize=14 
% 
%  .titleFigureSize  Title figure size 
%                      * default: titleFigureSize= 14 
% 
%  .nsolplot       Number of solvers used in plots 
%                    * default: nsolplot= 6 
% 
%  .sparsefig      The data and performance may be very dense  
%                    * 1: Reduce density of plots (default) 
%                    * 0: Otherwise  
% 
%  .sparseSize     How many points are needed 
%                     * default: sparseSize = 50 
% 
%  .ConvePlotFlag  Convergence plot needed? 
%                     * 1: Convergence plot needed 
%                     * 0: Ignore convergence plot (default) 
% 
%  .xTrickarray    Inset array for xTric for xlabel 
%                     * default:  
%                      xTrickarray=[1 3 10 30 100 300 1e3 3e3 1e4 1e5] 
%    
%  .PerProfileName  Choose a name for performance profile .eps 
%                     * default: PerProfileName = 'perp'        
% 
%  .BoxPlotName     Choose a name for box plot .eps 
%                     * default: BoxPlotName = 'boxp' 
% 
%  .DataProfileName  Choose a name for data profile .eps 
%                      * default: DataProfileName = 'datap' 
% 
%  .classdimOk       classified by dimension? 
%                      * 1: classified by dimension (default) 
%                      * 0: otherwise 
%  
%  .classdim        choose lower and upper bounds of each  
%                   dimension range 
%                     * default:  classdim1 = [1 2] 
%                                 classdim2 = [3 5] 
%                                 classdim3 = [6 10] 
%                                 classdim4 = [11 20] 
%                                 classdim5 = [21 100] 
%                                 classdim6 = [101 1000] 
%                                 classdim7 = [1001 5000] 
%                                 classdim6 = [5001 10000] 
% 
%  .problemlist     list of problems without TEsort.m 
% 
%  .solverlist      list of solver not depending on problem scale 
%             
%                
%% Output: 
% 
%  .sollist      liest of solvers 
% 
%  .problemlist  list of problems 
% 
%  .selectBy      structure for selecting list of problems 
%                  .dim   * range of dimensions    
%                  .con   * type of constraints  
%                  .res   * saved data is available 
%                           1: obtain information from saved information 
%                           0: obtain only information from TE.problem 
% 
%  .sortBy     structure for sorting list of problems 
%               .key      * key for sorting problems 
%               .inc      * type of sorting problems  
%                           1: increasing order 
%                           0: decreasing order 
% 
%  .info    
%        .optcrit          (= targetAcc)  
%        .ODim             (= defaultDim)  
%        .LegLocat         (= param.LegLocat)  
%        .LegFontSize      (= param.LegFontSize)   
%        .xlabelSize       (= param.xlabelSize) 
%        .ylabelSize       (= param.ylabelSize) 
%        .titleFigureSize  (= param.titleFigureSize) 
%        .nsolplot         (= param.nsolplot) 
%        .sparsefig        (= param.sparsefig) 
%        .sparseSize       (= param.sparseSize) 
%        .ConvePlotFlag    (= param.ConvePlotFlag)         
%        .xTrickarray      (= param.xTrickarray) 
%        .PerProfileName   (= param.PerProfileName)  
%        .BoxPlotName      (= param.BoxPlotName) 
%        .DataProfileName  (= param.DataProfileName) 
%        .MoralesProfileName (=param.MoralesProfileName) 
%        .resdir            directory of saved data        
%        .infomax           infomation of budgets       
%        .TableEffPart      (param.classdimOk) 
%        .classdim          
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% ConvergePlot.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% draw qs = (f-fbest)/(finit-fbest) versus the number of function 
% evaluations for each bbo test problems 
% 
% used in STATplot.m 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% GenDataBB.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% generate data to draw peformance profiles for bbo solvers 
%  
% used in STATplot 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HITTerr.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% MoralesProfile.m %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% draw data profile for bbo solvers 
% 
% used in STATplot 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%% PerformProfile.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% draw performance profiles 
% 
% used in STATplot 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%% ProbChoicePlot.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
% draw a figure based on the problem dimensions showing how many test 
% problems are unconstrained, bound constrained, etc., with respect 
% to the dimensions 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATFail.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% STATFail is going to solve test problems which one of solvers  
% could ulmost be solved by updating nf2gmax and secmax   
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Analyzes results cumulatively computed with CUTESTall.m 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% STATallTab.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function AllTable = STATallTab(table,selectBy,TableEffPart,... 
%                               optcrit,selectBy0) 
% 
% Generates subtables from table2, classified in terms of dimension,  
% type of constraint, and time in seconds 
% 
% table              % structure of tables with the results 
% selectBy           % key for selection of problems 
% TableEffPart       % 1 % generates some efficiency tables for range 
%                          dimesions: 
%                          [1 10], [11 100], [101 1000], [1001 100001] 
%                    % 0 % generates efficiency table for range dim: 
%                          [1 100001] 
% optcrit            % requested accuracy 
%                     
% AllTable           % contains result six tables  
%                    %  table0: structure of table with the results for 
%                               unconstrained and box constranied problems 
%                    %  tableu: structure of tables with the results for 
%                               unconstrained poblems 
%                    %  tableb: structure of tables with the results for 
%                               box constranied problems 
%                    %  tablet1: structure of tables with the results for 
%                                case which best time <= 1 sec 
%                    %  tablet2: structure of tables with the results for 
%                                case which best time in (1 sec,1 min] 
%                    %  tablet3: structure of tables with the results for 
%                                case which best time > 1 min 
% 
% each mentined tables include the following information: 
% 
%   .ntriedByAll     %   number of problems tried by all solvers 
%   .so{so}          %   name of solver number so 
%   .nsolved{so}     %   number of problems solved by solver so 
%   .pr{pr}          %   name of problem number so 
%   .dim{pr}         %   problem dimension 
%   .nf{pr,so}       %   number of function values 
%   .ng{pr,so}       %   number of gradients  
%   .nf2g{pr,so}     %   nf+2*ng 
%   .ef2g{pr,so}     %   nf2g efficiency 
%   .sec{pr,so}      %   time in seconds 
%   .msec{pr,so}     %   time in milliseconds (integral, rounded down) 
%   .efficiency      %   efficiency tables 
%      .ng{so}       %     mean ng efficiency of solver so 
%      .nf{so}       %     mean nf efficiency of solver so 
%      .nf2g{so}     %     mean nf2g efficiency of solver so 
%      .sec{so}      %     mean sec efficiency of solver so 
% 
% 
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
% 
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
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATbest.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATcollect.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function [table,failInfo,statInfo]=... 
%            STATcollect(problemlist1,solverlist,resdir,refsolver,glob); 
% collects results from resdir 
% 
% problemlist1     % list of test problems 
% solverlist       % list of solvers 
% resdir           % directory containing the result files 
% refsolver        % reference solver for activities 
% glob	           % perform global solver analysis? 
% 
% table            % structure of tables with the results 
%   .con{pr}       %  
%   .pr{pr}        %   name of problem number pr 
%                  %     (only problems with at least one result) 
%   .dim{pr}       %   dimension of problem number pr 
%   .nfree{pr}     %   number of free variables of problem number pr 
%   .so{so}        %   name of solver number so 
%   .acc{pr,so}    %   accuracy reached 
%   .accf{pr,so}   %   objective function accuracy, fbest-fhitlist 
%   .nf{pr,so}     %   number of function values needed 
%   .sec{pr,so}    %   number of seconds needed 
% statInfo{pr,so}  % structure with info about the solution run 
%   .funInfo       %   info from function statistics 
%   .info          %   old version of info (for older run data) 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATlatex.m %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function STATlatex(table,optcrit,caseTitle,latexFile,... 
%                                          selectBy,sortBy,resdir); 
% create latex file for statistics 
% 
% table             % result table from analruns.m 
%   .ntriedByAll    %   number of problems tried by all solvers 
%   .so{so}         %   name of solver number so 
%   .nsolved{so}    %   number of problems solved by solver so 
%   .pr{pr}         %   name of problem number so 
%   .dim{pr}        %   problem dimension 
%   .nf{pr,so}      %   number of function values 
%   .ng{pr,so}      %   number of gradients  
%   .nf2g{pr,so}    %   nf2g 
%   .ef2g{pr,so}    %   nf2g efficiency 
%   .sec{pr,so}     %   time in seconds 
%   .msec{pr,so}    %   time in milliseconds (integral, rounded down) 
%   .efficiency     %   efficiency tables 
%      .ng{so}      %     mean ng efficiency of solver so 
%      .nf{so}      %     mean nf efficiency of solver so 
%      .nf2g{so}    %     mean nf2g efficiency of solver so 
%      .sec{so}     %     mean sec efficiency of solver so 
% optcrit           % requested accuracy 
% caseTitle         % subtitle characterizing the statistics 
% latexFile         % filename (including .tex, no path) 
% selectBy          % key for selection of problems 
%   .dim            %   range of dimensions    
%   .con            %   range of constraints 
%   .nf2g2          %   range of second best nf2g 
%   .sec2           %   range of second best time sec 
%   .solvedByAll    %   1: only those solved by all listed solvers 
%                   %   0: those solved by some listed solvers or  
%                   %      did solve by no solver 
%   .res            %   1: obtain information from saved information 
%                   %      which are obtained by running solvers 
%                   %   0: obtain only information from TE.problem 
% sortBy            % info for sorting problems 
%   .key            %   sort key 
%                   %     N: name,  D: dim 
%                   %     T: sec2, F: nf2g2  
%                   %     DN: dim and name 
%                   %     TN: sec2 and name, etc. 
%   .inc            %   1: increasing order, 0: decreasing order 
% resdir            % directory for results 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATnoise.m %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATplot.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function table=STATplot(selectBy,table,info) 
% draw performance plots, data profiles, and box plots 
% 
% selectBy       %  
% table          % structure with performance data 
% info           % 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% STATtable.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function table2=STATtable(table,resdir,optcrit) 
% 
% Generates a formatted and normalized table2 from table. 
% 
% table              % structure of tables with the results 
% optcrit            % requested accuracy 
% glob	             % perfom a global solver analysis? 
%                     
% table2             % result table from analruns.m 
%   .ntriedByAll     %   number of problems tried by all solvers 
%   .so{so}          %   name of solver number so 
%   .nsolved{so}     %   number of problems solved by solver so 
%   .pr{pr}          %   name of problem number so 
%   .dim{pr}         %   problem dimension 
%   .nf{pr,so}       %   number of function values 
%   .ef{pr,so}       %   nf efficiency 
%   .sec{pr,so}      %   time in seconds 
%   .msec{pr,so}     %   time in milliseconds (integral, rounded down) 
%   .efficiency      %   efficiency tables 
%      .nf{so}       %     mean nf efficiency of solver so 
%      .sec{so}      %     mean sec efficiency of solver so 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% STATtableNoise.m %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Shiftofx.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% runs multiple test problems on multiple solvers 
%  
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% runs multiple test problems on multiple solvers 
%  
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%% TESTchoices.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function [soList,prList,selectBy,sortBy,RUNparam]=TESTchoices(TESTparam) 
% 
% find soList,prList,selectBy,sortBy,RUNparam to run STATall.m 
% for noisy bbo 
% 
%% input 
% 
%  TESTparam        data structure  
% 
%  .userName     username 
%                  * 'kimiaei', 'neum', 'romana', 'max', 'roman', etc 
% 
%  .probCollect  which collection of test problems used? 
%     continuous:     'CUTEst', 'bcp', 'prince', 'global', 'inf', 'minlp' 
% 
%     integer:       'CUTEstInt', 'bcpInt', 'princeInt', 'globalInt', 
%                    'infInt', 'minlpInt'  
% 
%     mixed-integer:  'CUTEstMint', 'bcpMint', 'princeMint', 'globalMint', 
%                     'infMint', 'minlpMint'  
% 
%  .accf    parameter satisfying the convergence speed 
%                            qf = (f-fbest)/(f0-fbest) <= accf 
%                  * 1e-4 (small and medium) 
%                  * 1e-3 (large and very large) 
%                 
%  .noiseFun    is objective function noisy? 
%                  * 1: objective function contaminated by noise 
%                  * 0: otherwise 
% 
%  .noiseLevel  level of noise 
% 
%  .noiseType   type of noise 
%                  * absolute 
%                  * relative 
% 
%  .noiseDistribution  noise distribution 
%                 * uniform 
%                 * Gauss  
% 
%  .scaleProb        problem scaleProb      
%                  * 0: small scaleProb (1<= n <= 20)  
%                  * 1: medium scaleProb (21<= n <= 100)  
%                  * 2: large scaleProb (101<= n <= 1000) 
%                  * 3: very large scaleProb (1001<= n <= 9000)  
% 
%  .initPoint    type of initial point 
%                  * 'standard': standard initial point if exists 
%                  * 'shifted':  shifted initial point 
% 
% 
%  .con          type of constraint 
%                  * 0: unconstrained 
%                  * 1: bound constrained 
%                  * 2: unconstrained and bound constrained 
%                  * 3: linearly constrained 
% 
%  .key          sort list of test problems 
%                  * 'N': name  
%                  * 'D': dim   
%                  * 'E': nfree 
%                  * 'T': sec2 
%                  * 'F': nf  
%                  * 'DEN': dim, nfree and name 
%                  * 'TNE': sec2, name and nfree, etc. 
% 
%  .inc          sort the above list as increasing/decreasing order 
%                  * 1 (increasing order) 
%                  * 0 (decreasing order) 
%  .res          saved data is available 
%                  * 1: obtain information from saved information 
%                  * 0: obtain only information from TE.problem 
% 
%  .solvedByAll  choose whether problems solved by all solvers or not 
%                  * 1: solved by at least one of the listed solvers 
%                  * 0: otherwise 
% 
%  .refsolver     
% 
%  .defaultDim   only when CUTEst is used 
%                  * 1: original dimension 
%                  * 0: otherwise 
% 
%  .valueBudget  type of budget 
%                  * 'low'    (default: nfmax=100*n) 
%                  * 'medium' (default: nfmax=500*n) 
%                  * 'large'  (default: nfmax=1000*n) 
% 
%  .prList     list of problems without TEsort.m 
% 
%  .soList      list of solver not depending on problem scaleProb 
%             
%                
%% Output: 
% 
%  .soList      liest of solvers 
% 
%  .prList  list of problems 
% 
%  .selectBy     pick a list of test problems 
%                  .dim   * range of dimensions    
%                  .con   * type of constraints  
%                  .res   * saved data is available 
%                           1: obtain information from saved information 
%                           0: obtain only information from TE.problem 
% 
%  .sortBy     struture for sorting list of problems 
%               .key      * key for sorting problems 
%               .inc      * type of sorting problems  
%                           1: increasing order 
%                           0: decreasing order 
% 
%  .RUNparam    
%        .optcrit          (= accf)  
%        .ODim             (= defaultDim)  
%        .LegLocat         (= TESTparam.LegLocat)  
%        .resDir            directory of saved data  
%       
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%% TESTfeasible.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESThit %%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% updates hitlist 
% 
% input 
%      .func          % function handle 
%      .x             % the initial point 
%      .hitlist       % data structure including histlist info 
%      .varHit        % Boolean variable for the update of hitlist 
%                       0: hitlist may be update 
%                       1: hitlist was initialized 
%      .updatedHit    % variable for updating hitlist 
%                       0: hitlist was not updated 
%                       1: hitlist was updated 
%      .t2            %  
%      .name          %  the name of test problem 
%      .RUNparam      % 
%               .updateHitVar    % Boolean variable for updating hitlist     
%               .TEcase          % indicate the type of collections 
%               .initHitVar      % Boolean variable for the first  
%                                  update of hitlist 
%               .etc             % see TESTrun 
% 
% output 
%      .updatedHit   % variable for updating hitlist 
%      .hitlist      % data structure including histlist info 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTinit %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% TESTinit initializes TESTruns 
% 
% input 
% 
% RUNparam     % data struture to run selected solver(s) on selected 
%                test problem(s) 
% output 
% 
% TE          % data structure for test environment     
% RUNparam    % defined above 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTmin.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% runs one problem on one solver 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTprob %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% TESTprob completes the requirements for each selected problem 
% 
% input 
% 
% TE           % data structure for test environment      
% probnam      % the name of test problems 
% RUNparam     % data struture to run selected solver(s) on selected 
%                test problem(s) 
% 
% output 
%  
% x           % the initial point 
% dim         % dimension 
% t2          % cpu time used so far 
% func        % function handle 
% RUNparam    % data struture to run selected solver(s) on selected 
%                test problem(s)  
% skippProb   % skip problem due to error in runing the problem 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% runs multiple test problems on multiple solvers 
%  
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTruns.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function TESTruns(prList,soList,info) 
% 
% TESTruns runs multiple test problems from CUTEST on multiple solvers 
% 
% 
% prList        % list of test problems 
% soList        % list of solvers according to TEwrapper.m 
% RUNparam      % data struture including parameters to run  
%                 selected solver(s) on selected test problem(s) 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTsolvers %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% TESTsolvers run a list of solvers on a list of problems and save  
% results as mat file 
% 
% input 
% 
% func         % function handle 
% x 
% probnam      % the name of the test problem selected 
% soList       % the list of the solvers selected 
% hitlist      % a data struture including the information of best point 
%                found rquired for the stopping test qs <= accf 
% ibug         % counter for possible bug 
% prListBug    % the list of test problems with bugs 
% t2           % cpu time 
% updatedHit   % Boolean variable for the update of hitlist 
% RUNparam     % data struture including information for running solvers 
%  
% output 
% 
% updatedHit, hitlist, ibug, prListBug, which have been defined above 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTstop %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% TESTstop prepares requirements for stopping test in getf 
% 
% input 
% 
% dim 
% func 
% x 
% hitlist 
% RUNparam 
%  
% global variable finfo is updated 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEanalysis.m %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function TE=TEanalysis(soList,resdir); 
% produces for each problem a structure hitlist containing  
% special points of the problem <prob>. This structure is retrieved with 
%   load HITLIST/<prob>; 
% 
% input: 
% 
% soList         % list solvers 
% resdir         % directory containing result files 
% hitlist 
%   .prob        % problem name  
%   .low         %   column vector of lower bounds 
%   .upp         %   column vector of upper bounds 
%   .init        %   starting point 
%   .minf        %   point with best function value 
%                % each with some of the following fields: 
%     .x         %     column vector of coordinates 
%     .f         %     function value 
%     .acc       %     maxnorm of reduced gradient 
%     .nfree     %     number of free variables 
%     .normx     %     maximum norm of coordinate vector  
%  
% output: 
% 
% TE                % data structure for test environment 
%   .solver.<sol>   %   solver information for solver <sol> 
%   .uncon{k}       %   k-th unconstrained problem 
%   .listUncon      %   string with names of unconstrained problems 
%   .bound{k}       %   k-th bound constrained problem 
%   .listBound      %   string with names of bound constrained problems 
%   .problem.<prob> %   problem information for problem <name> 
%      .name        %     problem name 
%      .vardim      %     0 if no alternative dimensions exist 
% 
%      .dim         %     dimension (default if vardim)  
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
%         .best     %       for point with best nf for qf<1e-4 
%                   %     each with some of the following fields: 
%           .nf     %        nf needed           
%           .solver %         name of one solver achieving this 
%           .sec    %         best time 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEinit.m %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function TE=TEinit(soList,resdir); 
% creates complete list of CUTEST test problems 
% 
% input: 
% 
% soList         % list solvers 
% resdir         % directory containing result files 
% 
% output: 
% 
% TE                % data structure for test environment 
%   .solver.<sol>   %   solver information for solver <sol> 
%   .uncon{k}       %   k-th unconstrained problem 
%   .listUncon      %   string with names of unconstrained problems 
%   .bound{k}       %   k-th bound constrained problem 
%   .listBound      %   string with names of bound constrained problems 
%   .problem.<prob> %   problem information for problem <name> 
%      .name        %     problem name 
%      .vardim      %     0 if no alternative dimensions exist 
% 
%      .dim         %     dimension (default if vardim)  
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
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEpaths.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function ok=TEpaths; 
% Initializes the (user-dependent) paths for using TE 
% 
% ok    % 1: ok, 0: some missing directory was created; check! 
% 
% 
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
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%% TEtiming.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function Output=TEtiming(func,dfunc,n,low,upp,prob,options) 
% computes time for computing f and g by CUTEST and getfg 
%  
% input: 
% 
%      .func    %  cutest_obj 
%      .dfunc   %  cutest_grad 
%      .n       %  dimension 
%      .low     %  lower bounded 
%      .upp     %  upper bounded 
%      .prob    %  problem 
% 
% output: 
%  
%      .secf1   % time for computing f by cutest_obj 
%      .secg1   % time for computing g by cutest_grad  
%      .secfg1  % time for computing f and g by cutest_obj 
%      .secf2   % time for computing f by funf 
%      .secg2   % time for computing g by fung 
%      .secfg2  % time for computing f and g by funfg 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEvalues.m %%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function values=TEvalues(func,x,low,upp); 
% calculates diagnostic values at x 
% 
% func         % function handle, [f,g]=func(x) calculate f and g 
% x            % argument (column vector) 
% low,upp      % column vector of lower and upper bounds 
%  
% values       % result structure 
%   .x         %   feasible coordinate vector (projected to box) 
%   .f         %   function value 
%   .nfree     %   number of free variables 
%   .normx     %   maximum norm of coordinate vector  
%   .checked   %   = 1, indicating that the values are checked 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
% runs multiple test problems on multiple solvers  
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% funf.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function f=funf(x); 
% computes function value of func at x 
% and collects statistics 
% 
% 
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
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%% getTestInfo.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% getf.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function f=getf(x); 
% computes function value of func at x 
% collects statistics and enforces stopping test 
% 
% must be initialized by a call to funInit.m 
% 
% x      % argument 
% f      % function value  
% 
% global variable 
% finfo            % structure containing function info and statistics 
%   .solver        %   name of solver requesting the evaluation 
%   .prob          %   problem name 
%   .func          %   function handle 
%   .low           %   lower bounds 
%   .upp           %   upper bounds 
%   .accf          %   desired target accuracy 
%   .ngmax         %   bounds on number of gradients 
%   .nfmax         %   bounds on number of function values 
%   .secmax        %   bounds on number of seconds 
%   .maxInfeas     %   maximal infeasibility 
%   .acc           %   qf<= accf holds 
%   .nf            %   number of function evaluations 
%   .f             %   function value 
%   .fbest         %   best function value 
%   .nfbest        %   nf of best function value 
%   .fsec          %   number of CPU seconds for best function value 
%   .qbest         %   best acc = qf 
%   .xqbest        %   point with best accf 
%   .fqbest        %   function value at best accf 
%   .nfqbest       %   nf of best accf 
%   .qsec          %   number of CPU seconds for best accf 
%   .nextacc       %   next accf threshold to reach 
%   .kacc          %   accf<10^{-k} reached (unless accf=0) 
%   .nacc{k}       %   ng of accf<10^{1-k} reached (unless accf=0) 
%   .nfacc{k}      %   nf of accf<10^{1-k} reached (unless accf=0) 
%   .fbestf2f(i,k) %   best function value with nf<i*10^k 
%   .qbestf2f(i,k) %   best accuracy with nf<i*10^k 
%   .time2print    %   time to print feasible summary line 
%   .time2print0   %   time to print infeasible summary line  
%   .cpu0          %   cputime at start of process 
%   .error         %   error message 
%   .draw          %   draw progress? (1=yes; assumes min f = 0) 
%   .drawstyle     %   marking style (default: 'bo')  
%   .ndraw         %   the number of draw 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% getf.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function f=getf(x); 
% computes function value of func at x 
% collects statistics and enforces stopping test 
% 
% must be initialized by a call to funInit.m 
% 
% x      % argument 
% f      % function value  
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% gradCheck.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function [relacc,bad]=gradCheck(func,x,prt); 
% gradient check for evaluation routine  
%    results depend on random choices  
%    repeat with several x for higher reliability 
% 
% func          % function handle 
%                % [f,g]=func(x) is supposed to compute  
%                % for a column vector of size n  
%                % a function value f=f(x) and its gradient g=f'(x)^T 
% x              % approximate point of evaluation  
%                %   (should be generic, not very close to stationary) 
% 
% relacc         % estimated relative accuracy of gradient 
% bad            % list of bad gradient components 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% gradFin.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function [g,adjusted]=gradFin(x,low,upp,g,prt); 
% make meaningless gradient components (NaN,inf,-inf) finite 
% 
% x          % argument of function 
% low,upp    % bound constraints 
% g          % computed gradient at x 
% prt        % printlevel (0=nothing, 1=print anomalies) 
% 
% g          % adjusted gradient 
% adjusted   % was adjustment needed? (1=yes) 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% initf.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function initf(solvid,prob,func,low,upp,RUNparam);  
% initializes global data structure for getfg.m 
%  
% solvid        % solver name 
% prob          % problem name 
% func          % function handle 
% low           % lower bounds 
% upp           % upper bounds 
% RUNparam        % run time RUNparam 
%   .accf       %   desired accuray for the convergence speed qf 
%   .nfmax      %   bounds on number of function values 
%   .secmax     %   bounds on number of seconds 
%   .indMI      %  
% 
% global variable 
% finfo            % structure containing function info and statistics 
%   .solver        %   name of solver requesting the evaluation 
%   .prob          %   problem name 
%   .func          %   function handle 
%   .low           %   lower bounds 
%   .upp           %   upper bounds 
%   .accf          %   desired target accuracy 
%   .nfmax         %   bounds on number of function values 
%   .secmax        %   bounds on number of seconds 
%   .maxInfeas     %   maximal infeasibility 
%   .acc           %   qf<= accf holds 
%   .nf            %   number of function evaluations 
%   .f             %   function value 
%   .fbest         %   best function value 
%   .nfbest        %   nf of best function value 
%   .fsec          %   number of CPU seconds for best function value 
%   .qbest         %   best acc = qf 
%   .xqbest        %   point with best accf 
%   .fqbest        %   function value at best accf 
%   .nfqbest       %   nf of best accf 
%   .qsec          %   number of CPU seconds for best accf 
%   .nextacc       %   next accf threshold to reach 
%   .kacc          %   accf<10^{-k} reached (unless accf=0) 
%   .nacc{k}       %   ng of accf<10^{1-k} reached (unless accf=0) 
%   .nfacc{k}      %   nf of accf<10^{1-k} reached (unless accf=0) 
%   .fbestf2f(i,k) %   best function value with nf<i*10^k 
%   .qbestf2f(i,k) %   best accuracy with nf<i*10^k 
%   .time2print    %   time to print feasible summary line 
%   .time2print0   %   time to print infeasible summary line  
%   .cpu0          %   cputime at start of process 
%   .error         %   error message 
%   .draw          %   draw progress? (1=yes; assumes min f = 0) 
%   .drawstyle     %   marking style (default: 'bo')  
%   .ndraw         %   the number of draw 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%% isOctave.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function isOctave 
% source:  
% https://docs.octave.org/latest/How-to-Distinguish-Between-Octave-and-... 
% Matlab.html 
% Date: 2022-08-31 
% 
% Returns true if the environment is Octave. 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%% mytime.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function string=mytime; 
% displays (no output argument) or returns (in string) 
% current date and time in the format   
%    month day, year at hours:minutes:seconds    
% with 24 characters 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% next.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function next; 
% interrupts, prints 'next', and waits for arbitrary input to continue 
% 
% 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%% showtime.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% function string=showtime(sec); 
% displays time given in seconds (default sec=toc) 
% in the format   
%    days:hours:minutes:seconds    
% with 16 characters if <100 days 
% 
% without output argument,  
% showtime(sec) displays time on screen  
% with output argument,  
% string=showtime(sec) returns time as a string 
% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%% sol2paper.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% stopTestBBO %%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
