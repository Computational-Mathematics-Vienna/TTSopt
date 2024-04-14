from generator.generator import Parameter, Solver

name = "MCS"

paths = ["MCS", "MCS/gls2", "MCS/minq2"]

preparation = """
u = bounds.low;
v = bounds.upp;
nfmax = 1e8;
stop = -inf;
% prt becomes different argument when called with other arguments
if TuneCase==0, prt = []; else, prt = 0; end

x = options.x;
if ~isfield(params, 'smax'), params.smax = 5*length(x)+10; end
% smax is added here instead of the defaults above 
% because it uses the number of variables
"""

call = """
if TuneCase == 0
  [xbest, fbest, ~, ~, ~, ~, ~] = mcs(@funf, u, v, nfmax, prt);
else
  [xbest, fbest, ~, ~, ~, ~, ~] = ...
    mcs(@funf, u, v, nfmax, prt, params.smax, stop, params.iinit, ...
      params.local, params.gamma);
end

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="smax", value=50, tuning_range=[1, 1000], description="number of levels"
    ),
    Parameter(
        name="iinit",
        value=1,
        tuning_range=[0, 1, 2],
        optimization_type="categorical",
        description="parameter defining the initialization list",
        info="""
0: corners and midpoint (default for finite u, v)
1: safeguarded version (default otherwise)
2: 5u/6 + v/6, u/6 + 5v/6 and midpoint
""",
    ),
    Parameter(
        name="local",
        value=50,
        tuning_range=[0, 100],
        description="maximal number of steps in local search",
        info="0 means no local search",
    ),
    Parameter(
        name="gamma",
        value=1e-10,
        input_type=float,
        tuning_range=[1e-20, 1],
        description="stopping criterion for local search",
        info="stops if abs(g)'*max(abs(x), abs(xold)) < gamma*(f0-f)",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
