from generator.generator import Parameter, Solver

name = "SSBBO"

paths = ["/SSBBO"]

preparation = """
x = options.x;

% getfg enforces the stopping tests
st.secmax = inf;
st.nfmax  = 10e8;
st.accf   = -inf;
st.fbest  = -inf;
st.prt    = -1;
"""

call = """
[~, ~, info] = SSBBO(@funf, x, st, params);
output.solverInfo = info;
"""


params = [
    Parameter(
        name="DiffMaxChange",
        value=0.1,
        tuning_range=[0.01, 0.1],
        description="maximal value for the finite difference step size",
    ),
    Parameter(
        name="DiffMinChange",
        value=1e-8,
        optimization_type="log",
        tuning_range=[1e-9, 1e-7],
        description="minimal value for the finite difference step size",
    ),
    Parameter(
        name="rho",
        value=1e-4,
        optimization_type="log",
        tuning_range=[1e-5, 1e-3],
        description="line search parameter",
    ),
    Parameter(
        name="sigma",
        value=0.9,
        tuning_range=[0.1, 0.9],
        description="line search parameter",
    ),
    Parameter(
        name="mem",
        value=10,
        tuning_range=[2, 10],
        description="subspace dimension",
    ),
    Parameter(
        name="eps1",
        value=1e-8,
        optimization_type="log",
        tuning_range=[1e-10, 1e-6],
        description="tiny parameter for adjusting the initial df",
    ),
    Parameter(
        name="gammaf1",
        value=0.5,
        optimization_type="log",
        tuning_range=[1e-2, 0.99],
        description="parameter for reducing df",
    ),
    Parameter(
        name="gammaf2",
        value=2,
        tuning_range=[1, 3],
        description="parameter for expanding df",
    ),
    Parameter(
        name="gammaf3",
        value=1e-12,
        optimization_type="log",
        tuning_range=[1e-15, 1e-10],
        description="parameter for reducing df",
    ),
    Parameter(
        name="Deltaangle",
        value=1e-13,
        optimization_type="log",
        tuning_range=[1e-15, 1e-10],
        description="regularization angle",
    ),
    Parameter(
        name="deltaa",
        value=1e-8,
        optimization_type="log",
        tuning_range=[1e-10, 1e-6],
        description="tiny factor for starting the step",
    ),
]

tune_cases = [[Parameter("mem", 5)], [Parameter("mem", 10)]]


solver = Solver(name, params, paths, preparation, call, tune_cases)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
