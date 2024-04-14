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
function [x,dim,t2,func,RUNparam,skipProb]= ...
                                  TESTprob(TE,probnam,RUNparam)
   
global MEXpath WORKpath CUTESTsrc finfo RESpath TEpath

skipProb=0; prt = finfo.prt;
x=[];dim=[]; t2=[]; func=[]; probInfo=[];
switch probnam
   case '3PK', probnam='X3PK';
   case '10FOLDTR', probnam='X10FOLDTR';
end

Inm = findstr(probnam,'_');
if ~isempty(Inm), origProb = probnam(1:Inm(1)-1);
else, origProb = probnam;
end

setupErr = {'TORSION111_16' 'SCURLY20' 'SCURLY30' 'BLEACHNG' ...
       'SSCOSINE_1000000' 'SCURLY10_1000000' 'SCURLY10_100000' 'VAREIGVL_10' ...
       'CHARDISO_2000' 'CHARDISO_4000' 'HARKERP2_5000' 'SENSORS_1000'};
if ismember(probnam,setupErr)
  if prt>0, disp(['skipped ',probnam,' (no results)']); end
  skipProb=1;  finfo.name  = [];
  return; 
end
if prt>0, disp(probnam), end
probInfo       = getfield(TE.problem,probnam);
probInfo.name  = probnam;
dim            = probInfo.dim;
finfo.name    = probnam;
if RUNparam.defaultDim && probInfo.vardim && isfield(probInfo,'runinfo')
   if prt > 0, disp(['skipped ',probnam,' (no results)']), end
    skipProb=1; 
    finfo.name  = [];
    return
end
con=probInfo.con; finfo.con=con;
if prt, disp(['con = ',con]), end
notCon = ~(con=='U' || con=='X' || con=='B' || con=='L');
% restrict to unconstrained or bound constrained problems
if notCon % problem not bound constrained
skipProb=1;  finfo.name  = [];
return
end
if ismember(RUNparam.TEcase,1:3)
    Imi = findstr(probnam,'_MI_i');
    if ~isempty(Imi) % choose orginal name to run mcutest/ocutest
        probnamOrg = probnam(1:Imi(1)-1);
    else
        probnamOrg = probnam;
    end
    

    if ~isOctave
      eval(['addpath ',CUTESTsrc,'/cutest/src/matlab'])
      unix(['cp ',[MEXpath,'/',probnamOrg,'/*mexa64 '],WORKpath,'/EXE']);
    else
      eval(['addpath ',CUTESTsrc,'/cutest/src/octave'])
      unix(['cp ',[MEXpath,'/',probnamOrg,'/*mex '],WORKpath,'/EXE']);
    end
    unix(['cp ',[MEXpath,'/',probnamOrg,'/*d '],WORKpath,'/EXE']);
    eval(['cd ',WORKpath,'/EXE'])
    eval(['addpath ',CUTESTsrc,'/cutest/bin/'])
    eval(['addpath ',WORKpath,'/TE'])
    t1=cputime;

    try
        probstr=cutest_setup();
    catch
        cutest_terminate();probstr=cutest_setup();
    end

    if prt, CUTESTsetupTime=showtime(cputime-t1), end
    t2=cputime;
    % assign function handle and bounds
    func = @(x) cutest_obj(x);
    low  = probstr.bl; upp  = probstr.bu;
    
    constrInfo=[];
    if isfield(probstr,'cl'), constrInfo.cl = probstr.cl; end
    if isfield(probstr,'cu'), constrInfo.cu = probstr.cu; end
    if isfield(probstr,'equatn'), constrInfo.E = probstr.equatn;end
    if isfield(probstr,'m'), constrInfo.m= probstr.m; end
    if isfield(probstr,'v'), constrInfo.v = probstr.v; end
    RUNparam.constrInfo = constrInfo; dim = length(low);
    finfo.name=probnam;
    % new chane
    if strcmp(probInfo.con,'L')
      %   minimize    func(x)
      %       s.t.    A * x in b=[bl,bu],
      %                   x in [low,upp]. 
      [~,A] = cutest_cons(probstr.x);
      E     = find(probstr.equatn==1);
      m     = probstr.m;
      P     = setdiff(1:m,E);
      bl = probstr.cl; 
      bu = probstr.cu;
      RUNparam.constrInfo.bl = bl;
      RUNparam.constrInfo.bu = bu;
      RUNparam.constrInfo.E  = E;
      RUNparam.constrInfo.P  = P;
      RUNparam.constrInfo.A  = A;
    end

    %RJ: here we create the DotMat files
%    createStruct(probstr,RUNparam.constrInfo)

    
    flagcon = strcmp(probInfo.con,'X')||...
             strcmp(probInfo.con,'B')||...
             strcmp(probInfo.con,'U');
 
    if flagcon
       fil=[RESpath,'/',RUNparam.resDir,'/',probInfo.name,'.mat'];
       if exist(fil)==2
          com=['load ',RESpath,'/',RUNparam.resDir,'/',...
               probnam,'.mat ',probInfo.name,';'];
          eval(com)
       end

      % for determining nfree in results.pdf 
      probDesc.low    = low;
      probDesc.upp    = upp;
      eval([probnam,'.probDesc=probDesc;']);

      fil=[RESpath,'/',RUNparam.resDir,'/',probnam,'.mat'];
      if exist(fil)==2
           com=['save -mat ',RESpath,'/',RUNparam.resDir,'/',...
                 probnam,'.mat ',probnam,';'];
           eval(com)
      end
       % assigns probDesc to probnam
    end

    if RUNparam.TEcase==0
        % project initial point
        x     = max(low,min(probstr.x,upp));
        if ~strcmp(RUNparam.point,'E'), x = max(low,min(0,upp)); end
       finfo.low   = low;
       finfo.upp   = upp;
       finfo.clow  = low;
       finfo.cupp  = upp;
       RUNparam.indMI = zeros(1,length(low));
       indMI      = RUNparam.indMI;
       finfo.Ic   = find(indMI==0); finfo.Ii   = [];
       RUNparam.Ic = finfo.Ic; RUNparam.Ii = finfo.Ii;
       RUNparam.bounds.low   = low;
       RUNparam.bounds.upp   = upp;
       RUNparam.bounds.clow  = low; 
       RUNparam.bounds.cupp  = upp;
       RUNparam.bounds.ilow  = []; 
       RUNparam.bounds.iupp  = [];
    elseif RUNparam.TEcase==1
        x= max(low,min(probstr.x,upp));
        low  = x-10*ones(dim,1); upp  = x+10*ones(dim,1);
        if ~strcmp(RUNparam.point,'E'), x = max(low,min(0,upp)); end
        finfo.low = low; finfo.upp = upp; finfo.clow = low;
        finfo.cupp = upp; finfo.ilow = []; finfo.iupp = [];
        RUNparam.indMI = zeros(1,length(low));
        indMI = RUNparam.indMI;
        finfo.Ic = find(indMI==0); finfo.Ii=[];
        RUNparam.Ic = finfo.Ic;  RUNparam.Ii = finfo.Ii;
        RUNparam.bounds.low   = low;  RUNparam.bounds.upp   = upp;
        RUNparam.bounds.clow  = low;  RUNparam.bounds.cupp  = upp;
        RUNparam.bounds.ilow  = [];   RUNparam.bounds.iupp  = [];
    elseif RUNparam.TEcase==2 % CUTEst with integer variables
       x0   = 50*ones(dim,1); 
       low = probstr.x-10*ones(dim,1); upp = probstr.x+10*ones(dim,1);
       RUNparam.indMI = ones(1,length(low));
       indMI = RUNparam.indMI; finfo.Ii = find(indMI==1); finfo.Ic=[];
       RUNparam.Ic = finfo.Ic; RUNparam.Ii = finfo.Ii;
       ilow = zeros(dim,1); iupp=100*ones(dim,1); clow = []; cupp=[];
       finfo.low=low; finfo.upp=upp;
       finfo.clow = clow; finfo.cupp = cupp;
       finfo.ilow = ilow; finfo.iupp = iupp;
       RUNparam.bounds.low   = low;  RUNparam.bounds.upp   = upp;
       RUNparam.bounds.clow  = clow; RUNparam.bounds.cupp  = cupp;
       RUNparam.bounds.ilow  = ilow; RUNparam.bounds.iupp  = iupp;
       % project initial point
       x = max(ilow,min(x0,iupp));
    else % CUTEst with mixed-integer variables
       x     = probstr.x;
       indMI = probInfo.indMI;
       Ic    = find(indMI==0); Ii    = find(indMI==1);
       ilow  = zeros(length(Ii),1); iupp  = 100*ones(length(Ii),1);
       low   = x-10*ones(dim,1); upp   = x+10*ones(dim,1);
       clow  = low(Ic); cupp  = upp(Ic);
       x(Ii) = max(ilow,min(iupp,50*ones(length(Ii),1)));
       % project initial point
       if ~strcmp(RUNparam.point,'E'), x(Ic) = max(clow,min(0,cupp));end
       x(Ic)= max(clow,min(x(Ic),cupp));
       RUNparam.indMI=probInfo.indMI;
       RUNparam.Ic = Ic; RUNparam.Ii = Ii;
       RUNparam.bounds.low   = low; RUNparam.bounds.upp   = upp;
       finfo.Ic = Ic; finfo.Ii=Ii; finfo.low=low; finfo.upp=upp;
       finfo.clow = clow; finfo.cupp = cupp;
       finfo.ilow = ilow; finfo.iupp = iupp;
       RUNparam.bounds.clow  = clow; RUNparam.bounds.cupp  = cupp;
       RUNparam.bounds.ilow  = ilow; RUNparam.bounds.iupp  = iupp;
    end
else
  if ismember(RUNparam.TEcase,22:29)
     Inm = findstr(probnam,'_M'); probnam0 = probnam(1:Inm(1)-1);
     t2=cputime;
     eval(['addpath ',TEpath,'/DotMat'])
     TEpathprob = [TEpath,'/DotMat'];
     fil=[TEpathprob,'/',probnam0,'.mat'];
     if exist(fil)~=2 % result file does not exist; skip problem
       if prt > 0, disp(['skipped ',probnam0,' (no file)']), end
       skipProb=1;
       return; 
     end
  else
     t2=cputime;
     eval(['addpath ',TEpath,'/DotMat'])
     TEpathprob = [TEpath,'/DotMat'];
     fil=[TEpathprob,'/',probnam,'.mat'];
     if exist(fil)~=2 % result file does not exist; skip problem
        if prt > 0 , disp(['skipped ',probnam,' (no file)']), end
        skipProb=1;
     end
   end
   % load file
   eval(['load ',fil,';'])
   [sensef,func,low,upp,x,xtype,hitInfo,constrInfo] = ...
                        getProbInfo(dim,S,probnam,RUNparam.probCollect);
   RUNparam.constrInfo = constrInfo;
   fil=[RESpath,'/',RUNparam.resDir,'/',probnam,'.mat'];
   if exist(fil)==2
      com=['load ',RESpath,'/',RUNparam.resDir,'/',...
            probnam,'.mat ',probnam,';'];
      eval(com)
  end
  % for determining nfree in results.pdf 
  probDesc.low    = low; probDesc.upp    = upp;
  eval([probnam,'.probDesc=probDesc',';']);
  fil=[RESpath,'/',RUNparam.resDir,'/',probnam,'.mat'];
  if exist(fil)==2
       com=['save -mat ',RESpath,'/',RUNparam.resDir,'/',...
           probnam,'.mat ',probnam,';'];
       eval(com)
  end
  if ismember(RUNparam.TEcase,13:21) % integer variables
       Ic = []; Ii = 1:dim;  
       RUNparam.indMI=Ii; RUNparam.Ic = Ic; RUNparam.Ii = Ii;
       ilow  = zeros(dim,1); iupp  = 100*ones(dim,1);
       low   = x-10*ones(dim,1); upp   = x+10*ones(dim,1);
       finfo.clow = []; finfo.cupp = [];
       finfo.low  = low; finfo.upp  = upp;
       finfo.ilow = ilow; finfo.iupp = iupp;
       finfo.Ic   = Ic; finfo.Ii   = Ii;
       RUNparam.bounds.low  = low;  RUNparam.bounds.upp  = upp;
       RUNparam.bounds.clow = [];  RUNparam.bounds.cupp = [];
       RUNparam.bounds.ilow = ilow;  RUNparam.bounds.iupp = iupp;
       x = 50*ones(dim,1); 
       % project initial point
       x = max(ilow,min(x,iupp));
  elseif ismember(RUNparam.TEcase,22:29) % mixed-integer variables
       indMI = probInfo.indMI;
       Ic    = find(indMI==0); Ii  = find(indMI==1);
       ilow  = zeros(length(Ii),1); iupp = 100*ones(length(Ii),1);
       low   = x-10*ones(dim,1); upp = x+10*ones(dim,1);
       clow  = low(Ic); cupp  = upp(Ic);
       x(Ii) = max(ilow,min(iupp,50*ones(length(Ii),1)));
       % project initial point
       if ~strcmp(RUNparam.point,'E'), x(Ic) = max(clow,min(0,cupp));end
       x(Ic)= max(clow,min(x(Ic),cupp));
       RUNparam.indMI=probInfo.indMI;
       RUNparam.Ic = Ic; RUNparam.Ii = Ii;
       RUNparam.bounds.low = low;  RUNparam.bounds.upp   = upp;
       finfo.Ic = Ic; finfo.Ii=Ii;
       finfo.low=low; finfo.upp=upp;
       finfo.clow = clow; finfo.cupp = cupp;
       finfo.ilow = ilow; finfo.iupp = iupp;
       RUNparam.bounds.clow  = clow;  RUNparam.bounds.cupp  = cupp;
       RUNparam.bounds.ilow  = ilow;  RUNparam.bounds.iupp  = iupp;
  else
       low  = x-10*ones(dim,1); upp  = x+10*ones(dim,1);
       if ~strcmp(RUNparam.point,'E'), x = max(low,min(0,upp));end
       finfo.low=low; finfo.upp=upp; finfo.clow=low; finfo.cupp=upp;
       finfo.ilow=[]; finfo.iupp=[];
       RUNparam.indMI = zeros(1,length(low));
       indMI = RUNparam.indMI;
       finfo.Ic = find(indMI==0); finfo.Ii=[];
       RUNparam.Ic = finfo.Ic; RUNparam.Ii = finfo.Ii;
       RUNparam.bounds.clow = low; RUNparam.bounds.cupp = upp;
       RUNparam.bounds.low  = low; RUNparam.bounds.upp  = upp;
       RUNparam.bounds.ilow = []; RUNparam.bounds.iupp = [];
       % project initial point
       x = max(low,min(x,upp));
  end
end

if RUNparam.TypeVar==0 % continuous
    for i=1:dim, RUNparam.type{i}='c'; end
    %RUNparam.indMI = zeros(length(clow),1);
elseif RUNparam.TypeVar==1 % integer
    for i=1:dim, RUNparam.type{i}='i'; end
  %  RUNparam.indMI = ones(length(clow),1);
elseif RUNparam.TypeVar==2 % mixed-integer
    indMI=RUNparam.indMI;
    for ii=1:length(indMI) 
        if indMI(ii),RUNparam.type{ii}='i'; 
        else
           RUNparam.type{ii}='c';
        end
    end
else % category
    for i=1:dim, RUNparam.cat{i}='k'; end
end
if isfield(RUNparam,'type'), RUNparam.bounds.type = RUNparam.type; end
if isfield(RUNparam,'cat'), RUNparam.bounds.cat  = RUNparam.cat; end
eval(['funcnfmax =@ (n) ',RUNparam.nfmaxString,';']);
RUNparam.nfmax = funcnfmax(dim);
eval(['funcsecmax =@ (n) ',RUNparam.secmaxString,';']);
RUNparam.secmax = funcsecmax(dim);
finfo.TEcase = RUNparam.TEcase; finfo.indMI = RUNparam.indMI;
if prt>0, probInfo, end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
