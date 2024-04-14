"""Predefined data for the generator."""

from typing import Union
import os

_path = os.path.dirname(__file__)

ParameterValue = Union[float, int, str]

MAX_LINE_LENGTH = 72

INDENTATION = "  "

WRAPPER_PREFIX = "w"
TUNER_PREFIX = "t"

PARAM_STRUCT_NAME = "solverParams"

TUNING_ARRAY_NAME = "x"
NAME_ARRAY_NAME = "xname"
OPT_NUMBER_ARRAY_NAME = "int"

PATH_PREFIX = "SOLpath"

WRAPPER_TEMPLATE = _path + "/" + "WRAPPER_TEMPLATE.txt"
TUNER_TEMPLATE = _path + "/" + "TUNER_TEMPLATE.txt"

WRAPPER_KEYWORDS = [
    "<SOLVER>",
    "<HEADER_LINE>",
    "<PARAMETER_DESC_DOCSTRING>",
    "<SOLVER_PARAMS>",
    "<NUMBER_OF_CASES>",
    "<PARAMETER_DESC_OUTPUT>",
    "<PATHS>",
    "<PARAMETER_PREPARATION>",
    "<SOLVER_CALL>",
]
TUNER_KEYWORDS = [
    "<SOLVER>",
    "<HEADER_LINE>",
    "<PARAMETER_DESC_DOCSTRING>",
    "<PARAMETER_LIST>",
    "<PARAMETER_COUNT>",
    "<PARAMETER_NAMES>",
    "<PARAMETER_TYPES>",
]

INPUT_TYPES = (float, int, str, "log")
INPUT_NAMES = ("float", "int", "str", "log")
OPT_TYPES = ("continuous", "integer", "categorical","log","fix")
OPT_NUMBERS = ("0", "1", "2","3","4")

INPUT_NAMES_DICT = dict(zip(INPUT_TYPES, INPUT_NAMES))
INPUT_OPT_DICT = dict(zip(INPUT_TYPES, OPT_TYPES))
OPT_NUMBERS_DICT = dict(zip(OPT_TYPES, OPT_NUMBERS))
