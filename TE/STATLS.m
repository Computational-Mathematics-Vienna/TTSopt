
%   'CoDoSol1' 'NATRN1' 'DOGLEG1' 'MINFNCG1' 'NATRLS1'  'NMPGTR2' ...
%   'NLEQ1' 'STRSCNE1' 'LSQNONLIN1'  'MINFLBFGS1'  'MINFLBFGSDL1' ...
%   'fminunc1' 'fminunc' 'LMLSTR1' 'LMLSTR2' 'LMLSTR3' 'LMLSTR4' ...
%   'LMLSLS1' 'LMLSLS2' 'LMLSLS3' 'LMLSLS4' 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analyzes results cumulatively computed with CUTESTall.m
%

clear
clc;format compact;tic            % start timer

global bbo RESpath TEpath PDFpath 
% RESpath       % path to directory containing all result directories
% PDFpath       % path for the resulting analysis


PDFall = '/users/kimiaei/myPapers/LMLS/Sep2020fig';


 
 scal='large';
 
 if strcmp(scal,'small')
   selectBy.dim   = [1 100];
   a = 0;  c=0; e =300; f=0;
   qfex       = 8;
   q0         = 0;
   qfacc      = 1e-8;
   Listnfmax = [10 50 100 500];
   
   nfmaxstring = {'10n' '50n' '100n' '500n'};
  
   solverlist0 = {'LMLSTR4' 'LMLSTR3' 'LMLSTR2' 'LMLSTR1' 'fminunc1' 'fminunc'  'MINFLBFGS1'  'MINFLBFGSDL1'};
   solverlist0 = {'LMLSTR4' 'NATRLS1'  'NMPGTR2' 'NATRN1'};
   solverlist0 = {'LMLSTR4' 'DOGLEG1' 'CoDoSol1' 'NLEQ1' 'LSQNONLIN1'};
  solverlist0 = {'LMLSTR3' 'LMLSTR2' 'LMLSTR1' 'NLEQ1' 'LSQNONLIN1' };

 elseif strcmp(scal,'medium')
   selectBy.dim   = [101 1000];
   a = 0; c=0; e =800; f=0;
   qfex  = 3;
   q0         = 0;
   qfacc      = 1e-3;
   Listnfmax = [10 50 100];
   nfmaxstring = {'10n' '50n' '100n'};
   solverlist0 = {'LMLSTR4' 'LMLSTR3' 'LMLSTR2' 'LMLSTR1' 'fminunc1' 'fminunc'};
   
   elseif strcmp(scal,'large')
   selectBy.dim   = [1001 10000];
   a = 0; c=0; e =800; f=0;
   qfex  = 3;
   q0         = 0;
   qfacc      = 1e-3;
   Listnfmax = [10 100];
   nfmaxstring = {'10n' '100n'};
   solverlist0 = {'LMLSTR4' 'LMLSTR3' 'LMLSTR2' 'LMLSTR1' 'fminunc1'};
  
 end

 
if f~=0
   secmaxString = [num2str(e),'+',num2str(f),'*n'];
else
   secmaxString = [num2str(e)];
end

StanPoint = 0; % 1: if standard initial point is used 0: otherwise


ToTenf    = []; 
ToTemsec  = [];
ToTnsolve = [];
enf = [];
nsolved=[];

for i=1:length(Listnfmax)
    
             b = Listnfmax(i);

            if a~=0 & b~=0 & c~=0
               nfmaxString = [num2str(a),'*n^2+',num2str(b),...
                       '*n+',num2str(c)];
            elseif a~=0 & b~=0 & c==0
               nfmaxString = [num2str(a),'*n^2+',num2str(b),'*n']; 
            elseif b~=0 & c~=0
               nfmaxString = [num2str(b),'*n+',num2str(c)];
            elseif b~=0 & c==0
               nfmaxString = [num2str(b),'*n'];   
            elseif c~=0
               nfmaxString = num2str(c);
            else
                error('error in choosing a,b,c')
            end



            bbo =1; ltse = 1;


            selectBy.con   = [0  0];
            selectBy.res   = 1; % for the case where there are saved data 
            sortBy.key     = 'DNE';
            sortBy.inc     = 1;
            sortBy.refsolver = 'VSBBO';  

            n = selectBy.dim(2);


            eval(['funcnfmax =@ (n) ',nfmaxString]);
            limits.nfmax = funcnfmax(selectBy.dim(2));


            % selection rules to be used for the analysis
            selectBy.nf2g2  = [0 limits.nfmax];



            eval(['funcsecmax =@ (n) ',secmaxString]);
            secmax = funcsecmax(selectBy.dim(2));


            selectBy.sec2        = [0 secmax];
            selectBy.solvedByAll = 0;




           
      
             limits.ngmax=inf;        % maximal number of gradients 
             limits.nfmax=inf;        % maximal number of function values
             limits.nf2gmax=inf;      % maximal nf+2*ng
             limits.secmax=inf;

             conTab = 1; % connect tables with diferent secmax and gradacc

             selectBy.gradacc     = qfacc;

            % directory for saving partial results
            
            
            if q0
                
                if StanPoint 
                   resdir=['resQ1-',num2str(qfacc),'resN','-',...
                       nfmaxString,'-resS',num2str(secmax),'E'] 
                else
                  resdir=['resQ1-',num2str(qfacc),'resN',...
                      '-',nfmaxString,'-resS',num2str(secmax),'N'];
                end
            
            else

                if StanPoint 
                   resdir=['resQ1-',num2str(qfex),'resN','-',...
                       nfmaxString,'-resS',num2str(secmax),'E'] 
                else
                  resdir=['resQ1-',num2str(qfex),'resN',...
                      '-',nfmaxString,'-resS',num2str(secmax),'N'];
                end
            
            end
            
            resdir
            
            resdir=[resdir,'-ltse']; 
            
            



            PDFpath =[RESpath,'/',resdir,'/PDF']

            ex=exist(PDFpath)

            if ex~=7, eval(['! mkdir ',PDFpath]); end;




          statprob = 0;
          loadfigs  = 0;

        if statprob == 0
           % problemlist used for generating results

            % in this case, there is no problemlist or we want change the
            % range of dim

             if 1
          %  selectBy.listfail='3PK';
             prInfo         = TEsort(resdir,solverlist0,selectBy,sortBy);
             problemlist    = prInfo.id


             fil            = [RESpath,'/',resdir,'/problemlist.mat'];
             save(fil)
             datasaved     = 0;  


             else
                   fil      = [RESpath,'/',resdir,'/problemlist.mat'];
                   load(fil)
                    problemlist
        %            if bbo
        %              fil   = [RESpath,'/',resdir,'/Dnfmax.mat'];
        %              load(fil)
        %              Dnfmax
        %           end

                  loadfigs       = 1;
                  datasaved      = 1;


             end

        elseif statprob == 1
           % in this case, there exists problemlist. if datasaved = 1, then
           % uses saved data.
           fil=[RESpath,'/',resdir,'/problemlist.mat'];
           load(fil)
           problemlist




           datasaved      = 1;

        elseif statprob == 2
           % in this case, STATall.m wants to produce results.pdf for
           % test problems which the efficiency nf2g of lmbopt is not 100
           % percent if datasaved = 1, then uses saved data.

           fil = [RESpath,'/',resdir,'/ListNo100Eff.mat'];
           load(fil) 
           problemlist = ListNo100Eff
           datasaved   = 0;
        end


        ODim = 0;  % if ODim is 1, then STATall.m uses only problems with 
                   % original dimension. Otherwise ODim = 0


        if ODim
           problemlist0 = cell(0);
           for i=1:length(problemlist)
               ind = findstr(problemlist{i},'_');
                if isempty(ind)
                   problemlist0=[problemlist0 problemlist{i}];
                end
           end
           problemlist=problemlist0

           next
        end


        glob=0;             % 1: global analysis

      
        % run STATanalysis to obtain results.pdf and figures

        TableEffPart=0;
        
        if ~bbo
            sollist.refsolver1='asa';
            infomax.nf2gmaxString  = nf2gmaxString;
            infomax.secmaxString = secmaxString;
        else
            if ltse
               sollist.refsolver1   =  'fminunc';  
            else
               sollist.refsolver1   =  'VSBBO';
            end
            infomax.nfmaxString  = nfmaxString;
            infomax.secmaxString = secmaxString;
        end
        sollist.list1 = solverlist0;



         Tablenoise = STATanalysisLS(resdir,qfacc,sollist,problemlist,...
         selectBy,sortBy,TableEffPart,datasaved,loadfigs,infomax,glob);
     
     
         
         

         enf     = [enf;cell2num(Tablenoise.efficiency.nf)'];
         nsolved = [nsolved;cell2num(Tablenoise.nsolved)'];
         
         
       
end
format long
enf
nsolved
x = Listnfmax;
lines     = {'h' 'o' '+' '*' 's' 'd' '^' 'v' 'x' '<' '>' 'p'};
linewid   = 0.4*ones(12,1);
color     = {'b' 'r' 'g'  'k' 'm' 'c' 'b' 'r' 'g'  'k' 'm' 'c'};

ymin = min(min(enf));
ymax = max(max(enf));

solverlist0=Tablenoise.so;

for i=1:length(solverlist0)
    solverlist0{i} = sol2paper(bbo,solverlist0{i});
end

    
for s=1:length(solverlist0)
    y = enf(:,s);
     semilogx(x,y,['--',lines{s},color{s}],...
         'LineWidth',linewid(s),'markersize',10)
     if s< length(solverlist0), hold on; end
     hold on
     legendname{s}  = solverlist0{s};
    legend(legendname,'Location','southeast')
end

ylim([0,ymax+0.1])
set(gca,'XTick',Listnfmax);
xlim([Listnfmax(1),Listnfmax(end)]);

set(gca,'XTickLabel',nfmaxstring);
 
xlabel('{\bf nfmax}','fontsize',15)
ylabel('{\bf nf efficiency} ','fontsize',15)
 
com=['print -depsc2 ',PDFall,'/figeff.eps'];
disp(com)
eval(com)
com=['print -dpng ',PDFall,'/figeff.png'];
disp(com)
eval(com)


close all


lines     = {'h' 'o' '+' '*' 's' 'd' '^' 'v' 'x' '<' '>' 'p'};
linewid   = 0.4*ones(12,1);
color     = {'b' 'r' 'g'  'k' 'm' 'c' 'b' 'r' 'g'  'k' 'm' 'c'};



ymin = min(min(nsolved));
ymax = max(max(nsolved));


for s=1:length(solverlist0)
    y = nsolved(:,s);
    
     semilogx(x,y,['--',lines{s},color{s}],...
         'LineWidth',linewid(s),'markersize',10)
     if s< length(solverlist0), hold on; end
     hold on
     legendname{s}  = solverlist0{s};
    legend(legendname,'Location','southeast')
end

ylim([0,ymax+10])

set(gca,'XTick',Listnfmax);
xlim([Listnfmax(1),Listnfmax(end)]);

set(gca,'XTickLabel',nfmaxstring);

   
xlabel('{\bf nfmax}','fontsize',15)
ylabel('{\bf number of solved problems} ','fontsize',15)
   
com=['print -depsc2 ',PDFall,'/fignsol.eps'];
disp(com)
eval(com)
com=['print -dpng ',PDFall,'/fignsol.png'];
disp(com)
eval(com)

close

   

  
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
