%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEinit.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function TE=TEinit(soList,resdir);
% creates complete list of CUTEST test problems
%
% input:
%
% soList         % list solvers
% resdir         % directory containing result files
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
%
function TEinit

global CUTESTpath SOLpath TEpath RESpath HITpath PDFpath RESdiary 
% CUTESTpath    % path to CUTEST directory
% SOLpath       % path to directory containing all solver directories
% TEpath        % path to TE directory
% RESpath       % path to directory containing all result directories
% HITpath       % path to HITLIST directory 
% PDFpath       % path for the resulting analysis
% WORKpath      % path for directory where TE is run (not global)
% RESdiary      % relative path of result diary (set locally)

% extract all dimensions of each test problem
% and prepares them to be run as separately

file1=[TEpath,'/TE.mat']

if exist(file1)~=2, 
  % create test collection from scratch
  CUTESTclass;  
end

eval(['load ',file1]);


if (~isfield(TE,'uncon') | ~isfield(TE,'bound'))
  CUTESTvardim;
else
    if (isempty(TE.uncon) |isempty(TE.bound))
       CUTESTvardim;
    elseif length(TE.uncon)+length(TE.bound)<1101
           CUTESTvardim;
    end   
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
