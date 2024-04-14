%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESThit %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% updates hitlist
%
% input
%      .func          % function handle
%      .x             % the initial point
%      .hitlist       % data structure including histlist info
%      .varHit        % Boolean variable for the update of hitlist
%                       0: hitlist may be update
%                       1: hitlist was initialized
%      .updatedHit    % variable for updating hitlist
%                       0: hitlist was not updated
%                       1: hitlist was updated
%      .t2            % 
%      .name          %  the name of test problem
%      .RUNparam      %
%               .updateHitVar    % Boolean variable for updating hitlist    
%               .TEcase          % indicate the type of collections
%               .initHitVar      % Boolean variable for the first 
%                                  update of hitlist
%               .etc             % see TESTrun
%
% output
%      .updatedHit   % variable for updating hitlist
%      .hitlist      % data structure including histlist info
%
function [updatedHit,hitlist,t3]= ...
         TESThit(func,x,hitlist,varHit,updatedHit,t2,name,RUNparam)
     
global finfo HITpath TEpath

prt = finfo.prt; 
if ~varHit 
    eval(['load ',TEpath,'/TE.mat TE'])
    eval(['probnam=TE.problem.',name,';'])
    eval(['load ',HITpath,'/',name])
    if  finfo.con=='L' 
        %if probnam.feasibleOK2
        %     hitlist.minfLC.x=probnam.x02;
             eval(['save -mat ',HITpath,'/',name,'.mat hitlist'])
        %end
    end
    if RUNparam.updateHitVar
       if finfo.fbest<hitlist.minf.f 
         % anywhere funInfo was changed to finfo
         if finfo.fbest>-1e7 
             values=TEvalues(func,RUNparam.TEcase,finfo.xbest);
             if values.f<hitlist.minf.f 
                 updatedHit=1; hitlist.minf=values;
             end
         else       
             updatedHit=1; 
             hitlist.minf.f=finfo.fbest; hitlist.minf.x=finfo.xbest; 
         end
          if finfo.con=='L' 
             %TESTfeasible(RUNparam,hitlist.minf.x,0); % TESTimprove
         end            
       end
       if ~isreal(hitlist.minf.f),disp('fbest is not a real value');end
       % the following brings unchecked old items up to date
       if isfield(hitlist.minf,'checked') && finfo.fbest>-1e12 
          values=TEvalues(func,RUNparam.TEcase,hitlist.minf.x);
          hitlist.minf=values;
           if finfo.con=='L' 
             finfo.state=0;  
             TESTfeasible(RUNparam,hitlist.minf.x,0); % TESTimprove
          end      
       end
       
       if isreal(finfo.qbest) 
         if ~isfield(hitlist,'qbest') 
             hitlist.qbest = 0;
         elseif isfield(hitlist,'qbest') && finfo.qbest < hitlist.qbest
             hitlist.qbest = finfo.qbest;        
         end
       end
      
       % save updated hitlist
       if updatedHit
         disp('*** hitlist updated ***')
         eval(['save -mat ',HITpath,'/',name,'.mat hitlist'])
         updatedHit=0;
       end
    end  
    t3=cputime; finfo.updatedHit=updatedHit;
else
    finfo.updatedHit=0; 
    switch name
       case '3PK', name='X3PK';
       case '10FOLDTR', name='X10FOLDTR';
    end
    % check existence of hitlist
    updatedHit=0;
    [s,~]=unix(['ls ',HITpath,'/',name,'.mat']);
    if RUNparam.initHitVar, s=1; end
    if s==0 % load hitlist
      eval(['load ',HITpath,'/',name])
      if prt, disp(['load ',HITpath,'/',name]), end
      if prt, hitlist.minf, end
      if RUNparam.initHitVar 
          updatedHit=1; hitlist.init.x=x; 
          hitlist.minf.f=inf; hitlist.minf.x=x; 
          hitlist.qbest=inf;
      end
    end
    if RUNparam.initHitVar 
       if s~=0 % create hitlist
          updatedHit     = 1; hitlist.init.x = x;
          hitlist.minf.x = x; hitlist.minf.f = inf;
          hitlist.qbest = inf;
       end
    end
    if prt, timeFindHitlist=showtime(cputime-t2), end
    t3=cputime;
    if RUNparam.initHitVar 
       if isfield(hitlist,'init')
          if ~isfield(hitlist.init,'checked')
             values=TEvalues(func,RUNparam.TEcase,hitlist.init.x);
             updatedHit=1;
             hitlist.init=values;
             if values.f<hitlist.minf.f , hitlist.minf=values;end
          end
       end
    end
    if isempty(hitlist)
        error('hitlist is not available; get hitlist');
    end
    if finfo.con=='L' && RUNparam.initHitVar 
       hitlist.minfLC.x=[];
       eval(['save -mat ',HITpath,'/',name,'.mat hitlist'])
       %TESTfeasible(RUNparam,x,1); % TESTimprove
    end
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
