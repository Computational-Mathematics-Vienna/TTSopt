from generator.generator import Parameter, Solver

name = "DFLINT"

paths = ["/DFLint"]

preparation = """
x = options.x;
lb = bounds.low;
ub = bounds.upp;

m = 0;  % always unconstrained
max_fun = 1e8;
outlev = -1;

% solver does not define defaults
if ~isfield(params, 'alg'), params.alg = solverParams{1}.alg;
end
if ~isfield(params, 'M'), params.M = solverParams{1}.M;
end
"""

call = """
[xbest, fbest, ~, ~] = box_DFL(params.alg, @funf, m, params.M, ...
  x, lb, ub, max_fun, outlev);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="alg",
        value="BBOA",
        tuning_range=["BBOA", "DCS", "FS"],
        description="which algorithm to use",
        info="'BBOA', 'DCS' or 'FS'",
    ),
    Parameter(
        name="M",
        value=1,
        tuning_range=[1, 10],
        description="dimension of the memory for non-monotone search",
        info="must be >= 1",
    ),
]

tune_cases = [
    [Parameter("alg", "BBOA")],
    [Parameter("alg", "DCS")],
    [Parameter("alg", "FS")],
]


solver = Solver(name, params, paths, preparation, call, tune_cases)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
