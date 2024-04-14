%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% ProbChoicePlot.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% draw a figure based on the problem dimensions showing how many test
% problems are unconstrained, bound constrained, etc., with respect
% to the dimensions
%
function [table,info]=ProbChoicePlot(table,selectBy,info)

datdim  = table.dim;
datdim  = cell2mat(datdim);
datdim  = sort(datdim);
dimall  = unique(datdim,'sorted');
% used dim
Iall    = histc(datdim,datdim(1):datdim(length(datdim)));
Iall    = Iall(find(Iall>0)) ; % Iall(i) is the number of problems 
                               % with dim dimall(i)
d     = [1 2 5 10 20 50 100 300 1000 10000 100001]';
Id    = find(selectBy.dim(2)>=d);
d     = d(Id);

if ~ismember(selectBy.dim(2),d)
    d     = [d' selectBy.dim(2)]';
end

con = table.con;Iuu=[];Ibb=[];
for i=1:length(con)
    if con{i}==0
       Iuu = [Iuu i]; datab(i) = 0;
    else
       Ibb = [Ibb i]; datau(i) =  0;
    end
end
Iuu  = Iuu(find(Iuu>0)); Ibb  = Ibb(find(Ibb>0));
Iuu  = Iuu'; Ibb  = Ibb';

%%%%%%%%% for both unconstrained and bound constrained %%%%%%%%%%%%%%
if selectBy.con(1)==0 & selectBy.con(2)==1
    
   
    for j=1:length(dimall), y1(j) = sum(Iall(1:j)); end
    y1  = sort(y1)';  y0  = [0 0]';
    dimall0 = [0 dimall(1)-1]';
    dimall  = [dimall0 ; dimall];
    y1      = [y0 ; y1];

    datau = datdim; datab = datdim;

    

    datab  = datab(find(datab>0)); datau  = datau(find(datau>0));

    Ib   = histc(datab,datab(1):datab(end));
    Ib   = Ib(find(Ib>0)); dimb = unique(datab);

    part = round((datab(1)+datab(end)-1)/4);
    for j=1:length(dimb), y2(j) = sum(Ib(1:j)); end
    y2 = sort(y2)';

    y0    = [0 0]'; dimb0 = [0 dimb(1)-1]'; dimb  = [dimb0 ; dimb];
    y2    = [y0 ; y2];

    Iu   = histc(datau,datau(1):datau(end));
    Iu   = Iu(find(Iu>0)); dimu = unique(datau);

    for j=1:length(dimu), y3(j) = sum(Iu(1:j)); end
    y3 = sort(y3)';

    y0         = [0 0]'; dimu0  = [0 dimu(1)-1]'; dimu = [dimu0 ; dimu];
    y3         = [y0 ; y3];

    legendname = {''};
    name={'all' 'bound constrained' 'unconstrained' };
    cor={'black' 'red' 'blue' };
    kind ={'all' 'b' 'u'};
    numberdim=[length(datab)+length(datau) length(datab) length(datau)];
    for so=1:3,
        eval(['y=y',num2str(so),';'])
        eval(['d0=dim',kind{so},';'])
        semilogx(d0,y,[info.lines{so},info.color{so}],'LineWidth',...
            info.linewid(so));
        strmax = num2str(numberdim(so)-length(table.listfail));
        text(d0(end),y(end),strmax,'Color',cor{so},'FontSize',12,...
            'VerticalAlignment','top','HorizontalAlignment','right');
        hold on;
        legendname{so} = name{so};
        legend(legendname,'Location','northwest')
    end;


%%%%%%%%%%%%%%%%%%%%%%%%%% for unconstrained %%%%%%%%%%%%%%%%%%%%%%%
elseif selectBy.con(1)==0 & selectBy.con(2)==0
    
    for j=1:length(dimall)
         y(j) = sum(Iall(1:j));
    end

    y       = sort(y)';  
    y0      = [0 0]';
    dimall0 = [0 dimall(1)-1]';
    dimall  = [dimall0 ; dimall];
    y       = [y0 ; y];

    legendname = {''};
    name={'unconstrained'};
    cor={'red'};
    numberdim=length(datdim);
    semilogx(dimall,y,[info.lines{1},info.color{1}],'LineWidth',2);
    strmax = num2str(numberdim(1)-length(table.listfail));
    text(dimall(end),y(end),strmax,'Color',cor{1},'LineWidth',...
      2,'FontSize',12,'VerticalAlignment','top',...
     'HorizontalAlignment','right');
    ylim([y(1),y(end)]);
    legendname{1} = name{1};
    legend(legendname,'Location','northwest')
 
%%%%%%%%%%%%%%%%%%%%%%%% for box constrained %%%%%%%%%%%%%%%%%%%%%%%
elseif selectBy.con(1)==1 & selectBy.con(2)==1
        
    for j=1:length(dimall), y(j) = sum(Iall(1:j)); end

    y = sort(y)';   
    y0      = [0 0]';
    dimall0 = [0 dimall(1)-1]';
    dimall  = [dimall0 ; dimall];
    y       = [y0 ; y];

    legendname = {''};
    name={'Box constrained'};
    cor={'red'};
    numberdim=length(datdim);
    semilogx(dimall,y,[info.lines{1},info.color{1}],'LineWidth',8);
    strmax = num2str(numberdim(1)-length(table.listfail));
    text(dimall(end),y(end),strmax,'Color',cor{1},'LineWidth',...
     2,'FontSize',12,'VerticalAlignment','top',...
     'HorizontalAlignment','right');
    ylim([y(1),y(end)]);
    legendname{1} = name{1};
    legend(legendname,'Location','northwest')
end


dd = d(1:end);    
for i=1:length(dd), ddd{i} = num2str(dd(i)); end       

format short e
set(gca,'XTick',dd);
xlim([dd(1),1.1*dd(end)]);

set(gca,'XTickLabel',ddd);
xlabel('d','FontSize',10,'FontWeight','bold','Color','b');
ylabel('# problems of dim \leq d','FontSize',5,...
       'FontWeight','bold','Color','b')
set(gca,'FontSize',5)
com=['print -depsc2 ',info.PDFpath,'/pd.eps'];
disp(com)
eval(com)
com=['print -dpng ',info.PDFpath,'/pd.png'];
disp(com)
eval(com)
table.figname.pd{1}= 'pd';
close

info.Iuu=Iuu; info.Ibb = Ibb;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

