from generator.generator import Parameter, Solver

name = "DFLBOX"

paths = ["/DFLBOX"]

preparation = """
x = options.x;
ilow = bounds.ilow;
iupp = bounds.iupp;
clow = bounds.clow;
cupp = bounds.cupp;

Ic = options.Ic;
Ii = options.Ii;
      
low  = zeros(length(x),1);
upp  = zeros(length(x),1);
      
if ~isempty(Ic)
  low(Ic)=clow;
  upp(Ic)=cupp;
end
if ~isempty(Ii)
  low(Ii)=ilow;
  upp(Ii)=iupp;
end
      

type = strjoin(bounds.type, '');
index_int = cat(2, strfind(type,'i'));
scale_int = zeros(1, length(x));

alfa_stop = 1e-10;
nf_max = 1e8;
iprint = -inf;
finfo.un = 0;
"""

call = """
[xbest, fbest, ~, ~, ~] = sd_box(@funf, x, index_int, scale_int, ...
    low, upp, alfa_stop, nf_max, iprint);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="eta", value=1e-6, tuning_range=[0, 1], description="starting step size",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
