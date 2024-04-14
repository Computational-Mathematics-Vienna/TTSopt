from generator.generator import Parameter, Solver

name = "VRBBO"

paths = ["/VRBBO"]

preparation = """
x = options.x;

st.secmax = inf;
st.nfmax = 1e8;
st.fbest = -inf;
st.accf = -inf;
st.prt = -1;
"""

call = """
[xbest, fbest, ~] = VRBBO(@funf, x, st, params);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="msmax",
        value=21,
        tuning_range=[5, 100],
        description="maximum number of best points kept",
    ),
    Parameter(
        name="mqmax",
        value=20,
        tuning_range=[5, 100],
        description="maximum number of memory for L-BFGS",
    ),
    Parameter(
        name="T0",
        value=42,
        tuning_range=[1, 100],
        description="maximal number of multi-line searches in setScales",
    ),
    Parameter(
        name="alg",
        value=5,
        optimization_type="categorical",
        tuning_range=[1,2,3,4,5],
        description="type of algorithm to use",
        info="""
1: basic version
2: no random subspace direction
3: no coordinate direction
4: no quasi Newton direction
5: all directions
""",
    ),
    Parameter(
        name="R",
        value=20,
        tuning_range=[1, 100],
        description="number of random directions",
    ),
    Parameter(
        name="C",
        value=20,
        tuning_range=[1, 100],
        description="maximal number of coordinate trials",
    ),
    Parameter(
        name="S",
        value=1,
        tuning_range=[1, 20],
        description="maximal number of subspace directions in multi-line search",
    ),
    Parameter(
        name="E",
        value=10,
        tuning_range=[1, 1000],
        description="maximal number of random trials",
    ),
    Parameter(
        name="scSub",
        value=0.0,
        tuning_range=[0, 100],
        description="scale for subspace direction",
    ),
    Parameter(
        name="scCum",
        value=0.0,
        tuning_range=[0, 100],
        description="scale for cumulative direction",
    ),
    Parameter(
        name="scCor",
        value=0.0,
        tuning_range=[0, 100],
        description="scale for heuristic direction",
    ),
    Parameter(
        name="cum",
        value=1,
        optimization_type="categorical",
        tuning_range=[0, 1, 2],
        description="select cumulative step type",
    ),
    Parameter(
        name="a",
        value=2,
        optimization_type="categorical",
        tuning_range=[0, 1, 2],
        description="upper bound for estimating cumulative step-size",
    ),
    Parameter(
        name="Deltamin",
        value=1e-10,
        optimization_type="log",
        tuning_range=[0, 1],
        description="minimium threshold for good impovement",
    ),
    Parameter(
        name="Deltamax",
        value=1e-3,
        optimization_type="log",
        tuning_range=[0, 1],
        description="initial threshold for good impovement",
    ),
    Parameter(
        name="gammadelta",
        value=1e6,
        optimization_type = "log",
        tuning_range=[1, 1e8],
        description="factor for finding delta",
    ),
    Parameter(
        name="gammamax",
        value=1e-3,
        optimization_type="log",
        tuning_range=[1e-10, 1],
        description="factor for adjusting Deltamax",
    ),
    Parameter(
        name="gammaE",
        value=4.0,
        optimization_type="log",
        tuning_range=[1, 10],
        description="factor for extrapolation test",
    ),
    Parameter(
        name="gammalambda",
        value=1e-6,
        optimization_type = "log",
        tuning_range=[0, 1],
        description="factor for finding initial lambda",
    ),
    Parameter(
        name="gammaw",
        value=1e-10,
        optimization_type="log",
        tuning_range=[0, 1],
        description="factor for angle condition",
    ),
    Parameter(
        name="Q",
        value=2.0,
        optimization_type="log",
        tuning_range=[0, 10],
        description="factor for adjusting delta",
    ),
    Parameter(
        name="gammaangle",
        value=1e-10,
        optimization_type="log",
        tuning_range=[0, 1],
        description="factor for angle condition",
    ),
    Parameter(
        name="deltamin",
        value=1e-4,
        optimization_type = "log",
        tuning_range=[0, 1],
        description="minimum norm of trial step",
    ),
    Parameter(
        name="deltamax",
        value=0.1,
        optimization_type="log",
        tuning_range=[0, 1],
        description="maximum norm of trial step",
    ),
    Parameter(
        name="alphamin",
        value=1e-50,
        optimization_type="log",
        tuning_range=[0, 1],
        description="minimium threshold for extrapolation step sizes",
    ),
    Parameter(
        name="gammamin",
        value=1e-6,
        optimization_type="log",
        tuning_range=[0, 1],
        description="parameter for extrapolation test",
    ),
]

solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
