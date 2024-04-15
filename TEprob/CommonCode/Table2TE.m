%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Table2TE.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% convert Table.mat of each test collection to TE.mat
%

function Table2TE(username,probCollect)

if nargin==0
   clear
   username='users/rjezek/OctaveWorkSpace';
   probCollect = 'bcp';
end

oldCollection = {'CUTEst' 'CUTEstInt' 'luksan' 'globalTest' ...
                   'globalTest' 'sparseluksan'};

TEpath  = ['/',username,...
           '/TEallFinal/TEprob/Collections/',probCollect];  


TEfilenam = 'TE.mat';

fil=[TEpath,TEfilenam];
 
 if exist(fil)~=2
     ind = findstr(TEpath,'d/')
     eval(['addpath ',TEpath(1:ind),'/CommonCode'])
     eval(['addpath ',TEpath,'/DotMfile'])
     Tab = readProb(probCollect)
     RowNames =Tab.Properties.RowNames';  
     
     ii=0;
     for field=1:length(RowNames)
        ii = ii+1;
        prob          = RowNames{field}
        ok = strcmp(probCollect,'sluksanInt')||...
              strcmp(probCollect,'sluksan') || ...
               strcmp(probCollect,'sluksanMint');
        if ok
          probInfo.con   = char(Tab.Values{ii,2});
          probInfo.dim   = Tab.Values{ii,1};
          probInfo.name  = RowNames{field};
        else
          probInfo.con   = char(Tab.Values{ii,6});
          probInfo.dim   = Tab.Values{ii,1};
          probInfo.name  = RowNames{field};
        end

         % restrict to unconstrained or bound constrained problems
        if ~(probInfo.con=='U' || probInfo.con=='X' || probInfo.con=='B')
          % problem not bound constrained
          continue;
        end


         if ismember(probCollect,oldCollection)
           % update entry in TE.problem
           TE.problem=setfield(TE.problem,prob,probInfo);
         else  
             com=['TE.problem.',prob,'=probInfo;'];
             disp(com)
             eval(com)
         end
     end
     direc = [TEpath,'/TE'];
     
    
    % save results in TE.mat
    addpath(['/',username,'/TEallFinal/TE']);
    disp(['save -mat ',TEpath,'/TE.mat TE']);
    eval(['save -mat ',TEpath,'/TE.mat TE']);
 end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
