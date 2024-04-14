from generator.generator import Parameter, Solver

name = "FMINUNC"

paths = ["/FMINUNCL"]

preparation = """
x = options.x;

opts = optimoptions(@fminunc, ...
  'Algorithm', 'quasi-newton', ...
  'Display', 'off', ...
  'Diagnostics', 'off', ...
  'MaxIter', inf, ...
  'MaxFunEvals', inf, ...
  'TolX', 0, ...
  'TolFun', 0, ...
  'ObjectiveLimit', -1e-50, ...
  'DiffMaxChange', inf, ...
  'DiffMinChange', 0);
"""

call = """
[xbest, fbest] = fminunc(@funf, x, opts);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = []


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper()
# solver.write_tuner()
