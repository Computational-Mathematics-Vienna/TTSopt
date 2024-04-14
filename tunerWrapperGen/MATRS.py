from generator.generator import Parameter, Solver

name = "MATRS"

paths = ["/MATRS"]

preparation = """
x = options.x;
clow = bounds.low;
cupp = bounds.upp;

type = strjoin(bounds.type, '');
index_int = cat(2, strfind(type,'i'));

st.secmax = inf;
st.nf_max = inf;
st.qf = 1e-4;
st.fbest = 0
st.prt = 0;

ctune = [];
itune = [];
"""

call = """
[xbest, fbest, ~] = MATRS(fun,x,indInt,st,ctune,itune);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
#solver.write_tuner("../TUNERS/")
