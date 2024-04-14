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
function TESTstop(dim,func,x,hitlist,RUNparam)
global finfo WORKpath



if isOctave
  if ~ischar(func)
    func = func2str(func);
  end
  if ~isempty(strfind(func,"cutest_obj")) 
    CUTESTsrc = [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/',...
      'cutest/src/octave'];
    addpath(CUTESTsrc)
    unix(['cp ',WORKpath,'/TEprob/Collections/CUTEst/MEX/mex/', ...
      finfo.name, '/*.mex ',WORKpath,'/TE']);
    unix(['cp ',WORKpath,'/TEprob/Collections/CUTEst/MEX/mex/', ...
      finfo.name,'/*.d ',WORKpath,'/TE']);
    clear ocutest
    try
      pr = cutest_setup();
    catch
      5555
      cutest_terminate();
      pr = cutest_setup();
    end
  end
  if ischar(func)
    func = str2func(func);
  end
end

Ic=finfo.Ic; Ii=finfo.Ii;
if ismember(RUNparam.TEcase,[2,13:21])
     x = max(finfo.ilow,min(x,finfo.iupp)); 
     finfo.x= x;  
     y = finfo.low+x.*(finfo.upp-finfo.low)./100;
     y=y';
     finit = func(y);
     if isnan(finit), finit=inf; end
elseif ismember(RUNparam.TEcase,[3,22:29])
    x(Ic) = max(finfo.clow,min(x(Ic),finfo.cupp));
    x(Ii) = max(finfo.ilow,min(x(Ii),finfo.iupp));
    finfo.x= x;
    y(Ii) = finfo.low(Ii)+x(Ii).*(finfo.upp(Ii)-finfo.low(Ii))./100;  
    y(Ic) = x(Ic);
    y = y';
    finit = func(y);
    if isnan(finit), finit=inf; end
else
  x = max(finfo.low,min(x,finfo.upp));
  finfo.x= x; finit = func(x);
end

fopt           = hitlist.minf.f;

large          = 1e50;
finit          = max(-large,min(finit,large));
fopt           = max(-large,min(fopt,large));
finfo.finit    = finit;
ftar           = fopt+RUNparam.accf*(finit-fopt);
finfo.ftar     = ftar;
finfo.fopt     = fopt;
if ~RUNparam.initHitVar&& ~RUNparam.updateHitVar
    if finfo.finit<=finfo.fopt
       if ismember(RUNparam.TEcase,[2,13:21])
             x= max(finfo.ilow,min(40*ones(dim,1),finfo.iupp));  
             y = finfo.low+x.*(finfo.upp-finfo.low)./100;
             y=y'; finit = func(y);
             if isnan(finit), finit=inf; end
             finfo.finit = finit; finfo.x= x;
             ftar   = fopt+RUNparam.accf*(finit-fopt);
             finfo.ftar  = ftar;
       elseif ismember(RUNparam.TEcase,[3,22:29])
            x(Ii)  =  max(finfo.ilow,min(40*ones(length(Ii),1),...
                      finfo.iupp)); 
            y(Ii)  = finfo.low(Ii)+x(Ii).*(finfo.upp(Ii)-...
                     finfo.low(Ii))./100;  
            y(Ic)  = x(Ic);
            y      = y';
            finit = func(y);
            if isnan(finit), finit=inf; end
            finfo.finit=finit; finfo.x= x;
            ftar = fopt+RUNparam.accf*(finit-fopt);
            finfo.ftar  = ftar;
       end
    end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
