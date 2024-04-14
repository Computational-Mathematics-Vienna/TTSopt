%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% stopTestBBO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function stopTestBBO(info,dim,func,x,hitlist,TEcase,firstHitUpdate,hitupdate)                                      
global finfo

Ic=finfo.Ic; Ii=finfo.Ii;

if ismember(TEcase,[2,13:21])
 x = max(finfo.ilow,min(x,finfo.iupp)); 
 finfo.x= x;  
 y = finfo.low+x.*(finfo.upp-finfo.low)./100;
 y=y';
 finit = func(y);
 if isnan(finit), finit=inf; end
elseif ismember(TEcase,[3,22:29])
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
  finfo.x= x;
  if strcmp(info.point,'N')
      xi    = Shiftofx(dim,clow,cupp);
      finit = func(x+xi);
  else
      finit = func(x);
  end
end

fopt           = hitlist.minf.f;
large          = 1e50;
finit          = max(-large,min(finit,large));
fopt           = max(-large,min(fopt,large));
finfo.finit    = finit;
ftar           = fopt+info.optcrit*(finit-fopt);
finfo.ftar     = ftar;
finfo.fopt     = fopt;
if ~firstHitUpdate&& ~hitupdate
    if finfo.finit<=finfo.fopt
       if ismember(TEcase,[2,13:21])
             x= max(finfo.ilow,min(40*ones(dim,1),finfo.iupp));  
             y = finfo.low+x.*(finfo.upp-finfo.low)./100;
             y=y';
             finit = func(y);
             if isnan(finit)
                finit=inf;
             end
             finfo.finit=finit;
             finfo.x= x;
             ftar           = fopt+info.optcrit*(finit-fopt);
             finfo.ftar     = ftar;
       elseif ismember(TEcase,[3,22:29])
            x(Ii)=  max(finfo.ilow,min(40*ones(length(Ii),1),finfo.iupp)); 
            y(Ii) = finfo.low(Ii)+x(Ii).*(finfo.upp(Ii)-finfo.low(Ii))./100;  
            y(Ic) = x(Ic);
            y = y';
            finit = func(y);
            if isnan(finit), finit=inf; end
            finfo.finit=finit;
            finfo.x= x;
            ftar        = fopt+info.optcrit*(finit-fopt);
            finfo.ftar  = ftar;
       end
     
    end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
