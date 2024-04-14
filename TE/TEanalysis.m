%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEanalysis.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function TE=TEanalysis(soList,resdir);
% produces for each problem a structure hitlist containing 
% special points of the problem <prob>. This structure is retrieved with
%   load HITLIST/<prob>;
%
% input:
%
% soList         % list solvers
% resdir         % directory containing result files
% hitlist
%   .prob        % problem name 
%   .low         %   column vector of lower bounds
%   .upp         %   column vector of upper bounds
%   .init        %   starting point
%   .minf        %   point with best function value
%                % each with some of the following fields:
%     .x         %     column vector of coordinates
%     .f         %     function value
%     .acc       %     maxnorm of reduced gradient
%     .nfree     %     number of free variables
%     .normx     %     maximum norm of coordinate vector 
% 
% output:
%
% TE                % data structure for test environment
%   .solver.<sol>   %   solver information for solver <sol>
%   .uncon{k}       %   k-th unconstrained problem
%   .listUncon      %   string with names of unconstrained problems
%   .bound{k}       %   k-th bound constrained problem
%   .listBound      %   string with names of bound constrained problems
%   .problem.<prob> %   problem information for problem <name>
%      .name        %     problem name
%      .vardim      %     0 if no alternative dimensions exist
%
%      .dim         %     dimension (default if vardim) 
%      .nc          %     number of constraints other than bounds
%                   %     ([] = variable number)
%                   %     the bounds themselves are in hitlist
%      .class       %     classification
%                   %   The CUTE classification scheme is described in
%           %   http://www.cutest.rl.ac.uk/Problems/classification.shtml
%      .obj         %       type of objective function
%                   %       N  no objective function is defined
%                   %       C  objective function is constant 
%                   %       L  objective function is linear
%                   %       Q  objective function is quadratic
%                   %       S  objective function is a sum of squares
%                   %       O  objective function is none of the above
%      .con         %     type of constraints
%                   %       U  unconstrained, 
%                   %       X  only constraints are fixed variables, 
%                   %       B  only constraints are bounds on variables
%                   %       N  only linear network constraints
%                   %       L  constraints are linear 
%                   %       Q  constraints are quadratic
%                   %       O  more general than any of the above alone
%      .sm          %     smoothness
%                   %       R  problem is regular: first and second 
%                   %          derivatives exist and are continuous 
%                   %          everywhere
%                   %       I  the problem is irregular
%      .der         %     number of derivatives available (0, 1, or 2)
%      .run         %     complexity information
%         .best     %       for point with best nf for qf<1e-4
%                   %     each with some of the following fields:
%           .nf     %        nf needed          
%           .solver %         name of one solver achieving this
%           .sec    %         best time
%
function TE=TEanalysis(soList,resdir,gradacc,RowNames,TE)

global CUTESTpath SOLpath TEpath RESpath HITpath PDFpath RESdiary 
% CUTESTpath    % path to CUTEST directory
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis
% WORKpath      % path for directory where TE is run (not global)
% RESdiary      % relative path of result diary (set locally)

fil=[TEpath,'/TE.mat'];
eval(['load ',fil]);

TE.solver=soList;
 ii=0;
for field=1:length(RowNames)
    ii = ii+1;
    prob = RowNames{field};
    probInfo  = getfield(TE.problem,prob)
    
   
  % restrict to unconstrained or bound constrained problems
  if ~(probInfo.con=='U' | probInfo.con=='X' | probInfo.con=='B'),
    % problem not bound constrained
    continue;
  end;
  
  fil     = [RESpath,'/',resdir,'/',prob,'.mat'];
  
   
  if exist(fil)~=2, 
    % result file does not exist; skip problem
    disp(['skipped ',prob,' (no file)']);
    continue; 
  end;
  
  % load file
  eval(['load ',fil]);
  if exist(prob)==0, 
    % result structure not found; skip problem
    disp(['skipped ',prob,' (no results)']);
    continue; 
  end;
  
  
  % data is the structure, prob its name to be used in eval!
  eval(['data=',prob,';'])
  disp(prob);
      
  % data
  
  % initialize best values
   if ~isfield(probInfo,'points')
       probInfo.points.minf.f = inf;
       probInfo.points.minf.acc=inf;
   end
   
  % initialize best complexity
  if ~isfield(probInfo,'run')
     probInfo.run.best.nf           = inf;
     probInfo.run.best.sec          = inf;
     probInfo.run.best.solver       = [];
     probInfo.run.best.solvedByAll  = [];
     
     probInfo.run.best2.nf           = inf;
     probInfo.run.best2.sec          = inf;
     probInfo.run.best2.solver       = [];
     probInfo.run.best2.solvedByAll  = [];
     
  end
  
  % collect best results from all solvers
  nso=length(TE.solver);
  accList=inf(nso,1);
  nfList=inf(nso,1);
  secList=inf(nso,1);

  for so=1:nso
      solvid=TE.solver{so};
      if isfield(data,solvid)
         eval(['funInfo=',prob,'.',solvid,'.funInfo;']);
         
         % best f
         if funInfo.fbest<probInfo.points.minf.f
            probInfo.points.minf.f=funInfo.fbest;
            probInfo.points.minf.x=funInfo.xfbest;
         end
         
        % best acc
        if isfield(funInfo,'abest')
           accList(so)=funInfo.abest;
           nfList(so)=funInfo.nfabest;
           secList(so)=funInfo.asec;
           if funInfo.abest<probInfo.points.minf.acc
              probInfo.points.minf.acc=funInfo.abest;
              probInfo.points.minf.x=funInfo.xabest;
              probInfo.points.minf.f=funInfo.fabest;
           end
        end
      end
  end
 
 % collect best complexity for qf<1e-4

 nfList(accList>gradacc)=inf;
 
 len = length(find(nfList==inf));
 
 if len == 0
     probInfo.run.best.solvedByAll = 1;
 else
     probInfo.run.best.solvedByAll = 0;
 end
 
 [nsort1,perm1]=sort(nfList);

 if isfinite(nsort1(1))
    so=perm1(1);
    probInfo.run.best.nf=nfList(so);
    probInfo.run.best.solver1=TE.solver{so};
 else
     probInfo.run.best.nf=inf;
     probInfo.run.best.solver1=[];
 end
 
  secList(accList>gradacc)=inf;

  [nsort11,perm11]=sort(secList);

 if isfinite(nsort11(1))
    so=perm11(1);
    probInfo.run.best.solver2=TE.solver{so};
    probInfo.run.best.sec=secList(so);
 else
    probInfo.run.best.solver2=[];
    probInfo.run.best.sec=inf;
 end
 

 
 
  % update entry in TE.problem
  TE.problem=setfield(TE.problem,prob,probInfo);
  % save results in TE.mat
  
    
end

disp(['save ',TEpath,'/TE.mat TE']);
eval(['save ',TEpath,'/TE.mat TE']);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
