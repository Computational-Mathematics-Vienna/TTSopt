%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% GenDataBB.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate data to draw peformance profiles for bbo solvers
% 
% used in STATplot
%


function [table,info]=GenDataBB(table,info)  





switch info.i
case 1

     info.tit=['nfmax=',info.infomax.nfmaxString,', secmax=',...
        info.infomax.secmaxString,', \epsilon=',num2str(info.optcrit)];
    info.titbplot = 'nf';
    dat=table.Nnf;

    switch info.cas
     case 1, dat = dat(info.Iuu,:);
     case 2, dat = dat(info.Ibb,:);
    end
    [m,n] = size(dat);
    for ii=1:m
        for jj=1:n
            if dat{ii,jj}>=table.nfmax{ii}
               dat{ii,jj} = inf;
            end
        end
    end
    
    dat    = cell2mat(dat);
    
    

    nprob   = size(dat,1);
    nso     = size(dat,2);
    budget  = cell2mat(table.nfmax);


    I0=1:nprob;

    for kk=1:nso
        I = find(dat(kk,:)== budget(kk));
        if length(I) == nso, I0 = setdiff(I0,kk); end
    end
    dimdat  = cell2mat(table.dim);
    dimdat  = dimdat*ones(1,nso);

    dat    = dat(I0,:);
    
    info.datp = dat;
    
    [m,n] = size(dat);
    
    for ii=1:m
        for jj=1:n
            if isinf(dat(ii,jj))
               dat(ii,jj) = table.nfmax{ii};
            end
        end
    end
    
    
    
    if info.mp
        info.mpBudget  = log2(sort(dat(:,info.ib1)./...
                          dat(:,info.ib2)));
        info.mpPronlem = 1:length(table.pr(I0));
    end
    
    
    dimdat = dimdat(I0,:);


    dat0  = log10(dat./dimdat);

    info.ylabelbox= '${\bf \log_{10} (nf/n)}$';
    
    
    
    info.BoxPlotName1 = [info.BoxPlotName,'nf'];
    info.PerProfileName1 = [info.PerProfileName,'nf'];
    info.DataProfileName1 =[info.DataProfileName,'nf'];
    info.MoralesProfileName1 =[info.MoralesProfileName,'nf'];

case 2

      info.tit=['nfmax=',info.infomax.nfmaxString,', secmax=',...
        info.infomax.secmaxString,', \epsilon=',num2str(info.optcrit)];
    info.titbplot = 'sec';
    dat=table.Nmsec;
     switch info.cas
     case 1, dat = dat(info.Iuu,:);
     case 2, dat = dat(info.Ibb,:);
     end
     [m,n] = size(dat);
     for ii=1:m
        for jj=1:n
            if dat{ii,jj}>=1000*table.secmax{ii}
               dat{ii,jj} = inf;
            end
        end
     end
    
     dat    = cell2mat(dat);

    nprob   = size(dat,1);
    nso     = size(dat,2);
    budget  = cell2mat(table.secmax);


    I0=1:nprob;

    for kk=1:nso
        I = find(dat(kk,:)== budget(kk));
        if length(I) == nso, I0 = setdiff(I0,kk); end
    end
    dimdat  = cell2mat(table.dim);
    dimdat  = dimdat*ones(1,nso);

    dat    = dat(I0,:);
    
    
    info.datp = dat;
    
    [m,n] = size(dat);
    
    for ii=1:m
        for jj=1:n
            if isinf(dat(ii,jj))
               dat(ii,jj) = 1000*table.secmax{ii};
            end
        end
    end
    
    
    
    if info.mp
        info.mpBudget  = log2(sort(dat(:,info.ib1)./...
                          dat(:,info.ib2)));
        info.mpPronlem = 1:length(table.pr(I0));
    end
    
    dimdat = dimdat(I0,:);


    dat0  = log10(dat./dimdat);

    info.ylabelbox= '${\bf \log_{10} (sec/n)}$';
     
    info.BoxPlotName1 = [info.BoxPlotName,'t1'];
    info.PerProfileName1 = [info.PerProfileName,'t1'];
    info.DataProfileName1 =[info.DataProfileName,'t1'];
    info.MoralesProfileName1 =[info.MoralesProfileName,'t1'];
    case 3
        
      info.tit=['nfmax=',info.infomax.nfmaxString,', secmax=',...
        info.infomax.secmaxString,', \epsilon=',num2str(info.optcrit)];
    info.titbplot = 'sec';
    dat=table.Nmsec;
     switch info.cas
     case 1, dat = dat(info.Iuu,:);
     case 2, dat = dat(info.Ibb,:);
     end
     [m,n] = size(dat);
     for ii=1:m
        for jj=1:n
            if dat{ii,jj}>=1000*table.secmax{ii}
               dat{ii,jj} = inf;
            end
        end
     end
    
     dat    = cell2mat(dat);

    nprob   = size(dat,1);
    nso     = size(dat,2);
    budget  = cell2mat(table.secmax);


    I0=1:nprob;

    for kk=1:nso
        I = find(dat(kk,:)== budget(kk));
        if length(I) == nso, I0 = setdiff(I0,kk); end
    end
    dimdat  = cell2mat(table.dim);
    dimdat  = dimdat*ones(1,nso);

    dat    = dat(I0,:);
    
    info.datp = dat;
    
     [m,n] = size(dat);
    
    for ii=1:m
        for jj=1:n
            if isinf(dat(ii,jj))
               dat(ii,jj) = 1000*table.secmax{ii};
            end
        end
    end
    
    
    dimdat = dimdat(I0,:);


    dat0  = log10(dat./dimdat.^2);

    info.ylabelbox= '${\bf \log_{10} (sec/n^2)}$';
     
   info.BoxPlotName1 = [info.BoxPlotName,'t2'];
   
    case 4
        
    info.tit=['nfmax=',info.infomax.nfmaxString,', secmax=',...
        info.infomax.secmaxString,', \epsilon=',num2str(info.optcrit)];
    info.titbplot = 'sec';
    dat=table.Nmsec;
     switch info.cas
     case 1, dat = dat(info.Iuu,:);
     case 2, dat = dat(info.Ibb,:);
     end
     [m,n] = size(dat);
     for ii=1:m
        for jj=1:n
            if dat{ii,jj}>=1000*table.secmax{ii}
               dat{ii,jj} = inf;
            end
        end
     end
    
     dat    = cell2mat(dat);
     
     info.datp = dat;

    nprob   = size(dat,1);
    nso     = size(dat,2);
    budget  = cell2mat(table.secmax);


    I0=1:nprob;

    for kk=1:nso
        I = find(dat(kk,:)== budget(kk));
        if length(I) == nso, I0 = setdiff(I0,kk); end
    end
    dimdat  = cell2mat(table.dim);
    dimdat  = dimdat*ones(1,nso);

    dat    = dat(I0,:);
    
    info.datp = dat;
    
   [m,n] = size(dat);
    
    for ii=1:m
        for jj=1:n
            if isinf(dat(ii,jj))
               dat(ii,jj) = 1000*table.secmax{ii};
            end
        end
    end
        
    dimdat = dimdat(I0,:);


    dat0  = log10(dat./dimdat.^3);

    info.ylabelbox= '${\bf \log_{10} (sec/n^3)}$';
    info.BoxPlotName1 = [info.BoxPlotName,'t3'];
end

% create diagram
info.nprob=size(dat,1);
info.nso = size(dat,2);
info.dat=dat;
info.dat0=dat0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
