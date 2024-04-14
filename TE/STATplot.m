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
function table=STATplot(selectBy,table,info)

global PDFpath TEpath bbo RESpath 


tau       = [1:9,1e1,2e1,5e1,1e2,2e2,5e2,1e3];
color     = {'b' 'r' 'g'  'k' 'm' 'c' 'b' 'r' 'g'  'k' 'm' 'c' 'b' 'r' ...
'g'  'k' 'm' 'c' 'b' 'r' 'g'  'k' 'm' 'c' 'b' 'r' 'g'  'k' 'm' 'c' 'b' ...
'r' 'g'  'k' 'm' 'c'};
lines     = {'-' ':' '-.' '--' ':' '-' '-' ':' '-.' '--' ':' '-' '-' ...
':' '-.' '--' ':' '-' '-' ':' '-.' '--' ':' '-' '-' ':' '-.' '--' ':'...
'-' '-' ':' '-.' '--' ':' '-'};
linewid   = ones(1,36);
mark      = {'o' '+' '*' '.' 'x'  's' 'd' '^' 'v' '>' '<' 'p' 'h' ...
'o' '+' '*' '.' 'x'  's' 'd' '^' 'v' '>' '<' 'p' 'h' 'o' '+' '*' '.' ...
'x' 's' 'd' '^' 'v' '>'  };

info.tau       = tau;
info.lines     = lines;
info.color     = color;
info.linewid   = linewid;
info.mark      = mark;



if info.loadfigs
    eval(['load ',RESpath,'/',resdir,'/AllTable.mat'])
    table = AllTable.table0;    
else
    info.PDFpath=PDFpath; info.TEpath=TEpath; info.RESpath=RESpath;
    
      
    [table,info]=ProbChoicePlot(table,selectBy,info);


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % if the number of solvers is greater  %
    % than nsolplot then choose nsolplot   %
    % best solvers among them              %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    [table,info]=ChoiceSolPlot(table,bbo,info);


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % performance plot for both unconstrained %
    % and box constained problems             %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    
    un = selectBy.con(1)==0&selectBy.con(2)==0
    box = selectBy.con(1)==1&selectBy.con(2)==1
    all = selectBy.con(1)==0&selectBy.con(2)==1
        
    
            
            for j=1:3
               figure(info.fig);clf;
               switch j
                  case 1,info.cas=0;
                   if ~all, continue; end
                  case 2,info.cas=1;
                  if box, continue; end
                  case 3,info.cas=2;
                  if un, continue; end
               end
               
               
              
                nso = length(table.Nso);
               
                for so=1:nso
                    
                    
                   if strcmp(table.Nso{so},info.MoralesSol1)
                     info.ib1 = so;
                   end
                   
                    if strcmp(table.Nso{so},info.MoralesSol2)
                     info.ib2 = so;
                   end
                   
                   
                end
               
               
             for i=1:2
                 info.i=i; figure(info.fig);clf;
                  info.mp=0;
                  % select data
                 [table,info]=GenDataBB(table,info);
                 table=PerformProfile(table,info);
                 [table,info]=GenDataBB(table,info);
                 table=DataProfile(table,info);
                 
                 info.sol1 = table.Nso{info.ib1};
                 info.sol2 = table.Nso{info.ib2}; 
                     
                 info.mp=1;
                 [table,info]=GenDataBB(table,info);
                 table=MoralesProfile(table,info);
             end
             info.mp=0;
              for i=1:4
                  info.i=i; figure(info.fig);clf;
                  % select data
                  [table,info]=GenDataBB(table,info);
                  table = BoxPlotBBO(table,info);
              end
              
            
             if info.ConvePlotFlag
                table = ConvergePlot(table,optcrit,info);
             end
           
            end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    



