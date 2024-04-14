from generator.generator import Parameter, Solver

name = "NOMAD"

paths = ["/nomad"]

preparation = """
x = options.x;
lb = bounds.low;
ub = bounds.upp;


% unpack params structure into keyword-value pairs
fn = fieldnames(params);
paramCell = {};
for i = 1:length(fn)
    paramCell = {paramCell{:}, fn{i}, params.(fn{i})};
end

if isOctave
  xStr = '';
  lbStr = '';
  ubStr = '';
  first = 1;
  for k = 1:length(x)
    if first
      xStr=[xStr,num2str(x(k))];
      lbStr=[lbStr,num2str(lb(k))];
      ubStr=[ubStr,num2str(ub(k))];
      first = 0;  
    else
      xStr=[xStr,',',num2str(x(k))];
      lbStr=[lbStr,',',num2str(lb(k))];
      ubStr=[ubStr,',',num2str(ub(k))];
    end
  end

  paramStr = '''[';
  first = 1;
  for i = 1:length(fn)
    if isnumeric(params.(fn{i}))
        params.(fn{i}) = num2str(params.(fn{i}))
    end
    if iscell(params.(fn{i}))
       params.(fn{i}) = strjoin(params.(fn{i}), '');
    end
    if first == 1
      paramStr = [paramStr,'"',fn{i},' ',params.(fn{i}),'"'];
      first = 0;
    else
      paramStr = [paramStr,',"',fn{i},' ',params.(fn{i}),'"'];
    end
  end
  paramStr = [paramStr,']'''];     
else
  opts = nomadset(paramCell{:});
end
   
"""
call = """
if ~isOctave
  eval(['save -mat',WORKpath,'/TE/finfo.mat finfo'])
           [x, fval, ~, ~, ~] = nomadOpt(@funf, x, lb, ub, params);
else
  eval(['save -mat',WORKpath,'/TE/finfo.mat finfo'])
  system(['python3 ',WORKpath,'/PYTHON/Octave_interfaces/runNomad2.py ',xStr,' ',lbStr,...
                 ' ',ubStr,' ',paramStr])
  eval(['load ', WORKpath, '/TE/finfo.mat'])
end
   

output.solverInfo.xbest = x;
output.solverInfo.fbest = fval;
"""

params = [
    Parameter(
        name="BB_OUTPUT_TYPE",
        value="OBJ",
        optimization_type="categorical",
        tuning_range=[
            "OBJ", 
            "PB", 
            "CSTR",
            "EB",
            "F", 
            "CNT_EVAL",
            "NOTHING",
            "EXTRA_O",
        ],
        description="Blackbox output types",
        info="""
available options are:
"OBJ": objective value to minimize (define twice for bi-objective)
"PB": constraint <= 0 treated with Progressive Barrier (PB)
"CSTR": same as 'PB' 
"EB": constraint <= 0 treated with Extreme Barrier (EB)
"F": constraint <= 0 treated with Filter
"CNT_EVAL": 0 or 1 output: count or not the evaluation
"NOTHING": this output is ignored
"EXTRA_O": same as 'NOTHING'
    """
    ),
    Parameter(
        name="LH_SEARCH_1",
        value=100,
        tuning_range=[0,1e8],
        description="first argument of Latin-Hypercube sampling (search)",
    ),
    Parameter(
        name="LH_SEARCH_2",
        value=0,
        tuning_range=[0,1e8],
        description="second argument of Latin-Hypercube sampling (search)",
    ),
    Parameter(
        name="QUAD_MODEL_SEARCH_BOUND_REDUCTION_FACTOR",
        value=1.0,
        tuning_range=[1,1e8],
        description="""
The quad model is built on evaluation points around a frame center. This 
defines min and max bounds, from which we define a model center. The model 
search is limited to tighter (can be wider with the parameter set to less than 1) 
bounds by reducing the distance of the optimization bounds to the model center. 
We use a reduction factor for that. If the reduction factor equals one, the min 
and max bounds are used as optimization bounds for the search. The greater the 
reduction factor, the tighter the bounds. 
	"""
    ),
    Parameter(
        name="QUAD_MODEL_SEARCH_BOX_FACTOR",
        value=4.0,
        tuning_range=[1e-8,1e8],
        description="""
Quadratic model search point selection factor.     
This parameter is used to select points to build the quadratic model for 
the search method.
The max, min and average of trial points coordinates are used to identify a 
box. This box contains all trial points to sort. 
The box is enlarged by this factor. Cache evaluation points inside this box 
are selected to build the quadratic model for search.
        """,
    ),
    Parameter(
        name="QUAD_MODEL_SORT_BOX_FACTOR",
        value=2.0,
        tuning_range=[1e-8,1e8],
        description="""
Quadratic model sort point selection factor.       
This parameter is used to select points to build the quadratic model for 
sorting trial points 
The max, min and average of trial points coordinates are used to identify a 
box. This box contains all trial points to sort. 
The box is enlarged by this factor. Cache evaluation points inside this box 
are selected to build the quadratic model for sort.
        """,
    ),
    Parameter(
        name="SGTELIB_MODEL_RADIUS_FACTOR",
        value=2.0,
        tuning_range=[1e-8,1e8],
        description="""
Sgtelib model radius factor.      
This parameter is used to select points to build the sgtelib model 
Frame size is multiplied by this factor to get the search radius.   
Points inside a circle centered on the poll center, within this radius, 
are selected to build the sgtelib model
        """,
    ),
    Parameter(
        name="SGTELIB_MODEL_SEARCH_TRIALS",
        value=1,
        tuning_range=[1,1e8],
        description="Max number of sgtelib model search failures before going to the poll step.",
    ),
    Parameter(
        name="DISPLAY_ALL_EVAL",
        value=0,
        tuning_range=[0,1],
        description="""
available options are:
true: more points are displayed with parameters DISPLAY_STATS and 
STATS_FILE
false: only the successful evaluations are displayed
        """,
    ),
    Parameter(
        name="BB_MAX_BLOCK_SIZE",
        value=1,
        tuning_range=[1,1e8],
        description="""
Maximum size of a block of evaluations send to the blackbox 
executable at once. Blackbox executable can manage parallel 
evaluations on its own. Opportunistic strategies may apply after 
each block of evaluations. 
Depending on the algorithm phase, the blackbox executable will 
receive at most BB_MAX_BLOCK_SIZE points to evaluate. 
When this parameter is greater than one, the number of evaluations 
may exceed the MAX_BB_EVAL stopping criterion.
        """,
    ),
    Parameter(
        name="QUAD_MODEL_MAX_BLOCK_SIZE",
        value=float("inf"),
        tuning_range=[1,float("inf")],
        description="""
Maximum size of a block of evaluations send to the quad model evaluator 
at once. Opportunistic strategies may apply after each block of evaluations. 
Depending on the algorithm phase, the quad model will 
receive at most QUAD_MODEL_MAX_BLOCK_SIZE points to evaluate. 
When this parameter is greater than one, the number of evaluations 
may exceed the QUAD_MODEL_MAX_EVAL stopping criterion.
        """
    ),
    Parameter(
        name="QUAD_MODEL_MAX_EVAL",
        value=5000,
        tuning_range=[1,1e8],
        description="Max number of model evaluations for each optimization of the quad model problem.",
    ),
    Parameter(
        name="SGTELIB_MODEL_MAX_BLOCK_SIZE",
        value=float("inf"),
        tuning_range=[1,float("inf")],
        description="""
Maximum size of a block of evaluations send to the sgtelib model evaluator 
at once. Opportunistic strategies may apply after each block of evaluations.
Depending on the algorithm phase, the sgtelib will 
receive at most SGTELIB_MODEL_MAX_BLOCK_SIZE points to evaluate. 
When this parameter is greater than one, the number of evaluations 
may exceed the SGTELIB_MODEL_MAX_EVAL stopping criterion. 
        """
    ),
    Parameter(
        name="SGTELIB_MODEL_MAX_EVAL",
        value=1000,
        tuning_range=[1,1e8],
        description="Max number of model evaluations for each optimization of the sgtelib model problem.",
    ),
    Parameter(
        name="EVAL_OPPORTUNISTIC",
        value=1,
        tuning_range=[0,1],
        description="""
Opportunistic strategy: Terminate evaluations as soon as a success is found.
This parameter is the default value for other OPPORTUNISTIC parameters, 
including Search steps.
This parameter is the value used for Poll step.
	"""
    ),
    Parameter(
        name="EVAL_QUEUE_SORT",
        value="QUADRATIC_MODEL",
        tuning_range=[
            "DIR_LAST_SUCCESS",
 	    "LEXICOGRAPHICAL", 
  	    "RANDOM",
  	    "SURROGATE", 
  	    "QUADRATIC_MODEL"      
        ],
        info="""
        available options are:
"DIR_LAST_SUCCESS": Points that are generated in a direction similar to the 
last direction that provided a successful point are evaluated first. 
"LEXICOGRAPHICAL": Points are sorted in lexicographical order before evaluation. 
"RANDOM": Mix points randomly before evaluation, instead of sorting them. 
"SURROGATE": Sort points using values given by static surrogate. See parameter SURROGATE_EXE. 
"QUADRATIC_MODEL": Sort points using values given by dynamic quadratic models.        
	"""
    ),
    Parameter(
        name="EVAL_USE_CACHE",
        value=1,
        tuning_range=[0,1],
        description="""When this parameter is false, the Cache is not used at all. Points may be 
re-evaluated.
Recommended when DIMENSION is large and evaluations are not costly.  
Cache may be used for top algorithm, and disabled for a sub-algorithm.
If CACHE_FILE is non-empty, cache file will still be read and written. 
	"""
    ),
    Parameter(
        name="FRAME_CENTER_USE_CACHE",
        value=0,
        tuning_range=[0,1],
        description="""
available options are:
true: when the Update step occurs, the points with 
the best values are found in the Cache. Multiple points may have the same 
value. These points are all used as frame centers for the next Search and 
Poll steps.
false: the frame centers (one feasible and one 
infeasible) are kept from previous iterations. This is the classical 
MADS algorithm.
	"""
    ),
    Parameter(
        name="HOT_RESTART_ON_USER_INTERRUPT",
        value=0,
        tuning_range=[0,1],
        description="""
        available options are:
true: when NOMAD runs and the user does an interruption (CTRL+C), 
then the parameters can be modified. Upon pressing CTRL+D, the resolution 
continues where it was stopped, using the modified parameters.
false: when NOMAD runs and the user does an interruption (CTRL+C), 
the resolution ends.
	"""
    ),
    Parameter(
        name="MAX_ITERATION_PER_MEGAITERATION",
        value=float("inf"),
        tuning_range=[1,float("inf")],
        description="""Maximum number of Iterations to generate for each MegaIteration.
If there are few points in the barrier, this parameter has no effect.
If FRAME_CENTER_USE_CACHE is false, this parameter has no effect.
If there are many points in the barrier, this parameter limits 
the number of iterations generated. 
A mixture of feasible and infeasible points of the barrier is used to 
generate iterations. 
Each iteration uses a point of the barrier as frame center.
	"""
    ),
    Parameter(
        name="NM_DELTA_E",
        value=2.0,
        tuning_range=[1.1,1e8],
        description="Nelder Mead expansion parameter",
    ),
    Parameter(
        name="NM_DELTA_IC",
        value=-0.5,
        tuning_range=[-1e8,-0.1],
        description="Nelder Mead inside contraction parameter",
    ),
    Parameter(
        name="NM_DELTA_OC",
        value=0.5,
        tuning_range=[0.1,0.9],
        description="Nelder Mead outside contraction parameter",
    ),
    Parameter(
        name="NM_GAMMA",
        value=0.5,
        tuning_range=[0.1,0.9],
        description="Nelder Mead shrink parameter",
    ),
    Parameter(
        name="RANDOM_ALGO_DUMMY_FACTOR",
        value=1,
        tuning_range=[1,1e8],
        description="""This is dummy factor used by random algo.
          Use this as a template for a parameter controling the behavior of a new search 
          method.
        """        
    ),
    Parameter(
        name="SEED",
        value=0,
        tuning_range=[-1,1e8],
        description="""Random seed.
          Choose -1 for generating a different seed for each run.
        """
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
