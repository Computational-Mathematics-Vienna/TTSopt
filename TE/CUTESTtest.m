%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CUTESTtest.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% test for the CUTEst installation
% runs the CUTEst functions: cutest_setup, cutest_terminate and
% cutest_objcons
%

[ok] = TEpaths;

global CUTESTpath  TEpath WORKpath

CUTESTpath,  TEpath, WORKpath
prob='STCQP1_5'; % case 1
%prob='QUDLIN'; % case 2
%prob='CHENHARK';% case 3
%prob='AKIVA'; % case 4

eval(['cd ',WORKpath])

eval(['load ',TEpath,'/TE.mat'])

probInfo  = getfield(TE.problem,prob)

ind = findstr(prob,'_');

if ~ isempty(ind)
   prob = prob(1:ind-1);
end


testcase=1;  % 0 or 1, neither version currently works;

if testcase,
    
  com         = [CUTESTpath,'/cutest/bin/cutest2matlab ',prob];
  [s,w]       = unix(com);
    
  
  if isfield(probInfo,'runinfo')
            
     if length(probInfo.runinfo)==1  
         
       com =['! sifdecoder -param',' ',probInfo.runinfo{1},' ',prob];
       
     elseif length(probInfo.runinfo)==2 
    
       com = ['! sifdecoder -param ',...
             'probInfo.runinfo(1)','-param ',...
             'probInfo.runinfo(2)',' ',prob];
     
     elseif length(probInfo.runinfo)==3
         
           com = ['! sifdecoder -param ',...
              'probInfo.runinfo(1)','-param ',...
              'probInfo.runinfo(2)','-param ',...
              'probInfo.runinfo(3)',' ',prob]; 
     end
  else
         com=['! sifdecoder',' ', prob];
  end
  
  [ss,ww]=unix(com)

  probstr=cutest_setup(1)
  
  if isfield(probstr,'cl')  
      probstr.cl'
  end
  
  if isfield(probstr,'cu')  
      probstr.cu'
  end
  
 [f,fc] = cutest_objcons(probstr.x);


  cutest_terminate
  return
else 
      
  com=['sh -c',' "',CUTESTpath,'/cutest/bin/runcutest',...
       ' --command --package matlab --decode ',prob,'"'];
                  
  [s,w]=unix(com)
  probstr=cutest_setup(1)
  cutest_terminate

  return
end


