"""Defines Parameter and Solver classes for writing wrapper and tuner files.

To write a wrapper and/or tuner for a solver, make a new python file
(version >= 3.6, tested on 3.9) and import the `Solver` and `Parameter`
classes from the generator.

Specify tuning parameters by creating a list with instances of the
`Parameter` class.

Create an instance of `Solver` and call the methods `write_wrapper()` or
`write_tuner()` on it.

If there is a change in all wrappers or tuner then edit the templates
and run all the scripts again.
If there is a change in a solver then only change the corresponding
script file and run it again.

See `example.py` for a showcase of an ideal structure for such a script.
The files `wSOLVER.m` and `tSOLVER.m` were generated with this script.



Author: Maximilian Stollmayer, maximilian.stollmayer@univie.ac.at

modified by Romana Jezek
"""

from math import floor, log10
from typing import List, Optional
import sys
import os

sys.path.append(os.path.dirname(os.path.realpath(__file__)))

from utils import write_file, indent, reformat
from data import (
    ParameterValue,
    MAX_LINE_LENGTH,
    WRAPPER_PREFIX,
    TUNER_PREFIX,
    PARAM_STRUCT_NAME,
    TUNING_ARRAY_NAME,
    NAME_ARRAY_NAME,
    OPT_NUMBER_ARRAY_NAME,
    PATH_PREFIX,
    WRAPPER_TEMPLATE,
    TUNER_TEMPLATE,
    WRAPPER_KEYWORDS,
    TUNER_KEYWORDS,
    INPUT_TYPES,
    OPT_TYPES,
    INPUT_OPT_DICT,
    INPUT_NAMES_DICT,
    OPT_NUMBERS_DICT,
)


class Parameter:
    """Stores info about a solver's tuning parameter.

    Arguments
    ---------
    name : str
        Required argument that specifies the name of the parameter.
    value : float | int | str
        Required argument with a predefined value of the parameter.
    tuning_range : list(float | int | str)
        Optional argument that specifies the interval of continuous or integer
        tuning variables or all the options of categorical ones.
        Defaults to empty list.
    input_type : type
        Optional argument that specifies what kind of values the parameter takes.
        Must be `float`, `int` or `str`.
        Defaults to type of given `value`.
    optimization_type : str
        Optional argument that specifies how the variable is treated when tuning.
        Must be `"continuous"`, `"integer"` or `"categorical"`.
        Default depends on type of given `value` as follows:
        `float` -> `"continuous"`,
        `int` -> `"integer"`,
        `str` -> `"categorical"`
    description : str
        Optional argument that specifies a short description of the parameter
        and should fit into half a line.
        Defaults to empty string.
    info : str
        Optional argument that provides more information than the description.
        Will be broken into multiple lines if necessary.
        Defaults to empty string.

    Raises
    ------
    TypeError
        If given `value` or `input_type` is not `float`, `int` or `str`.
    ValueError
        If given `optimization_type` is not `"continuous"`, `"integer"` or `"categorical"`.
    """

    def __init__(
        self,
        name: str,
        value: ParameterValue,
        tuning_range: List[ParameterValue] = [],
        input_type: Optional[type] = None,
        optimization_type: Optional[str] = None,
        description: str = "",
        info: str = "",
    ) -> None:
        self.name = name.strip()
        self.value = value
        self.tuning_range = tuning_range
        self.description = description.strip().replace("'", '"')
        self.info = info.strip().replace("'", '"')

        # sets input type
        if input_type is None:
            self.input_type = type(value)
        else:
            self.input_type = input_type
        # validates input type
        if self.input_type not in INPUT_TYPES:
            raise TypeError(
                f"{self.input_type} is not an allowed parameter input type. Must be in {INPUT_TYPES}."
            )

        # sets optimization type
        if optimization_type is None:
            self.opt_type = INPUT_OPT_DICT[self.input_type]
        else:
            self.opt_type = optimization_type
        # validates optimization type
        if self.opt_type not in OPT_TYPES:
            raise ValueError(
                f"{self.opt_type} is not an allowed parameter optimization type. Must be in {OPT_TYPES}."
            )


class Solver:
    """Stores info about a solver and defines methods for writing its wrapper and tuner.

    Arguments
    ---------
    name : str
        Required argument that specifies the name of the solver.
    params : list(Parameter)
        Optional argument that defines all the tuning parameters.
        Defaults to empty list.
    paths : list(str)
        Optional argument that specifies all paths of the solver
        which are needed for calling it and will be added to the workspace.
        Defaults to empty list.
    preparation : str
        Optional argument that is valid MATLAB code, which is needed
        to prepare all input options of the solver.
        Defaults to empty string.
    call : str
        Optional argument that is valid MATLAB code, which calls the solver
        and processes the output as needed.
        Defaults to empty string.
    tune_cases : list(list(Parameter))
        Optional argument that specifies more predefined parameter options
        that can be selected when calling the wrapper.
        Defaults to empty list.

    Methods
    -------
    write_wrapper(save_path) : writes wrapper to file w<SOLVER>.m
        save_path : str
            Optional path to which the wrapper will be saved.
            Defaults to path that the script is executed from.

    write_tuner(save_path) : writes tuner to file t<SOLVER>.m
        save_path : str
            Optional path to which the wrapper will be saved.
            Defaults to path that the script is executed from.
    """

    def __init__(
        self,
        name: str,
        params: List[Parameter] = [],
        paths: List[str] = [],
        preparation: str = "",
        call: str = "",
        tune_cases: List[List[Parameter]] = [],
    ) -> None:
        self.name = name.strip()
        self.params = params
        self.paths = paths
        self.preparation = preparation.strip()
        self.call = call.strip()
        self.tune_cases = tune_cases

    def header_line(self, filename: str) -> str:
        """Returns filled comment line with filename in center."""
        return (" " + filename + " ").center(MAX_LINE_LENGTH, "%")

    def parameter_descs(
        self, prefix: str = "", suffix: str = "", empty_line: str = ""
    ) -> str:
        """Returns parameter descriptions with given prefix and suffix."""
        if not self.params:
            return empty_line

        descs: List[str] = []
        for param in self.params:
            # adds quotes to string parameter values
            if param.input_type == str:
                default = f"'{param.value}'"
            else:
                default = param.value

            # "name (type): default"
            desc = [
                prefix
                + f".{param.name} ({INPUT_NAMES_DICT[param.input_type]}): {default}".replace(
                    "'", '"'
                )
                + suffix
            ]
            # description line
            if param.description:
                desc.append(
                    reformat(
                        param.description,
                        initial_prefix=prefix + indent(1),
                        prefix=prefix + indent(1),
                        suffix=suffix,
                        terminal_suffix=suffix,
                        wrap=True,
                    )
                )
            # info lines
            if param.info:
                desc.append(
                    reformat(
                        param.info,
                        initial_prefix=prefix + indent(1),
                        prefix=prefix + indent(1),
                        suffix=suffix,
                        terminal_suffix=suffix,
                        wrap=True,
                    )
                )
            # joins description of parameter and append to list of all
            descs.append("\n".join(desc))

        return f"\n{empty_line}\n".join(descs)

    def wrapper_docstring(self) -> str:
        """Returns the parameter descriptions for the wrapper docstring."""
        prefix = "% " + indent(2)
        return self.parameter_descs(prefix=prefix, empty_line="%")

    def wrapper_desc_output(self) -> str:
        """Returns the parameter descriptions for the wrapper output."""
        prefix = "'" + indent(2)
        suffix = "',..."
        empty_line = "' ',..."
        return self.parameter_descs(prefix, suffix, empty_line)

    def parameter_cases(self) -> str:
        """Returns predefined parameter cases."""
        cases = [self.params]
        cases.extend(self.tune_cases)
        if cases == [[]]:
            return ""

        # constructs list of lines
        lines: List[str] = []
        for case in cases:
            # constructs list of keyword-value-pair strings
            entries: List[str] = []
            for param in case:
                # adds quotes to string parameter values
                if param.input_type == str:
                    value = f"'{param.value}'"
                else:
                    value = param.value
                entries.append(f"'{param.name}',{value}")
            lines.append(", ".join(entries))

        # constructs all code lines for each case
        paragraphs: List[str] = []
        for i, line in enumerate(lines):
            paragraph = reformat(
                line,
                initial_prefix=indent(1) + f"{PARAM_STRUCT_NAME}{{{i+1}}} = struct(",
                prefix=indent(2),
                terminal_suffix=");",
                wrap=True,
            )
            if len(paragraph.splitlines()) >= 2:
                paragraph = reformat(paragraph, suffix="...")
            paragraphs.append(paragraph)

        return "\n".join(paragraphs)

    def number_of_cases(self) -> str:
        """Returns number of defined parameter cases."""
        n_cases = len(self.tune_cases)
        if self.params:
            n_cases += 1
        return str(n_cases)

    def path_evals(self) -> str:
        """Returns the eval statements of the paths to be added to the workspace."""
        evals: List[str] = []
        for path in self.paths:
            slash = "/" if path[0] != "/" else ""
            evals.append(f"eval(['addpath ',{PATH_PREFIX},'{slash}{path}']);")
        lines = "\n".join(evals)
        return reformat(lines, initial_prefix=indent(3), prefix=indent(3))

    def tuner_docstring(self) -> str:
        """Returns parameter descriptions for the tuner docstring."""
        descs: List[str] = []
        entries: List[str] = []
        for param in self.params:
            desc = f"{param.name}: {param.description}"
            descs.append(
                reformat(desc, initial_prefix="% ", prefix="% " + indent(1), wrap=True)
            )
            if param.input_type == str:
                val = f"'{param.value}'"
            else:
                val = str(param.value)
            entries.append(f"'{param.name}',{val}")
        desc_lines = "\n".join(descs)
        def_lines = reformat(
            ", ".join(entries),
            initial_prefix=f"% {PARAM_STRUCT_NAME} = struct(",
            prefix="% " + indent(1),
            terminal_suffix=")",
            wrap=True,
        )
        if len(def_lines.splitlines()) >= 2:
            def_lines = reformat(def_lines, suffix="...")
        return desc_lines + "\n%\n" + def_lines

    def tuner_list(self) -> str:
        """Returns the array-assigned tuning parameter list."""
        width = floor(log10(len(self.params)))  # for spacing
        entries: List[str] = []
        entry: List[str] = []
        for i, param in enumerate(self.params):
            if not param.tuning_range:
                print(f"Warning: Parameter {param.name} has no specified tuning range!")
                entry = ""
            else:
                if param.input_type == str or param.opt_type == "categorical":

                    tstr = str(param.tuning_range)
                    tstr1 = tstr.replace('[','{')
                    tstr2 = tstr1.replace(']','}')
                    p_values = reformat(
                        tstr2,
                        initial_prefix=indent(1)
                        + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Values.all = ",
                        prefix=indent(2),
                        terminal_suffix=";",
                        wrap=False,
                    )

                    p_values = p_values.split(",")
                    
                    if param.input_type == str:
                   
                      p_current = reformat(
                          str(param.value),
                          initial_prefix=indent(1)
                          + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Current = '",
                          prefix=indent(2),
                          terminal_suffix="';\n",
                          wrap=True,
                      )
                      
                    else:
                      p_current = reformat(
                          str(param.value),
                          initial_prefix=indent(1)
                          + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Current = ",
                          prefix=indent(2),
                          terminal_suffix=";\n",
                          wrap=True,
                      )
                      
                    p_type = reformat(
                        f"'{param.opt_type}'",
                        initial_prefix=indent(1)
                        + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Type = ",
                        prefix=indent(2),
                        terminal_suffix=";",
                        wrap=True,
                    )
                    k =0
                    ent = ''

                    entrs = ''
                    endline = False
                    while k < len(p_values)-1:
                       if len(ent) < 55:
                          ent += str(p_values[k]) + ', '
                          if k == len(p_values)-2:
                             endline = True
                       else:
                          ent += str(p_values[k]) + ', ...\n'
                          endline = True
                       if endline == True:
                          endline = False
                          entrs += ent
                          ent = ''
                       k += 1
                    
                    
                    comment = f"% {param.name} ({param.opt_type})"
                    if len(ent + " " + comment) > 45:
                       prefix = "\n" + indent(2)
                    else:
                       prefix = " "
                    entrs += p_values[-1] + prefix + comment + '\n'

                    entry = entrs + p_current + p_type
                else:
                    p_lower_bound = reformat(
                        str(param.tuning_range[0]),
                        initial_prefix=indent(1)
                        + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Values.low = ",
                        prefix=indent(2),
                        terminal_suffix=";\n",
                        wrap=True,
                    )
                    p_upper_bound = reformat(
                        str(param.tuning_range[1]),
                        initial_prefix=indent(1)
                        + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Values.upp = ",
                        prefix=indent(2),
                        terminal_suffix=";\n",
                        wrap=True,
                    )
                    p_current = reformat(
                        str(param.value),
                        initial_prefix=indent(1)
                        + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Current = ",
                        prefix=indent(2),
                        terminal_suffix=";\n",
                        wrap=True,
                    )
                    p_type = reformat(
                        f"'{param.opt_type}'",
                        initial_prefix=indent(1)
                        + f"{TUNING_ARRAY_NAME}({i+1:{width}}).Type = ",
                        prefix=indent(2),
                        terminal_suffix=";",
                        wrap=True,
                    )
                    entry = p_lower_bound + p_upper_bound + p_current + p_type;
                    lines = entry.splitlines(keepends=True)              
                    comment = f"% {param.name} ({param.opt_type})"
                    if len(lines[-1] + " " + comment) > MAX_LINE_LENGTH:
                       prefix = "\n" + indent(2)
                    else:
                       prefix = " "
                    entry += prefix + comment
            entries.append(entry)
        return "\n".join(entries)

    def float_ind(self) -> str:
        """Returns vector of indices of float parameters"""
        indices = ""
        first = True
        for i, param in enumerate(self.params):
            if param.input_type == float:
                if not first:
                    indices += ", " + str(i+1)
                else:
                    indices += str(i+1)
                    first = False
        lines = reformat(
            indices,
            initial_prefix=indent(1) + "indchange" + " = [",
            prefix=indent(2),
            terminal_suffix="];",
            wrap=True,
        )
        if len(lines.splitlines()) >= 2:
            lines = reformat(lines, suffix="...")
        return lines

    def tuner_names(self) -> str:
        """Returns parameter names in a list."""
        line = ", ".join([f"'{param.name}'" for param in self.params])
        lines = reformat(
            line,
            initial_prefix=indent(1) + NAME_ARRAY_NAME + "= {",
            prefix=indent(2),
            terminal_suffix="};",
            wrap=True,
        )
        if len(lines.splitlines()) >= 2:
            lines = reformat(lines, suffix="...")
        return lines

    def tuner_types(self) -> str:
        """Returns type numbers for tuning parameters in a list."""
        line = ", ".join([OPT_NUMBERS_DICT[param.opt_type] for param in self.params])
        lines = reformat(
            line,
            initial_prefix=indent(1) + OPT_NUMBER_ARRAY_NAME + " = [",
            prefix=indent(2),
            terminal_suffix="];",
            wrap=True,
        )
        if len(lines.splitlines()) >= 2:
            lines = reformat(lines, suffix="...")
        return lines

    def write_wrapper(self, save_path: str = "",) -> None:
        """Writes wrapper to file `w<SOLVER_NAME>.m` in specified location.

        Arguments
        ---------
        save_path : str
            Optional path to which the tuner will be saved.
            Defaults to path that the script is executed from.
        """
        filename = WRAPPER_PREFIX + self.name + ".m"
        replacements = [
            self.name,
            self.header_line(filename),
            self.wrapper_docstring(),
            self.parameter_cases(),
            self.number_of_cases(),
            self.wrapper_desc_output(),
            self.path_evals(),
            reformat(self.preparation, initial_prefix=indent(3), prefix=indent(3)),
            reformat(self.call, initial_prefix=indent(4), prefix=indent(4)),
        ]
        write_file(
            save_path, filename, replacements, WRAPPER_KEYWORDS, WRAPPER_TEMPLATE
        )

    def write_tuner(self, save_path: str = "") -> None:
        """Writes tuner to file `t<SOLVER_NAME>.m` in specified location.

        Arguments
        ---------
        save_path : str
            Optional path to which the tuner will be saved.
            Defaults to path that the script is executed from.
        """
        if self.params == []:
            print("Warning: Solver has no parameters! Tuner will be useless.")

        filename = TUNER_PREFIX + self.name + ".m"
        replacements = [
            self.name,
            self.header_line(filename),
            self.tuner_docstring(),
            self.tuner_list(),
            self.float_ind(),
            self.tuner_names(),
            self.tuner_types(),
        ]
        write_file(save_path, filename, replacements, TUNER_KEYWORDS, TUNER_TEMPLATE)
