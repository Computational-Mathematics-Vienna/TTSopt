from generator.generator import Parameter, Solver

name = "BFO"

paths = ["/BFO"]

preparation = """
x = options.x;

% categorical variables are designated with 's' instead of 'k'
type = bounds.type;
for i = 1:length(type)
  params.xtype{i} = strrep(type{i}, 'k', 's');
end
params.xtype = char(strjoin(params.xtype, ''));

% deactivate maximum budgets and iterations, printing, and other 
% stopping tests (if any)
params.maxeval = 1e8;
params.epsilon   = 1e-9;
params.ftarget   = -inf;
params.verbosity = 'silent';
params.training_mode = 'solve';

% unpack params structure into keyword-value pairs
fn = fieldnames(params);
paramCell = {};
for i = 1:length(fn)
  if strcmp(fn{i}, "ftarget")
    paramCell = {paramCell{:}, "f-target", params.(fn{i})};
  else
    paramCell = {paramCell{:}, fn{i}, params.(fn{i})};
  end
end
"""

call = """

[xbest, fbest, ~, ~, ~] = bfo(@funf, x, paramCell{:});

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="alpha",
        value=1.42,
        tuning_range=[1, 10],
        description="grid expansion factor at successful iterations",
        info="must be >= 1",
    ),
    Parameter(
        name="beta",
        value=0.2,
        tuning_range=[0, 1],
        description="shrinking ratio between successive grids for the continuous variables",
        info="must be in ]0, 1[",
    ),
    Parameter(
        name="gamma",
        value=2.36,
        tuning_range=[1, 10],
        description="maximum expansion factor for continuous variables",
        info="must be in >= 1",
    ),
    Parameter(
        name="delta",
        value=2.64133,
        tuning_range=[0, 10],
        description="initial increments for the continuous variables",
        info="""the scaling-independent initial (positive) increments for
the continuous variables, such that the initial move along
variable i is +/- delta(i) * xscale(i) for such variables.
The value of delta(i) is ignored if variable i is discrete
or categorical. If a single number delta is specified, the value
delta(i) = delta is used for all continuous variables.
""",
    ),
    Parameter(
        name="eta",
        value=1e-4,
        tuning_range=[0, 1],
        description="improvement tolerance to stop polling",
        info="""a fraction (>0) defining the improvement in objective function
deemed sufficient to stop polling the remaining variables,
this decrease being computed as eta times the squared mesh-size.
""",
    ),
    Parameter(
        name="zeta",
        value=1.5,
        tuning_range=[1, 10],
        description="grid size expansion factor",
        info="""a factor (>=1) by which the grid size is expanded when a
particular level (in multilevel use) is re-explored after
a previous optimization.
""",
    ),
    Parameter(
        name="iota",
        value=1.255,
        tuning_range=[1, 10],
        description="stepsize shrinking factor exponent",
        info="""a power at least equal to 1 to which the stepsize shrinking
factor is raised after unsuccessful coordinate partially
separable search
""",
    ),
    Parameter(
        name="kappa",
        value=2.0,
        tuning_range=[1, 10],
        description="bracket expansion factor in min1d without quadratic interpolation",
    ),
    Parameter(
        name="lambda",
        value=0.1,
        tuning_range=[0, 1],
        description="min bracket expansion factor in min1d with quadratic interpolation",
    ),
    Parameter(
        name="mu",
        value=50.0,
        tuning_range=[0, 100],
        description="max bracket expansion factor in min1d with quadratic interpolation",
    ),
    Parameter(
        name="inertia",
        value=10,
        tuning_range=[1, 100],
        description="number of iterations used for averaging",
        info="""the number of iterations used for averaging the steps in the
continuous variables, the basis for these variables being
computed for the next iteration as an orthonormal basis whose
first element is (normalized) average step.
NOTE: inertia = 0 disables the averaging process.
""",
    ),
    Parameter(
        name="search_type",
        value="depth-first",
        tuning_range=["breadth-first", "depth-first", "none"],
        description="search strategy to use for discrete variables",
        info="""a string defining the strategy to use for exploring the
tree of possible values for the discrete variables.
Possible values are:
"breadth-first": all subspaces corresponding to interesting
                values of the discrete variables are explored
                before grid refinement
"depth-first"  : grid refinement is performed as soon as
                possible
"none"         : no recursion
""",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
