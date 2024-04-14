%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% MoralesProfile.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% draw data profile for bbo solvers
%
% used in STATplot
%


function table=MoralesProfile(table,info)

close

text0='{\bf Problem}';

area(info.mpPronlem,info.mpBudget,'FaceColor',...
                         [0.7 0.7 0.7],'EdgeColor','k');

text(median(info.mpPronlem),...
                          max(info.mpBudget)-1,['{\bf ',info.sol2,'}'])

text(median(info.mpPronlem),...
                      min(info.mpBudget)+1,['{\bf ',info.sol1,'}'])

title(info.tit,'fontsize',info.titleFigureSize);

xlabel(text0,'fontsize',info.xlabelSize);
ylabel(['${\bf \log_2\left(',info.titbplot,'_{',info.sol1,'}/',...
    info.titbplot,'_{',info.sol2,'}\right)}$'],'fontsize',...
    info.ylabelSize,'interpreter',...
         'latex');  
set(gca,'FontSize',info.LegFontSize)


xlim([0,info.mpPronlem(end)]);
    
switch info.cas
 case 0
 table.figname.mpall{info.i}=info.MoralesProfileName1;     
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.mpall{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
      table.figname.mpall{info.i},'.png'];
 case 1
 table.figname.mpun{info.i}=[info.MoralesProfileName1,'u'];     
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.mpun{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
      table.figname.mpun{info.i},'.png'];
 case 2
 table.figname.mpbox{info.i}=[info.MoralesProfileName1,'b'];     
 com1=['print -depsc2 ',info.PDFpath,'/',...
     table.figname.mpbox{info.i},'.eps'];
 com2=['print -dpng ',info.PDFpath,'/',...
     table.figname.mpbox{info.i},'.png'];
end
disp(com1)
eval(com1)
disp(com2)
eval(com2)
close

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

