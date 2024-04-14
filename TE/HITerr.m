%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HITTerr.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global RESpath

problemlist = []; 

solverlist =  {'GLODS' 'GCES' 'PSwarm' 'adsmax' 'mdsmax' 'nmsmax'  ...
 'MDS' 'HOOKE' 'NELDER' 'SDBOX' 'ACRS' 'RDSfs' 'RDSvs' 'PRDS' ...
 'fminsearch' 'fminunc' 'BFO' 'CMAES' 'GLOBAL' 'MCS' 'DE' 'TRI1' ...
 'TRI2' 'PSM' 'BCDFO' 'VSBBO'};

%solverlist =  {'PSwarm'};


bbo =1;

% set accuracy and limits 
if ~bbo
   intgex = 1;  
   if intgex  % no. of correct decimals of gradient wanted
      gex = 4;  optcrit = 10^-gex;
   else
      gex = -inf;  optcrit = gex;
   end
   
else
   intqf = 1;
   if intqf 
      qfex = 4;  optcrit = 10^-qfex;
   else
      qfex = -inf;  optcrit = qfex;
   end 
end

 StanPoint = 0; % if standard initial point is used
 
% directory for saving partial results
if ~bbo
    StanPoint = 0; % if standard initial point is used
    if StanPoint 
       resdir=['resG1-',num2str(gex),'resN',num2str(nf2gmax),...
            'resS',num2str(secmax),'E'];  
    else
       resdir=['resG1-',num2str(gex),'resN',num2str(nf2gmax),...
            'resS',num2str(secmax),'N'];
    end

else
    StanPoint = 0; % if standard initial point is used
    if 1
       if StanPoint 
           resdir=['resQ1-',num2str(qfex),'resN','-',nfmaxString,'-'...
            'resS',num2str(secmax),'E'] 
       else
          resdir=['resQ1-',num2str(qfex),'resN','-',nfmaxString,'-'...
            'resS',num2str(secmax),'N'];
       end
    else
        if StanPoint 
            resdir=['resQ1-',num2str(qfex),'resN','-',nfmaxString,'-'...
            'resS',secmaxString,'E'] 
        else
             resdir=['resQ1-',num2str(qfex),'resN','-',nfmaxString,'-'...
            'resS',secmaxString,'N']
         end    
     end
end

n = selectBy.dim(2);

if 1
    eval(['funcnfmax =@ (n) ',nfmaxString]);
    nfmax = funcnfmax(n)
    next
else
    eval(['funcnfmax =@ (n) ',nfmaxString]);
    nfmax = funcnfmax(n);
    eval(['funcsecmax =@ (n) ',secmaxString]);
    secmax = funcsecmax(n);    
end

refsolver            = 'VSBBO';
sollist.refsolver1   = refsolver ;
infomax.nfmaxString  = nfmaxString;
infomax.secmaxString = secmaxString;

[table,failInfo,statInfo]=...
    STATcollect(problemlist,solverlist,resdir,infomax,refsolver);

nfmax = max(cell2mat(table.nfmax));
secmax = max(cell2mat(table.secmax));

table = STATtable(table,resdir, optcrit,secmax,nfmax);


npr   = length(table.pr) ; 
nso   = length(table.so);
nf    = cell2mat(table.nf);
fbest = cell2mat(table.fbest);

prob1 = cell(0);
sol1  = cell(0);
prob2 = cell(0);
sol2  = cell(0);

for pr=1:npr
    [nfbest,ibest] = min(nf(pr,:));
    if nfbest < 7
          if fbest(pr,ibest)<=-1e+50
              
              prob1  = [prob1 table.pr{pr}];
              sol1   = [sol1 table.so{ibest(1)}];
          else
              prob2  = [prob2 table.pr{pr}];
              sol2   = [sol2 table.so{ibest(1)}];
          end
    end  
end

com = ['save ',RESpath,'/',resdir,'/f_neq_Inf_problems.mat prob1 sol1'];
eval (com);
com = ['save ',RESpath,'/',resdir,'/Hit_not_good_problems.mat prob2 sol2'];
eval (com);
      
        
    




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
