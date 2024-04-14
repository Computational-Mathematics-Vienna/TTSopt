

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STATall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analyzes results cumulatively computed with CUTESTall.m
%

clear
clc;format compact;tic            % start timer
close all

global bbo RESpath  PDFpath  WORKpath
% RESpath       % path to directory containing all result directories
% PDFpath       % path for the resulting analysis

[ok] = TEpaths('users/kimiaei','CUTEstOld');



PDFall = '/users/kimiaei/PosdocProject/CMAES/MPCsubmit/Jan2023';



 samplesol2=9;
 
 allacc=0; table=0;
 
 

 noisetype  = {'rel'};  % 'ab' 'rel'
 noisedistr = {'Gauss' }; % 'uniform' 'Gauss'
 scal='small';
 selectBy.dim   = [2 20];
 legposition = 'northwest'; % northwest
 legposmoreplot = 'best';
 objType = '';
  
 
 acc = [2]; 
 epsilon = [1e-4];
 
 dataplot =  1;
 typeBox = 1; % 0: no compact, 1: compact
 moreplot = 1; % 0: only boxplot, 1: more plot
 boxplotOK=1;
 moralesOk = 1;
 
 
 if length(noisetype)==2 || length(noisedistr)==2
     moreplot=0;
 end
 
 
 if allacc   
     if length(noisetype)==2 && length(noisedistr)==2  
           figname = 's'; 
     elseif strcmp(noisetype,'ab')&&strcmp(noisedistr,'uniform')
           figname = 's-a-u';
     elseif strcmp(noisetype,'ab')&&strcmp(noisedistr,'Gauss')
           figname = 's-a-g';
     elseif strcmp(noisetype,'rel')&&strcmp(noisedistr,'uniform')
           figname = 's-r-u';  
     else
           figname = 's-r-g';     
     end
     if~isempty(objType)
      figname=[objType,'-',figname];
     end
 end
 
  
  
 nnoise = 8;
 
 

 solverlist0 = {'MADFO'  'FMAES'  'SDBOX' 'VRBBO' 'UOBYQA'  'NMSMAX' 'BFO' 'VRDFON' 'NOMAD'}
 
 %solverlist0 = {'MADFO' 'MADFO1' 'MADFO2' 'MADFO3' 'MADFO4'}
    

Tenf      = [];Tnsolved  = []; Tnf  = [];
Tnfmax0    = []; Tsecmax0   = []; Tdim  = [];
Tnn = []; Tnt = []; Tnfa = [];

for ii = 1:length(acc)

ToTenf    = []; 
ToTemsec  = [];
ToTnsolve = [];
enf = []; Tnfmax=[]; dim=[];
nsolved=[]; nf=[]; nn=[]; nfa=[]; nt=[];
nfmax0=[];
secmax0=[]; 
resdirnoiseall=[];

 if ~allacc   
     
 if length(noisetype)==2 && length(noisedistr)==2
     if  strcmp(scal,'small')&& acc(ii)==0
         figname = 's-low';
     elseif strcmp(scal,'small')&& acc(ii)==1
         figname = 's-medium'; 
     elseif strcmp(scal,'small')&& acc(ii)==2
         figname = 's-high';
     
     elseif  strcmp(scal,'medium')&& acc(ii)==0
         figname = 'm-low';
     elseif strcmp(scal,'medium')&& acc(ii)==1
         figname = 'm-medium'; 
     elseif strcmp(scal,'medium')&& acc(ii)==2
         figname = 'm-high';
      end
     
     
 else
     if  strcmp(scal,'small')&& acc(ii)==0
         if strcmp(noisetype,'ab')&&strcmp(noisedistr,'uniform')
            figname = 's-low-a-u';
         elseif strcmp(noisetype,'ab')&&strcmp(noisedistr,'Gauss')
            figname = 's-low-a-g';
         elseif strcmp(noisetype,'rel')&&strcmp(noisedistr,'uniform')
            figname = 's-low-r-u';  
         else
            figname = 's-low-r-g';     
         end
     elseif strcmp(scal,'small')&& acc(ii)==2
         if strcmp(noisetype,'ab')&&strcmp(noisedistr,'uniform')
            figname = 's-high-a-u';
         elseif strcmp(noisetype,'ab')&&strcmp(noisedistr,'Gauss')
            figname = 's-high-a-g';
         elseif strcmp(noisetype,'rel')&&strcmp(noisedistr,'uniform')
            figname = 's-high-r-u';  
         else
            figname = 's-high-r-g';     
         end
     elseif strcmp(scal,'small')&& acc(ii)==1
          if strcmp(noisetype,'ab') && strcmp(noisedistr,'uniform')
            figname = 's-medium-a-u';
         elseif strcmp(noisetype,'ab') && strcmp(noisedistr,'Gauss')
            figname = 's-medium-a-g';
         elseif strcmp(noisetype,'rel') && strcmp(noisedistr,'uniform')
            figname = 's-medium-r-u';  
         else
            figname = 's-medium-r-g';     
         end
     end
      if~isempty(objType)
      figname=[objType,'-',figname];
     end
 end
 
 end
 
 
 latexFile=[PDFall,'/tables',figname,'.tex'];

 
a = 0;  b =2000; c=5000; e =360; f=0;
switch acc(ii)
   case 0
       noiseqfex  = 2*ones(1,nnoise);
       noiseqfacc = 1e-2*ones(1,nnoise);
   case 1
         noiseqfex  = 3*ones(1,nnoise);
         noiseqfacc = 1e-3*ones(1,nnoise);
   case 2
       noiseqfex  = 4*ones(1,nnoise);
       noiseqfacc = 1e-4*ones(1,nnoise);
end
q0         = zeros(1,nnoise);
noiseLev   = [10^(-5) 10^(-4) 10^(-3) 10^(-2) 10^(-1) 1 10 100];
   
 

 
if f~=0
   secmaxString = [num2str(e),'+',num2str(f),'*n'];
else
   secmaxString = [num2str(e)];
end

StanPoint = 1; % 1: if standard initial point is used 0: otherwise


if a~=0 && b~=0 && c~=0
   nfmaxString = [num2str(a),'*n^2+',num2str(b),'*n+',num2str(c)];
elseif a~=0 && b~=0 && c==0
   nfmaxString = [num2str(a),'*n^2+',num2str(b),'*n']; 
elseif b~=0 && c~=0
   nfmaxString = [num2str(b),'*n+',num2str(c)];
elseif b~=0 && c==0
   nfmaxString = [num2str(b),'*n'];   
elseif c~=0
   nfmaxString = num2str(c);
else
    error('error in choosing a,b,c')
end



bbo =1; ltse = 0;


selectBy.con   = [0  0];
selectBy.res   = 1; % for the case where there are saved data 
sortBy.key     = 'DNE';
sortBy.inc     = 1;
sortBy.refsolver = 'MADFO';  

n = selectBy.dim(2);


eval(['funcnfmax =@ (n) ',nfmaxString]);
limits.nfmax = funcnfmax(selectBy.dim(2));


% selection rules to be used for the analysis
selectBy.nf2g2  = [0 limits.nfmax];



eval(['funcsecmax =@ (n) ',secmaxString]);
secmax = funcsecmax(selectBy.dim(2));


selectBy.sec2        = [0 secmax];
selectBy.solvedByAll = 0;


tit = ''; % ['target accuracy = ',num2str(epsilon)];


 
for i=1:length(noiseLev)
    for j=1:length(noisetype)
        for k=1:length(noisedistr)
            
            
           if 0
            
            if strcmp(noisetype{j},'ab')&&strcmp(noisedistr{j},'uniform')
               titNoise = ['absolute unifrom noise, noise level =',num2str(epsilon)];
            elseif strcmp(noisetype{j},'ab')&&strcmp(noisedistr{j},'Gauss')
                titNoise = ['absolute Gaussian noise, noise level=',num2str(epsilon)];
            elseif  strcmp(noisetype{j},'rel')&&strcmp(noisedistr{j},'uniform')
                titNoise = ['relative unifrom noise, noise level=',num2str(epsilon)];
            elseif strcmp(noisetype{j},'rel')&&strcmp(noisedistr{j},'Gauss')
                titNoise = ['relative Gaussian noise, noise level=',num2str(epsilon)];
            end
            
           else
               titNoise = ''; %['target accuracy = ',num2str(epsilon)];
           end
            
            resdirnoise = ...
            ['-',num2str(noiseLev(i)),'-', noisetype{j},'-',noisedistr{k}];
      
             limits.ngmax=inf;        % maximal number of gradients 
             limits.nfmax=inf;        % maximal number of function values
             limits.nf2gmax=inf;      % maximal nf+2*ng
             limits.secmax=inf;

             conTab = 1; % connect tables with diferent secmax and gradacc

             selectBy.gradacc     = noiseqfacc(k);

            % directory for saving partial results
            
                
            if StanPoint 
               resdir=['resQ1-',num2str(10^(-noiseqfex(k))),'resN','-',...
                   nfmaxString,'-resS',num2str(secmax),'E'] 
            else
              resdir=['resQ1-',num2str(10^(-noiseqfex(k))),'resN',...
                  '-',nfmaxString,'-resS',num2str(secmax),'N'];
            end

           
            resdir
            resdir = [resdir,resdirnoise]
            
            
           resdirnoiseall=[resdirnoiseall  resdir];
           
           
         selectBy.targetAcc = 10^(-noiseqfex(k));
            



            PDFpath =[RESpath,'/',resdir,'/PDF']

            ex=exist(PDFpath)

            if ex~=7, eval(['! mkdir ',PDFpath]); end;


           % statprob = 0 % dont use saved tables
           % statprob = 1 % use saved tables
           % statprob = 2 % generate results.pdf for test problems which the 
                        % efficiency nf2g of lmbopt is not 100 percent; in
                        % this case we can use saved Tables or not

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

           %next
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



         Tablenoise = STATanalysisNoise(resdir,noiseqfacc(k),sollist,problemlist,...
         selectBy,sortBy,TableEffPart,datasaved,loadfigs,infomax,glob);
     

         
         

         enf     = [enf; cell2mat(Tablenoise.efficiency.nf)'];
         nsolved = [nsolved; cell2mat(Tablenoise.nsolved)'];
         
         nf      = [nf ; cell2mat(Tablenoise.nf)];
         nfmax0   = [nfmax0 ; cell2mat(Tablenoise.nfmax)];
         secmax0  = [secmax0 ; cell2mat(Tablenoise.secmax)];
         dim = [dim;cell2mat(Tablenoise.dim)];
         
            
       nn = [nn; Tablenoise.nn];
       nt = [nt; Tablenoise.nt];
       nfa = [nfa; Tablenoise.nfa];
      
           
        end
    end
end
 Tenf      = [Tenf;enf];
 Tnsolved  = [Tnsolved;nsolved];
 Tnf        = [Tnf;nf];
 Tnfmax0    = [Tnfmax0;nfmax0];
 Tsecmax0   = [Tsecmax0;secmax0];
 Tdim       = [Tdim;dim];
 Tnn = [Tnn;nn];
 Tnt = [Tnt;nt];
 Tnfa = [Tnfa;nfa];
end

length(Tnsolved)

%next


solverlist0 = Tablenoise.so;


% for i=1:length(solverlist0)
%     
%     solverlist0{i} = sol2paper(bbo,solverlist0{i});
%     if strcmp(solverlist0{i},'VSBBO')
%         solverlist0{i}='VRBBO';
%     end
% end


   nso = length(solverlist0);

   samplesol1=nso;
   
   if nnoise>1

   
   TIa = sum(Tnsolved);
   
   TInn = sum(Tnn);
    
   TInt = sum(Tnt);
   
   TInfa = sum(Tnfa);
   
   else
   TIa = Tnsolved;
   
   TInn = Tnn;
    
   TInt = Tnt;
   
   TInfa = Tnfa;
       
   end
   
   
   [~,Isol]  = sort(TIa,'descend') 
   Isol      = Isol(1:samplesol1);
   
  
   
   
   TInn         =  TInn(Isol)
   TInt         =  TInt(Isol)
   TInfa        =  TInfa(Isol)
   TIa          =  TIa(Isol) ;
   Tnf          = Tnf(:,Isol);
   Tenf         = Tenf(:,Isol);
   Tnsolved     = Tnsolved(:,Isol);
   solverlist0  = solverlist0(Isol)
   
   
   
   TIa
   resdirnoiseall
   nso         =  size(Tnf,2);
   
   
if  boxplotOK
 X = categorical(solverlist0);
  X = reordercats(X,solverlist0);
h= bar(X,TIa);

%lgd=legend(h,solverlist0,'Location','northeast');
%lgd.FontSize = 10;
%lgd.FontWeight = 'bold';

set(gca,'fontweight','bold','fontsize',19);
%set(gca,'YScale','log')
ylabel('{\bf number of solved problems} ','fontsize',19)

com=['print -depsc2 ',PDFall,['/nsolvebar-',figname,'.eps']];
disp(com)
eval(com)
com=['print -dpng ',PDFall,['/nsolvebar-',figname,'.png']];
disp(com)
eval(com) 

 
   
   
    nprob   = size(Tnf,1);
    nso     = size(Tnf,2);
    budget  = Tnfmax0;


    I0=1:nprob;

    for kk=1:nso
        I = find(Tnf(kk,:)== budget(kk));
        if length(I) == nso, I0 = setdiff(I0,kk); end
    end
    dimdat  = Tdim;
    dimdat  = dimdat*ones(1,nso);

    dat    = Tnf(I0,:);

    datp = dat;


   


    dimdat = dimdat(I0,:);


    dat0  = log10(dat./dimdat);

    ylabelbox= '${\bf \log_{10} (nf/n)}$';



    boxplot(dat0,1:nso,'Notch','on','Labels',solverlist0)

    set(findobj('Tag','Box'),'LineWidth',1)
    set(findobj('Tag','Median'),'LineWidth',2)
    set(gca,'FontSize',8,'XTickLabelRotation',90)
    set(gca,'TickLabelInterpreter','none');
    set(gca,'fontweight','bold','fontsize',19);

    ylabel(ylabelbox,'Interpreter',...
             'latex','fontsize',19);

    title(tit,'fontsize',19);


    %  next
      com=['print -depsc2 ',PDFall,['/boxp-',figname,'.eps']];
      disp(com)
      eval(com)
      com=['print -dpng ',PDFall,['/boxp-',figname,'.png']];
      disp(com)
      eval(com)
      close
    close
    
end
    
if moralesOk

figure(1);clf;

    text0='{\bf Problem}';
    
    
    ib1=1; ib2=2; sol1 = solverlist0{1}; sol2 = solverlist0{2};

     mpBudget  = log2(sort(dat(:,ib1)./dat(:,ib2)));
    mpPronlem = 1:length(dat);

    

    area(mpPronlem,mpBudget,'FaceColor',...
                             [0.7 0.7 0.7],'EdgeColor','k');

    text(median(mpPronlem),max(mpBudget)-1,['{\bf ',sol2,'}'])

    text(median(mpPronlem),min(mpBudget)+1,['{\bf ',sol1,'}'])

    
   set(gca,'TickLabelInterpreter','none');
    
    set(gca,'fontweight','bold','fontsize',19);
    



    title(tit,'fontsize',19);

    xlabel(text0,'fontsize',19);
    
    ylabelbox=['${\bf \log_2({\tt nf}_{',sol1,...
            '}/{\tt nf}_{',sol2,'})}$'];
    
    
    ylabel(ylabelbox,'Interpreter',...
             'latex','fontsize',19);
    set(gca,'FontSize',19)


    xlim([0,mpPronlem(end)]);


      com=['print -depsc2 ',PDFall,['/Morp1-',figname,'.eps']];
      disp(com)
      eval(com)
      com=['print -dpng ',PDFall,['/Morp1-',figname,'.png']];
      disp(com)
      eval(com)
      close
    figure(2);clf;  
      
   text0='{\bf Problem}';
    
    
    ib1=1; ib2=3; sol1 = solverlist0{1}; sol2 = solverlist0{3};

     mpBudget  = log2(sort(dat(:,ib1)./dat(:,ib2)));
    mpPronlem = 1:length(dat);

    

    area(mpPronlem,mpBudget,'FaceColor',...
                             [0.7 0.7 0.7],'EdgeColor','k');

    text(median(mpPronlem),max(mpBudget)-1,['{\bf ',sol2,'}'])

    text(median(mpPronlem),min(mpBudget)+1,['{\bf ',sol1,'}'])

      set(gca,'TickLabelInterpreter','none');
    
    set(gca,'fontweight','bold','fontsize',19);
    

   
    title(tit,'fontsize',19);

    xlabel(text0,'fontsize',19);
    
    ylabelbox=['${\bf \log_2({\tt nf}_{',sol1,...
            '}/{\tt nf}_{',sol2,'})}$'];
    
    
    ylabel(ylabelbox,'Interpreter',...
             'latex','fontsize',19);
    set(gca,'FontSize',19)


    xlim([0,mpPronlem(end)]);


      com=['print -depsc2 ',PDFall,['/Morp2-',figname,'.eps']];
      disp(com)
      eval(com)
      com=['print -dpng ',PDFall,['/Morp2-',figname,'.png']];
      disp(com)
      eval(com)
      close
      
   figure(3);clf;   
   text0='{\bf Problem}';
    
    
    ib1=2; ib2=4; sol1 = solverlist0{2}; sol2 = solverlist0{4};

     mpBudget  = log2(sort(dat(:,ib1)./dat(:,ib2)));
    mpPronlem = 1:length(dat);

    

    area(mpPronlem,mpBudget,'FaceColor',...
                             [0.7 0.7 0.7],'EdgeColor','k');

    text(median(mpPronlem),max(mpBudget)-1,['{\bf ',sol2,'}'])

    text(median(mpPronlem),min(mpBudget)+1,['{\bf ',sol1,'}'])

      set(gca,'TickLabelInterpreter','none');
    
    set(gca,'fontweight','bold','fontsize',19);
    

    ylabel(ylabelbox,'Interpreter',...
             'latex','fontsize',19);

    title(tit,'fontsize',19);

    xlabel(text0,'fontsize',19);
    
    ylabelbox=['${\bf \log_2({\tt nf}_{',sol1,...
            '}/{\tt nf}_{',sol2,'})}$'];
    
    
    ylabel(ylabelbox,'interpreter',...
             'latex','fontsize',19);
    set(gca,'FontSize',19)


    xlim([0,mpPronlem(end)]);


      com=['print -depsc2 ',PDFall,['/Morp3-',figname,'.eps']];
      disp(com)
      eval(com)
      com=['print -dpng ',PDFall,['/Morp3-',figname,'.png']];
      disp(com)
      eval(com)
      close
      
      
 end
   
  
   


   Isol        = 1:samplesol2;
   Tnf          = Tnf(:,Isol);
   Tenf         = Tenf(:,Isol);
   Tnsolved     = Tnsolved(:,Isol);
   solverlist0 = solverlist0(Isol);
   nso         =     size(Tnf,2);



format long
Tenf
Tnsolved;
x = noiseLev;
lines     = {'-' '--' '-.' ':' '--' '-.'  '--' '-.' '-'};
linewid   = [2 ;0.75 ;2 ; 1.5; 2;1 ; 0.75; 0.5; 0.25];
color     = {'b' 'r' 'k'  'g' 'm' 'c'  'k'  'g' 'b'};


 
ymin = min(min(Tenf));
ymax = max(max(Tenf));



if moreplot
    
    
h= bar(Tenf(:,1:4));
lgd=legend(h,solverlist0(1:5),'Location',legposmoreplot);
lgd.FontSize =10;
lgd.FontWeight = 'bold';
 

  myLabels=cell(0);  
    
dd = x(1:end);    
for i=1:length(dd)
    myLabels{i} = num2str(dd(i));
end     



ax = gca;
ax.XTick = 1:length(dd);
ax.XTickLabel = '';



for i = 1:length(myLabels)
    text(i, ax.YLim(1), sprintf('%s\n%s\n%s', myLabels{i}), ...
        'horizontalalignment', 'center', 'verticalalignment',...
        'cap');    
end

title(titNoise,'fontsize',19);

xlabel({'','{\bf noise levels}'},'fontsize',19)


ylabel('{\bf nf efficiency} ','fontsize',19)


    com=['print -depsc2 ',PDFall,['/eff-',figname,'.eps']];
    disp(com)
    eval(com)
    com=['print -dpng ',PDFall,['/eff-',figname,'.png']];
    disp(com)
    eval(com)


     close

end

nf0 = Tnf;
 
%nso = length(solverlist0);

if dataplot
     
   sollist = solverlist0;
  lines1     = {'-' ':' '-.' '--' '-.' '-.' '-' ':' '-.' '--' ...
                   '-.' '--' '-' ':' '-.' '--' '-.' '--'};
  linewid1   = [0.5,2,1,0.75,1.5,2,2,2,2,2,2,2,2,2,2,2,2,2];
     
     
     
     
     
   tau = [1:9,1e1,2e1,5e1,1e2,2e2,5e2,1e3];


    
    for i=1:2,


        switch i
          case 1

              dat=Tnf;

            [m,n] = size(dat);
            for ii=1:m
               for jj=1:n
                  if dat(ii,jj)== Tnfmax0(ii)
                     dat(ii,jj) = inf;
                  end
               end
            end
            fileName ='perp';

          case 2

              dat = Tnf;
            [m,n] = size(dat);
            for ii=1:m
               for jj=1:n
                  if dat(ii,jj)== Tnfmax0(ii)
                     dat(ii,jj) = inf;
                  end
               end
            end
            fileName ='datap';
         end;


          % create diagram
          nprob=size(dat,1);

          if i==2, text0='\kappa: Cost ratio'; 
          else 
              text0='\tau: Performance ratio';
          end
          legendname = {''};
          
          if i==1
              for so=1:nso,
                rho=[];
                if i==2
                   tau = dat(:,so); 
                end
                for j =1:length(tau);
                  num=0;
                  for pr=1:nprob,
                    rps=dat(pr,so)/min(dat(pr,:));
                    if rps<=tau(j), num=num+1; end;
                  end;
                  rho(j)=num/nprob;
                end;




%                 len = length(tau);
%                 if len > 50
%                    ind             = [1,round([1:48]*len/50),len];
%                    tau             = tau(ind);
%                    rho             = rho(ind);
%                 end 

              semilogx(tau,rho,[lines{so},color{so}],'LineWidth',...
                  linewid(so),'markersize',7);
              hold on;
               legendname{so}=sollist{so};

                lgd = legend(legendname,'Location',legposition);

               lgd.FontSize =12;
               lgd.FontWeight = 'bold';
              end
              
            if max(tau)<=1000
                d0 = [1 2 5 10 20 50 100 200 500]; 
            else
              d0 = [1 10 100 1000 10000 100000 1000000];
            end


              title(tit,'fontsize',19);
              xlabel(text0,'fontsize',19);
              ylabel('\rho(\tau): Performance profiles','fontsize',19); 
              set(gca,'FontSize',19)
              set(legend,'Interpreter','latex')
              ylim([-0.05,1]);
              set(gca,'XTick',d0);

              com=['print -depsc2 ',PDFall,['/perp-',figname,'.eps']];
              disp(com)
              eval(com)
              com=['print -dpng ',PDFall,['/perp-',figname,'.png']];
              disp(com)
              eval(com)

              close
  
          else
              
           np = size(dat,1);

            
            T=zeros(np,nso);
            for j=1:np
                for so=1:nso
                    T(j,so) = dat(j,so)/Tdim(j);
                    if dat(j,so)>=Tnfmax0(j), T(j,so)=NaN;end
                end
            end
             max_data  = max(max(T));
            Ir         = find(isnan(T));
            T(Ir)      = 2*max_data;
            T          = sort(T);

            legendname = {''}; 
           for so = 1:nso
              [xs,ys] = stairs(T(:,so),(1:np)/np);
              
%                len = length(xs);
%                 if len > 50
%                    ind            = [1,round([1:48]*len/50),len];
%                    xs             = xs(ind);
%                    ys             = ys(ind);
%                 end 

              semilogx(xs,ys,[lines{so},color{so}],'LineWidth',...
                  linewid(so),'markersize',7);
              
              hold on;
            
              legendname{so}=sollist{so};
              lgd = legend(legendname,'Location',legposition);
              lgd.FontSize = 12;
              lgd.FontWeight = 'bold';
           end
            if max_data<1000
                d0 = [1 2 5 10 20 50 100 200 500]; 
            else
              d0 = [1 10 100 1000 10000 100000 1000000];
            end
           
           
          title(tit,'fontsize',19);
          xlabel(text0,'fontsize',19);
          ylabel('\delta(\kappa): Data profiles','fontsize',19); 
          set(gca,'FontSize',19)
          set(legend,'Interpreter','latex')
          xlim([0.5,1.1*max_data]);
          ylim([-0.05,1]);
          set(gca,'XTick',d0);

          com=['print -depsc2 ',PDFall,['/datap-',figname,'.eps']];
          disp(com)
          eval(com)
          com=['print -dpng ',PDFall,['/datap-',figname,'.png']];
          disp(com)
          eval(com)


          close
  
          end
    end;


  
end  




close all

 if moreplot   
    
x = noiseLev;
lines     = {'-' '--' '.-' ':' 'h' 'o' '+' '*' 's' 'd' '^' ...
                         'v' 'x' '<' '>' 'p' '.' 'x'};
linewid   = [1 ;2 ;1.5 ;2 ;0.4*ones(14,1)];
color     = {'b' 'r' 'k'  'g' 'b' 'r' 'k'  'g' 'm' 'c' 'b' ...
                          'r' 'k'  'g' 'm' 'c' 'b' 'r'};


ymin = min(min(Tnsolved));
ymax = max(max(Tnsolved));


h= bar(Tnsolved(:,1:4));

lgd=legend(h,solverlist0(1:5),'Location',legposmoreplot);
lgd.FontSize = 10;
lgd.FontWeight = 'bold';

dd = x(1:end);    
for i=1:length(dd)
    myLabels{i} = num2str(dd(i));
end     


ax = gca;
ax.XTick = 1:length(dd);
ax.XTickLabel = '';



for i = 1:length(myLabels)
    text(i, ax.YLim(1), sprintf('%s\n%s\n%s', myLabels{i}), ...
        'horizontalalignment', 'center', 'verticalalignment', 'cap');    
end

xlabel({'','{\bf noise levels}'},'fontsize',19)


title(titNoise,'fontsize',19);


ylabel('{\bf number of solved problems} ','fontsize',19)


com=['print -depsc2 ',PDFall,['/sol-',figname,'.eps']];
disp(com)
eval(com)
com=['print -dpng ',PDFall,['/sol-',figname,'.png']];
disp(com)
eval(com)

 end

close


if table
    
    head = titNoise;

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
fprintf(fid,['{\\LARGE\\bf ',head,'}\n\n\n']);
fprintf(fid,'\\end{center}\n');
fprintf(fid,'\n\n');


 latexTab=[];
 nl = 1;
 latexTab{nl}='\\begin{table}[!http]\n';
 nl=nl+1;
 latexTab{nl}= ...
 ['\\caption{Cumulative number of solved problems',...
 ' for all noise levels $\\omega=10^{-i}$ with $i=-2,\\ldots,5$. }',...
 '\\label{t.nsol}'];
 nl=nl+1;
 line= '\\scalebox{0.8}{\\begin{tabular}{|l|';
for pr=1:nso,
  line=[line,'l'];
end;
line=[line,'|}\n'];
latexTab{nl}=line;
nl=nl+1;
latexTab{nl}='\\hline';
nl=nl+1;
latexTab{nl}=['& \\multicolumn{9}{c|}{{\\bf ',head,'} }\\\\'];
nl=nl+1;
latexTab{nl}='\\hline';
nl=nl+1;
latexTab{nl}='& \\multicolumn{9}{c|}{solvers} \\\\';
nl=nl+1;
line = [];
for j=1:nso-1
    line=[line,' & {\\tt ', solverlist0{j},'}'];
end
line = [line,' & {\\tt ',solverlist0{nso},'}'];
line = [line '\\\\'];
latexTab{nl}=line;
nl=nl+1;
latexTab{nl}='\\hline';
nl=nl+1;
latexTab{nl}=['$\\epsilon$     & \\multicolumn{',num2str(nso),...
              '}{c|}{number of solved problems}\\\\'];
          
Tnsolved          
nl=nl+1;
latexTab{nl}='\\hline';
nl=nl+1;
nTnsol = size(Tnsolved,1); nacc=length(acc);
for i=1:nacc
    line = [num2str(epsilon(i)),'&'];
   
    for j=1:nso-1
        if i==1
          line = [line,num2str(sum(Tnsolved(1:8,j))),'&'];
        elseif i==2
          line = [line,num2str(sum(Tnsolved(9:16,j))),'&'];  
        else
          line = [line,num2str(sum(Tnsolved(17:24,j))),'&']; 
        end
    end

    if i==1
      line = [line,num2str(sum(Tnsolved(1:8,nso))),'\\\\'];
    elseif i==2
       line = [line,num2str(sum(Tnsolved(9:16,nso))),'\\\\'];  
    else
       line = [line,num2str(sum(Tnsolved(17:24,nso))),'\\\\']; 
    end
    latexTab{nl} = line;
    nl=nl+1;
end
latexTab{nl}='\\hline';
nl=nl+1;
line = '$\\sum$      &';
for j=1:nso-1
    line=[line, num2str(TIa(j)),'&']; 
end
line = [line, num2str(TIa(nso)),'\\\\'];
latexTab{nl} = line;
nl=nl+1;
latexTab{nl}='\\hline';
nl=nl+1;
latexTab{nl}='\\end{tabular}}';
nl=nl+1;
latexTab{nl}='\\end{table}';
nl=nl+1;
latexTab{nl}='\n\n\n';

for i=1:length(latexTab)
   fprintf(fid,latexTab{i})
end

			
 % write bottom of latex file
fprintf(fid,'\\end{document}\n');
fclose(fid);


% create pdf file
  eval(['cd ',PDFall])
  eval(['! latex ',latexFile(1:end-4)])
  eval(['! latex ',latexFile(1:end-4)])
  eval(['! ',WORKpath,'/dvi2pdf ',latexFile(1:end-4)])
  disp(['now PDFall',latexFile(1:end-4),'.pdf contains the pdf file'])
  
end
    
    





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
