%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% ChoiceSolPlot.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pick a few solvers to draw the performance and data profiles and box
% plots
% 
% used in STATplot.m
%

function [table,info]=ChoiceSolPlot(table,bbo,info)
nsolplot = info.nsolplot;
nso     = length(table.so);
nsolved = table.nsolved;
if nso>=nsolplot
   Ia=[];
   for i=1:nso
       if ~bbo, Ia = [Ia fix(nsolved{i}*100)];
       else, Ia = [Ia fix(nsolved{i}*100)];
       end
   end
   [~,Isol]    = sort(Ia,'descend'); 
   Isol        = Isol(1:nsolplot);
   table.Nnf   = table.nf(:,Isol);
   table.Nso   = table.so(:,Isol);
   table.Nmsec = table.msec(:,Isol);
    if ~ bbo
       table.Nng   = table.ng(:,Isol);
       table.Nnf2g = table.nf2g(:,Isol);
    end
else
   table.Nnf    = table.nf;
   table.Nso    = table.so;
   table.Nmsec  = table.msec;
    if ~ bbo
       table.Nng   = table.ng;
       table.Nnf2g = table.nf2g;
    end
    Isol=[];
end
info.Isol=Isol;


             
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
