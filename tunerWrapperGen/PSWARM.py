from generator.generator import Parameter, Solver

name = "PSWARM"

paths = ["/PSWARM"]

preparation = """
problem.ObjFunction = 'funf';
problem.LB = bounds.low;
problem.UB = bounds.upp;

initPop(1).x = options.x;

params = PSwarm('defaults')
params.MaxObj = inf;
params.MaxIter = 1e8;
params.CPTolerance = -inf;
params.IPrint = -1;
params.Size = length(options.x);
"""

call = """
[xbest, fbest, ~] = PSwarm(problem, initPop, params);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="Cognitial",
        value=0.5,
        tuning_range=[0, 2],
        description="cognitial parameter in the velocity equation",
    ),
    Parameter(
        name="InerciaInitialWeight",
        value=0.9,
        tuning_range=[0, 2],
        description="inercia parameter in the first iteration velocity equation",
    ),
    Parameter(
        name="InerciaFinalWeight",
        value=0.4,
        tuning_range=[0, 2],
        description="inercia parameter in the last iteration velocity equation",
    ),
    Parameter(
        name="Social",
        value=0.5,
        tuning_range=[0, 2],
        description="social parameter in the velocity equation",
    ),
    Parameter(
        name="MaxVelocityFactor",
        value=0.5,
        tuning_range=[0, 10],
        description="velocity will be projected in the set (UB-LB)*MaxVelocityFactor",
    ),
    Parameter(
        name="InitialDelta",
        value=20.0,
        tuning_range=[1, 100],
        description="initial pattern search grid step",
    ),
    Parameter(
        name="DeltaIncreseFactor",
        value=2.0,
        tuning_range=[1, 10],
        description="Delta will be increased by this factor",
        info="(on successful poll steps)",
    ),
    Parameter(
        name="DeltaDecreaseFactor",
        value=0.5,
        tuning_range=[0, 1],
        description="Delta will be decreased by this factor",
        info="(on unsuccessful poll steps)",
    ),
    Parameter(
        name="InitialDeltaFactor",
        value=5.0,
        tuning_range=[1, 10],
        description="initial Delta is min(UB-LB)*InitialDeltaFactor",
    ),
    Parameter(
        name="DegTolerance",
        value=0.001,
        tuning_range=[0, 1],
        description="degenerancy tolerance",
    ),
    Parameter(
        name="LinearStepSize",
        value=1,
        optimization_type="categorical",
        tuning_range=[0, 1, 2],
        description="projection type on search step",
        info="""
(particle swarm).
0: no step size used on velocity equation
1: maximum step size if computed
2: maximum Step Size if computed and velocity is truncated
   for linear constraints
""",
    ),
    Parameter(
        name="EpsilonActive",
        value=0.1,
        tuning_range=[0, 1],
        description="precision used to compute linear epsilon active constraints",
    ),
    Parameter(
        name="TangentCone",
        value=4,
        optimization_type="categorical",
        tuning_range=[0, 1, 2, 3, 4],
        description="tangent cone type",
        info="""
0: SID-PSM like version
1: NOMAD like version
2: SID-PSM adapted (active constraints changes)
3: NullSpace version
4: Simple QR factorization
        """,
    ),
    Parameter(
        name="Trials",
        value=1000,
        tuning_range=[10, 10000],
        description="number of trials in generating initial guess",
    ),
    Parameter(
        name="MVETrials",
        value=10,
        tuning_range=[1, 1000],
        description="number of trials in generating initial population",
    ),
    Parameter(
        name="SearchType",
        value=1,
        optimization_type="categorical",
        tuning_range=[0, 1, 2, 3],
        description="search step type",
        info="""
0: no search
1: particle swarm
2: RBF
3: quadratic model with minimal Frobenius norm
        """,
    ),
    Parameter(
        name="MFNAlgo",
        value=1,
        optimization_type="categorical",
        tuning_range=[1, 2],
        description="algorithm to use to generate quadratic model",
        info="""
1: DCA
2: fmincon
""",
    ),
    Parameter(
        name="RBFAlgo",
        value=1,
        optimization_type="categorical",
        tuning_range=[1, 2],
        description="algorithm to be used to minimize the objective function",
        info="""
1: DCA
2: fmincon
""",
    ),
    Parameter(
        name="RBFPoints",
        value=1,
        optimization_type="categorical",
        tuning_range=[0, 1],
        description="use all cached points to build RBF model",
        info="otherwise uses only single point in the poll step",
    ),
    Parameter(
        name="PollSort",
        value=0,
        optimization_type="categorical",
        tuning_range=[0, 1],
        description="sort by model in poll step",
    ),
    Parameter(
        name="TRType",
        value=0,
        optimization_type="categorical",
        tuning_range=[0, 1],
        description="trust region type",
        info="""
0: based on the grid parameter
1: based on ratio
""",
    ),
    Parameter(
        name="DCARhoFactor",
        value=5e-3,
        tuning_range=[0, 1],
        description="forcing factor in the DC algorithm",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
