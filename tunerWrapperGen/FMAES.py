from generator.generator import Parameter, Solver

name = "FMAES"

paths = ["/FMAES"]

preparation = """
y_init = options.x;
stepsize_stop = 1e-20;
f_stop = 0;
g_stop = 1e8;
opt = 'minimization';

n = length(y_init);
if TuneCase == 0
  lambda = 4 + floor(3*log(n));
  mu = 2 + floor(1.5*log(n));
  sigma_init = 1;
else
  lambda = params.lambda;
  mu = params.mu;
  sigma_init = params.sigma_init;
  %sigma_init = params.sigma_init_coeff1+params.sigma_init_coeff2*log(length(x));
end
"""

call = """
[xbest, fbest, ~] = fMAES(@funf, mu, lambda, y_init, ...
  sigma_init, stepsize_stop, f_stop, g_stop, opt);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="lambda",
        value=20,
        tuning_range=[11, 100],
        description="offspring population size",
    ),
    Parameter(
        name="mu",
        value=10,
        tuning_range=[1, 10],
        description="parental population size",
    ),
    Parameter(
        name="sigma_init",
        value=0,
        tuning_range=[0, 2],
        description="""
sigma_init=sigma_init_coeff1+sigma_init_coeff2*log(n) is the initial mutation stregth""",
    ),
#    Parameter(
#        name="sigma_init_coeff2",
#        value=1.0,
#        tuning_range=[0, 2],
#        description="""
#sigma_init=sigma_init_coeff1+sigma_init_coeff2*log(n) is the initial mutation stregth""",
#    ),
]

solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
