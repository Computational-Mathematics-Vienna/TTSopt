%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tNOMAD.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% tNOMAD generates necessary data for doing tuning the parameters
% of NOMAD by a mixed integer solver
%
% List of tuning parameters:
%
% BB_OUTPUT_TYPE: Blackbox output types
% LH_SEARCH_1: first argument of Latin-Hypercube sampling (search)
% LH_SEARCH_2: second argument of Latin-Hypercube sampling (search)
% QUAD_MODEL_SEARCH_BOUND_REDUCTION_FACTOR: The quad model is built on
%   evaluation points around a frame center. This  defines min and max
%   bounds, from which we define a model center. The model  search is
%   limited to tighter (can be wider with the parameter set to less than
%   1)  bounds by reducing the distance of the optimization bounds to
%   the model center.  We use a reduction factor for that. If the
%   reduction factor equals one, the min  and max bounds are used as
%   optimization bounds for the search. The greater the  reduction
%   factor, the tighter the bounds.
% QUAD_MODEL_SEARCH_BOX_FACTOR: Quadratic model search point selection
%   factor.      This parameter is used to select points to build the
%   quadratic model for  the search method. The max, min and average of
%   trial points coordinates are used to identify a  box. This box
%   contains all trial points to sort.  The box is enlarged by this
%   factor. Cache evaluation points inside this box  are selected to
%   build the quadratic model for search.
% QUAD_MODEL_SORT_BOX_FACTOR: Quadratic model sort point selection
%   factor.        This parameter is used to select points to build the
%   quadratic model for  sorting trial points  The max, min and average
%   of trial points coordinates are used to identify a  box. This box
%   contains all trial points to sort.  The box is enlarged by this
%   factor. Cache evaluation points inside this box  are selected to
%   build the quadratic model for sort.
% SGTELIB_MODEL_RADIUS_FACTOR: Sgtelib model radius factor.       This
%   parameter is used to select points to build the sgtelib model  Frame
%   size is multiplied by this factor to get the search radius.
%   Points inside a circle centered on the poll center, within this
%   radius,  are selected to build the sgtelib model
% SGTELIB_MODEL_SEARCH_TRIALS: Max number of sgtelib model search
%   failures before going to the poll step.
% DISPLAY_ALL_EVAL: available options are: true: more points are
%   displayed with parameters DISPLAY_STATS and  STATS_FILE false: only
%   the successful evaluations are displayed
% BB_MAX_BLOCK_SIZE: Maximum size of a block of evaluations send to the
%   blackbox  executable at once. Blackbox executable can manage
%   parallel  evaluations on its own. Opportunistic strategies may apply
%   after  each block of evaluations.  Depending on the algorithm phase,
%   the blackbox executable will  receive at most BB_MAX_BLOCK_SIZE
%   points to evaluate.  When this parameter is greater than one, the
%   number of evaluations  may exceed the MAX_BB_EVAL stopping
%   criterion.
% QUAD_MODEL_MAX_BLOCK_SIZE: Maximum size of a block of evaluations send
%   to the quad model evaluator  at once. Opportunistic strategies may
%   apply after each block of evaluations.  Depending on the algorithm
%   phase, the quad model will  receive at most
%   QUAD_MODEL_MAX_BLOCK_SIZE points to evaluate.  When this parameter
%   is greater than one, the number of evaluations  may exceed the
%   QUAD_MODEL_MAX_EVAL stopping criterion.
% QUAD_MODEL_MAX_EVAL: Max number of model evaluations for each
%   optimization of the quad model problem.
% SGTELIB_MODEL_MAX_BLOCK_SIZE: Maximum size of a block of evaluations
%   send to the sgtelib model evaluator  at once. Opportunistic
%   strategies may apply after each block of evaluations. Depending on
%   the algorithm phase, the sgtelib will  receive at most
%   SGTELIB_MODEL_MAX_BLOCK_SIZE points to evaluate.  When this
%   parameter is greater than one, the number of evaluations  may exceed
%   the SGTELIB_MODEL_MAX_EVAL stopping criterion.
% SGTELIB_MODEL_MAX_EVAL: Max number of model evaluations for each
%   optimization of the sgtelib model problem.
% EVAL_OPPORTUNISTIC: Opportunistic strategy: Terminate evaluations as
%   soon as a success is found. This parameter is the default value for
%   other OPPORTUNISTIC parameters,  including Search steps. This
%   parameter is the value used for Poll step.
% EVAL_QUEUE_SORT:
% EVAL_USE_CACHE: When this parameter is false, the Cache is not used at
%   all. Points may be  re-evaluated. Recommended when DIMENSION is
%   large and evaluations are not costly.   Cache may be used for top
%   algorithm, and disabled for a sub-algorithm. If CACHE_FILE is non-
%   empty, cache file will still be read and written.
% FRAME_CENTER_USE_CACHE: available options are: true: when the Update
%   step occurs, the points with  the best values are found in the
%   Cache. Multiple points may have the same  value. These points are
%   all used as frame centers for the next Search and  Poll steps.
%   false: the frame centers (one feasible and one  infeasible) are kept
%   from previous iterations. This is the classical  MADS algorithm.
% HOT_RESTART_ON_USER_INTERRUPT: available options are: true: when NOMAD
%   runs and the user does an interruption (CTRL+C),  then the
%   parameters can be modified. Upon pressing CTRL+D, the resolution
%   continues where it was stopped, using the modified parameters.
%   false: when NOMAD runs and the user does an interruption (CTRL+C),
%   the resolution ends.
% MAX_ITERATION_PER_MEGAITERATION: Maximum number of Iterations to
%   generate for each MegaIteration. If there are few points in the
%   barrier, this parameter has no effect. If FRAME_CENTER_USE_CACHE is
%   false, this parameter has no effect. If there are many points in the
%   barrier, this parameter limits  the number of iterations generated.
%   A mixture of feasible and infeasible points of the barrier is used
%   to  generate iterations.  Each iteration uses a point of the barrier
%   as frame center.
% NM_DELTA_E: Nelder Mead expansion parameter
% NM_DELTA_IC: Nelder Mead inside contraction parameter
% NM_DELTA_OC: Nelder Mead outside contraction parameter
% NM_GAMMA: Nelder Mead shrink parameter
% RANDOM_ALGO_DUMMY_FACTOR: This is dummy factor used by random algo.
%   Use this as a template for a parameter controling the behavior of a
%   new search            method.
% SEED: Random seed.           Choose -1 for generating a different seed
%   for each run.
%
% solverParams = struct('BB_OUTPUT_TYPE','OBJ', 'LH_SEARCH_1',100,...
%   'LH_SEARCH_2',0, 'QUAD_MODEL_SEARCH_BOUND_REDUCTION_FACTOR',1.0,...
%   'QUAD_MODEL_SEARCH_BOX_FACTOR',4.0,...
%   'QUAD_MODEL_SORT_BOX_FACTOR',2.0, 'SGTELIB_MODEL_RADIUS_FACTOR',2.0,...
%   'SGTELIB_MODEL_SEARCH_TRIALS',1, 'DISPLAY_ALL_EVAL',0,...
%   'BB_MAX_BLOCK_SIZE',1, 'QUAD_MODEL_MAX_BLOCK_SIZE',inf,...
%   'QUAD_MODEL_MAX_EVAL',5000, 'SGTELIB_MODEL_MAX_BLOCK_SIZE',inf,...
%   'SGTELIB_MODEL_MAX_EVAL',1000, 'EVAL_OPPORTUNISTIC',1,...
%   'EVAL_QUEUE_SORT','QUADRATIC_MODEL', 'EVAL_USE_CACHE',1,...
%   'FRAME_CENTER_USE_CACHE',0, 'HOT_RESTART_ON_USER_INTERRUPT',0,...
%   'MAX_ITERATION_PER_MEGAITERATION',inf, 'NM_DELTA_E',2.0,...
%   'NM_DELTA_IC',-0.5, 'NM_DELTA_OC',0.5, 'NM_GAMMA',0.5,...
%   'RANDOM_ALGO_DUMMY_FACTOR',1, 'SEED',0)


function tuneinfo = tNOMAD



  x(1).Values.all = {'OBJ',  'PB',  'CSTR',  'EB',  'F',  'CNT_EVAL', ...
 'NOTHING',  'EXTRA_O'}; % BB_OUTPUT_TYPE (categorical)
  x(1).Current = 'OBJ';
  x(1).Type = 'categorical';
  x(2).Values.low = 0;
  x(2).Values.upp = 100000000.0;
  x(2).Current = 100;
  x(2).Type = 'integer'; % LH_SEARCH_1 (integer)
  x(3).Values.low = 0;
  x(3).Values.upp = 100000000.0;
  x(3).Current = 0;
  x(3).Type = 'integer'; % LH_SEARCH_2 (integer)
  x(4).Values.low = 1;
  x(4).Values.upp = 100000000.0;
  x(4).Current = 1.0;
  x(4).Type = 'continuous';
    % QUAD_MODEL_SEARCH_BOUND_REDUCTION_FACTOR (continuous)
  x(5).Values.low = 1e-08;
  x(5).Values.upp = 100000000.0;
  x(5).Current = 4.0;
  x(5).Type = 'continuous'; % QUAD_MODEL_SEARCH_BOX_FACTOR (continuous)
  x(6).Values.low = 1e-08;
  x(6).Values.upp = 100000000.0;
  x(6).Current = 2.0;
  x(6).Type = 'continuous'; % QUAD_MODEL_SORT_BOX_FACTOR (continuous)
  x(7).Values.low = 1e-08;
  x(7).Values.upp = 100000000.0;
  x(7).Current = 2.0;
  x(7).Type = 'continuous'; % SGTELIB_MODEL_RADIUS_FACTOR (continuous)
  x(8).Values.low = 1;
  x(8).Values.upp = 100000000.0;
  x(8).Current = 1;
  x(8).Type = 'integer'; % SGTELIB_MODEL_SEARCH_TRIALS (integer)
  x(9).Values.low = 0;
  x(9).Values.upp = 1;
  x(9).Current = 0;
  x(9).Type = 'integer'; % DISPLAY_ALL_EVAL (integer)
  x(10).Values.low = 1;
  x(10).Values.upp = 100000000.0;
  x(10).Current = 1;
  x(10).Type = 'integer'; % BB_MAX_BLOCK_SIZE (integer)
  x(11).Values.low = 1;
  x(11).Values.upp = inf;
  x(11).Current = inf;
  x(11).Type = 'continuous'; % QUAD_MODEL_MAX_BLOCK_SIZE (continuous)
  x(12).Values.low = 1;
  x(12).Values.upp = 100000000.0;
  x(12).Current = 5000;
  x(12).Type = 'integer'; % QUAD_MODEL_MAX_EVAL (integer)
  x(13).Values.low = 1;
  x(13).Values.upp = inf;
  x(13).Current = inf;
  x(13).Type = 'continuous'; % SGTELIB_MODEL_MAX_BLOCK_SIZE (continuous)
  x(14).Values.low = 1;
  x(14).Values.upp = 100000000.0;
  x(14).Current = 1000;
  x(14).Type = 'integer'; % SGTELIB_MODEL_MAX_EVAL (integer)
  x(15).Values.low = 0;
  x(15).Values.upp = 1;
  x(15).Current = 1;
  x(15).Type = 'integer'; % EVAL_OPPORTUNISTIC (integer)
  x(16).Values.all = {'DIR_LAST_SUCCESS',  'LEXICOGRAPHICAL',  'RANDOM', ...
 'SURROGATE',  'QUADRATIC_MODEL'}; % EVAL_QUEUE_SORT (categorical)
  x(16).Current = 'QUADRATIC_MODEL';
  x(16).Type = 'categorical';
  x(17).Values.low = 0;
  x(17).Values.upp = 1;
  x(17).Current = 1;
  x(17).Type = 'integer'; % EVAL_USE_CACHE (integer)
  x(18).Values.low = 0;
  x(18).Values.upp = 1;
  x(18).Current = 0;
  x(18).Type = 'integer'; % FRAME_CENTER_USE_CACHE (integer)
  x(19).Values.low = 0;
  x(19).Values.upp = 1;
  x(19).Current = 0;
  x(19).Type = 'integer'; % HOT_RESTART_ON_USER_INTERRUPT (integer)
  x(20).Values.low = 1;
  x(20).Values.upp = inf;
  x(20).Current = inf;
  x(20).Type = 'continuous';
    % MAX_ITERATION_PER_MEGAITERATION (continuous)
  x(21).Values.low = 1.1;
  x(21).Values.upp = 100000000.0;
  x(21).Current = 2.0;
  x(21).Type = 'continuous'; % NM_DELTA_E (continuous)
  x(22).Values.low = -100000000.0;
  x(22).Values.upp = -0.1;
  x(22).Current = -0.5;
  x(22).Type = 'continuous'; % NM_DELTA_IC (continuous)
  x(23).Values.low = 0.1;
  x(23).Values.upp = 0.9;
  x(23).Current = 0.5;
  x(23).Type = 'continuous'; % NM_DELTA_OC (continuous)
  x(24).Values.low = 0.1;
  x(24).Values.upp = 0.9;
  x(24).Current = 0.5;
  x(24).Type = 'continuous'; % NM_GAMMA (continuous)
  x(25).Values.low = 1;
  x(25).Values.upp = 100000000.0;
  x(25).Current = 1;
  x(25).Type = 'integer'; % RANDOM_ALGO_DUMMY_FACTOR (integer)
  x(26).Values.low = -1;
  x(26).Values.upp = 100000000.0;
  x(26).Current = 0;
  x(26).Type = 'integer'; % SEED (integer)


  indchange = [4, 5, 6, 7, 11, 13, 20, 21, 22, 23, 24]; % index set for tuning

  % name of tuning paramters
  xname= {'BB_OUTPUT_TYPE', 'LH_SEARCH_1', 'LH_SEARCH_2',...
    'QUAD_MODEL_SEARCH_BOUND_REDUCTION_FACTOR',...
    'QUAD_MODEL_SEARCH_BOX_FACTOR', 'QUAD_MODEL_SORT_BOX_FACTOR',...
    'SGTELIB_MODEL_RADIUS_FACTOR', 'SGTELIB_MODEL_SEARCH_TRIALS',...
    'DISPLAY_ALL_EVAL', 'BB_MAX_BLOCK_SIZE',...
    'QUAD_MODEL_MAX_BLOCK_SIZE', 'QUAD_MODEL_MAX_EVAL',...
    'SGTELIB_MODEL_MAX_BLOCK_SIZE', 'SGTELIB_MODEL_MAX_EVAL',...
    'EVAL_OPPORTUNISTIC', 'EVAL_QUEUE_SORT', 'EVAL_USE_CACHE',...
    'FRAME_CENTER_USE_CACHE', 'HOT_RESTART_ON_USER_INTERRUPT',...
    'MAX_ITERATION_PER_MEGAITERATION', 'NM_DELTA_E', 'NM_DELTA_IC',...
    'NM_DELTA_OC', 'NM_GAMMA', 'RANDOM_ALGO_DUMMY_FACTOR', 'SEED'};

  xi = 0;

  % vector whose components are identify whether the corresponding
  % tuning parameters are integer or not
  int = [2, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 2, 1, 1, 1, 0, 0,...
    0, 0, 0, 1, 1];

  [xinittune,solverParams,indexVec,low,upp] = getParams(x,xname);

  
  tuneinfo.xi            = xi;
  tuneinfo.nt            = 0;
  tuneinfo.ntbest        = 0;
  tuneinfo.meanqfbest    = Inf;
  for i = 1 : length(x)
    tuneinfo.parambest.(xname{i}) = x(i).Current;
  end 
  tuneinfo.xtable        = [];
  tuneinfo.nsolved       = [];
  tuneinfo.x             = x;
  tuneinfo.xname         = xname;
  tuneinfo.indchange     = indchange;
  tuneinfo.int           = int;
  tuneinfo.xinittune     = xinittune;
  tuneinfo.solverParams  = solverParams;
  tuneinfo.indexVec      = indexVec;
  tuneinfo.low           = low;
  tuneinfo.upp           = upp;
  tuneinfo.getftune.error = '';
  tuneinfo.permut = 1:length(tuneinfo.x);
  tuneinfo.permut = 1:length(xinittune);
  tuneinfo.indch =[];
  tuneinfo.meanqfbest = Inf;
  tuneinfo.nfbest = Inf;
  tuneinfo.secbest = Inf;
  tuneinfo.nt = 0;
  tuneinfo.mqftable = []; 
    
 

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
