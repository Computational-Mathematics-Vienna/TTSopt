"""Example usage of wrapper and tuner generation."""

# imports the parameter and solver class from the generator
# depending on where your script lies this may need adjustment
# like `from subfolder.generator import Parameter, Solver`
from generator import Parameter, Solver

# sets name of the solver
name = "SOLVER"

# list of paths that will be loaded into the workspace if wrapper is called
paths = ["bbo/SOLVER", "bbo/SOLVER/subfolder"]

# how the input arguments of the solver are prepared
# a multiline string can be used for nicer formatting
# since trailing whitespace is stripped
preparation = """
params.maxeval = inf;  % disables stopping criterion
x = options.x;         % initial point
"""

# how the solver is called and the output prepared
call = """
[xbest, fbest, ~] = SOLVER(@funf, x, params);

output.solverInfo.xbest = xbest;
output.solverInfo.fbest = fbest;
"""

# defines the tuning parameters in a list
params = [
    # defines a parameter with a name, default value that is a float and
    # thus interpreted as a continuous variable,
    # tuning_range that is the minimum and maximum value it can attain,
    # a short description and some additional info that spans over multiple lines
    # lines that are longer than 72 chars will be broken into more lines
    Parameter(
        name="param1",
        value=3.14,
        tuning_range=[1, 10],
        description="description 1",
        info="""
additional info that spans over multiple lines
and long lines will be broken to not go over the default line limit that is set to 72 characters by default
""",
    ),
    # integer parameter that is automatically treated as such by the tuner
    Parameter(
        name="param2", value=20, tuning_range=[1, 1000], description="description 2",
    ),
    # string parameter that is automatically interepreted as a categorical variable
    # for the tuning_range one has to specify all options
    Parameter(
        name="param3",
        value="some_option_1",
        tuning_range=["some_option_1", "some_option_2", "some_option_3"],
        description="description 3",
    ),
    # the following parameter uses the MATLAB constant eps as its default value
    # since python does not know about eps we provide it as a string
    # but now we need to manually specify that it should be treated as a float
    Parameter(
        name="param4",
        value="eps",
        tuning_range=[0, 1],
        input_type=float,
        description="description 4",
    ),
    # the following parameter uses integers as categorical variables
    # so we need to specify that it should be treated as such by manually
    # specifying the optimization type
    Parameter(
        name="param5",
        value=1,
        tuning_range=[1, 2, 3, 4, 5],
        optimization_type="categorical",
        description="description 5",
    ),
]

# specifies more predefined parameter options that can be used when calling the solver
# for these options one just needs to provide the parameter names and values
tune_cases = [
    [Parameter("param1", 3.14), Parameter("param3", "some_option_2"),],
    [Parameter("param5", 2), Parameter("param4", 1e-8)],
]

# creates the solver instance with arguments we just defined
solver = Solver(name, params, paths, preparation, call, tune_cases)

# writes wrapper and tuner in the root directory of the workspace
solver.write_wrapper()
solver.write_tuner()
