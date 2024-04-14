%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% DataProfile.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% draw data profile for bbo solvers
%
% used in STATplot
%


function table=DataProfile(table,info)

close

text0=['\kappa: {\bf Cost ratio for ',info.titbplot,'}'];

T = zeros(info.nprob,info.nso);

for j=1:info.nprob
    for so=1:info.nso
        T(j,so) = info.datp(j,so)/table.dim{j};
        if info.datp(j,so)>=table.nfmax{j}, T(j,so)=NaN;end
    end
end
 max_data  = max(max(T));
Ir         = find(isnan(T));
T(Ir)      = 2*max_data;
T          = sort(T);

legendname = {''}; 
for so = 1:info.nso
  [xs,ys] = stairs(T(:,so),(1:info.nprob)/info.nprob);

   len = length(xs);
   if info.sparsefig
    if len > info.sparseSize
       ind = [1,round([1:info.sparseSize-2]*len/info.sparseSize),len];
       xs  = xs(ind);
       ys  = ys(ind);
    end 
   end
   
  semilogx(xs,ys,[info.lines{so},info.color{so},info.mark{so}],'LineWidth',...
      info.linewid(so),'markersize',8);
  
  hold on;
  legendname{so} = table.Nso{so};
  lgd            = legend(legendname,'Location','northwest');
  lgd.FontSize   = info.LegFontSize;
  lgd.FontWeight = 'bold';
  
end

if max_data<1000
    d0 = [1 2 5 10 20 50 100 200 500]; 
else
  d0 = [1 10 100 1000 10000 100000 1000000];
end

                   
title(info.tit,'fontsize',info.titleFigureSize);
xlabel(text0,'fontsize',info.xlabelSize);
ylabel('\delta(\kappa): {\bf Data profiles}',...
    'fontsize',info.ylabelSize);  % changed
set(gca,'FontSize',info.LegFontSize)
xlim([0.5,1.1*max_data]);
ylim([-0.05,1.05]);
                  
set(gca,'XTick',d0);


switch info.cas
 case 0
 table.figname.dpall{info.i}=info.DataProfileName1;     
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.dpall{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
      table.figname.dpall{info.i},'.png'];
 case 1
 table.figname.dpun{info.i}=[info.DataProfileName1,'u'];     
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.dpun{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
      table.figname.dpun{info.i},'.png'];
 case 2
 table.figname.dpbox{info.i}=[info.DataProfileName1,'b'];     
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.dpbox{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
     table.figname.dpbox{info.i},'.png'];
end
disp(com1)
eval(com1)
disp(com2)
eval(com2)
close

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

