%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATlatex.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function STATlatex(table,optcrit,caseTitle,latexFile,...
%                                          selectBy,sortBy,resdir);
% create latex file for statistics
%
% table             % result table from analruns.m
%   .ntriedByAll    %   number of problems tried by all solvers
%   .so{so}         %   name of solver number so
%   .nsolved{so}    %   number of problems solved by solver so
%   .pr{pr}         %   name of problem number so
%   .dim{pr}        %   problem dimension
%   .nf{pr,so}      %   number of function values
%   .ng{pr,so}      %   number of gradients 
%   .nf2g{pr,so}    %   nf2g
%   .ef2g{pr,so}    %   nf2g efficiency
%   .sec{pr,so}     %   time in seconds
%   .msec{pr,so}    %   time in milliseconds (integral, rounded down)
%   .efficiency     %   efficiency tables
%      .ng{so}      %     mean ng efficiency of solver so
%      .nf{so}      %     mean nf efficiency of solver so
%      .nf2g{so}    %     mean nf2g efficiency of solver so
%      .sec{so}     %     mean sec efficiency of solver so
% optcrit           % requested accuracy
% caseTitle         % subtitle characterizing the statistics
% latexFile         % filename (including .tex, no path)
% selectBy          % key for selection of problems
%   .dim            %   range of dimensions   
%   .con            %   range of constraints
%   .nf2g2          %   range of second best nf2g
%   .sec2           %   range of second best time sec
%   .solvedByAll    %   1: only those solved by all listed solvers
%                   %   0: those solved by some listed solvers or 
%                   %      did solve by no solver
%   .res            %   1: obtain information from saved information
%                   %      which are obtained by running solvers
%                   %   0: obtain only information from TE.problem
% sortBy            % info for sorting problems
%   .key            %   sort key
%                   %     N: name,  D: dim
%                   %     T: sec2, F: nf2g2 
%                   %     DN: dim and name
%                   %     TN: sec2 and name, etc.
%   .inc            %   1: increasing order, 0: decreasing order
% resdir            % directory for results
%
function STATlatex(AllTable,selectBy,sortBy,info)



global PDFpath WORKpath bbo


caseTitle = info.caseTitle; optcrit=info.optcrit;
latexFile = info.latexFile; statprob=info.statprob;
resdir    = info.resdir;   OriginalDim = info.ODim;
infomax   = info.infomax; 

ConvePlotFlag=info.ConvePlotFlag; 

% PDFpath       % path for the resulting analysis
latexFile=[PDFpath,'/',latexFile]



Istring = ~ isempty(strfind(infomax.nfmaxString,'^'));
Istar = strfind(infomax.nfmaxString,'*');
Istar = setdiff(1:length(infomax.nfmaxString),Istar);
if Istring
   infomax.nfmaxString = infomax.nfmaxString(Istar);
   infomax.nfmaxString = ['$ ',infomax.nfmaxString,'$'];
end
   
Istring = ~ isempty(strfind(infomax.secmaxString,'^'));
Istar = strfind(infomax.secmaxString,'*');
Istar = setdiff(1:length(infomax.secmaxString),Istar);
if Istring
   infomax.secmaxString = infomax.secmaxString(Istar);
   infomax.secmaxString = ['$ ',infomax.secmaxString,'$'];
end


disp('Select tables')


if isfield(AllTable,'table0')
  table    = AllTable.table0;
elseif isfield(AllTable,'tableu')
  table    = AllTable.tableu;
elseif isfield(AllTable,'tableb')
  table    = AllTable.tableb;
end

tableprim = table;





ntriedByAll=table.ntriedByAll;
npr=length(table.pr);
nso=length(table.so);
table.lisfail=cell(npr,nso);

% decide on size of subtables
ntab=ceil(npr/32);        % number of subtables
tabn=32; % size of each subtable

% open write file with handle fid

latexFile

fid= fopen(latexFile,'w');
if fid<0, 
  error('file could not be written. permissions?'); 
end;

% write top of latex file
fprintf(fid,'\\documentclass[a4paper,12pt]{article}\n');
fprintf(fid,'\\usepackage{graphicx}');
fprintf(fid,'\\usepackage[dvips]{epsfig}\n\n');
fprintf(fid,'\\usepackage{fancyhdr}\n\n');
fprintf(fid,'\\usepackage{hyperref}\n\n');
fprintf(fid,'\\usepackage{array,multirow,graphicx}\n\n');
fprintf(fid,'\\pagestyle{fancy}\n\n');
fprintf(fid,'\\usepackage{supertabular}\n\n');
fprintf(fid,'\\usepackage{adjustbox}\n\n');
fprintf(fid,'\\usepackage[dvips]{geometry,color,graphicx}\n\n');
fprintf(fid,'\\usepackage{epstopdf}');
fprintf(fid,'\\epstopdfsetup{update}');
fprintf(fid,'\\usepackage{epsfig}');
fprintf(fid,'\\usepackage[utf8]{inputenc}');
fprintf(fid,'\\usepackage{longtable,booktabs}');
fprintf(fid,'\\usepackage{lscape}');
fprintf(fid,'\\usepackage{hhline}');
fprintf(fid,'\\usepackage{caption}');
fprintf(fid,'\\usepackage{subfig}');
fprintf(fid,'\\usepackage{blindtext}');
fprintf(fid,'\\usepackage{lmodern}');
fprintf(fid,'\\usepackage{textcomp}');
fprintf(fid,'\\usepackage{chngcntr}');
fprintf(fid,'\\usepackage{booktabs}');

fprintf(fid,'\\renewcommand{\\headrulewidth}{0pt}\n\n');
fprintf(fid,'\\renewcommand{\\footrulewidth}{0pt}\n\n');
fprintf(fid,'\\fancypagestyle{plain}{');
fprintf(fid,'\\fancyhf{}');
fprintf(fid,'\\fancyfoot[C]{\\bfseries \\thepage}');
fprintf(fid,'\\renewcommand{\\headrulewidth}{0pt}');
fprintf(fid,'\\renewcommand{\\footrulewidth}{0pt}}\n\n');
fprintf(fid,'\\fancyhf{}\n\n');
fprintf(fid,'\\fancyfoot[C]{\\bfseries \\thepage} \n\n');
fprintf(fid,'\\renewcommand{\\headrulewidth}{0pt}\n\n');
fprintf(fid,'\\renewcommand{\\footrulewidth}{0pt}\n\n');
fprintf(fid,'\\newcolumntype{?}{!{\\vrule width 1pt}}\n\n');
fprintf(fid,'\\usepackage[table]{xcolor}\n\n');
fprintf(fid,'\\setlength{\\arrayrulewidth}{1mm}');
fprintf(fid,'\\setlength{\\arrayrulewidth}{1pt}\n\n');
fprintf(fid,'\\arrayrulecolor[HTML]{000000}\n\n');
%fprintf(fid,'\\setcounter{page}{34}\n\n');


fprintf(fid,'\\begin{document}\n\n');
fprintf(fid,'\\advance\\textheight4cm  \n');    
fprintf(fid,'\\advance\\topmargin-2.0cm\n');
fprintf(fid,'\\advance\\textwidth2.8cm\n');
fprintf(fid,'\\advance\\evensidemargin-2.2cm\n');
fprintf(fid,'\\advance\\oddsidemargin-0.8cm\n\n');
fprintf(fid,'\\parindent=0pt\n');
fprintf(fid,'\\openup 2pt\n');
fprintf(fid,'\\parskip 2ex plus 1pt minus 1pt\n\n\n');

fprintf(fid,'\\begin{center}\n');
fprintf(fid,'{\\LARGE\\bf Test results for}\n\n\n');
fprintf(fid,['{\\LARGE\\bf ',caseTitle,'}\n\n\n']);
fprintf(fid,'\\end{center}\n');
fprintf(fid,'\n\n');






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Solver type, stopping tests and resdir           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


fprintf(fid,'\\section{Solver type, stopping tests and resdir}\n\n');



fprintf(fid,['{\\bf Measure for the convergence speed.}',...
' The quotients $$q_{s}:=(f_{s}-f_{\\textrm{best}})/',...
'(f_{\\textrm{init}}-f_{\\textrm{best}})$$ for',...
' $s \\in \\mathcal S$ are measures',...
' to identify the convergence speed of the solver $s$ to reach',...
' a minimum of the smooth true function $f$ (these quotients are',...
' not available in real applications):']);
fprintf(fid,'\\begin{enumerate}');
fprintf(fid,['\\item [$\\bullet$] $f_{s}$ is the best',...
' function value found by the solver $s$;']); 

fprintf(fid,['\\item [$\\bullet$] $f_{\\textrm{init}}$',...
' is the function',...
' value at the starting point (common for all solvers);']);

fprintf(fid,['\\item [$\\bullet$] $f_{\\textrm{best}}$ is',...
' the function value at the best',...
' known point (in most cases a global minimizer or at least',...
' a better local minimizer) found by',...
' running a sequence of gradient-based and local/global gradient',...
' free solvers.']);
fprintf(fid,'\\end{enumerate}\n\n ');


fprintf(fid,['{\\tt nf}, {\\tt sec}, {\\tt nact} and',...
               ' {\\tt resdir} denote']);
fprintf(fid,' the number of function evaluations, the time in seconds,');
fprintf(fid,' the number of active variables, and the directory');
fprintf(fid,' containing result files, respectively.\n\n');


fprintf(fid,'\\begin{enumerate}\n\n ');

fprintf(fid,'\\item [$\\bullet$] {\\tt black box}');
fprintf(fid,'\\item [$\\bullet$] {\\tt target accuracy}: ');
fprintf(fid,['$q_s\\leq$',num2str(optcrit)]);
fprintf(fid,'\\item [$\\bullet$] {\\tt nf}');
if isinf(infomax.nfmaxString)    
  fprintf(fid,[' $\\leq\\infty$','\n']); 
else
  fprintf(fid,[' $\\leq$',infomax.nfmaxString,'\n']);    
end
fprintf(fid,'\\item [$\\bullet$] {\\tt sec}');
if isinf(infomax.secmaxString)
  fprintf(fid,[' $\\leq\\infty$,'\n']);
else
  fprintf(fid,[' $\\leq$',infomax.secmaxString,'\n']);    
end

resdir0        = ['$ {\\tt ',resdir,'}$'];



fprintf(fid,'\\item [$\\bullet$] {\\tt resdir}: ');
fprintf(fid,num2str(resdir0));
fprintf(fid,'\\end{enumerate}\n\n ');

fprintf(fid,'\\section{Parameters used for problem selection}\n\n');
fprintf(fid,'{\\tt name}, {\\tt dim} and {\\tt con} denote');
fprintf(fid,[' the name, the dimension, and the type of',...
             ' constraints of test problems,']);
fprintf(fid,' respectively.');

word = cellfun(@(x) x(1:1), table.pr, 'UniformOutput', false);
for i=1:length(word)
    SS(i)=abs(word{i});
end
[minSS jj1] = min(SS);
[maxSS jj2] = max(SS);

fprintf(fid,'\\begin{enumerate}\n\n ');
fprintf(fid,'\\item [$\\bullet$] Selected  range of {\\tt name}: ');
fprintf(fid,[word{jj1},'-',word{jj2},'\n']);
fprintf(fid,'\\item [$\\bullet$] Selected range of {\\tt dim}: ');
if selectBy.dim(1) ~= selectBy.dim(2)
   fprintf(fid,['[',num2str(selectBy.dim(1)),',',...
       num2str(selectBy.dim(2)),']','\n']);
else
   fprintf(fid,[' = ',num2str(selectBy.dim),'\n']);
end
fprintf(fid,'\\item [$\\bullet$] Selected kind of {\\tt con}: ');

if selectBy.con(1) ~= selectBy.con(2)
   if (selectBy.con(1)==0 && selectBy.con(2)==1) || ...
      (selectBy.con(1)==1 && selectBy.con(2)==0)     
      fprintf(fid,'unconstrained and bound constrained\n');
   end
else
    if selectBy.con(1)==0
       fprintf(fid,['unconstrained\n']);
    elseif selectBy.con(1)==1 
       fprintf(fid,['bound constrained\n']);
    end
end
fprintf(fid,'\\item [$\\bullet$]');

if length(sortBy.key)==1
   switch sortBy.key 
    case 'T'
      varkey = '{\\tt sec}';
    case 'F'
      varkey = '{\\tt nf}';
    case 'N'
      varkey = '{\\tt name}';
    case 'D'
      varkey = '{\\tt dim}';
    case 'E'
      varkey = '{\\tt nact}';  
   end
   fprintf(fid,[' Sorted by ',varkey,' (',sortBy.key,')','\n\n ']);
   
elseif length(sortBy.key)==2
       
     temp=num2cell(sortBy.key);
    
   switch temp{1}
    case 'T'
      varkey1 = '{\\tt sec}';
    case 'F'
      varkey1 = '{\\tt nf}';
    case 'N'
      varkey1 = '{\\tt name}';
    case 'D'
      varkey1 = '{\\tt dim}';
    case 'E'
      varkey1 = '{\\tt nact}';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
   end
    
    switch temp{2}
    case 'T'
      varkey2 = '{\\tt sec}';
    case 'F'
      varkey2 = '{\\tt nf}';
    case 'N'
      varkey2 = '{\\tt name}';
    case 'D'
      varkey2 = '{\\tt dim}';
    case 'E'
      varkey2 = '{\\tt nact}';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
   end
    
    fprintf(fid,[' Sorted by ',varkey1,' and ',varkey2,...
        ' (',sortBy.key,')','\n\n ']);
    
elseif length(sortBy.key)==3
    
     temp=num2cell(sortBy.key);
    
   switch temp{1}
    case 'T'
      varkey1 = '{\\tt sec}';
    case 'F'
      varkey1 = '{\\tt nf}';
    case 'N'
      varkey1 = '{\\tt name}';
    case 'D'
      varkey1 = '{\\tt dim}';
    case 'E'
      varkey1 = '{\\tt nact}';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
   end
    
    switch temp{2}
    case 'T'
      varkey2 = '{\\tt sec}';
    case 'F'
      varkey2 = '{\\tt nf}';
    case 'N'
      varkey2 = '{\\tt name}';
    case 'D'
      varkey2 = '{\\tt dim}';
    case 'E'
      varkey2 = '{\\tt nact}';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
     end
  
    switch temp{3}
    case 'T'
      varkey3 = '{\\tt sec}';
    case 'F'
      varkey3 = '{\\tt nf}';
    case 'N'
      varkey3 = '{\\tt name}';
    case 'D'
      varkey3 = '{\\tt dim}';
    case 'E'
      varkey3 = '{\\tt nact}';  
       otherwise
       sortBy.key
       error('no sortBy.key found'); 
    end
    
    fprintf(fid,[' Sorted by ',varkey1,', ',varkey2,...
       ' and ',varkey3,' (',sortBy.key,')','\n\n']);   
end
       
fprintf(fid,'\\item [$\\bullet$]');
if sortBy.inc==1
   fprintf(fid,' Sorted in {\\tt increasing order}\n\n ');
elseif sortBy.inc==0
   fprintf(fid,' Sorted in {\\tt decreasing order}\n\n ');
end

flag = 1;
for i=1:nso
       if isempty(strfind(table.so{i},'VRBBO'))
        flag=0;
       break
       end
end

if flag
 fprintf(fid,'\\item [$\\bullet$]');
 fprintf(fid,'VRBBO has not been chosen\n\n ');
end    

if OriginalDim
  fprintf(fid,'\\item [$\\bullet$]');
  fprintf(fid,'Default dimension\n\n ');
end

if statprob==2
  fprintf(fid,'\\item [$\\bullet$]');

  fprintf(fid,['The efficiency {\\tt nf} of VSBBO is',...
         ' not 100 percent\n\n ']); 
end

fprintf(fid,'\\end{enumerate}\n\n ');

% show number of problems with at most variables 

nofig = 0;
if selectBy.dim(2)-selectBy.dim(1)>1, nofig = 1; end; 
   
if nofig
if ismember(selectBy.con(1),[0 1]) & ismember(selectBy.con(2),[0 1])
   
   latexfig =[]; 
   nl = 1;
   latexfig{nl}='\\begin{figure}[!htbp]\n';
   nl=nl+1;
   latexfig{nl}='\\centering {\n';
   nl=nl+1;
   latexfig{nl}='\\begin{tabular}{lll}\n';
   nl=nl+1;
   if ~isempty(table.figname.pd{1})
   latexfig{nl} = ...
       ['{\\includegraphics[width=10cm]{',table.figname.pd{1},...
       '.eps}}\\\\\n'];
   else
       error('There is no d.eps')
   end
   nl=nl+1;
   latexfig{nl}='\\end{tabular}\n';
   nl=nl+1;
   latexfig{nl}=['\\caption{The number of problems with at',...
       ' most {\\tt d} variables solved by at least one solver.}\n'];
   nl=nl+1;
   latexfig{nl}='}\n';
   nl=nl+1;
   latexfig{nl}='\\end{figure}\n';
   nl=nl+1;
   latexfig{nl}='\n\n\n';
   for j=1:length(latexfig)
      fprintf(fid,latexfig{j});
   end
   
end

else
    
    fprintf(fid,['There are ',num2str(npr),' problems with ',...
        num2str(selectBy.dim(2)),...
        ' variables solved by at least one solver\n\n']);
end

fprintf(fid,'\\newpage\n\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Solvers compared                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf(fid,'\\section{Solvers compared}\n\n');
listsol= table.so{1};
for i=2:nso
    if i<=nso-1 && i>1
       listsol = [listsol,', ',table.so{i}];
    elseif i==nso
        listsol = [listsol,' and ',table.so{i}];
    end
end

fprintf(fid,listsol,'\n\n\n');

fprintf(fid,'\\vspace{2cm}\n\n\n');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Performance plots                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   disp('Performance measures')  
   if selectBy.con(1)==0&&selectBy.con(2)==1
   fprintf(fid,'\\section{Performance measures for all problems}\n\n');
   elseif selectBy.con(1)==0&&selectBy.con(2)==0
   fprintf(fid,'\\section{Performance measures for unconstrained problems}\n\n');
   elseif selectBy.con(1)==1&&selectBy.con(2)==1
   fprintf(fid,['\\section{Performance measures profiles for bound',...
       ' constrained problems}\n\n']);    
   end

 % show figures nf, ng, nf2g and time for unconstrained problems
if selectBy.con(1)==0 && selectBy.con(2)==0
    fprintf(fid,'\\subsection{Data profiles}\n\n');
    latexfig =[];
    nl = 1;
    latexfig{nl}=['Denote by $\\mathcal S$ the list of compared',...
    ' solvers and by $\\mathcal P$ the list of problems.',...
    ' The data profile $\\delta_{s}(\\kappa):=\\frac{1}',...
    '{|\\mathcal P|}\\Big|\\Big\\{p\\in\\mathcal P~ \\Big|~cr_{p,s}',...
    ' :=\\frac{c_{p,s}}{n_{p}+1}\\le \\kappa \\Big\\}\\Big|$',...
    ' of the solver $s$ is the fraction of problems that the',...
    ' solver $s$ can solve with $\\kappa$ groups of $n_{p}+1$',...
    ' function evaluations. Here $n_{p}$ is the dimension of',...
    ' the problem $p$, $c_{p,s}$ is the {\\bf cost measure} of the',...
    ' solver $s$   to solve the problem $p$ and $cr_{p,s}$',...
    ' is the {\\bf cost ratio} of the solver $s$ to solve the',...
    ' problem $p$. \n' ];
     nl=nl+1;
    latexfig{nl}='\\begin{figure}[!htbp]\n';
    nl=nl+1;
    latexfig{nl}='\\begin{tabular}{ll}\n';
    nl=nl+1;
    latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.dpun{1},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.dpun{2},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}='\\end{tabular}\n';
    nl=nl+1;
    latexfig{nl}=['\\caption{Data profile $\\delta(\\kappa)$',...
   ' independent of a bound $\\kappa$ on the cost ratio.}\n'];
    nl=nl+1;
    latexfig{nl}='\\end{figure}\n';
    nl=nl+1;
    latexfig{nl}='\n\n\n';
    for j=1:length(latexfig), fprintf(fid,latexfig{j}); end

    fprintf(fid,'\\newpage\n\n');

    fprintf(fid,'\\subsection{Performance profiles}\n\n');

    latexfig =[];
    nl = 1;

    latexfig{nl}=['The performance profile $\\rho_{s}(\\tau):=',...
    '\\frac{1}{|\\mathcal P|}\\Big|\\Big\\{p\\in\\mathcal P ~\\Big|~',...
    ' pr_{p,s}:=\\frac{c_{p,s}}{\\min(c_{p,s_0}\\mid ',...
    ' s_0\\in S)}\\le \\tau\\Big\\}\\Big|$ of the solver $s$ is ',...
    ' the fraction of problems that the performance ratio ',...
    '$pr_{p,s}$ is at most $\\tau$. Note that $\\rho_{s}(1)$ is',...
   'the fraction of problems that the solver $s$ wins compared ',...
   'to the other solvers,  while $\\rho_{s}(\\tau)$ ($\\delta_{s}',...
   ' (\\kappa)$)  is the fraction of problems for sufficiently',...
   ' large $\\tau$ ($\\kappa$) that the solver $s$ can solve.'];

     nl=nl+1; 

    latexfig{nl}='\\begin{figure}[!htbp]\n';
    nl=nl+1;
    latexfig{nl}='\\begin{tabular}{ll}\n';
    nl=nl+1;
    latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.ppun{1},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.ppun{2},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}='\\end{tabular}\n';
    nl=nl+1;
    latexfig{nl}=['\\caption{Performance profile $\\rho(\\tau)$',...
     ' independent of a bound $\\tau$ on the performance ratio.}\n'];
    nl=nl+1;
    latexfig{nl}='\\end{figure}\n';
    nl=nl+1;
    latexfig{nl}='\n\n\n';
    for j=1:length(latexfig), fprintf(fid,latexfig{j}); end
    fprintf(fid,'\\newpage\n\n');

    fprintf(fid,'\\subsection{Box plot}\n\n');
    latexfig =[];
    nl = 1;
    latexfig{nl}='\\begin{figure}[!htbp]\n';
    nl=nl+1;
    latexfig{nl}='\\begin{tabular}{ll}\n';
    nl=nl+1;
     latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.bplotun{1},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.bplotun{2},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.bplotun{3},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.bplotun{4},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}='\\end{tabular}\n';
    nl=nl+1;
    latexfig{nl}='\\caption{Box plots for cost measures.}\n';
    nl=nl+1;
    latexfig{nl}='\\end{figure}\n';
    nl=nl+1;
    latexfig{nl}='\n\n\n';
    for j=1:length(latexfig), fprintf(fid,latexfig{j}); end
end


if selectBy.con(1)==1 && selectBy.con(2)==1
   % show figures nf, ng, nf2g and time for box constrained problems

    %fprintf(fid,'\\newpage\n\n');
    %fprintf(fid,'\\subsection{For bound constrained problems}\n\n');

     fprintf(fid,'\\subsection{Data profiles}\n\n');
    latexfig =[];
    nl = 1;
    latexfig{nl}=['Denote by $\\mathcal S$ the list of compared',...
    ' solvers and by $\\mathcal P$ the list of problems.',...
    ' The data profile $\\delta_{s}(\\kappa):=\\frac{1}',...
    '{|\\mathcal P|}\\Big|\\Big\\{p\\in\\mathcal P~ \\Big|~cr_{p,s}',...
    ' :=\\frac{c_{p,s}}{n_{p}+1}\\le \\kappa \\Big\\}\\Big|$',...
    ' of the solver $s$ is the fraction of problems that the',...
    ' solver $s$ can solve with $\\kappa$ groups of $n_{p}+1$',...
    ' function evaluations. Here $n_{p}$ is the dimension of',...
    ' the problem $p$, $c_{p,s}$ is the {\\bf cost measure} of the',...
    ' solver $s$   to solve the problem $p$ and $cr_{p,s}$',...
    ' is the {\\bf cost ratio} of the solver $s$ to solve the',...
    ' problem $p$. \n' ];
     nl=nl+1;
    latexfig{nl}='\\begin{figure}[!htbp]\n';
    nl=nl+1;
    latexfig{nl}='\\begin{tabular}{ll}\n';
    nl=nl+1;
    latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.dpbox{1},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.dpbox{2},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}='\\end{tabular}\n';
    nl=nl+1;
    latexfig{nl}=['\\caption{Data profile $\\delta(\\kappa)$',...
   ' independent of a bound $\\kappa$ on the cost ratio.}\n'];
    nl=nl+1;
    latexfig{nl}='\\end{figure}\n';
    nl=nl+1;
    latexfig{nl}='\n\n\n';
    for j=1:length(latexfig), fprintf(fid,latexfig{j}); end

    fprintf(fid,'\\newpage\n\n');

    fprintf(fid,'\\subsection{Performance profiles}\n\n');

    latexfig =[];
    nl = 1;

    latexfig{nl}=['The performance profile $\\rho_{s}(\\tau):=',...
    '\\frac{1}{|\\mathcal P|}\\Big|\\Big\\{p\\in\\mathcal P ~\\Big|~',...
    ' pr_{p,s}:=\\frac{c_{p,s}}{\\min(c_{p,s_0}\\mid ',...
    ' s_0\\in S)}\\le \\tau\\Big\\}\\Big|$ of the solver $s$ is ',...
    ' the fraction of problems that the performance ratio ',...
    '$pr_{p,s}$ is at most $\\tau$. Note that $\\rho_{s}(1)$ is',...
   'the fraction of problems that the solver $s$ wins compared ',...
   'to the other solvers,  while $\\rho_{s}(\\tau)$ ($\\delta_{s}',...
   ' (\\kappa)$)  is the fraction of problems for sufficiently',...
   ' large $\\tau$ ($\\kappa$) that the solver $s$ can solve.'];
     nl=nl+1; 
    latexfig{nl}='\\begin{figure}[!htbp]\n';
    nl=nl+1;
    latexfig{nl}='\\begin{tabular}{ll}\n';
    nl=nl+1;
    latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.ppbox{1},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.ppbox{2},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}='\\end{tabular}\n';
    nl=nl+1;
    latexfig{nl}=['\\caption{Performance profile $\\rho(\\tau)$',...
     ' independent of a bound $\\tau$ on the performance ratio.}\n'];
    nl=nl+1;
    latexfig{nl}='\\end{figure}\n';
    nl=nl+1;
    latexfig{nl}='\n\n\n';
    for j=1:length(latexfig), fprintf(fid,latexfig{j}); end
    fprintf(fid,'\\newpage\n\n');

    fprintf(fid,'\\subsection{Box plot}\n\n');
    latexfig =[];
    nl = 1;
    latexfig{nl}='\\begin{figure}[!htbp]\n';
    nl=nl+1;
    latexfig{nl}='\\begin{tabular}{ll}\n';
    nl=nl+1;
     latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.bplotbox{1},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.bplotbox{2},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}=['{\\includegraphics[width=6cm]{',...
    table.figname.bplotbox{3},...
    '.eps}}\\hspace{2cm}{\\includegraphics[width=6cm]{',...
    table.figname.bplotbox{4},...
    '.eps}}\\\\\n'];
    nl=nl+1;
    latexfig{nl}='\\end{tabular}\n';
    nl=nl+1;
    latexfig{nl}='\\caption{Box plots for cost measures.}\n';
    nl=nl+1;
    latexfig{nl}='\\end{figure}\n';
    nl=nl+1;
    latexfig{nl}='\n\n\n';
    for j=1:length(latexfig)
       fprintf(fid,latexfig{j});
    end
end

%%%%%%%%%%%%%%%%%%%%%%
%  Summarizing tables                       
%%%%%%%%%%%%%%%%%%%%%

disp('Summarizing tables')
fprintf(fid,'\\newpage\n\n');
fprintf(fid,'\\section{Summarizing tables}\n\n');

listfail0= cell(0);
for pr=1:min(npr)
     ii = 0;
     for i=1:nso
          flagerror = table.acc{pr,i}> optcrit & ~ ...
                   strcmp(table.err{pr,i},'accuracy reached');
          if flagerror     
             ii  = ii +1;
          end
     end
     if ii == nso
        listfail0 = [listfail0,table.pr{pr}];
     end
end

   
% summary table

fprintf(fid,'For a given collection $S$ of solvers, the strength of ');
fprintf(fid,'a solver $so \\in S$ -- relative to an ideal solver ');
fprintf(fid,'that matches on each problem the best solver -- '); 
fprintf(fid,'is measured, for any given cost measure $c_{s}$ ');
fprintf(fid,'by the number, $e_{so}$ defined by');
fprintf(fid,'\n\\[e_{so}:=\\left\\{\\begin{array}{ll}\\frac{');
fprintf(fid,['\\min_{s\\in S}c_{s}}{c_{so}},~~~& \\hbox{if the',...
    ' solver $so$ solves the problem},']);
fprintf(fid,'\\\\0,~~~& \\hbox{otherwise}, \\end{array}  \\right. \\]\n');    
fprintf(fid,'called the {\\bf efficiency} of the ');
fprintf(fid,'solver $so$ with respect to this cost measure. In fact, ');
fprintf(fid,'the efficiency of the solver $so$ is the inverse ');
fprintf(fid,'of the performance ratio of the solver $so$.  ');
fprintf(fid,'In the tables, efficiencies are given in percent. ');
fprintf(fid,'Larger efficiencies in the table imply a better average ');
fprintf(fid,'behavior; a zero efficiency indicates failure. ');
fprintf(fid,'All values are rounded (towards zero) to integers. ');
fprintf(fid,'Mean efficiencies are taken over the ');
fprintf(fid,num2str(npr-length(listfail0)));
fprintf(fid,' problems tried by all solvers and solved by at least one');
fprintf(fid,' of them, from a total of ');
fprintf(fid,num2str(npr));
fprintf(fid,' problems. \n');
fprintf(fid,' In the following tables, \\# 100 denotes the total number');
fprintf(fid,' of test problems in which the solver needed the least');
budget = '{\\tt nf}';
fprintf(fid,[' number ',budget,' and']);
fprintf(fid,' !100 the total number of test problems where the solver');
fprintf(fid,[' was the only one needing this many ',budget,'.']);
fprintf(fid,' $T_{mean}$ is defined by\n');
Tex = ['\\[T_{mean}:=\\frac{\\sum ~ \\mbox{solved}}',...
    '{\\# ~ \\mbox{solved}}~~~(\\mbox{in msec}),\\]'];
fprintf(fid,Tex);
fprintf(fid,'regardless of the time for unsolved problems.\n');


fprintf(fid,'\n\n In tables not recording efficiencies, a sign\n');
fprintf(fid,'\\begin{enumerate}\n\n ');
%fprintf(fid,'\\item [$\\bullet$] $d$ indicates that the');
%fprintf(fid,[' {\\tt direction is not descent}.','\n']);
fprintf(fid,'\\item [$\\bullet$] $n$ indicates that');

fprintf(fid,[' {\\tt nf} $\\geq$ ',num2str(selectBy.nf(2)),...
    ' {\\tt was reached}.','\n']);    

fprintf(fid,'\\item [$\\bullet$] $t$ indicates that');
fprintf(fid,[' {\\tt sec} $\\geq$ ',num2str(selectBy.sec(2)),...
    ' {\\tt was reached}.','\n']);
fprintf(fid,'\\item [$\\bullet$]  $f$ indicates that the');
fprintf(fid,[' {\\tt algorithm failed} for other reasons.','\n']);
fprintf(fid,'\\end{enumerate}\n\n ');

fprintf(fid,'\n\n~\n\n In times, the (for some problems significant) ');
fprintf(fid,' setup time for CUTEST is not included. ');
fprintf(fid,'Although running times are reported ');
fprintf(fid,'the comparison of times ');
fprintf(fid,'is not very reliable for several reasons:\\\\\n ');
fprintf(fid,'(i) The times were obtained under different ');
fprintf(fid,['conditions (solver source code Fortran,',...
    ' C and Matlab).\\\\\n ']);
fprintf(fid,['(ii) In unsuccessful runs, the actual',...
    ' running time depends ']);
fprintf(fid,'a lot on when and why the solver was stopped. \\\\\n');



lenAlltable = numel(fieldnames(AllTable));
names       = fieldnames(AllTable);
namesend    = names{end};
for i=length(names):-1:2, names{i}=names{i-1}; end
names{1}=namesend;
names
AllTable    = orderfields(AllTable, names);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       efficiency  tables                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



    
jj = 0; tt = 0;jjj = 0;
for ii=1:lenAlltable
       temptable  = getfield(AllTable, names{ii})
       if isempty (temptable.pr), continue; end
           
       npr2       = length(temptable.pr);
       Tmean      = temptable.Tmean;
       mindim     = temptable.mindim;
       maxdim     = temptable.maxdim;
       nnf        = temptable.nnf;
       nmsec      = temptable.nmsec;
       nnsolved   = temptable.nnsolved;
       neff100    = temptable.neff100;
       nalleff100 = temptable.nalleff100;
       nn         = temptable.nn;
       nt         = temptable.nt;
       nfa        = temptable.nfa;
       listfail0  = temptable.listfail;
       mess       = temptable.message;
      % temptable.so  = table.so;
      % temptable.aso = table.aso;
       lenso         = length(temptable.so);
      % next
      % if lenso > 40
      %    temptable.so =  temptable.so(1:40);
      %    lenso = 40;
      % end
       
       if strcmp(mess,'all:un') || strcmp(mess,'all:box')
          tt = tt+1;
          if tt==1
             disp('Classified by constraints')    
             fprintf(fid,'\\subsection{Classified by constraints}\n\n');
          end
       elseif ~isempty(strfind(mess,'time')), 

            jj = jj+1;
            if jj==1
               disp('Classified by time')    
               fprintf(fid,...
               '\\subsection{Classified by time}\n\n');
            end
      elseif strcmp(mess,'all:all')
          disp('Summary for all problems')   
           fprintf(fid,'\\subsection{Summary for all problems}\n\n');
       elseif strcmp(mess,'un:dim')||strcmp(mess,'box:dim')...
                ||strcmp(mess,'all:dim')
            jjj = jjj+1;
            if jjj==1
               disp('Classified by dimension')
               fprintf(fid,'\\subsection{Classified by dimension}\n\n'); 
            end
       end
       
        
        %%%%%%%%%%%%%%
        
   if info.shortTable
         latexTab=[];
         nl = 1;
         latexTab{nl}='\\begin{minipage}[t]{0.84\\textwidth}\n';
         nl=nl+1;
         latexTab{nl}='\\begin{center}\n';
         nl=nl+1;
         latexTab{nl}=['\\begin{adjustbox}{center,',...
             ' width=\\columnwidth-1pt}\n'];
         nl=nl+1;
         line='\\footnotesize\n';
         latexTab{nl}=line;
         nl=nl+1;
         line= ['\\begin{tabular}{? l? l? l? l? l? l? l? l? l?}\n'];
   
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         nl=nl+1;
         textg=['stopping test:~~~~~~'];
         textg1=['$q_f\\le ',num2str(optcrit),','];
         textg2=['~ {\\tt sec}\\le  ',infomax.secmaxString,','];
         textg3=['~ {\\tt nf}\\le ',...
             infomax.nfmaxString,'$'];
         line=['\\multicolumn{7}{?l?}{',textg,'} \\\\\n'];
         latexTab{nl}=line;
         nl=nl+1;
         line=['\\multicolumn{7}{?c?}{',textg1,textg2,textg3,'} \\\\\n'];
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         nl=nl+1;
         
         if ~isempty(strfind(mess,'un')), 
            line=['\\multicolumn{7}{?l?}{',...
            num2str(npr2-length(listfail0)),' of ',...
            num2str(npr2),' problems without bounds solved} \\\\\n'];    
         elseif  ~isempty(strfind(mess,'box')), 
            line=['\\multicolumn{7}{?l?}{',...
            num2str(npr2-length(listfail0)),' of ',...
            num2str(npr2),' problems with bounds solved}\\\\\n'];
         else
            line=['\\multicolumn{7}{?l?}{',...
            num2str(npr2-length(listfail0)),' of ',...
            num2str(npr2),' problems solved} \\\\\n']; 
         end
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\cline{1-7}\n';
         nl=nl+1;
         
         if ~isempty(strfind(mess,'time1'))
        line=['\\multicolumn{2}{?l?}{dim$\\in$[',...
        num2str(mindim),',',num2str(maxdim),']',...
        ', best time $\\leq1$ sec}&\\multicolumn{3}{r?}',...
        '{\\# of anomalies}&\\multicolumn{2}{r?}{{\\tt eff}\\%%}\\\\\n'];  
        
        elseif ~isempty(strfind(mess,'time2'))
        line=['\\multicolumn{2}{?l?}{dim$\\in$[',...
         num2str(mindim),',',num2str(maxdim),']',...
         ', sec $1<$ best time $\\le$ 10 sec,}&',...
         '\\multicolumn{3}{r?}',...
         '{\\# of anomalies} &\\multicolumn{2}{r?}{{\\tt eff}\\%%}\\\\\n'];  
     
        elseif ~isempty(strfind(mess,'time3'))
        line=['\\multicolumn{2}{?l?}{dim$\\in$[',...
         num2str(mindim),',',num2str(maxdim),']',...
         ', sec $10<$ best time $\\le$ 100 sec,}&',...
         ' \\multicolumn{3}{r?}',...
         '{\\# of anomalies} &\\multicolumn{2}{r?}{{\\tt eff}\\%%}\\\\\n'];  
       elseif ~isempty(strfind(mess,'time4'))
        line=['\\multicolumn{2}{?l?}{dim$\\in$[',...
         num2str(mindim),',',num2str(maxdim),']',...
         ', best time $>$ 100 sec,}&\\multicolumn{3}{r?}',...
         '{\\# of anomalies} &\\multicolumn{2}{r?}{{\\tt eff}\\%%}\\\\\n'];  
        else
         line=['\\multicolumn{2}{?l?}{dim$\\in$[',...
             num2str(mindim),',',num2str(maxdim),']}&',...
         '\\multicolumn{3}{r?}{\\# of anomalies} &',...
         '\\multicolumn{2}{r?}{{\\tt eff}\\%%}\\\\\n'];
         end
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         nl=nl+1;
         line=['\\multicolumn{1}{?l?}{solver} & solved&\\#n&\\#t&',...
               '\\#f&{\\tt nf}&{\\tt sec}\\\\\n'];
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         for so=1:lenso,
             nl=nl+1;
            temptable.aso{so}=temptable.so{so};
           % [sol] = sol2paper(bbo,temptable.so{so});
            line=['{\\tt ',temptable.so{so},'}&',nnsolved{so},...
                  '&',num2str(nn(so)),'&',num2str(nt(so)),'&',...
                  num2str(nfa(so)),'&',nnf{so},'&',nmsec{so},'\\\\\n'];
            latexTab{nl}=line;
        end;
   else
        latexTab=[];
         nl = 1;
         latexTab{nl}='\\begin{minipage}[t]{0.84\\textwidth}\n';
         nl=nl+1;
         latexTab{nl}='\\begin{center}\n';
         nl=nl+1;
         latexTab{nl}=['\\begin{adjustbox}{center,',...
             ' width=\\columnwidth-1pt}\n'];
         nl=nl+1;
         line='\\footnotesize\n';
         latexTab{nl}=line;
         nl=nl+1;
         line= ['\\begin{tabular}{? l? l? r?? r? r? r?? r?',...
             ' r? r?? r? r? r?}\n'];
   
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         nl=nl+1;
         textg=['stopping test:~~~~~~'];
       textg1=['$q_f\\le ',num2str(optcrit),','];
         textg2=['~ {\\tt sec}\\le  ',infomax.secmaxString,','];
         textg3=['~ {\\tt nf}\\le ',...
             infomax.nfmaxString,'$'];
         line=['\\multicolumn{1}{?l}{',textg,'} &  ',...
               '\\multicolumn{9}{c}{',textg1,textg2,textg3,'} &  ',...
               '\\multicolumn{1}{c?}{}\\\\\n'];
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         nl=nl+1;
         
         if ~isempty(strfind(mess,'un')), 
            line=['\\multicolumn{6}{?l??}{',...
            num2str(npr2-length(listfail0)),' of ',...
            num2str(npr2),' problems without bounds solved} &',...
            ' \\multicolumn{3}{r??}{} & ',...
           '\\multicolumn{2}{r?}{mean efficiency in \\%%}\\\\\n'];    
         elseif  ~isempty(strfind(mess,'box')), 
            line=['\\multicolumn{6}{?l??}{',...
            num2str(npr2-length(listfail0)),' of ',...
            num2str(npr2),' problems with bounds solved} &',...
            '\\multicolumn{3}{r??}{} & ',...
            '\\multicolumn{2}{r?}{mean efficiency in \\%%}\\\\\n'];
         else
            line=['\\multicolumn{6}{?l??}{',...
            num2str(npr2-length(listfail0)),' of ',...
            num2str(npr2),' problems solved} &',...
            '\\multicolumn{3}{r??}{} & ',...
            '\\multicolumn{2}{c?}{mean efficiency in \\%%}\\\\\n']; 
         end
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\cline{1-11}\n';
         nl=nl+1;
         
         if ~isempty(strfind(mess,'time1'))
        line=['\\multicolumn{6}{?l??}{dim$\\in$[',...
        num2str(mindim),',',num2str(maxdim),']',...
        ', best time $\\leq1$ sec}&\\multicolumn{3}{r??}',...
        '{\\# of anomalies}&\\multicolumn{2}{r?}{for',...
        ' cost measure}\\\\\n'];  
        
        elseif ~isempty(strfind(mess,'time2'))
        line=['\\multicolumn{6}{?l??}{dim$\\in$[',...
         num2str(mindim),',',num2str(maxdim),']',...
         ', sec $1<$ best time $\\le$ 10 sec,}&',...
         '\\multicolumn{3}{r??}',...
         '{\\# of anomalies} &\\multicolumn{2}{r?}{for',...
         ' cost measure}\\\\\n'];  
     
        elseif ~isempty(strfind(mess,'time3'))
        line=['\\multicolumn{6}{?l??}{dim$\\in$[',...
         num2str(mindim),',',num2str(maxdim),']',...
         ', sec $10<$ best time $\\le$ 100 sec,}&',...
         ' \\multicolumn{3}{r??}',...
         '{\\# of anomalies} &\\multicolumn{2}{r?}{for', ...
         ' cost measure}\\\\\n'];  
       elseif ~isempty(strfind(mess,'time4'))
        line=['\\multicolumn{6}{?l??}{dim$\\in$[',...
         num2str(mindim),',',num2str(maxdim),']',...
         ', best time $>$ 100 sec,}&\\multicolumn{3}{r??}',...
         '{\\# of anomalies} &\\multicolumn{2}{r?}{for',...
         ' cost measure}\\\\\n'];  
     
        else
        
         line=['\\multicolumn{6}{?l??}{dim$\\in$[',...
             num2str(mindim),',',num2str(maxdim),']}&',...
         '\\multicolumn{3}{r??}{\\# of anomalies} &',...
         '\\multicolumn{2}{r?}{for cost measure}\\\\\n'];
         end
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         nl=nl+1;
         line=['\\multicolumn{2}{?l?}{solver} & solved&\\#100',...
           '&!100&$T_{\\textrm{mean}}$&\\#n&\\#t&\\#f&{\\tt nf}',...
           '&{\\tt msec}\\\\\n'];
         latexTab{nl}=line;
         nl=nl+1;
         latexTab{nl}='\\hline\n';
         for so=1:lenso,
             nl=nl+1;
            temptable.aso{so}=temptable.so{so};
           % [sol] = sol2paper(bbo,temptable.so{so});
            line=['{\\tt ',temptable.so{so},'}& {\\bf ',...
                   temptable.aso{so},'}&',nnsolved{so},...
                  '&',nalleff100{so},'&',neff100{so},'&',Tmean{so},...
                  '&',num2str(nn(so)),'&',num2str(nt(so)),'&',...
                  num2str(nfa(so)),'&',nnf{so},'&',nmsec{so},'\\\\\n'];
            latexTab{nl}=line;
        end;
   end
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}='\\end{tabular}';
    nl=nl+1;
    latexTab{nl}='\\end{adjustbox}';
    nl=nl+1;
    latexTab{nl}='\\medskip';
    nl=nl+1;
    latexTab{nl}='\\end{center}';
    nl=nl+1;
    latexTab{nl}='\\end{minipage}\n';
    nl=nl+1;
    latexTab{nl}='\n\n\n';
    for j=1:length(latexTab),
        fprintf(fid,latexTab{j});
    end;
end 

%%%%%%%%%%%%%%%%%%%%
%  Failure analysis                          
%%%%%%%%%%%%%%%%%%%%


disp('Failure analysis')   

fprintf(fid,'\\subsection{Failure analysis}\n\n');

listfail0 = tableprim.listfail;
mindim0   = tableprim.mindim ;
maxdim0   = tableprim.maxdim;          
if~isempty(listfail0)
    latexTab=[];
    nl = 1;
    latexTab{nl}='\\renewcommand{\\arraystretch}{1.35}\n';
    nl=nl+1;
    latexTab{nl}='\\small\n';
    nl=nl+1;
    latexTab{nl}='\\begin{center}';
    nl=nl+1;
    latexTab{nl}='\\begin{longtable}{??l c c r??}';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}=['\\multicolumn{4}{??c??}{',...
      num2str(length(listfail0)),...
     ' test problems unsolved by all solvers used for dim $\\in$ [',...
      num2str(mindim0),',',num2str(maxdim0),']}\\\\\n'];
    nl=nl+1;
    latexTab{nl}='&&&\\\\\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}='\\endfirsthead\n';
    nl=nl+1;
    latexTab{nl}='\\endhead\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}=['\\multicolumn{4}{??c??}{Continued on',...
                 ' next page}\\\\\n'];
    nl=nl+1;
    latexTab{nl}='&&&\\\\\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}='\\endfoot\n';
    nl=nl+1;
    latexTab{nl}='\\endlastfoot\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    ls0 = length(listfail0);
    for j=1:4:ls0
          for k=0:3
             if j+k>ls0, listfail0{j+k}='';end
          end
           if j==1
              line=[listfail0{j},'&',listfail0{j+1},...
                  '&',listfail0{j+2},'&',listfail0{j+3},'\\\\\n'];
           else
              line=[listfail0{j},'&',listfail0{j+1},'&',...
                  listfail0{j+2},'&',listfail0{j+3},'\\\\\n'];
           end
           latexTab{nl}=line;
           nl=nl+1;
    end
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}='\\end{longtable}';
    nl=nl+1;
    latexTab{nl}='\\end{center}';
    nl=nl+1;
    latexTab{nl}='\n\n\n';
    for i=1:length(latexTab),
        fprintf(fid,latexTab{i});
    end
end % isempty(listfail0)


if bbo
if 0
if ~isempty(tableprim.puafig)

soList       = table.so;   
sortBy.key   = 'DN';
sortBy.inc   = 0;
selectBy.res = 0;
selectBy.listfail = tableprim.puafig;

puafig = TEsort(resdir,soList,selectBy,sortBy);
npuafig = length(puafig.id);


latexTab=[];
nl = 1;
latexTab{nl}='\\renewcommand{\\arraystretch}{1.35}\n';
nl=nl+1;
latexTab{nl}='\\small\n';
nl=nl+1;
latexTab{nl}='\\begin{center}';
nl=nl+1;
latexTab{nl}='\\begin{longtable}{?c?}';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\endfirsthead\n';
nl=nl+1;
latexTab{nl}='\\endhead\n';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\multicolumn{1}{?c?}{Continued on next page}\\\\\n';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\endfoot\n';
nl=nl+1;
latexTab{nl}='\\endlastfoot\n';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;

if npuafig==1
   latexTab{nl}=['{\\includegraphics[width=5cm]{',...
       puafig.id{1},'.eps}}\\\\\n'];
   nl=nl+1;
elseif ismember(npuafig,[2 4 8])
      for jk=1:2:npuafig
          latexTab{nl}=['{\\includegraphics[width=5cm]{',...
          puafig.id{jk},'.eps}}',...
          '{\\includegraphics[width=5cm]{',puafig.id{jk+1},...
          '.eps}}\\\\\n'];
           nl=nl+1;  
      end
else
    for jj0=1:3:npuafig
        if jj0+1>npuafig
           ind = findstr(puafig.id{jj0},':');
           if ~ isempty(ind)
                Orgiprob = puafig.id{jj0}(1:ind-1);
                prob=[Orgiprob,'_',puafig.id{jj0}(ind+1:end)];
           else
               prob=puafig.id{jj0};
           end
           latexTab{nl}=['{\\includegraphics[width=5cm]{',prob,...
               '.eps}}\\\\\n']; 
        elseif jj0+2>npuafig
         ind1 = findstr(puafig.id{jj0},':');
         if ~ isempty(ind1)
                Orgiprob = puafig.id{jj0}(1:ind1-1);
                prob1=[Orgiprob,'_',puafig.id{jj0}(ind1+1:end)];
         else
             prob1=puafig.id{jj0};
         end
         
         ind2 = findstr(puafig.id{jj0+1},':');
         if ~ isempty(ind2)
                Orgiprob = puafig.id{jj0+1}(1:ind2-1);
                prob2=[Orgiprob,'_',puafig.id{jj0+1}(ind2+1:end)];
         else
             prob2=puafig.id{jj0+1};
         end
         
         
         latexTab{nl}=['{\\includegraphics[width=5cm]{',...
             prob1,'.eps}}',...
            '{\\includegraphics[width=5cm]{',prob2,'.eps}}\\\\\n'];
        else
            
         ind1 = findstr(puafig.id{jj0},':');
         if ~ isempty(ind1)
                Orgiprob = puafig.id{jj0}(1:ind1-1);
                prob1=[Orgiprob,'_',puafig.id{jj0}(ind1+1:end)];
         else
             prob1=puafig.id{jj0};
         end
         
         ind2 = findstr(puafig.id{jj0+1},':');
         if ~ isempty(ind2)
                Orgiprob = puafig.id{jj0+1}(1:ind2-1);
                prob2=[Orgiprob,'_',puafig.id{jj0+1}(ind2+1:end)];
         else
             prob2=puafig.id{jj0+1};
         end
         
         ind3 = findstr(puafig.id{jj0+2},':');
         if ~ isempty(ind3)
                Orgiprob = puafig.id{jj0+2}(1:ind3-1);
                prob3=[Orgiprob,'_',puafig.id{jj0+2}(ind3+1:end)];
         else
             prob3=puafig.id{jj0+2};
         end
            
              
            latexTab{nl}=['{\\includegraphics[width=5cm]{',...
                   prob1,'.eps}}',...
                  '{\\includegraphics[width=5cm]{',prob2,'.eps}}',...
                  '{\\includegraphics[width=5cm]{',prob3,'.eps}}\\\\\n'];
              
        end
       nl=nl+1;
    end
end  
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\end{longtable}';
nl=nl+1;
latexTab{nl}='\\end{center}';
nl=nl+1;
latexTab{nl}='\n\n\n';
for i=1:length(latexTab),
   fprintf(fid,latexTab{i});
end
end
end
end


latexTab=[];
nl = 1;
latexTab{nl}='\\renewcommand{\\arraystretch}{1.35}\n';
nl=nl+1;
latexTab{nl}='\\small\n';
nl=nl+1;
latexTab{nl}='\\begin{center}';
nl=nl+1;
%latexTab{nl}='\\begin{landscape}\n';
% nl=nl+1;
latexTab{nl}='\\begin{longtable}{?c? c? c? c? c?}';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}=['\\multicolumn{1}{?l?}{solver}',...
'&\\multicolumn{1}{?l?}{dim$\\in$[',...
 num2str(mindim0),',',num2str(maxdim0),']}',...
'&\\multicolumn{1}{c?}{problem}',...
'&\\multicolumn{1}{c?}{error message} &',...
'\\multicolumn{1}{r?}{\\# same error}\\\\\n'];
 nl=nl+1;
 latexTab{nl}='\\hline\n';
 nl=nl+1;
 latexTab{nl}='\\endfirsthead\n';
 nl=nl+1;
 latexTab{nl}='\\endhead\n';
 nl=nl+1;
 latexTab{nl}='\\hline\n';
 nl=nl+1;
 latexTab{nl}=['\\multicolumn{5}{?l?}{Continued',...
 ' on next page}\\\\\n'];
 nl=nl+1;
 latexTab{nl}='\\hline\n';
 nl=nl+1;
 latexTab{nl}='\\endfoot\n';
 nl=nl+1;
 latexTab{nl}='\\hline\n';
 latexTab{nl}='\\endlastfoot\n';
 nl=nl+1;
 latexTab{nl}='\\hline\n';
 nl=nl+1;
 for i=1:nso
     listerr1= cell(0);
     proberr = cell(0);
     dimprob   = [];   
     for pr=1:npr
          flagerror = ~ strcmp(tableprim.err{pr,i},'accuracy reached');
          if flagerror
             ind = findstr(tableprim.pr{pr},':');
             if ~ isempty(ind)
                 A = tableprim.pr{pr}(1:ind-1);
                 proberr = [proberr,A];
              else   
                 proberr = [proberr,tableprim.pr{pr}]; 
             end
              listerr1 = [listerr1,tableprim.err{pr,i}];
              dimprob = [dimprob,tableprim.dim{pr}];
          end
     end
     
     [listerr1,placeerr,JJ]=unique(listerr1,'stable');
     
     numbererr = histc(JJ,1:numel(listerr1));
     placeerr = unique(placeerr);
     dimprob  = dimprob(placeerr);
     proberr  = proberr(placeerr);
     if ~ isempty(placeerr)
        for j=1:length(placeerr)
            if j==1
              tableprim.aso{i}=tableprim.so{i};
              line=[tableprim.aso{i},'&',num2str(dimprob(j)),'&',...
               proberr{j},'&',listerr1{j},'&',...
               num2str(numbererr(j)),'\\\\\n'];
            else
              line=[' &',num2str(dimprob(j)),'&',proberr{j},...
              '&',listerr1{j},'&',num2str(numbererr(j)),'\\\\\n'];
            end
           latexTab{nl}=line;
           nl=nl+1;
        end
        latexTab{nl}='\\hline\n';
        nl=nl+1;
     end
 end
 latexTab{nl}='\\end{longtable}';
 nl=nl+1;
 %latexTab{nl}='\\end{landscape}';
 %nl=nl+1;
 latexTab{nl}='\\end{center}';
 nl=nl+1;
 latexTab{nl}='\n\n\n';
 for i=1:length(latexTab)
    fprintf(fid,latexTab{i});
 end


    
mindim0   = tableprim.mindim ;
maxdim0   = tableprim.maxdim;   
nprf = length(tableprim.pr);
for i=1:nso
    listfail1= cell(0);
    listfail2= cell(0);listfail3= cell(0);
    for pr=1:nprf
        flagerror = ~ strcmp(tableprim.err{pr,i},'accuracy reached');
        len2 = strcmp(tableprim.err{pr,i},'secmax reached');
       
        len1 = strcmp(tableprim.err{pr,i},'nfmax reached');   
        
        if len2
          listfail2 = [listfail2,tableprim.pr{pr}] ;
        end
        if len1
          listfail1 = [listfail1,tableprim.pr{pr}];
        end
        if flagerror && ~len1 && ~len2
           listfail3 = [listfail3,table.pr{pr}];
        end
    end
    
    
     if~ isempty(listfail1)||~ isempty(listfail2)||~ isempty(listfail3)
     latexTab=[];
     nl = 1;
     latexTab{nl}='\\renewcommand{\\arraystretch}{1.35}\n';
     nl=nl+1;
     latexTab{nl}='\\small\n';
     nl=nl+1;
     latexTab{nl}='\\begin{center}';
     nl=nl+1;
     latexTab{nl}='\\begin{longtable}{??c?? l l l??}';
     nl=nl+1;
     latexTab{nl}='\\hline\n';
     nl=nl+1;
     latexTab{nl}=['\\multicolumn{1}{??c??}{kind of anomalies}&',...
         ' \\multicolumn{3}{l??}{',...
         num2str(length(listfail0)),...
        ' test problems unsolved by ',...
        tableprim.so{i},' for dim $\\in$ [',...
        num2str(mindim0),',',num2str(maxdim0),']}\\\\\n'];
    nl=nl+1;
    latexTab{nl}='&&&\\\\\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}='\\endfirsthead\n';
    nl=nl+1;
    latexTab{nl}='\\endhead\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}=['\\multicolumn{1}{??c??}{}&',...
        ' \\multicolumn{3}{l??}{Continued on',...
        ' next page}\\\\\n'];
    nl=nl+1;
    latexTab{nl}='&&&\\\\\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}='\\endfoot\n';
    nl=nl+1;
    latexTab{nl}='\\endlastfoot\n';
    nl=nl+1;
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    if ~isempty(listfail1)
       ls0 = length(listfail1);
       for j=1:3:ls0
           for k=0:2
               if j+k>ls0, listfail1{j+k}='';end
           end
           if j==1
              line=['n &',listfail1{j},'&',listfail1{j+1},...
              '&',listfail1{j+2},'\\\\\n'];
           else
             line=['&',listfail1{j},'&',listfail1{j+1},'&',...
              listfail1{j+2},'\\\\\n'];
           end
           latexTab{nl}=line;
           nl=nl+1;
       end
       latexTab{nl}='\\hline\n';
       nl=nl+1;
    end
    if ~isempty(listfail2)
       ls0 = length(listfail2);
       for j=1:3:ls0
           for k=0:2
               if j+k>ls0, listfail2{j+k}='';end
           end
           if j==1
              line=['t &',listfail2{j},'&',listfail2{j+1},...
              '&',listfail2{j+2},'\\\\\n'];
           else
             line=['&',listfail2{j},'&',listfail2{j+1},'&',...
              listfail2{j+2},'\\\\\n'];
           end
           latexTab{nl}=line;
           nl=nl+1;
       end
       latexTab{nl}='\\hline\n';
       nl=nl+1;
    end
    
    if ~isempty(listfail3)
       ls0 = length(listfail3);
       for j=1:3:ls0
           for k=0:2
               if j+k>ls0, listfail3{j+k}='';end
           end
           if j==1
              line=['f &',listfail3{j},'&',listfail3{j+1},...
              '&',listfail3{j+2},'\\\\\n'];
           else
             line=['&',listfail3{j},'&',listfail3{j+1},'&',...
              listfail3{j+2},'\\\\\n'];
           end
           latexTab{nl}=line;
           nl=nl+1;
       end
       
    end
    
    latexTab{nl}='\\hline\n';
    nl=nl+1;
    latexTab{nl}='\\end{longtable}';
    nl=nl+1;
    latexTab{nl}='\\end{center}';
    nl=nl+1;
    latexTab{nl}='\n\n\n';
    for i=1:length(latexTab)
       fprintf(fid,latexTab{i});
    end
    end % isempty(listfail0)
end


if ConvePlotFlag
    
fprintf(fid,'\\newpage\n');
disp('Improvment figures')    
fprintf(fid,'\\subsection{Improvement figures}\n\n');  
       

soList       = tableprim.so;   
sortBy.key   = 'DN';
sortBy.inc   = 0;
selectBy.res = 0;
selectBy.listfail = tableprim.prig;

prig  = TEsort(resdir,soList,selectBy,sortBy);
nprfig = length(prig.id);

latexTab=[];
nl = 1;
latexTab{nl}='\\renewcommand{\\arraystretch}{1.35}\n';
nl=nl+1;
latexTab{nl}='\\small\n';
nl=nl+1;
latexTab{nl}='\\begin{center}';
nl=nl+1;
latexTab{nl}='\\begin{longtable}{?c?}';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\endfirsthead\n';
nl=nl+1;
latexTab{nl}='\\endhead\n';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\multicolumn{1}{?c?}{Continued on next page}\\\\\n';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\endfoot\n';
nl=nl+1;
latexTab{nl}='\\endlastfoot\n';
nl=nl+1;
latexTab{nl}='\\hline\n';
nl=nl+1;

if nprfig==1
   latexTab{nl}=['{\\includegraphics[width=4cm]{',...
       prig.id{1},'.eps}}\\\\\n'];
   nl=nl+1;
elseif ismember(nprfig,[2 4 8])
      for jk=1:2:nprfig
          latexTab{nl}=['{\\includegraphics[width=4cm]{',...
          prig.id{jk},'.eps}}\\hspace{1cm}',...
          '{\\includegraphics[width=4cm]{',...
          prig.id{jk+1},'.eps}}\\\\\n'];
           nl=nl+1;  
      end
else
    for jj0=1:3:nprfig
        if jj0+1>nprfig
           ind = findstr(prig.id{jj0},':');
           if ~ isempty(ind)
                Orgiprob = prig.id{jj0}(1:ind-1);
                prob=[Orgiprob,'_',prig.id{jj0}(ind+1:end)];
           else
               prob=prig.id{jj0};
           end
           latexTab{nl}=['{\\includegraphics[width=4cm]{',...
               prob,'.eps}}\\\\\n']; 
        elseif jj0+2>nprfig
         ind1 = findstr(prig.id{jj0},':');
         if ~ isempty(ind1)
                Orgiprob = prig.id{jj0}(1:ind1-1);
                prob1=[Orgiprob,'_',prig.id{jj0}(ind1+1:end)];
         else
             prob1=prig.id{jj0};
         end
         
         ind2 = findstr(prig.id{jj0+1},':');
         if ~ isempty(ind2)
                Orgiprob = prig.id{jj0+1}(1:ind2-1);
                prob2=[Orgiprob,'_',prig.id{jj0+1}(ind2+1:end)];
         else
             prob2=prig.id{jj0+1};
         end
         
         
         latexTab{nl}=['{\\includegraphics[width=4cm]{',...
                   prob1,'.eps}}',...
                  '{\\hspace{1cm}\\includegraphics[width=4cm]{',...
                  prob2,'.eps}}\\\\\n'];
        else
            
         ind1 = findstr(prig.id{jj0},':');
         if ~ isempty(ind1)
                Orgiprob = prig.id{jj0}(1:ind1-1);
                prob1=[Orgiprob,'_',prig.id{jj0}(ind1+1:end)];
         else
             prob1=prig.id{jj0};
         end
         
         ind2 = findstr(prig.id{jj0+1},':');
         if ~ isempty(ind2)
                Orgiprob = prig.id{jj0+1}(1:ind2-1);
                prob2=[Orgiprob,'_',prig.id{jj0+1}(ind2+1:end)];
         else
             prob2=prig.id{jj0+1};
             
         end
         
         ind3 = findstr(prig.id{jj0+2},':');
         if ~ isempty(ind3)
                Orgiprob = prig.id{jj0+2}(1:ind3-1);
                prob3=[Orgiprob,'_',prig.id{jj0+2}(ind3+1:end)];
         else
             prob3=prig.id{jj0+2};
         end
            
              
            latexTab{nl}=['{\\includegraphics[width=4cm]{',...
                prob1,'.eps}}',...
                  '{\\hspace{1cm}\\includegraphics[width=4cm]{',...
                  prob2,'.eps}}',...
                  '{\\hspace{1cm}\\includegraphics[width=4cm]{',...
                  prob3,'.eps}}\\\\\n'];
              
        end
       nl=nl+1;
    end
end  
latexTab{nl}='\\hline\n';
nl=nl+1;
latexTab{nl}='\\end{longtable}';
nl=nl+1;
latexTab{nl}='\\end{center}';
nl=nl+1;
latexTab{nl}='\n\n\n';
for i=1:length(latexTab)
   fprintf(fid,latexTab{i});
end

end






   
textg = num2str(optcrit);
% write table sections

head={'nf efficiency' 'msec' 'nf'};
for cas=1:3
  switch head{cas}
  case 'nf efficiency'
    fprintf(fid,'\\cleardoublepage\n\n');  
    fprintf(fid,...
            ['\\subsection{nf efficiency for accuracy ',...
            textg,'}\n\n']);
  case 'nf'
    fprintf(fid,'\\cleardoublepage\n\n');
    fprintf(fid,...
    ['\\subsection{Number of functions evaluations, accuracy ',...
    textg,'}\n\n']);
  case 'msec'
    fprintf(fid,'\\cleardoublepage\n\n');
    fprintf(fid,['\\subsection{Time in milliseconds, ',...
        textg,'}\n\n']);
  end;
  
  
  disp(['table for ',head{cas}]);
  for part=1:ntab,
      ind=[tabn*(part-1)+1:min(npr,tabn*part)];
      latexTab=mktable(tableprim,ind,head{cas});
      % fprintf(fid,'{\\footnotesize\n');
      for i=1:length(latexTab),
         fprintf(fid,latexTab{i});
      end;
      % fprintf(fid,'} %% end footnotesize\n');
      fprintf(fid,'\\vspace{2cm}\n\n\n\n');
  end;
end;




% write bottom of latex file
fprintf(fid,'\\end{document}\n');
fclose(fid);

% create pdf file
if 1
  eval(['cd ',PDFpath])
  eval(['! latex ',latexFile(1:end-4)])
  eval(['! latex ',latexFile(1:end-4)])
  eval(['! ',WORKpath,'/TE/dvi2pdf ',latexFile(1:end-4)])
  disp(['now PDFpath',latexFile(1:end-4),'.pdf contains the pdf file'])
else
  eval(['!pdflatex ',latexFile]);
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% mktable %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function latexTab=mktable(table,ind,cas);
% create latex tables from result of analruns.m
%
% table   % table created by analruns.m
% ind     % index set of problems (at most 35)
% cas     % one of 'ng' 'diff' 'nf' 'nf2g' 'msec'
%
% latexTab  % cell array with table description in latex
%
function latexTab=mktable(table,ind,cas);
global bbo

nso = length(table.so);
if nso > 6
   nso = 6;
end

Inso = 1:nso;

npr=length(ind);
if npr>40,
  npr;  
  error('table size must be <= 40'); 
end;


prob=table.pr(ind);
dim=table.dim(ind);

err=table.err(ind,Inso);
nfmax = table.nfmax(ind);
secmax = table.secmax(ind);
bnf   = table.bnf(ind);

% convert nfree to text
nfree=table.nfree(ind);

for pr=1:length(nfree),
  if isnan(nfree{pr})||nfree{pr}==-1
   nact{pr}='$-$';   
  else
  nact{pr} = dim{pr}-nfree{pr};
  end
end;

    
switch cas

    
case 'nf efficiency'
  tab=table.ef(ind,Inso);
  heading='{\\tt nf} efficiency for solver';
 case 'nf'
  tab=table.nf(ind,Inso);
  heading='{\\tt nf} for solver';
case 'msec'
  tab=table.msec(ind,Inso);
  heading='time in milliseconds for solver';
end;

heading1 = '{\\tt nf}';

nl=0;
line='\\scalebox{0.8}{\\begin{tabular}{| l || c| c| c||';

for pr=1:nso,
  line=[line,'c|'];
end;
line=[line,' }\n'];
nl=nl+1;latexTab{nl}=line;

nl=nl+1;latexTab{nl}='\\hline\n';
line=...
  ['problem & dim & nact&',heading1,'&',...
              '\\multicolumn{',num2str(nso),'}{c|}{',heading,'}\\\\\n'];
nl=nl+1;latexTab{nl}=line;
if nso<=4
nl=nl+1;latexTab{nl}=['\\cline{5-',num2str(nso+4),'}\n'];
line=['         & & &best&',latexline(table.so(Inso))];
nl=nl+1;latexTab{nl}=line;
else
nl=nl+1;latexTab{nl}=['\\cline{5-',num2str(nso+4),'}\n'];
line=['         & & &best&',latexline(table.aso(Inso))];
nl=nl+1;latexTab{nl}=line;
end

nl=nl+1;latexTab{nl}='\\hline\n';
  
for pr=1:min(npr),
textline=[];
ignorTest = 0;
for i=1:size(tab,2),
   if (isnan(tab{pr,i})|| isinf(tab{pr,i}))

       switch num2str(err{pr,i})
       case 'nfmax reached' 
            textline{i}='$n$';
       case 'secmax reached'
            textline{i}='$t$'; 
           otherwise
           textline{i}='$f$';  
       end
   else 
       switch cas
          case 'nf efficiency'
                if tab{pr,i}==0
                   textline{i}='$-$';
                   ignorTest = ignorTest+1;
                else
                  textline{i}=num2str(tab{pr,i});  
               end
           case 'nf'
               if tab{pr,i}==nfmax{pr}
                  textline{i}='$-$';
                  ignorTest = ignorTest+1;
               else
                  textline{i}=num2str(tab{pr,i});  
               end
            case 'msec'
               if tab{pr,i}==1000*secmax{pr}
                  textline{i}='$-$';
                  ignorTest = ignorTest+1;
               else
                  textline{i}=num2str(tab{pr,i}); 
               end
           otherwise
               textline{i}=num2str(tab{pr,i});
       end
    end;

end; 

if bnf{pr}==nfmax{pr}
 bnf{pr}='$-$';
end
if ignorTest == size(tab,2)
 continue;
end
line=[prob{pr},' & ',num2str(dim{pr}),' & ',...
  num2str(nact{pr}),' & ',...
  num2str(bnf{pr}),' & ',latexline(textline)];
nl=nl+1;latexTab{nl}=line;
end  
    
      
nl=nl+1;latexTab{nl}='\\hline\n';
nl=nl+1;latexTab{nl}='\\end{tabular}}\n';
nl=nl+1;latexTab{nl}='\n\n\n';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% latexline %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function line=latexline(textcell)
% create a line of a latex table 
% whose entries are the entries of textcell
%
n=length(textcell);
line=[];
for i=1:n-1, 
  line=[line,textcell{i},'&'];
end;
line=[line,textcell{n},' \\\\\n'];

