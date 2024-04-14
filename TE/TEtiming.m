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

function Output=TEtiming(func,dfunc,n,low,upp,prob,options)

global fginfo
fginfo=[];
fginfo.solver='';
fginfo.prob=prob;
fginfo.func=func;
fginfo.low=low; 
fginfo.upp=upp;
fginfo.gradacc=0;
fginfo.ngmax=inf;
fginfo.nfmax=inf;
fginfo.nf2gmax=inf;
fginfo.secmax=inf;
fginfo.redgrad=0;
fginfo.acc=NaN;
fginfo.nf=0;
fginfo.ng=0;
fginfo.nf2g=0;
fginfo.f=NaN;
fginfo.fbest=inf;
fginfo.xfbest=nan+low;
fginfo.nfbest=0;
fginfo.ngbest=0;
fginfo.a2best=inf;
fginfo.x2best=nan+low;
fginfo.f2best=inf;
fginfo.nf2best=0;
fginfo.ng2best=0;
fginfo.a2sec=0;
fginfo.abest=inf;
fginfo.xabest=NaN+low;
fginfo.fabest=NaN;
fginfo.nfabest=0;
fginfo.ngabest=0;
fginfo.asec=0;
fginfo.nextacc=1;
fginfo.kacc=0;
fginfo.nacc=cell(0);
fginfo.nfacc=cell(0);
fginfo.fsec=NaN;        
fginfo.fbestf2f=inf(5,7);
fginfo.abestf2f=inf(5,7);
fginfo.maxInfeas=0;
fginfo.time2print=cputime+1;
fginfo.time2print0=cputime+1;
fginfo.cpu0=cputime;
fginfo.gradacc=-Inf;
fginfo.error='';
x=rand(n,1);
dim = length(x);
fginfo.shift= Shiftofx(dim,low,upp);
fginfo.bbo=options.bbo;
fginfo.point=options.point;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% computes secf1, secg1 and secfg1   %
% by cutest_obj and cutest_grad      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tic
for k=1:1000
     f=func(x);
end
Output.secf1=toc/1000;

tic
for k=1:1000
    g=dfunc(x);
end
Output.secg1=toc/1000;

tic
for k=1:1000
    [f,g]=func(x);
end
Output.secfg1=toc/1000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% computes secf2, secg2 and %
% secfg2 by getfg.m %       %                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tic
for k=1:1000
   [f]=funf(x);
end
Output.secf2=toc/1000;

tic
for k=1:1000
    [g]=fung(x);
end
Output.secg2=toc/1000;

tic
for k=1:1000
    [f,g]=funfg(x);
end
Output.secfg2=toc/1000;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
