%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% STATallTab.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function AllTable = STATallTab(table,selectBy,TableEffPart,...
%                               optcrit,selectBy0)
%
% Generates subtables from table2, classified in terms of dimension, 
% type of constraint, and time in seconds
%
% table              % structure of tables with the results
% selectBy           % key for selection of problems
% TableEffPart       % 1 % generates some efficiency tables for range
%                          dimesions:
%                          [1 10], [11 100], [101 1000], [1001 100001]
%                    % 0 % generates efficiency table for range dim:
%                          [1 100001]
% optcrit            % requested accuracy
%                    
% AllTable           % contains result six tables 
%                    %  table0: structure of table with the results for
%                               unconstrained and box constranied problems
%                    %  tableu: structure of tables with the results for
%                               unconstrained poblems
%                    %  tableb: structure of tables with the results for
%                               box constranied problems
%                    %  tablet1: structure of tables with the results for
%                                case which best time <= 1 sec
%                    %  tablet2: structure of tables with the results for
%                                case which best time in (1 sec,1 min]
%                    %  tablet3: structure of tables with the results for
%                                case which best time > 1 min
%
% each mentined tables include the following information:
%
%   .ntriedByAll     %   number of problems tried by all solvers
%   .so{so}          %   name of solver number so
%   .nsolved{so}     %   number of problems solved by solver so
%   .pr{pr}          %   name of problem number so
%   .dim{pr}         %   problem dimension
%   .nf{pr,so}       %   number of function values
%   .ng{pr,so}       %   number of gradients 
%   .nf2g{pr,so}     %   nf+2*ng
%   .ef2g{pr,so}     %   nf2g efficiency
%   .sec{pr,so}      %   time in seconds
%   .msec{pr,so}     %   time in milliseconds (integral, rounded down)
%   .efficiency      %   efficiency tables
%      .ng{so}       %     mean ng efficiency of solver so
%      .nf{so}       %     mean nf efficiency of solver so
%      .nf2g{so}     %     mean nf2g efficiency of solver so
%      .sec{so}      %     mean sec efficiency of solver so
%
 

function [AllTable]=STATallTab(table,resdir,dim,optcrit)
                           
global bbo
AllTable = [];
table0 = table;    
npr    = length(table0.pr);
% nso    = length(table0.so);

flagall = strcmp(table0.message ,'all:all');
flagun  = strcmp(table0.message ,'all:un');
flagbox = strcmp(table0.message ,'all:box') ;
flag    = (flagall | flagun | flagbox); 



Ib=[];Iu=[];It1=[];It2=[];
It3=[];It4=[]; Idim = [];
jb=0;ju=0;t1=0;t2=0;t3=0;t4=0; Id =0;


for i=1:npr
    if flag
       if table0.con{i}==1
          jb=jb+1;
          Ib = [Ib i];
          
       else
          ju=ju+1;
          Iu = [Iu i];
       end
    end
    
    if~isempty(strfind(table0.message,'dim'))
       if table0.dim{i}<=dim(2) & table0.dim{i}>=dim(1)
          Idim = [Idim i];
          Id   = Id+1;
       end
    else
        if table0.bmsec{i}<=1000
            t1=t1+1;
            It1 = [It1 i];
        elseif table0.bmsec{i}<=10000
           t2=t2+1;
           It2 = [It2 i];
        elseif table0.bmsec{i}<=100000
           t3=t3+1;
           It3 = [It3 i];
        else
           t4=t4+1;
           It4 = [It4 i];
        end
    end
end
   
% classification for constraint and time

if flag
    

if ju~=0
tableu = table0;    

%tableu   = cell(ju,nso);
tableu.mindim  = dim(1);
tableu.maxdim  = dim(2);

tableu.nf      = table0.nf(Iu,:);
if ~bbo,tableu.ng=table0.ng(Iu,:); end
tableu.sec     = table0.sec(Iu,:);
tableu.dim     = table0.dim(Iu);
tableu.pr      = table0.pr(Iu);
tableu.con     = table0.con(Iu);
tableu.nfree   = table0.nfree(Iu);
tableu.acc     = table0.acc(Iu,:);
tableu.accf    = table0.accf(Iu,:);
tableu.err     = table0.err(Iu,:);
tableu.fbest   = table0.fbest(Iu,:);
tableu.so      = table.so;
tableu.message = 'all:un'; 
tableu.secmax   = table0.secmax(Iu);
tableu.nfmax   = table0.nfmax(Iu); 
if ~bbo
  tableu.nf2gmax   = table0.nf2gmax(Iu);  
end

tableu         = STATtable(tableu,resdir,optcrit);
AllTable.tableu  = tableu;           
end

if jb~=0
%tableb   = cell(jb,nso);
tableb = table0;    

tableb.mindim  = dim(1);
tableb.maxdim  = dim(2);    
tableb.nf      = table0.nf(Ib,:);
if ~bbo,tableb.ng=table0.ng(Ib,:);end
tableb.sec     = table0.sec(Ib,:);
tableb.dim     = table0.dim(Ib);
tableb.pr      = table0.pr(Ib);
tableb.con     = table0.con(Ib);
tableb.nfree   = table0.nfree(Ib);
tableb.acc     = table0.acc(Ib,:);
tableb.accf    = table0.accf(Ib,:);
tableb.err     = table0.err(Ib,:);
tableb.fbest   = table0.fbest(Ib,:);
tableb.so      = table.so;
tableb.message = 'all:box'; 
tableb.secmax   = table0.secmax(Ib);
tableb.nfmax   = table0.nfmax(Ib);
if ~bbo
  tableb.nf2gmax   = table0.nf2gmax(Ib);  
end
tableb         = STATtable(tableb,resdir,optcrit);
AllTable.tableb  = tableb;
end

if t1~=0
%tablet1  = cell(t1,nso);
tablet1.mindim  = dim(1);
tablet1.maxdim  = dim(2);
tablet1.nf      = table0.nf(It1,:);
if ~bbo,tablet1.ng=table0.ng(It1,:);end
tablet1.sec     = table0.sec(It1,:);
tablet1.dim     = table0.dim(It1);
tablet1.pr      = table0.pr(It1);
tablet1.con     = table0.con(It1);
tablet1.nfree   = table0.nfree(It1);
tablet1.acc     = table0.acc(It1,:);
tablet1.accf    = table0.accf(It1,:);
tablet1.err     = table0.err(It1,:);
tablet1.fbest   = table0.fbest(It1,:);

tablet1.secmax   = table0.secmax(It1);
 tablet1.nfmax   = table0.nfmax(It1);
if ~bbo
   tablet1.nf2gmax   = table0.nf2gmax(It1);
   tablet1.ngmax   = table0.ngmax(It1);
end
tablet1.so      = table0.so;
tablet1.message=[table0.message,':time1']; 

tablet1 = STATtable(tablet1,resdir,optcrit);
AllTable.tablet1 = tablet1;

end

if t2~=0
%tablet2  = cell(t2,nso);  
tablet2.mindim  = dim(1);
tablet2.maxdim  = dim(2);
tablet2.nf      = table0.nf(It2,:);
if~bbo,tablet2.ng=table0.ng(It2,:);end
tablet2.sec     = table0.sec(It2,:);
tablet2.dim     = table0.dim(It2);
tablet2.pr      = table0.pr(It2);
tablet2.con     = table0.con(It2);
tablet2.nfree   = table0.nfree(It2);
tablet2.acc     = table0.acc(It2,:);
tablet2.accf    = table0.accf(It2,:);
tablet2.err     = table0.err(It2,:);
tablet2.fbest   = table0.fbest(It2,:);
tablet2.so      = table0.so;
tablet2.secmax   = table0.secmax(It2);
tablet2.nfmax   = table0.nfmax(It2);
if ~bbo
   tablet2.nf2gmax   = table0.nf2gmax(It2); 
   tablet2.ngmax     = table0.ngmax(It2);
end
tablet2.message=[table0.message,':time2']; 
tablet2 = STATtable(tablet2,resdir,optcrit);  
AllTable.tablet2 = tablet2;
end

if t3~=0
%tablet2  = cell(t2,nso);  
tablet3.mindim  = dim(1);
tablet3.maxdim  = dim(2);
tablet3.nf      = table0.nf(It3,:);
if~bbo,tablet3.ng=table0.ng(It3,:);end
tablet3.sec     = table0.sec(It3,:);
tablet3.dim     = table0.dim(It3);
tablet3.pr      = table0.pr(It3);
tablet3.con     = table0.con(It3);
tablet3.nfree   = table0.nfree(It3);
tablet3.acc     = table0.acc(It3,:);
tablet3.accf    = table0.accf(It3,:);
tablet3.err     = table0.err(It3,:);
tablet3.fbest   = table0.fbest(It3,:);
tablet3.so      = table0.so;
tablet3.secmax   = table0.secmax(It3);
tablet3.nfmax    = table0.nfmax(It3);
if ~bbo
  tablet3.nf2gmax    = table0.nf2gmax(It3);  
  tablet3.ngmax    = table0.ngmax(It3);
end
tablet3.message=[table0.message,':time3']; 
tablet3 = STATtable(tablet3,resdir,optcrit);  
AllTable.tablet3 = tablet3;
end

if t4~=0
%tablet2  = cell(t2,nso);  
tablet4.mindim  = dim(1);
tablet4.maxdim  = dim(2);
tablet4.nf      = table0.nf(It4,:);
if~bbo,tablet4.ng=table0.ng(It4,:);end
tablet4.sec     = table0.sec(It4,:);
tablet4.dim     = table0.dim(It4);
tablet4.pr      = table0.pr(It4);
tablet4.con     = table0.con(It4);
tablet4.nfree   = table0.nfree(It4);
tablet4.acc     = table0.acc(It4,:);
tablet4.accf    = table0.accf(It4,:);
tablet4.err     = table0.err(It4,:);
tablet4.fbest   = table0.fbest(It4,:);
tablet4.so      = table0.so;
tablet4.secmax   = table0.secmax(It4);
tablet4.nfmax   = table0.nfmax(It4);
if ~bbo
    tablet4.nf2gmax   = table0.nf2gmax(It4); 
    tablet4.ngmax   = table0.ngmax(It4);
end
tablet4.message=[table0.message,':time4']; 
tablet4 = STATtable(tablet4,resdir,optcrit);  
AllTable.tablet4 = tablet4;
end
end

if Id~=0
    
%tabled  = cell(Id,nso);  
tabled.mindim  = dim(1);
tabled.maxdim  = dim(2);
tabled.nf      = table0.nf(Idim,:);
if~bbo,tabled.ng=table0.ng(Idim,:);end
tabled.sec     = table0.sec(Idim,:);
tabled.dim     = table0.dim(Idim);
tabled.pr      = table0.pr(Idim);
tabled.con     = table0.con(Idim);
tabled.nfree   = table0.nfree(Idim);
tabled.acc     = table0.acc(Idim,:);
tabled.accf    = table0.accf(Idim,:);
tabled.err     = table0.err(Idim,:);
tabled.fbest   = table0.fbest(Idim,:);
tabled.so      = table0.so;
tabled.secmax  = table0.secmax(Idim);
tabled.nfmax   = table0.nfmax(Idim);
if ~bbo
   tabled.ngmax   = table0.ngmax(Idim); 
   tabled.nf2gmax   = table0.nf2gmax(Idim);
end
tabled.message=table0.message;
tabled = STATtable(tabled,resdir,optcrit);  
AllTable.tabled = tabled;

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



