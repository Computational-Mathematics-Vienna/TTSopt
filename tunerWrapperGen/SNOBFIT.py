from generator.generator import Parameter, Solver

name = "SNOBFIT"

paths = ["/SNOBFIT"]

preparation = """
x = options.x;
n = length(x);
upp = bounds.upp;
low = bounds.low;

params = struct();
params.npoint = n + 6;
params.nreq = 1;
params.random_start = 1;
params.p = 0.5;


params.file = '';
params.bounds = {low, upp};
params.prt = 0;
params.dx = eps * ones(n);

% computes random starting points if required
if params.random_start
  x = rand(params.npoint, n);
  x = x * diag(upp - low) + ones(params.npoint,1) * low';
end

% function values (if necessary with additive noise)
f = zeros(params.npoint,2);
for j = 1 : params.npoint
  f(j,:) = [funf(x(j,:)'), 0];
end
"""

call = """
% repeated calls to SNOBFIT until call function values are reached
ncall = params.npoint;
while ncall < options.nfmax + 1
  if ncall == params.npoint  % initial call
    [request, xbest, fbest] = ...
      snobfit(params.file, x, f, params, params.dx);
  else % continuation call
    [request, xbest, fbest] = ...
      snobfit(params.file, x, f, params);
  end

  % computation of the function values at the suggested points
  clear x;
  clear f;
  for j = 1 : size(request,1)
    x(j,:) = request(j,1:n);
    f(j,:) = [funf(x(j,:)'), 0];
  end
  ncall = ncall + size(f,1); % update function call counter  
end % of while loop

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="npoint",
        value=10,
        tuning_range=[1, 100],
        description="number of initial points",
    ),
    Parameter(
        name="random_start",
        value=1,
        tuning_range=[0, 1],
        optimization_type="categorical",
        description="random starting points",
    ),
    Parameter(
        name="nreq",
        value=1,
        tuning_range=[1, 10],
        description="number of points to be generated",
    ),
    Parameter(
        name="p",
        value=0.5,
        tuning_range=[0, 1],
        description="probability that a point of type 4 is generated",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
