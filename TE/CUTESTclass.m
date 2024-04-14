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
function [TE,problemlist,cl]=CUTESTclass(dir)


tic

global RESdiary CUTESTpath SOLpath TEpath RESpath HITpath
% RESdiary      % relative path of result diary
% CUTESTpath    % path to CUTEST directory, without / at the end
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory, without / at the end
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 




if nargin==0, dir=TEpath; end;

cpath=[CUTESTpath,'/sif'];

textlist=ls([cpath,'/*.SIF']);

first=findstr(textlist,cpath);
last=length(textlist);
npr=length(first)
problemlist=cell(1,npr);
cl=cell(npr,1);
noderiv=[];
badClass=[];

nc=length(cpath);
prlookfor=[];338;
for pr=1:npr
  enter=first(pr);
  if pr<npr, leave=first(pr+1)-1;
  else       leave=last;
  end;
  text=textlist(enter+nc:leave);
  i=findstr(text,'.');
  prob=text(1:i-1)
  if prob(1)=='/',prob=prob(2:end); end;
  problemlist{pr}=prob;

  fid= fopen([cpath,'/',prob,'.SIF'],'r') ;
  sif=textscan(fid,'%s');
  
  sif=sif{1};
   
  if ~isempty(prlookfor),
    if pr~=prlookfor, continue; end;
    pr,prob
    for line=1:min(100,length(sif)),
      disp(sif{line+1})
    end;
  end;
  done=0;
  for line=1:length(sif),
    if strcmp(sif{line},'classification'),
      classification=sif{line+1};
      
      cl{pr}=classification;
      
      if length(classification)<5,
        disp('additional keyword classification found')
        pr,prob,classification
      elseif classification(5)=='-'
        if classification(4)=='0', noderiv=[noderiv, pr]; end;
        done=1;
        break;
      end;
    end;
  end;
  if ~done, badClass=[badClass,pr]; end; 
  disp([prob,': ',classification]);
  fclose(fid);
end;

if ~isempty(prlookfor),
  disp('special problems looked up');
  return
end;
if isempty(noderiv),
  disp('all problems have first derivatives');
else
  disp('problems without first derivatives:');
  for pr=noderiv,
    disp(problemlist{pr});
  end;
end;
if isempty(badClass),
  disp('all problems have good classification');
else
  disp('problems without good classification:');
  for pr=badClass,
    disp(problemlist{pr});
  end;
end;

% place result into test environment data structure 
TE.problem=[];
npr=length(problemlist)

maxlen=0;
for pr=1:npr
  prob=problemlist{pr};
  classification=cl{pr};
  maxlen=max(maxlen,length(prob));
  ind=findstr(prob,'-');
  if ~isempty(ind),
    disp([prob,' shortened to ']);
    prob(ind)=[];
    disp(prob);
  end;
  probInfo=[];

  probInfo.name=prob;
  probInfo.class=classification;
  probInfo.obj=classification(1);
  probInfo.con=classification(2);
  probInfo.sm=classification(3);
  probInfo.der=classification(4);
  
  ind=findstr(classification,'-');
  probInfo.dim=sscanf(classification(ind(2)+1:ind(3)-1),'%i');
  probInfo.nc=sscanf(classification(ind(3)+1:end),'%i');
  
  switch prob
      case '3PK'
          prob='X3PK';
      case '10FOLDTR'
          prob='X10FOLDTR';
  end
  
  com=['TE.problem.',prob,'=probInfo;'];
  disp(com)
  eval(com)
  
end;

disp(['The maximal namelength is ',num2str(maxlen)]);
disp(['The number of problems is ',num2str(npr)]);

% save results in <dir>/TE.mat

whos dir

dir

eval(['save ',TEpath,'/TE.mat TE']);

showtime

end


