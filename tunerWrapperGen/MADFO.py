from generator.generator import Parameter, Solver

name = "MADFO"

paths = ["/MADFO"]

preparation = """
low = bounds.low;
upp = bounds.upp;

x = options.x;

% getfg enforces the stopping tests
st.secmax = 1e8;
st.nfmax = 1e8;
st.accf = -inf;
st.ftarget = 0;
st.prt = -1;
st.m = length(x);
st.n = 1;

if TuneCase == -1
   tune = params;
   %tune.lambda = tune.lambdaCoeff1+floor(tune.lambdaCoeff2*log(length(x)));
   %tune.E = tune.E_coeff1+tune.E_coeff2*log(length(x));
   %tune.sigmamax = tune.sigmamax_coeff1+tune.sigmamax_coeff2*log(length(x));
   %tune.gammaE = tune.gammaE_coeff1+tune.gammaE_coeff2*log(length(x));
else
   tune = [];
end
"""

call = """

[xbest,fbest,~] = MADFO(@funf,x,st,tune)

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

params = [
    Parameter(
        name="lambda",
        value= 5,
        tuning_range=[5,10],
        description="lambda",
        info="""
        lambda is the sample size
        """,
    ),
#    Parameter(
#        name="lambdaCoeff1",
#        value= 4,
#        tuning_range=[1,10],
#        description="lambda coefficient 1",
#        info="""
#        lambda is the sample size
#        lambda = lambdaCoeff1 + floor(lambdaCoeff2*log(dim))
#        """,
#    ),
#    Parameter(
#        name="lambdaCoeff2",
#        value= 5,
#        tuning_range=[1,10],
#        description="lambda coefficient 2",
#        info="""
#        lambda is the sample size
#        lambda = lambdaCoeff1 + floor(lambdaCoeff2*log(dim))
#        """,
#    ),
    Parameter(
        name="mu",
        value=2,
        tuning_range=[1,4],
        description="mu",
    ),
    Parameter(
        name="gammaE",
        value= 4.0,
        tuning_range=[1,10],
        description="parameter for expanding step size",
    ),
#    Parameter(
#        name="gammaE_coeff1",
#        value= 9.0,
#        tuning_range=[1.1,10],
#        description="coefficient 1 for parameters for expanding step size",
#    ),
#    Parameter(
#        name="gammaE_coeff2",
#        value= 8.0,
#        tuning_range=[1.1,10],
#        description="coefficient 2 for parameters for expanding step size",
#    ),
    Parameter(
        name="E",
        value=1e8,
        tuning_range=[2,1e8],
        description="maximum iterations of extrapolation step",
    ),
#    Parameter(
#        name="E_coeff1",
#        value=1e5,
#        tuning_range=[2,1e8],
#        description="coefficient for maximum iterations of extrapolation step",
#    ),
#    Parameter(
#        name="E_coeff2",
#        value=1e5,
#        tuning_range=[2,1e8],
#        description="coefficient for maximum iterations of extrapolation step",
#    ),
    Parameter(
        name="sigmainit",
        value=1.0,
        tuning_range=[1,10],
        description="initial step size",
    ),
    Parameter(
        name="gamma",
        value=1e-12,
        optimization_type = "log",
        tuning_range=[1e-20,1e-6],
        description="parameter for line search condition",
    ),
    Parameter(
        name="sigmamin",
        value=1e-2,
        tuning_range=[1e-20,1],
        description="minimum threshold for sigma",
    ),
    Parameter(
        name="sigmamax",
        value=0.5,
        tuning_range=[0.2,100],
        description="maximum value for sigma",
    ),
#    Parameter(
#        name="sigmamax_coeff1",
#        value=0.5,
#        tuning_range=[0.2,100],
#        description="coefficient 1 for maximum value for sigma",
#    ),
#    Parameter(
#        name="sigmamax_coeff2",
#        value=0.5,
#        tuning_range=[0.2,100],
#        description="coefficient 2 for maximum value for sigma",
#    ),
    Parameter(
        name="kappa",
        value=5,
        tuning_range=[1,10],
        description="factor for the memory of the non-monotone term ",
    ),
    Parameter(
        name="N",
        value=10,
        tuning_range=[1,10],
        description="to choose three vertices of the first triangle",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
