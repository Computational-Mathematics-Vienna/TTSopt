from generator.generator import Parameter, Solver

name = "SDBOX"

paths = ["/SDBOX/MATLAB2"]

preparation = """
params.verbose = 0;
params.maxiter = 1e8;
params.maxfeval = 1e8;
params.tol = -inf;

x = options.x;
low = bounds.low;
upp = bounds.upp;
"""

call = """
output.solverInfo = sdbox(x, low, upp, params, @funf);
"""

params = [
    Parameter(
        name="gamma",
        value=1e-6,
        optimization_type="log",
        tuning_range=[1e-8, 1e-4],
        description="line search parameter",
    ),
    Parameter(
        name="theta",
        value=0.5,
        tuning_range=[0, 1],
        description="line search multiplier",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
