%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% ConvergePlot.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% draw qs = (f-fbest)/(finit-fbest) versus the number of function
% evaluations for each bbo test problems
%
% used in STATplot.m
%


function table = ConvergePlot(table,optcrit,info)

% load TE
eval(['load ',info.TEpath,'/TE.mat']);
npr = length(table.pr);
nso = length(table.Nso);

nf = table.nf;

nf = cell2mat(nf); nf2gmax = max(max(nf));

for pr0=1:npr

   prob=table.pr{pr0};
   ind = findstr(prob,':');

   if ~ isempty(ind)
     Orgiprob = prob(1:ind-1);
     prob=[Orgiprob,'_',prob(ind+1:end)];
   end

  % locate test results
  fil=[info.RESpath,'/',info.resdir,'/',prob,'.mat'];
  exdata=1;
  if exist(fil)~=2, 
    % result file does not exist; skip problem
    disp(['skipped ',prob,' (no file)']);
    continue; 
  end;
  % load file
  eval(['load ',fil]);
  if exist(prob)==0;
    % result structure not found; skip problem
    disp(['skipped ',prob,' (no results)']);
    continue; 
  end;
  eval(['data=',prob])

  if strcmp(prob,'SSCOSINE_1000000')|strcmp(prob,'SCURLY10_1000000')...
          |strcmp(prob,'SCURLY10_100000')
       continue; 
  end;

   legendname = {''}; 

   for so=1:nso,
       solvid=table.Nso{so};
       if isfield(data,solvid), 
          sol=getfield(data,solvid) ;% content of data.<solvid>
          if isfield(sol,'funInfo')
             funfo=getfield(sol,'funInfo');

             if isfield(funfo,'arrayaccb')
               arrayaccb = getfield(funfo,'arrayaccb');
               arrayaccb = sort(arrayaccb,'descend');
               Iopt=find(arrayaccb<optcrit);
               arrayaccb(Iopt)=optcrit;
             end

             if isfield(funfo,'arraynfbestacc')
               arraynfbestacc=getfield(funfo,'arraynfbestacc');
             end

             ind0 = findstr(prob,'_');

             if ~ isempty(ind0)
                Orgiprob = prob(1:ind0-1);
                prob=[Orgiprob,':',prob(ind0+1:end)];
             end



            len = length(arrayaccb);
            
             if info.sparsefig
                if len > info.sparseSize
                   ind  = [1,round([1:info.sparseSize-2]*len/...
                            info.sparseSize),len];
                   arrayaccb       = arrayaccb(ind);
                   arraynfbestacc  = arraynfbestacc(ind);
                end
             end
            
            
              if arrayaccb(end) > optcrit
                    arrayaccbf      =  arrayaccb(end);
                    arraynfbestacc  = [arraynfbestacc,nf2gmax];
                    arrayaccb       = [arrayaccb,arrayaccbf];
              end


              loglog(arraynfbestacc,arrayaccb,[info.lines{so},...
                   info.color{so},info.mark{so}],...
                 'LineWidth',info.linewid(so),'markersize',8);

                hold on

          end
       end

      legendname{so} = table.Nso{so};
      lgd            = legend(legendname,'Location',info.LegLocat);
      lgd.FontSize   = info.LegFontSize;
      lgd.FontWeight = 'bold';

   end

   xlabel('')
   ylabel('')


   
   set(gca, 'XTick', info.xTrickarray)


   xlabel('{\bf nf}','fontsize',info.xlabelSize)
   ylabel('{\bf qs}','fontsize',info.ylabelSize)
   
   ylim([0.5*optcrit,2]);
   probtitle = prob;
   ind0 = findstr(probtitle,':');
   if isempty(ind0)
      title(['problem = ',probtitle,', dim = ',...
          num2str(table.dim{pr0})],'fontsize',info.titleFigureSize)
   else
      probtitle = probtitle(1:ind0-1);
      title(['problem = ',probtitle,', dim = ',...
          num2str(table.dim{pr0})],'fontsize',info.titleFigureSize)
   end
   set(legend,'Interpreter','latex')

   ind0 = findstr(prob,':');

   if ~ isempty(ind0)
        Orgiprob = prob(1:ind0-1);
        prob=[Orgiprob,'_',prob(ind0+1:end)];
   end


   com=['print -depsc2 ',info.PDFpath,'/',prob,'.eps'];
   disp(com)
   eval(com)
   com=['print -dpng ',info.PDFpath,'/',prob,'.png'];
   disp(com)
   eval(com)
   close


end % for

prig         = setdiff(table.pr,table.listfail);
table.puafig = table.listfail;
table.prig   = prig;


 for i=1:length(table.prig)

 ind00 = findstr(table.prig{i},':');

 if ~ isempty(ind00)
   table.prig{i}=[table.prig{i}(1:ind00-1),'_',...
       table.prig{i}(ind00+1:end)];
 end

 end

 for i=1:length(table.puafig)

     ind00 = findstr(table.puafig{i},':');

     if ~ isempty(ind00)
      table.puafig{i} =[table.puafig{i}(1:ind00-1),'_',...
                         table.puafig{i}(ind00+1:end)];
     end


 end
 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
