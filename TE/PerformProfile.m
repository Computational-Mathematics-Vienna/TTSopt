%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% PerformProfile.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% draw performance profiles
%
% used in STATplot
%


function table=PerformProfile(table,info)

tau = info.tau;

text0 = ['\tau: {\bf Performance ratio for ',info.titbplot,'}'];


legendname = {''};


for so=1:info.nso
    rho = [];
    for j =1:length(tau)
      num = 0;
      for pr=1:info.nprob
        rps = info.datp(pr,so)/min(info.datp(pr,:));
        if rps<=tau(j), num = num + 1; end
      end
      rho(j) = num/info.nprob;
    end
    
    len = length(tau);
    if info.sparsefig
        if len > info.sparseSize
          ind = [1,round([1:info.sparseSize-2]*...
                 len/info.sparseSize),len];
          tau = tau(ind);
          rho = rho(ind);
        end 
    end
    
    semilogx(tau,rho,[info.lines{so},info.color{so},info.mark{so}],...
           'LineWidth',info.linewid(so),'markersize',8);
    hold on;
    legendname{so} = table.Nso{so};
    lgd            = legend(legendname,'Location',info.LegLocat);
    lgd.FontSize   = info.LegFontSize;
    lgd.FontWeight = 'bold';
end

if max(tau)<=1000
    d0 = [1 2 5 10 20 50 100 200 500]; 
else
  d0 = [1 10 100 1000 10000 100000 1000000];
end


title(info.tit,'fontsize',info.titleFigureSize);
xlabel(text0,'fontsize',info.xlabelSize);
ylabel('\rho(\tau): {\bf Performance profiles}',...
       'fontsize',info.ylabelSize); 
set(gca,'FontSize',info.LegFontSize)
ylim([-0.05,1.05]);

set(gca,'XTick',d0);


switch info.cas
 case 0
 table.figname.ppall{info.i}=info.PerProfileName1;
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.ppall{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
      table.figname.ppall{info.i},'.png'];
 case 1
 table.figname.ppun{info.i}=[info.PerProfileName1,'u'];
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.ppun{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
      table.figname.ppun{info.i},'.png'];
 case 2
 table.figname.ppbox{info.i}=[info.PerProfileName1,'b'];    
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.ppbox{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
     table.figname.ppbox{info.i},'.png'];
end
disp(com1)
eval(com1)
disp(com2)
eval(com2)
close

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

