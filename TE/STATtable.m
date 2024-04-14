%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% STATtable.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function table2=STATtable(table,resdir,optcrit)
%
% Generates a formatted and normalized table2 from table.
%
% table              % structure of tables with the results
% optcrit            % requested accuracy
% glob	             % perfom a global solver analysis?
%                    
% table2             % result table from analruns.m
%   .ntriedByAll     %   number of problems tried by all solvers
%   .so{so}          %   name of solver number so
%   .nsolved{so}     %   number of problems solved by solver so
%   .pr{pr}          %   name of problem number so
%   .dim{pr}         %   problem dimension
%   .nf{pr,so}       %   number of function values
%   .ef{pr,so}       %   nf efficiency
%   .sec{pr,so}      %   time in seconds
%   .msec{pr,so}     %   time in milliseconds (integral, rounded down)
%   .efficiency      %   efficiency tables
%      .nf{so}       %     mean nf efficiency of solver so
%      .sec{so}      %     mean sec efficiency of solver so
%
function table2 = STATtable(table,resdir,optcrit)

global RESpath 
npr    = length(table.pr); nso    = length(table.so);
table2 = table; % prepare copy for resLatex.m
table2.nsolved  = cell(nso,1);
table2.msec     = cell(npr,nso);
table2.ef       = cell(npr,nso);
table2.bmsec    = cell(npr,1);
table2.bnf      = cell(npr,1);
efficiency.nf   = cell(nso,1);
efficiency.msec = cell(nso,1);
for so=1:nso
    table2.nsolved{so}=0; efficiency.nf{so}=0; efficiency.msec{so}=0;
end
ntriedByAll=0; dropped='';
for pr=1:npr
    triedByAll = 1;
    bestnf     = table2.nfmax{pr};
    bestmsec   = 1000*table2.secmax{pr};
    % adjust tables to accuracy
    for so = 1:nso
        if table.acc{pr,so} <= optcrit 
             table2.msec{pr,so} = round(1000*table2.sec{pr,so});
             if table2.msec{pr,so}==0, table2.msec{pr,so}= 1;end
         else
             table2.msec{pr,so}=1000*table2.secmax{pr};
         end
        if table.acc{pr,so} <= optcrit 
          % reduced gradient acceptably small
          table2.nsolved{so} = table2.nsolved{so} + 1;
          bestnf = min(bestnf,table2.nf{pr,so});
          bestmsec = min(bestmsec,table2.msec{pr,so});
        elseif isnan(table.nf{pr,so}) % problem not tried by solver
          % entries remain NaN
          triedByAll = 0;
          table2.nf{pr,so}   = table2.nfmax{pr};
          table2.msec{pr,so} = 1000*table2.secmax{pr};
        else % reduced gradient too large
          table2.nf{pr,so} =table2.nfmax{pr};
          table2.msec{pr,so}=1000*table2.secmax{pr};
        end      
    end
    table2.bmsec{pr} = bestmsec;
    table2.bnf{pr}   = bestnf;
    if~triedByAll,dropped=[dropped,' ''',table.pr{pr},''''];continue;end
    ntriedByAll = ntriedByAll + 1;
    % update qualities
    for so = 1:nso 
         nf = table2.nf{pr,so} + realmin;
          if nf<table2.nfmax{pr} 
             qf = bestnf/nf; efficiency.nf{so} = efficiency.nf{so} + qf;
          end
          msec = table2.msec{pr,so} + realmin;
          if msec<1000*table2.secmax{pr}
            qmsec = bestmsec / msec;
            efficiency.msec{so} = efficiency.msec{so} + qmsec;
            if efficiency.msec{so} == 0, efficiency.msec{so}  = 1; end
          end
          if nf<table2.nfmax{pr}
           table2.ef{pr,so} = round(100*qf); % in percent
           if 100*efficiency.nf{so}~=0 && table2.ef{pr,so}==0
             table2.ef{pr,so}=1;
           end
         else
            table2.ef{pr,so}=0;
         end
    end;
end; % of for pr
% sort table by best nnsolve
Ia=[];
for i=1:nso, Ia = [Ia table2.nsolved{i}]; end
[~,Isol] = sort(Ia,'descend');
if length(Isol)>30, Isol = Isol(1:30); nso = 30; end

table2.nsolved  = table2.nsolved(Isol);
table2.so       = table2.so(Isol);
table2.nf       = table2.nf(:,Isol);
efficiency.nf   = efficiency.nf(Isol);
efficiency.msec = efficiency.msec(Isol);
table2.msec     = table2.msec(:,Isol);
table2.accf     = table2.accf(:,Isol);
table2.acc      = table2.acc(:,Isol);
table2.err      = table2.err(:,Isol);
table2.sec      = table2.sec(:,Isol);
table2.fbest    = table2.fbest(:,Isol);
table2.ef       =  table2.ef(:,Isol);
% normalize qualities

for so=1:nso 
 efficiency.nf{so} = efficiency.nf{so} / ntriedByAll;
 efficiency.msec{so} = efficiency.msec{so} / ntriedByAll;
end;
table2.efficiency = efficiency; table2.ntriedByAll = ntriedByAll;
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
      if totaltime(so)==0, totaltime(so)=1;end
  else
      totaltime(so)=0;
  end
end
indexpr = [];
tablef = table2.ef;    
eff100 = zeros(1,nso); 
for pr=1:npr
  Iso = [];
  for so=1:nso,
      if  table2.acc{pr,so}> optcrit 
         switch num2str(table2.err{pr,so})
         case 'nfmax reached', tablef{pr,so}='n';
         case 'secmax reached', tablef{pr,so}='t';
         otherwise,tablef{pr,so}='f';
         end
      elseif  tablef{pr,so}==100
           tablef{pr,so}='100'; Iso = [Iso so];
           if isfield(table2,'message')
              if ~isempty(strfind(table2.so{so},'VRBBO'))...
                && strcmp(table2.message,'all:all')
                indexpr = [indexpr pr];
              end
           end
      end    
   end;
   if length(Iso)==1, eff100(Iso) = eff100(Iso)+1; end
end;   
if isfield(table2,'message')
    if strcmp(table2.message,'all:all') && ~isempty(indexpr)
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
          if flagerror, ij = ij +1; end
      end
      if ij == nso, listfail0 = [listfail0,table2.pr{pr}];
      else, listnallfail0 = [listnallfail0,table2.pr{pr}];
      end
end;
table2.listfail = listfail0; table2.listnallfail = listnallfail0;
     
A1=[]; A4=[];A5=[];
for so=1:nso
  A1 = [A1 fix(efficiency.nf{so}*100)];
  A4 = [A4 fix(efficiency.msec{so}*100)];
  A5 = [A5 table2.nsolved{so}];
end
A0 = totaltime;
if max(A0)~=0
    [minA0] = min(A0);
    if minA0==0, I0 = find(A0==0);A0(I0)=inf; end
    [minA0] = min(A0); iA0 = find(A0==minA0); jA0 = setdiff(1:nso,iA0);
    for j=1:length(jA0)
       if A0(jA0(j))==inf, A00{jA0(j)} = '$-$';
       else, A00{jA0(j)} =  num2str(A0(jA0(j)));
       end    
    end
    for i=1:length(iA0)
       A00{iA0(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A0(iA0(i)))];
    end
    else
     for j=1:length(A0),
         A00{j}=['\\cellcolor[HTML]{C0C0C0}',num2str(A0(j))];
     end
end 
table2.Tmean = A00; [maxeffnf] = max(A1);
iA1 = find(A1==maxeffnf); jA1 = setdiff(1:nso,iA1);
for j=1:length(jA1), A11{jA1(j)} =  num2str(A1(jA1(j))); end
for i=1:length(iA1)
   A11{iA1(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A1(iA1(i)))];
end
table2.nnf = A11;
           
[maxeffsec] = max(A4); iA4=find(A4==maxeffsec); jA4=setdiff(1:nso,iA4);
for j=1:length(jA4), A44{jA4(j)} =  num2str(A4(jA4(j))); end
for i=1:length(iA4)
   A44{iA4(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A4(iA4(i)))];
end
table2.nmsec = A44;
        
[maxnsolved] = max(A5);
iA5 = find(A5==maxnsolved);
jA5 = setdiff(1:nso,iA5);
for j=1:length(jA5), A55{jA5(j)} =  num2str(A5(jA5(j))); end
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
         
[maxeff] = max(A6); iA6 = find(A6==maxeff); jA6 = setdiff(1:nso,iA6);
for j=1:length(jA6), A66{jA6(j)} =  num2str(A6(jA6(j)));end
for i=1:length(iA6)
   A66{iA6(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A6(iA6(i)))];
end
table2.neff100 = A66;
    
[maxeff] = max(A10); iA10 = find(A10==maxeff); jA10= setdiff(1:nso,iA10);
for j=1:length(jA10), A1010{jA10(j)} =  num2str(A10(jA10(j)));end
for i=1:length(iA10)
   A1010{iA10(i)}=['\\cellcolor[HTML]{C0C0C0}',num2str(A10(iA10(i)))];
end
table2.nalleff100=A1010; table2.nn=A7; table2.nt=A8; table2.nfa=A9;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
