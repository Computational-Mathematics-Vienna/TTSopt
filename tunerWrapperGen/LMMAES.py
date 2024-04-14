from generator.generator import Parameter, Solver

name = "LMMAES"

paths = ["/LMMAES"]

preparation = """
x = options.x;

stepsize_stop = 1e-50;
f_stop = -inf;
g_stop = 1e8;
opt = 'minimization';

% solver does not set defaults itself
if TuneCase == 0, params = solverParams{1}; end

%params.sigma_init = params.sigma_init_coeff1 + params.sigma_init_coeff2*log(length(x));
"""

call = """
[xbest, ~, ~] = ...
  LM_MA_ES(@funf, params.mu, params.lambda, params.gamma, x, ...
    params.sigma_init, stepsize_stop, f_stop, g_stop, opt);

output.solverInfo.xbest = xbest;
"""

params = [
    Parameter(
        name="lambda",
        value=20,
        tuning_range=[1, 100],
        description="offspring population size",
    ),
    Parameter(
        name="mu",
        value=10,
        tuning_range=[1, 100],
        description="parental population size",
    ),
    Parameter(
        name="gamma",
        value=20,
        tuning_range=[1, 100],
        description="number of path vectors used",
    ),
    Parameter(
        name="sigma_init",
        value=1.0,
        tuning_range=[0, 10],
        description="initial mutation stregth sigma",
    ),
#    Parameter(
#        name="sigma_init_coeff1",
#        value=1.0,
#        tuning_range=[0, 10],
#        description="coefficient 1 for initial mutation stregth sigma",
#    ),
#    Parameter(
#        name="sigma_init_coeff2",
#        value=1.0,
#        tuning_range=[0, 10],
#        description="coefficient 2 for initial mutation stregth sigma",
#    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
