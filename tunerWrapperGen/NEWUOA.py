from generator.generator import Parameter, Solver

name = "NEWUOA"

paths = ["/Powell/matlab/interfaces"]

preparation = """
x = options.x;

params.maxfun = options.nfmax + 1;
params.ftarget = -inf;
params.quiet = true;
params.classical = false;
params.debug = false;
params.chkfunval = false;
"""

call = """
[xbest, fbest, ~, ~] = newuoa(@funf, x, params);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="npt",
        value=20,
        tuning_range=[1, 100],
        description="number of points for quadratic approximation",
    ),
    Parameter(
        name="rhobeg",
        value=1.0,
        tuning_range=[1, 10],
        description="initial trust region radius",
    ),
    Parameter(
        name="rhoend",
        value=1e-6,
        tuning_range=[1e-8, 1e-4],
        description="final trust region radius",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
