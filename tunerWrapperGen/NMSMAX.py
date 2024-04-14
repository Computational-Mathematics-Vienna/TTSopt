from generator.generator import Parameter, Solver

name = "NMSMAX"

paths = ["/NMSMAX"]

preparation = """
stopit = [-inf, 1e8, 1e8, 0];
x = options.x;
"""

call = """
output.solverInfo = nmsmax(@(x)funf(x)*-1, x, stopit, params);
"""

params = [
    Parameter(
        name="simplex_form",
        value=0,
        tuning_range=[0, 1],
        optimization_type="categorical",
        description="determines the form of the initial simplex",
        info="""
0: regular simplex (sides of equal length)
1: right-angled simplex
""",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
