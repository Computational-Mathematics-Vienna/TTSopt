from generator.generator import Parameter, Solver

name = "MDSMAX"

paths = ["/MDSMAX"]

preparation = """
stopit = [-inf, 1e8, inf, 0];
x = options.x;

if TuneCase == -1
   params.mu = params.muCoeff1+params.muCoeff2*length(x);
   params.theta = params.thetaCoeff1+params.thetaCoeff2*length(x);
"""

call = "output.solverInfo = mdsmax(@funf, x, stopit, params);"

params = [
    Parameter(
        name="simplex_form",
        value=1,
        tuning_range=[1, 1],
        optimization_type="fix",
        description="determines the form of the initial simplex",
        info="""
0: regular simplex (sides of equal length)
1: right-angled simplex
""",
    ),
    Parameter(
        name="muCoeff1",
        value=2.0,
        tuning_range=[1, 10],
        description="Coefficient1 for expansion factor mu = coeff1+coeff2*n",
    ),
    Parameter(
        name="muCoeff2",
        value=2.0,
        tuning_range=[1, 10],
        description="Coefficient2 for expansion factor mu = coeff1+coeff2*n",
    ),
    Parameter(
        name="thetaCoeff1",
        value=0.5,
        tuning_range=[0, 1],
        description="Coefficient1 for contraction factor theta = coeff1+coeff2*n",
    ),
    Parameter(
        name="thetaCoeff2",
        value=0.5,
        tuning_range=[0, 1],
        description="Coefficient2 for contraction factor theta = coeff1+coeff2*n",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
