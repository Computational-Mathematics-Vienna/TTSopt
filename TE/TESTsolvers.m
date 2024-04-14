%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTsolvers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TESTsolvers run a list of solvers on a list of problems and save 
% results as mat file
%
% input
%
% func         % function handle
% x
% probnam      % the name of the test problem selected
% soList       % the list of the solvers selected
% hitlist      % a data struture including the information of best point
%                found rquired for the stopping test qs <= accf
% ibug         % counter for possible bug
% prListBug    % the list of test problems with bugs
% t2           % cpu time
% updatedHit   % Boolean variable for the update of hitlist
% RUNparam     % data struture including information for running solvers
% 
% output
%
% updatedHit, hitlist, ibug, prListBug, which have been defined above
%
function [updatedHit,hitlist,ibug,prListBug] =  ...
                    TESTsolvers(func,x,probnam,soList,...
                         hitlist,ibug,prListBug,t2,updatedHit,RUNparam)

global finfo WSOLdir RESpath  WORKpath

prt = RUNparam.prt;
% call solver on problem
for so=1:length(soList)
   %%%%%%%%%%%%%%%%%%%%%%%%%
   % assign starting point %
   %%%%%%%%%%%%%%%%%%%%%%%%%
   if RUNparam.xinitType
      RUNparam.x     = x; % standard starting point
      RUNparam.xbest = hitlist.minf.x; 
      RUNparam.fbest = hitlist.minf.f;
   else % to update hilist
         if finfo.con=='L'
            RUNparam.x = hitlist.minfLC.x;
            if isempty(RUNparam.x), RUNparam.x = hitlist.minf.x;end
         else
            RUNparam.x = hitlist.minf.x;   % best point
         end
   end
   
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % check whether there is bug in solver or not %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   if ismember(RUNparam.TEcase,[3,22:29])
       if any(isinf(RUNparam.x(finfo.Ii))) || ...
                any(floor(RUNparam.x(finfo.Ii))~=RUNparam.x(finfo.Ii))
          disp('bug in solver')
          ibug=ibug+1;
          prListBug{ibug}= probnam;
       end
   elseif ismember(RUNparam.TEcase,[2,13:21])
       if any(isinf(RUNparam.x)) || any(floor(RUNparam.x)~=RUNparam.x)
           x=RUNparam.x
           disp('bug in solver')
           ibug=ibug+1;
           prListBug{ibug}    = probnam;
       end
   end
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % call wrapper to perform related solver %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   output =[];
   eval(['addpath ',WSOLdir])
   solvid  = soList{so};
   TuneCase = RUNparam.TuneCase;
   RUNparam.TuneCase = TuneCase(so);
   timeBefore = cputime;

   eval(['output = w',solvid,'(probnam,func,RUNparam);']);

   timeAfter  = cputime;
   showtime0  = timeAfter-timeBefore;
   funInfo    = output.funInfo;
   xbest      = output.xbest;
   RUNparam.TuneCase = TuneCase;
   % check whether there is bug in solver or not
   if ismember(RUNparam.TEcase,[3,22:29])
       if any(isinf(xbest(finfo.Ii))) || ...
               any(floor(xbest(finfo.Ii))~=xbest(finfo.Ii))
           disp('bug in solver')
       end
   elseif ismember(RUNparam.TEcase,[2,13:21])
       if any(isinf(xbest)) || any(floor(xbest)~=xbest)
           disp('bug in solver')
       end
   end

   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % save information of the best point inresDir %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

   if prt > 0, xbest', end
   fbest      = output.fbest;
   solvid     = output.solname;
   if strcmp(probnam,'3PK'), probnam = 'X3PK'; end
   ind = findstr(probnam,'-');
   probnam(ind)='_';
   % update problem-solver RUNparam to be stored in resDir 
   solLabels = [];

   fil = [RESpath,'/',RUNparam.resDir,'/Problems/',probnam,'.mat'];
   if exist(fil) == 2
     eval(['load ',RESpath,'/',RUNparam.resDir,'/Problems/',probnam,'.mat']);
     solLabels = fieldnames(eval(probnam));
   end

   if ~isempty(strfind(RUNparam.resDir,'resT'))
     if ~isempty(solLabels)
       ind = findstr(solLabels{end},'_');
       if strcmp(substr(solLabels{end},1,ind(1)-1),solvid)
          numb = substr(solLabels{end},ind(1)+1,length(solLabels{end})-ind(1));
       else
          numb = '0';
       end
     else
       numb = '0';
     end
     numb = str2num(numb) + 1;
     numbStr =  num2str(numb);
     solLabel = [solvid,'_',numbStr];
     finfo.solLabel = solLabel;
     resDir = [RUNparam.resDir,'/Problems'];
     psid=[probnam,'.',solLabel];
   else
     psid=[probnam,'.',solvid]; % problem-solver id
     resDir = RUNparam.resDir;
   end

   eval([psid,'.xbest=xbest;']);      % assigns xbest   to psid
   eval([psid,'.fbest=fbest;']);      % assigns fbest   to psid
   eval([psid,'.funInfo=funInfo;'])  % assigns funInfo to psid
   eval([psid,'.TotalTime=showtime0;'])

   % save intermediate results for current problem-solver pair
   % stored in psid = [probnam,'.',solvid]

  
   if strcmp(probnam,'X3PK') || strcmp(probnam,'X10FOLDTR')
        com=['save -mat ',RESpath,'/',resDir,'/',...
                                          probnam,'.mat ',probnam];
   else
        com=['save -mat ',RESpath,'/',resDir,'/',...
                               probnam,'.mat ',probnam];
   end
   eval(com);
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % update hitlist if requested  %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   varHit=0;

   [updatedHit,hitlist,~]=TESThit(func,finfo.xbest,hitlist,varHit,...
                                   updatedHit,t2,probnam,RUNparam);

   disp(' ')
   if prt > 0, showtime, end
end 
% terminate CUTEst and remove some related files
if ismember(RUNparam.TEcase,1:3)
     cutest_terminate();
     if ~isOctave 
         unix(['rm ',WORKpath,'/EXE/*.*']);
         clear functions
     else
         unix(['rm ',WORKpath,'/EXE/*.*']);
         clear ocutest;
     end
end
fclose('all')
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
