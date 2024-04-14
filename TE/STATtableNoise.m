%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% STATtableNoise.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function table2 = STATtableNoise(table,resdir, optcrit,secmax,nf2gmax, glob)
if nargin<6, glob=0;end;

global RESpath bbo

  npr = length(table.pr);
  nso = length(table.so);
  table2 = table; % prepare copy for resLatex.m
  
  
  table2.nsolved = cell(nso,1);
  table2.msec = cell(npr,nso);
  
  
  if ~bbo
      
  table2.nf2g      = cell(npr,nso);
  table2.ef2g      = cell(npr,nso);
  efficiency.ng    = cell(nso,1);
  efficiency.nf2g  = cell(nso,1);
  table2.bmsec     = cell(npr,1);
  table2.bnf2g     = cell(npr,1);
  else
      table2.ef     = cell(npr,nso);
      table2.bmsec  = cell(npr,1);
      table2.bnf    = cell(npr,1);
  end
  efficiency.nf = cell(nso,1);
  efficiency.msec = cell(nso,1);

  for so=1:nso
    table2.nsolved{so}=0;
    efficiency.nf{so}=0;
    efficiency.msec{so}=0;
    if ~bbo, efficiency.ng{so}=0; efficiency.nf2g{so}=0; end
  end
  
  ntriedByAll=0;
  dropped='';
  

  for pr=1:npr,
    triedByAll = 1;
    
    
   bestnf     = table2.nfmax{pr};
   bestmsec   = 1000*table2.secmax{pr};
    
    if ~bbo, 
        bestng   = table2.ngmax{pr};
        bestnf2g = table2.nf2gmax{pr};
    end

    % adjust tables to accuracy
    for so = 1:nso,
        if ~bbo
          table2.nf2g{pr,so} = table2.nf{pr,so}+2*table2.ng{pr,so};
        end
     
      if glob == 1
          
          
        if table.acc{pr,so} <= optcrit 
           table2.msec{pr,so} = round(1000*table2.sec{pr,so});
           if table2.msec{pr,so}==0
              table2.msec{pr,so}= 1;
           end
        else
           table2.msec{pr,so} = 1000*table2.secmax{pr};
        end
        
        if table.acc{pr,so} <= optcrit           
          table2.nsolved{so} = table2.nsolved{so} + 1;
          bestnf = min(bestnf,table2.nf{pr,so});
          if ~bbo
             bestng = min(bestng,table2.ng{pr,so});
             bestnf2g = min(bestnf2g,table2.nf2g{pr,so});
          end
          bestmsec = min(bestmsec,table2.msec{pr,so});
        elseif isnan(table.nf{pr,so}),
          % problem not tried by solver
          % entries remain NaN
          table2.nf{pr,so} = table2.nfmax{pr};
          table2.msec{pr,so}=1000*table2.secmax{pr};
          if ~bbo
            table2.ng{pr,so}=table2.ngmax{pr};
            table2.nf2g{pr,so}=table2.nf2gmax{pr};
          end
          
          
          triedByAll = 0;
        else          
           table2.nf{pr,so} =table2.nfmax{pr};
           table2.msec{pr,so}=1000*table2.secmax{pr};
           if ~bbo
             table2.ng{pr,so}=table2.ngmax{pr};
             table2.nf2g{pr,so}=table2.nf2gmax{pr};
           end
        end;            
      else
         if table.acc{pr,so} <= optcrit 
             table2.msec{pr,so} = round(1000*table2.sec{pr,so});
             if table2.msec{pr,so}==0
                table2.msec{pr,so}= 1;
            end
         else
             table2.msec{pr,so}=1000*table2.secmax{pr};
         end
         
        if table.acc{pr,so} <= optcrit 
          % reduced gradient acceptably small
          table2.nsolved{so} = table2.nsolved{so} + 1;
          bestnf = min(bestnf,table2.nf{pr,so});
          if ~bbo
             bestng = min(bestng,table2.ng{pr,so});
             bestnf2g = min(bestnf2g,table2.nf2g{pr,so});
          end
          bestmsec = min(bestmsec,table2.msec{pr,so});
        elseif isnan(table.nf{pr,so}),
          % problem not tried by solver
          % entries remain NaN
          triedByAll = 0;
          table2.nf{pr,so} =table2.nfmax{pr};
          table2.msec{pr,so}=1000*table2.secmax{pr};
          if ~bbo
            table2.ng{pr,so}=table2.ngmax{pr};
            table2.nf2g{pr,so}=table2.nf2gmax{pr};
          end
        else
          % reduced gradient too large
          table2.nf{pr,so} =table2.nfmax{pr};
          table2.msec{pr,so}=1000*table2.secmax{pr};
          if ~bbo
            table2.ng{pr,so}=table2.ngmax{pr};
            table2.nf2g{pr,so}=table2.nf2gmax{pr};
          end
          
        end;      
      end

    end;
    table2.bmsec{pr} = bestmsec;
    table2.bnf{pr}   = bestnf;
    if ~bbo, table2.bng{pr} = bestng; table2.bnf2g{pr} = bestnf2g; end
    
    if ~triedByAll, 
      dropped=[dropped,' ''',table.pr{pr},''''];
      continue; 
    end;
  
    ntriedByAll = ntriedByAll + 1;

    % update qualities
    for so = 1:nso, 
         nf = table2.nf{pr,so} + realmin;
          if nf<table2.nfmax{pr}, 
             qf = bestnf/nf;
             efficiency.nf{so} = efficiency.nf{so} + qf;
          end; 
      
      
      if ~bbo, ng = table2.ng{pr,so} + realmin;
         if ng<table2.ngmax{pr}, 
            qg = bestng / ng;
            efficiency.ng{so} = efficiency.ng{so} + qg;
         end;
      end
      msec = table2.msec{pr,so} + realmin;
      
      if msec<1000*table2.secmax{pr},
        qmsec = bestmsec / msec;
        efficiency.msec{so} = efficiency.msec{so} + qmsec;
        if efficiency.msec{so} == 0
           efficiency.msec{so}  = 1;
        end
      end;
      if ~bbo, 
         nf2g = table2.nf2g{pr,so};
         if nf2g<table2.nf2gmax{pr}
           ef2g = bestnf2g / nf2g;
           efficiency.nf2g{so} = efficiency.nf2g{so} + ef2g; 
           table2.ef2g{pr,so} = round(100*ef2g); % in percent
           if 100*ef2g~=0 & table2.ef2g{pr,so}==0
             table2.ef2g{pr,so}=1;
           end
         else
            table2.ef2g{pr,so}=0;
         end
      else
          if nf<table2.nfmax{pr}
           table2.ef{pr,so} = round(100*qf); % in percent
           if 100*efficiency.nf{so}~=0 & table2.ef{pr,so}==0
             table2.ef{pr,so}=1;
           end
         else
            table2.ef{pr,so}=0;
         end
      end
    end;
  end; % of for pr
  
  % sort table by best nnsolve
  
  
   
   
  
   
   
   % sort table by best nf
   
   
   
   
   

  
   
  % normalize qualities
  for so=1:nso, 
    efficiency.nf{so} = efficiency.nf{so} / ntriedByAll;
    efficiency.msec{so} = efficiency.msec{so} / ntriedByAll;
     if ~bbo
        efficiency.ng{so} = efficiency.ng{so} / ntriedByAll;
        efficiency.nf2g{so} = efficiency.nf2g{so} / ntriedByAll;
     end
  end;
  table2.efficiency = efficiency;
  table2.ntriedByAll = ntriedByAll;
  totaltime = zeros(1,nso);
  for so=1:nso
      total =[];
      for pr=1:npr
          if table2.msec{pr,so}<1000*table2.secmax{pr}
             total = [total table2.msec{pr,so}];
          end
      end
      if ~isempty(total)
          totaltime(so)=round(sum(total)/(length(total)));
          if totaltime(so)==0
             totaltime(so)=1;
          end
      else
          totaltime(so)=0;
      end
  end
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
   indexpr = [];
   if ~bbo    
   tablef = table2.ef2g;    
   eff100 = zeros(1,nso);   
   for pr=1:npr
       Iso = [];
       for so=1:nso,
           if table2.acc{pr,so}> optcrit 
              switch num2str(table2.err{pr,so})
               case 'nf2gmax reached'
                    tablef{pr,so}='n';
               case 'secmax reached'
                    tablef{pr,so}='t';
               otherwise
                   tablef{pr,so}='f';
               end
            elseif  tablef{pr,so}==100
                tablef{pr,so}='100';
                Iso = [Iso so];
                if isfield(table2,'message')
                if ~isempty(strfind(table2.so{so},'lmbopt'))...
                   & strcmp(table2.message,'all:all')
               
                   indexpr = [indexpr pr];
                end
                end
                
            end    
        end;
        if length(Iso)==1
            eff100(Iso) = eff100(Iso)+1;
        end
    end;
    
   else
       tablef = table2.ef;    
       eff100 = zeros(1,nso); 
       for pr=1:npr
           Iso = [];
          for so=1:nso,
              if  table2.acc{pr,so}> optcrit 
                 switch num2str(table2.err{pr,so})
                 case 'nfmax reached'
                     tablef{pr,so}='n';
                 case 'secmax reached'
                    tablef{pr,so}='t';
                     otherwise
                    tablef{pr,so}='f';
                 end
              elseif  tablef{pr,so}==100
                   tablef{pr,so}='100';
                   Iso = [Iso so];
                   if isfield(table2,'message')
                      if ~isempty(strfind(table2.so{so},'VSBBO'))...
                        & strcmp(table2.message,'all:all')
                        indexpr = [indexpr pr];
                      end
                   end
                
              end    
           end;
           if length(Iso)==1
               eff100(Iso) = eff100(Iso)+1;
           end
        end;   
   end
   
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if isfield(table2,'message')
    if strcmp(table2.message,'all:all') & ~isempty(indexpr)
       indexpr      = setdiff(1:npr,indexpr);
       ListNo100Eff = cell(0);
       for i=1:length(indexpr)
          ind = findstr(table2.pr{indexpr(i)},':');
           if ~ isempty(ind)
                Orgiprob=[table2.pr{indexpr(i)}(1:ind-1),'_',...
                table2.pr{indexpr(i)}(ind+1:end)];
                ListNo100Eff = [ListNo100Eff Orgiprob];
           else
                ListNo100Eff = [ListNo100Eff table2.pr{indexpr(i)}];
           end
       end
       fil = [RESpath,'/',resdir,'/ListNo100Eff.mat'];
       save(fil) 
    end
    end
           
           
     listfail0= cell(0); listnallfail0=cell(0);
     for pr=1:npr,
         ij = 0;
         for so=1:nso,  
             flagerror = table2.acc{pr,so}> optcrit ;
              if flagerror
                 ij  = ij +1;
              end
          end
          if ij == nso
             listfail0 = [listfail0,table2.pr{pr}];
          else
              listnallfail0 = [listnallfail0,table2.pr{pr}];
          end
     end;
     
     table2.listfail     = listfail0;
     table2.listnallfail = listnallfail0;
     
     
     
      %%%%%%%%%%
      A1=[]; if ~bbo, A2=[];A3=[];end; A4=[];A5=[];
      for so=1:nso
         A1 = [A1 fix(efficiency.nf{so}*100)];
         if ~bbo
            A2 = [A2 fix(efficiency.ng{so}*100)];
            A3 = [A3 fix(efficiency.nf2g{so}*100)];
         end
         A4 = [A4 fix(efficiency.msec{so}*100)];
         A5 = [A5 table2.nsolved{so}];
      end
      
      A0 = totaltime;
      if max(A0)~=0
      [minA0] = min(A0);
      if minA0==0
         I0 = find(A0==0);
         A0(I0)=inf;
      end
      [minA0] = min(A0);
      iA0 = find(A0==minA0);
      jA0 = setdiff(1:nso,iA0);
      %A00=cell(1,length(iA0));
      for j=1:length(jA0)
          if A0(jA0(j))==inf
             A00{jA0(j)} = '$-$';
          else
             A00{jA0(j)} =  num2str(A0(jA0(j)));
          end    
      end
      for i=1:length(iA0)
          A00{iA0(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A0(iA0(i)))];
      end
      else
         for j=1:length(A0)
           A00{j} =  ['\\cellcolor[HTML]{C0C0C0}',num2str(A0(j))];
         end
      end 
     
      
      table2.Tmean = A00;
      
      [maxeffnf] = max(A1);
      iA1 = find(A1==maxeffnf);
      jA1 = setdiff(1:nso,iA1);
      %A11=cell(length(iA1));
      for j=1:length(jA1)
          A11{jA1(j)} =  num2str(A1(jA1(j)));
      end
      
       for i=1:length(iA1)
         A11{iA1(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A1(iA1(i)))];
      end
      
      table2.nnf = A11;
      if ~bbo
      [maxeffng] = max(A2);
      iA2 = find(A2==maxeffng);
      jA2 = setdiff(1:nso,iA2);
      %A22=cell(length(iA2));
      for j=1:length(jA2)
          A22{jA2(j)} =  num2str(A2(jA2(j)));
      end
      
      for i=1:length(iA2)
          A22{iA2(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A2(iA2(i)))];
      end
      
      table2.nng = A22;
      
      [maxeffnf2g] = max(A3);
      iA3 = find(A3==maxeffnf2g);
      jA3 = setdiff(1:nso,iA3);
      %A33=cell(length(iA3));
      for j=1:length(jA3)
         A33{jA3(j)} =  num2str(A3(jA3(j)));
      end
      
      for i=1:length(iA3)
         A33{iA3(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A3(iA3(i)))];
      end
      
      table2.nnf2g = A33;
      end
      

      
             
      [maxeffsec] = max(A4);
      iA4 = find(A4==maxeffsec);
      jA4 = setdiff(1:nso,iA4);
      %A44=cell(length(iA4));
      for j=1:length(jA4)
         A44{jA4(j)} =  num2str(A4(jA4(j)));
      end
      
      for i=1:length(iA4)
         A44{iA4(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A4(iA4(i)))];
      end
      
      table2.nmsec = A44;
      
      
      
      [maxnsolved] = max(A5);
      iA5 = find(A5==maxnsolved);
      jA5 = setdiff(1:nso,iA5);
      %A55=cell(length(iA5));
      for j=1:length(jA5)
          A55{jA5(j)} =  num2str(A5(jA5(j)));
      end
      
      for i=1:length(iA5)
          A55{iA5(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A5(iA5(i)))];
      end
      
      table2.nnsolved = A55;
      
      A6=[];A7=[];A8=[];A9=[];A10=[];
      for i=1:nso
         A6  = [A6 eff100(i)];
         A10 = [A10 length(find(strcmp('100', tablef(:,i))))];
         A7  = [A7  length(find(strcmp('n', tablef(:,i))))];
         A8  = [A8 length(find(strcmp('t', tablef(:,i))))];
         A9  = [A9 length(find(strcmp('f', tablef(:,i))))];
      end
      
      
      [maxeff] = max(A6);   
      iA6 = find(A6==maxeff);
      jA6 = setdiff(1:nso,iA6);
      %A66=cell(length(iA6));
      for j=1:length(jA6)
          A6(jA6(j))
          A66{jA6(j)} =  num2str(A6(jA6(j)));
      end
      
      for i=1:length(iA6)
          A66{iA6(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A6(iA6(i)))];
       end
      
      table2.neff100 = A66;
    
      [maxeff] = max(A10);
      iA10 = find(A10==maxeff);
      jA10= setdiff(1:nso,iA10);
     % A1010=cell(length(iA10));
      for j=1:length(jA10)
          A1010{jA10(j)} =  num2str(A10(jA10(j)));
      end
      
      for i=1:length(iA10)
          A1010{iA10(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A10(iA10(i)))];
       end
      
      table2.nalleff100 = A1010;
     
    
      table2.nn = A7;
      %%%%%%%%%%%%%
        
      table2.nt = A8;
       
      %%%%%%%%%%%%%
       
      table2.nfa = A9;
        
  
      showtime
      npr
      ntriedByAll
      dropped
  
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
