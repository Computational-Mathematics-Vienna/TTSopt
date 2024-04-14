%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATbest.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global bbo SOLpath TEpath RESpath HITpath PDFpath
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis


if 0
gex     = 8;            % no. of correct decimals of gradient wanted
gradacc = 10^-gex;   % maximum norm of gradient wanted
else
gex     = 0.005;            % no. of correct decimals of gradient wanted
gradacc = 0.005;   % maximum norm of gradient wanted    
end
secmax  = 550;         % maximal time in seconds
bbo     = 1;
if bbo
    a = 2;b =200;c=5000;
    if a~=0 & b~=0 & c~=0
       nfmaxString = [num2str(a),'*n^2+',num2str(b),'*n+',num2str(c)];
    elseif a~=0 & b~=0 & c==0
       nfmaxString = [num2str(a),'*n^2+',num2str(b),'*n']; 
    elseif b~=0 & c~=0
       nfmaxString = [num2str(b),'*n+',num2str(c)];
    elseif b~=0 & c==0
       nfmaxString = [num2str(b),'*n'];   
    elseif c~=0
       nfmaxString = num2str(c);
    else
        error('error in choosing a,b,c')
    end
else
    nf2gmax = 150000;        % maximal nf+2*ng
end


n = 10;

if bbo
  eval(['funcnfmax =@ (n) ',nfmaxString]);
  nfmax = funcnfmax(n);
else
   nfmaxString =''; 
end



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
   if StanPoint 
      resdir=['resG1-',num2str(gex),'resN','-',nfmaxString,'-'...
            'resS',num2str(secmax),'E'] 
   else
      resdir=['resG1-',num2str(gex),'resN','-',nfmaxString,'-'...
            'resS',num2str(secmax),'N']
   end

end

if bbo
   if 1
   time = 2;
   resdir=[resdir,num2str(time)];
   end
end


% load TE
solverlist = {'VSBBOf' 'MCS2' 'BFO'};

eval(['load ',TEpath,'/TE.mat'])

         
% initialize tables

nso=length(solverlist);
table.pr=cell(0);
table.nf=cell(0);
table.sec=cell(0);

pr = 0;
for field = fieldnames(TE.problem)'
    prob          = field{1};
    probInfo      = getfield(TE.problem,prob);
 
   % locate test results
  
  
   fil=[RESpath,'/',resdir,'/',prob,'.mat'];
  
   exdata=1;
  if exist(fil)~=2 
    % result file does not exist; skip problem
    disp(['skipped ',prob,' (no file)']);
    continue; 
  end
  % load file
  eval(['load ',fil]);
  if exist(prob)==0
    % result structure not found; skip problem
    disp(['skipped ',prob,' (no results)']);
    continue; 
  end
  eval(['data=',prob,';']);
  
  if strcmp(prob,'SSCOSINE_1000000')|strcmp(prob,'SCURLY10_1000000')...
          |strcmp(prob,'SCURLY10_100000')
       continue; 
  end
  
  pr = pr +1;
  
  ind = findstr(prob,'_');
 
  if ~ isempty(ind)
     Orgiprob = prob(1:ind-1);
     table.pr{pr}=[Orgiprob,':',prob(ind+1:end)];
  else
     table.pr{pr}=prob;
  end
    
  if isfield(data,'dim') 
      table.dim{pr}=data.dim;
  else
       probInfo     = getfield(TE.problem,prob);
       dim          = probInfo.dim;
       table.dim{pr}= dim;
  end
  
  solvedByAll=1;
  for so=1:nso
    solvid=solverlist{so};
    if isfield(data,solvid) 
       
      sol=getfield(data,solvid); % content of data.<solvid>
      %table.time{pr,so}=sol.TotalTime;

      if isfield(sol,'funInfo')
        % new data format
        table.nf{pr,so}=sol.funInfo.nfabest;
        table.sec{pr,so}=sol.funInfo.asec;
   
      else
       
        table.nf{pr,so}=sol.info.nf;

        if isfield(sol.info,'sec'),
          table.sec{pr,so}=sol.info.sec;
        else
          table.sec{pr,so}=info.asec;
        end
        
      end

    else
     
      table.nf{pr,so}=Inf;
      table.sec{pr,so}=Inf;

    end
    
  end

end

npr = pr;
dim = table.dim;
for i=1:npr
    sdim(i)=dim{i};
end
[~,Idim]=sort(sdim);
table.dim = dim(Idim);
table.nf = table.nf(Idim,:);
table.sec = table.sec(Idim,:);


% result file

resfile=[RESpath,'/nfused.txt'];


fid=fopen(resfile,'w') ; % append to current file

if fid<0, 
  resfilen
  error('file not accessible = permissions?'); 
end;

text = cell(1+2*nso,1);
for i=2:nso+1
    text{i} = ['nf',solverlist{i-1}];
end
for i=nso+2:2*nso+1
    text{i} = ['sec',solverlist{i-1-nso}];
end 
text{1} = 'dim';

fprintf(fid,'%22s %24s %18s %19s %14s %18s %19s',text{:})

fprintf(fid, '\n')


Convernf0 = '%20d';Conversec0 = '%20e';

Conversec=Conversec0;Convernf=Convernf0;

 for i=2:nso+1
     Convernf = [Convernf,' ',Convernf0];
 end
 
 for i=2:nso
     Conversec = [Conversec,' ',Conversec0];
 end
 Conver = [Convernf,' ',Conversec,'\n'];
 
 nf=cell2mat(table.nf);
 sec=cell2mat(table.sec);
 dim=cell2mat(table.dim);

 A = [];
 for pr=1:npr
   textnf = []; textmsec = [];
   for j=1:nso
       textnf   = [textnf,nf(pr,j)];
       textmsec = [textmsec,sec(pr,j)];
   end
   A(:,pr) = [dim(pr),textnf,textmsec];
 end
 
fprintf(fid,Conver,A)
% print on resfile
fclose(fid);true
