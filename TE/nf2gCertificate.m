
function table=nf2gCertificate(table,info)

fields=fieldnames(info);
for i=1:length(fields),
    field=fields{i};
    eval([field,'=info.',field,';']);
end;





dat1   = table.Nnf;
dat2   = table.Nng;
dat3   = table.dim;
dat4   = table.Nmsec;
dat1   = cell2mat(dat1);
dat2   = cell2mat(dat2);
dat3   = cell2mat(dat3);

dat4=1e-6*cell2mat(dat4);

info.nso = length(table.Nso); 

ibug=0;
d0 = [1 2 5 10 20 50 100 500 1000 5000 20000 100001];
for i=1:info.nso

     close;figure(i);clf;
     ind=1:4;
     aso{i}=table.Nso{i};
     A(:,1)=dat1(:,i);
     A(:,2)=dat1(:,i).*dat3;
     A(:,3)=dat2(:,i);
     A(:,4)=dat2(:,i).*dat3;
     b= dat4(:,i);
     x=zeros(4,1);
     rep=1;
     while rep,
         rep=0;
         AA=A(:,ind>0);
         if 0,
             b=bb;
         else
         D = diag(1./(b+1e-4*max(b)));
         AA = D*AA;
         bb  = D*b;
         end;
         B     = AA'*AA;
         B     = B +diag(1e-8*diag(B));
         warning off
         x(ind>0)     = B\(AA'*bb);
         warning on
         if x(4)<0 | (x(4)>0 & x(3)+min(b)*x(4)<0),
             %444,x,next
             x(4)=0;
             ind(4)=0;
             rep=1;
         elseif x(2)<0 | (x(2)>0 & x(1)+min(b)*x(2)<0),
             %222,x,next
             x(2)=0;
             ind(2)=0;
             rep=1;
         elseif x(3)<0,
             %333,x,next
             x(3)=0;
             ind(3)=0;
             rep=1;
          elseif x(1)<0,
             %111,x,next
             x(1)=0;
             ind(1)=0;
             rep=1;          
         end
    end % while


    Ax = A*x;
    loglog(b,Ax,'mo',...
                'LineWidth',0.01,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],...
                'MarkerSize',5)
            hold on
            xlimit=[min(b),max(b)];
            plot(xlimit,xlimit);
     title(aso{i},'fontsize',titleFigureSize);
     xlabel('{\bf msec}','fontsize',xlabelSize);
     ylabel('{\bf prediction}','fontsize',ylabelSize) 
     xlim(xlimit);
     ylim(xlimit);
     set(gca,'FontSize',14)
     table.figname.Axb{i} = [figAxb,aso{i}];
     com=['print -depsc2 ',info.PDFpath,'/',table.figname.Axb{i},'.eps'];
     disp(com)
     eval(com)
     com=['print -dpng ',info.PDFpath,'/',table.figname.Axb{i},'.png'];
     disp(com)
     eval(com)


     table.qnsol{i} = aso{i};
     table.x1upx4{i} = x;

     if (x(1)==0 & x(2)==0)|(x(3)==0&x(4)==0)|(x(4)==0&x(2)==0)
         ibug=ibug+1;
         continue
     end


     if ibug~=0, ib=i-ibug; else, ib=i; end


     table.figname.qn{ib}   = [figqn,aso{ib}];
     table.figname.sol{ib}  = aso{ib};
     for j=1:length(dat3)
        q(j) = (x(3)+x(4)*dat3(j))/(x(1)+x(2)*dat3(j))-1;
     end
     
     hold off
     semilogx(dat3,q,'mo',...
                'LineWidth',0.01,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],...
                'MarkerSize',5)
      q(~isfinite(q))=[];
     

     if length(q)>1,
       ylim([min(q),max(q)]);
     elseif length(q)==1,
       ylim([0,max(q)+1]);
     else
       xxx=min(dat3)
       plot(xxx,1,'*','markersize',20);
     end


     title(aso{ib},'fontsize',titleFigureSize);
     xlabel('{\bf n}','fontsize',xlabelSize)
     ylabel('{\bf q_n}','fontsize',ylabelSize)
     set(gca,'FontSize',14)
     com=['print -depsc2 ',info.PDFpath,'/',table.figname.qn{ib},'.eps'];
     disp(com)
     eval(com)
     com=['print -dpng ',info.PDFpath,'/',table.figname.qn{ib},'.png'];
     disp(com)
     eval(com)
     close;figure(fig);clf;    
end


if ~isempty(Isol)
   if isfield(table.figname,'sol')
       if length(table.figname.sol)>=nsolplot
           table.figname.sol  = table.figname.sol(Isol);
           table.figname.qn   = table.figname.qn(Isol);
       end
   end
   table.figname.Axb = table.figname.Axb(Isol);
end

eval(['load ',info.TEpath,'/TE.mat'])

for i=1:length(table.pr)

    prob     = table.pr{i};

     ind = findstr(prob,':');

     if ~ isempty(ind)
        prob=[prob(1:ind-1),'_',prob(ind+1:end)];
     end

    if strcmp(prob,'3PK')
       prob = 'X3PK';
    end

    probInfo      = getfield(TE.problem,prob);

      if isfield(probInfo,'timing')
          secfCUTE  = probInfo.timing.CUTEST.secf;
          secgCUTE  = probInfo.timing.CUTEST.secg;
          secfgCUTE = secfCUTE+2*secgCUTE;
          secfget   = probInfo.timing.getfg.secf;
          secgget   = probInfo.timing.getfg.secg;
          secfgget  = secfget+2*secgget;
          qCUTE(i)  = secgCUTE/secfCUTE;
          qget(i)   = secgget/secfget;
          qover(i)  =  secfgget/secfgCUTE;
      else
           error('the process of computing timing is failed')
      end       
end


close;figure(1);clf;
loglog(dat3,qCUTE,'mo',...
                'LineWidth',0.01,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],'MarkerSize',5);

xlabel('{\bf n}','fontsize',xlabelSize);
ylabel('{\bf q_{cutest}}','fontsize',ylabelSize);  

set(gca,'XTick',d0);
ylim([min(qCUTE)-0.1,max(qCUTE)+0.1]);

com=['print -depsc2 ',info.PDFpath,'/',figqcutest,'.eps'];
disp(com)
eval(com)
com=['print -dpng ',info.PDFpath,'/',figqcutest,'.eps'];
disp(com)
eval(com)

table.figname.q{1} = figqcutest;

close;figure(2);clf;
semilogx(dat3,qget,'mo',...
                'LineWidth',0.01,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],'MarkerSize',5)
ylim([min(qget)-0.1,max(qget)+0.1]);
set(gca,'XTick',d0);

xlabel('{\bf n}','fontsize',xlabelSize);
ylabel('{\bf q_{getfg}}','fontsize',ylabelSize); 

com=['print -depsc2 ',info.PDFpath,'/',figqgetfg,'.eps'];
disp(com)
eval(com)
com=['print -dpng ',info.PDFpath,'/',figqgetfg,'.eps'];
disp(com)
eval(com)
table.figname.q{2} = figqgetfg;

close;figure(3);clf;
semilogx(dat3,qover,'mo',...
                'LineWidth',0.01,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor',[.49 1 .63],'MarkerSize',5)

xlabel('{\bf n}','fontsize',xlabelSize);
ylabel('{\bf q_{over}}','fontsize',ylabelSize);  

ylim([min(qover)-0.1,max(qover)+0.1]);
set(gca,'XTick',d0);


com=['print -depsc2 ',info.PDFpath,'/',figqover,'.eps'];
disp(com)
eval(com)
com=['print -dpng ',info.PDFpath,'/',figqover,'.eps'];
disp(com)
eval(com)
table.figname.q{3} = figqover;

close all;

