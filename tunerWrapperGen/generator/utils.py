"""Helper functions for the generator."""

from textwrap import fill
from typing import List
from data import MAX_LINE_LENGTH, INDENTATION


def indent(level: int = 1) -> str:
    """Returns the indentation for given level."""
    return INDENTATION * level


def reformat(
    string: str,
    initial_prefix: str = "",
    prefix: str = "",
    suffix: str = "",
    terminal_suffix: str = "",
    wrap: bool = False,
) -> str:
    """Adds prefix and suffix to given string and optionally wraps it."""
    if not string:
        wrap = False
    if wrap:
        string = fill(
            string,
            width=MAX_LINE_LENGTH,
            initial_indent=initial_prefix,
            subsequent_indent=prefix,
        )
        initial_prefix = ""
        prefix = ""

    lines = string.splitlines()
    joined = (suffix + "\n" + prefix).join(lines)
    return initial_prefix + joined + terminal_suffix


def write_file(
    save_path: str,
    filename: str,
    replacements: List[str],
    keywords: List[str],
    template_path: str,
) -> None:
    """Writes template with given info replaced to file."""

    if len(replacements) != len(keywords):
        raise ValueError(
            "Length of replacements does not match that of given keywords."
        )

    # strips whitespace and adds forward slash if not present
    save_path = save_path.strip()
    if save_path != "" and save_path[-1] != "/":
        save_path += "/"

    file_path = save_path + filename

    with open(template_path, "r") as template:
        text = template.read()
    for key, replacement in zip(keywords, replacements):
        text = text.replace(key, replacement)

    with open(file_path, "w") as file:
        file.write(text)
