%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% BoxPlotBBO.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% draw box plots for bbo solvers
% 
% used in STATplot.m
%
  
function table = BoxPlotBBO(table,info)

boxplot(info.dat0,1:info.nso,'Notch','on','Labels',table.Nso)     

set(findobj('Tag','Box'),'LineWidth',1)
set(findobj('Tag','Median'),'LineWidth',2)
set(gca,'FontSize',8,'XTickLabelRotation',90)
set(gca,'TickLabelInterpreter','none');
set(gca,'fontweight','bold','fontsize',10);

ylabel(info.ylabelbox,'interpreter',...
         'latex','fontsize',16);  
     
title(info.tit,'fontsize',info.titleFigureSize);


switch info.cas
    case 0 
     table.figname.bplotall{info.i}=info.BoxPlotName1;
     com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.bplotall{info.i},'.eps'];
     com2=['print -dpng ',info.PDFpath,'/',...
     table.figname.bplotall{info.i},'.png'];
    case 1 
     table.figname.bplotun{info.i}=[info.BoxPlotName1,'u'];
      com1=['print -depsc2 ',info.PDFpath,'/',...
         table.figname.bplotun{info.i},'.eps'];  
     com2=['print -dpng ',info.PDFpath,'/',...
         table.figname.bplotun{info.i},'.png'];
    case 2 
     table.figname.bplotbox{info.i}=[info.BoxPlotName1,'b'];
     com1=['print -depsc2 ',info.PDFpath,'/',...
         table.figname.bplotbox{info.i},'.eps'];
     com2=['print -dpng ',info.PDFpath,'/',...
         table.figname.bplotbox{info.i},'.png'];
end

disp(com1)
eval(com1)

disp(com2)
eval(com2)
close

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


