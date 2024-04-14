from generator.generator import Parameter, Solver

name = "VRBBON"

paths = ["/VRBBON"]

preparation = """
x = options.x;

params.deltamin = -inf;

st.secmax = 1e8;
st.nfmax = 1e8;
st.accf = -inf;
st.acc = -inf;
st.fbest = 0;
st.prt = -2;
"""

call = """
[xbest, fbest, ~] = VRBBON(@funf, x, st, params);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""



params = [
    Parameter(
        name="mmax",
        value=230,
        tuning_range=[1, 1000],
        description="maximum number of best points kept",
    ),
    Parameter(
        name="T0",
        value=5,
        tuning_range=[1, 20],
        description="maximal number of calls to RLS in DS",
    ),
    Parameter(
        name="R",
        value=20,
        tuning_range=[1, 100],
        description="number of random direction per subspace direction",
    ),
    Parameter(
        name="E",
        value=1000,
        input_type=int,
        tuning_range=[2, 1e6],
        description="maximal number of random trials",
    ),
    Parameter(
        name="deltamax",
        value=1.0,
        tuning_range=[1e-4, 1],
        description="initial step size",
    ),
    Parameter(
        name="gamma",
        value=1e-6,
        optimization_type="log",
        tuning_range=[1e-8, 1e-4],
        description="factor for adjusting forcing function",
    ),
    Parameter(
        name="gammaE",
        value=3.0,
        tuning_range=[1.1, 10],
        description="factor for extrapolation test",
    ),
    Parameter(
        name="gammaX",
        value=100.0,
        optimization_type="log",
        tuning_range=[10, 1000],
        description="factor for adjusting X",
    ),
    Parameter(
        name="gammaa",
        value=1e-5,
        optimization_type="log",
        tuning_range=[1e-8, 0.01],
        description="tiny factor for finding a robustified interval",
    ),
    Parameter(
        name="gammar",
        value=1e-30,
        optimization_type="log",
        tuning_range=[1e-30, 1e-8],
        description="factor for adjusting the random direction",
    ),
    Parameter(
        name="gammad1",
        value=0.1,
        tuning_range=[1e-10, 1],
        description="factors for contracting the trust region radius",
    ),
    Parameter(
        name="gammad2",
        value=2.0,
        tuning_range=[1, 10],
        description="factors for expanding the trust region radius",
    ),
    Parameter(
        name="gammav",
        value=100.0,
        optimization_type="log",
        tuning_range=[10, 1000],
        description="factor for adjusting sc and y",
    ),
    Parameter(
        name="alpmin",
        value=1e-4,
        tuning_range=[1e-8, 1],
        description="minimum step size in RLS",
    ),
    Parameter(
        name="Q",
        value=1.5,
        tuning_range=[1.25, 10],
        description="factor for adjusting delta",
    ),
    Parameter(
        name="dmin",
        value=1e-4,
        tuning_range=[1e-8, 1],
        description="minimum value for the trust region radius",
    ),
    Parameter(
        name="dmax",
        value=100.0,
        tuning_range=[1, 1000],
        description="maximum value for the trust region radius",
    ),
    Parameter(
        name="alow",
        value=0.01,
        optimization_type="log",
        tuning_range=[1e-4, 0.1],
        description="lower bound for initial interval",
    ),
    Parameter(
        name="aupp",
        value=0.99,
        tuning_range=[0.0001, 1],
        description="upper bound for initial interval",
    ),
    Parameter(
        name="gammap",
        value=0.25,
        tuning_range=[1e-10, 1],
        description="factor for adjusting the trust region direction",
    ),
    Parameter(
        name="minqeps",
        value=1e-8,
        optimization_type="log",
        tuning_range=[1e-12, 1e-4],
        description="minimum threshold for stopping minq8",
    ),
    Parameter(
        name="minqmax",
        value=10000,
        tuning_range=[1000, 100000],
        description="maximum number of iterations in minq8",
    ),
    Parameter(
        name="model",
        value=1,
        optimization_type="categorical",
        tuning_range=[0, 1],
        description="use quadratic model otherwise linear model",
    )
]

solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
