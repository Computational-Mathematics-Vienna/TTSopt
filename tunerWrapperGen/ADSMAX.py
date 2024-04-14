from generator.generator import Parameter, Solver

name = "ADSMAX"

paths = ["/ADSMAX"]

preparation = """
stopit = [-10e8, 10e8, 10e8, 0];
x = options.x;

if TuneCase == -1
  %params.mu = params.muCoeff1+floor(params.muCoeff2*log(length(x)));
end
"""

call = "output.solverInfo = adsmax(@(x)funf(x)*-1, x, stopit, params);"

params = [
    Parameter(
        name="mu",
        value=1e-4,
        tuning_range=[0, 1],
        description="mu is the initial percentage change in components",
    ),
#    Parameter(
#        name="muCoeff2",
#        value=0,
#        tuning_range=[0, 1],
#        description="mu is the initial percentage change in components",
#    ),
    Parameter(
        name="nstep",
        value=0,
        tuning_range=[1, 100],
        description="max number of times to double or decrease step size",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
