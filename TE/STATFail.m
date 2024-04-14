%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATFail.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% STATFail is going to solve test problems which one of solvers 
% could ulmost be solved by updating nf2gmax and secmax  
%
function STATFail

clear
clc
format compact
tic            % start timer

global CUTESTpath SOLpath TEpath RESpath HITpath PDFpath RESdiary 
global WORKpath
% CUTESTpath    % path to CUTEST directory
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis
% WORKpath      % path for directory where TE is run
% RESdiary      % relative path of result diary (set locally)


% set accuracy and limits 
gex=6;                   % no. of correct decimals of gradient wanted
gradacc=10^-gex;         % maximum norm of gradient wanted
limits.ngmax=inf;        % maximal number of gradients 
limits.nfmax=inf;        % maximal number of function values
limits.nf2gmax=inf;      % maximal nf+2*ng
secmax=2*24*60*60;       % 2 days
limits.secmax=secmax;    % bounds on number of seconds 
prt=0;   % print level (0 = nothing, >0: more and more)

nf2gmax = Inf;
secmax  = 350;

% selection rules to be used for the analysis
selectBy0.res         = 1;              % use saved data 
selectBy0.nf2g2       = [0 nf2gmax];
selectBy0.sec2        = [0 secmax];
selectBy0.solvedByAll = 0;
% prolist used for generating results
selectBy0.dim   = [1 3];
selectBy0.con   = [0 1];
selectBy0.res   = 1; % for the case where there are saved data 
sortBy0.key     = 'DNE';
sortBy0.inc     = 1;
glob=0;        % 1: global analysis

% directory for saving partial results
resdir=['resG1-',num2str(gex),'resN',num2str(nf2gmax),...
        'resS',num2str(secmax)]
    
    
   
flag = 0;

if flag 
   resdir0 = resdir;
end

% set solvers

solist =  {'l0' 'l1' 'l2' 'l3' 'CGdescent','asa','lbfgsb'};


iter = 0  ;
while  1
    
      %%%%%%%%%%%%%%%%%%%%%%%%%%%
      % 1. find listfail
      %%%%%%%%%%%%%%%%%%%%%%%%%%
      
      % load table2
      
      fil=[RESpath,'/',resdir,'/table2.mat'];
      if exist(fil)~=2,
         error('first run STATall')
      end
      load(fil)
      npr      = length(table2.pr);
      nso      = length(table2.so);
      table2f  = table2.ef3g;
      table2er = table2.err;
      %table2fg = table2.nf2g;
      listfail = cell(0);
      
      if flag
      
        for j=1:min(npr)
            
             ifail    = 0;iother=0;
             isecmax  = 0;inf2gmax=0;
          
            for i=1:nso
        
              if table2f{j,i}==0
                  switch num2str(table2er{j,i})
               
                  case 'nf2gmax reached'
                       ifail    = ifail+1;
                       inf2gmax = inf2gmax +1;
                  case 'secmax reached'
                       ifail   = ifail+1;
                       isecmax = isecmax+1;
                      otherwise
                       iother=iother+1;     
                  end
              end
            end
          
          
            if (nso-iother-ifail==0)  
              listfail = [listfail table2.pr{j}]
            end    
        end
      
      else
          
          % since flag is zeros and we are going select nf2gmax = inf,
          % choose a  solver  in  order  to  run all solvers  on test 
          % problems that the proposed solver could not  solve  them.
          
          
          for j=1:min(npr)
              if table2f{j,6}==0
                  switch num2str(table2er{j,6})
               
                  case 'nf2gmax reached'
                       listfail = [listfail table2.pr{j}];
                       
                      
                  case 'secmax reached'
                       listfail = [listfail table2.pr{j}];
                       
                   case 'accuracy reached'
                      otherwise
                      listfail = [listfail table2.pr{j}];  
                           
                  end
              end
              
          end
      end
      
      %prolist   = listfail
      
     
  listfail ={'DRCAV1LQ:4489'    'DRCAV2LQ:4489' ...
      'DRCAV3LQ:4489'    'FLETCBV3:5000'    'FLETCHBV:5000'   ...
      'NONCVXUN:5000'    'SBRYBND:5000'    'SCOSINE:5000' ...
    'SCOND1LS:5002'    'BRATU1D:5003'    'CURLY30:10000'    ...
        'FLETCBV3:10000'    'FLETCHBV:10000'    'NONCVXUN:10000'    ...
        'SCOSINE:10000'    'SCURLY10:10000'    'SSCOSINE:10000'   ...
        'DRCAV1LQ:10816'    'DRCAV2LQ:10816'    'DRCAV3LQ:10816' ...
    'MODBEALE:20000'    'SSCOSINE:100000'    'SSCOSINE:1000000'}
       prolist   = listfail
      next
      
                  
      
      % for example; convert OSCIGRAD:2 to OSCIGRAD_2 
       
       for i=1:length(prolist)
            prob = prolist{i};
           
             ind = findstr(prob,':');
 
             if ~ isempty(ind)
                Orgiprob       =  prob(1:ind-1);
                prolist{i} = [Orgiprob,'_',prob(ind+1:end)];
             else
                prolist{i} = prob;
             end
       end
      
      iter          =  iter + 1;
     
      
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      % 2. if prolist is empty, then stop %
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      
      if isempty(prolist)
         disp('There is not any list failed')
         break
      end
     
     
      %selectBy0.listfail = prolist

      % create problem info sorted selected attributes
      %prInfo=TEsort(resdir,solist,selectBy0,sortBy0);
      %prolist = prInfo.id
      
      %if iter==1
      %   listfail0 = prolist;
      %end
      
      next
      
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      % 3. update nf2gmax and secmax in %
      %    order to run again           %
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      
      if flag
      
         if isecmax ~=0
            secmax  = 10*secmax;
         end
      
         if nf2gmax ~=0
            nf2gmax = 4*nf2gmax ;
         end
      
      else
           secmax  = 10800;
           nf2gmax = inf ;
      end
          
       
      % creae new directory for saving partial results
      
      resdir=['resG1-',num2str(gex),'resN',num2str(nf2gmax),...
                'resS',num2str(secmax)]
       ex=exist([RESpath,'/',resdir])
       if ex~=7, eval(['! mkdir ',RESpath,'/',resdir]); end;

       limits.nf2gmax = nf2gmax; 
       limits.secmax  = secmax;
       
       selectBy0.nf2g2  = [0 nf2gmax];
       selectBy0.sec2   = [0 secmax];
       

      %%%%%%%%%%%%%%%%%%
      % run CUTESTruns %
      %%%%%%%%%%%%%%%%%%
       
       start  = 1;
      
       CUTESTruns(prolist,solist,limits,gradacc,...
                    resdir,start,prt);
                
       disp(['all problems finished in iteration',iter])
       
       % run STATcollect and STATtable to obtain table2 
       
       [table,failInfo,statInfo]=...
       STATcollect(prolist,solist,resdir,refsolver)
   
       if flag

         table2 = STATtable(table,optcrit,glob);
         fil    = [RESpath,'/',resdir,'/table2.mat'];
         save(fil) 
         
       else
           break
       end
end

if flag

  limits.nf2gmax = nf2gmax;
  limits.secmax  = secmax;
       
  selectBy0.nf2g2  = [0 nf2gmax];
  selectBy0.sec2   = [0 secmax];

  prolist = listfail0;

  for i=1:length(prolist)
     prob = prolist{i};
           
     ind = findstr(prob,':');
 
     if ~ isempty(ind)
         Orgiprob       =  prob(1:ind-1);
         prolist{i} = [Orgiprob,'_',prob(ind+1:end)];
     else
         prolist{i} = prob;
     end
  end

  selectBy0.listfail = prolist

  % create problem info sorted selected attributes
  prInfo=TEsort(resdir0,solist,selectBy0,sortBy0);
  prolist = prInfo.id

  %%%%%%%%%%%%%%%%%%
  % run CUTESTruns %
  %%%%%%%%%%%%%%%%%%

  resdir=['resG1-',num2str(gex),'resN',num2str(nf2gmax),...
        'resS',num2str(secmax)]
  ex=exist([RESpath,'/',resdir])
  if ex~=7, eval(['! mkdir ',RESpath,'/',resdir]); end;

       
  start  = 1;
      
  CUTESTruns(listfail0,solist,limits,gradacc,resdir,start,prt);
  disp('all problems finished')

  % run STATanalysis to obtain results.pdf and figures

  STATanalysis(resdir,gradacc,solist,prolist,selectBy0,sortBy0)

  open('results.pdf')

else
   STATanalysis(resdir,gradacc,solist,prolist,selectBy,sortBy)
   open('results.pdf')
end
    


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       
       
       
       
       
         


       
