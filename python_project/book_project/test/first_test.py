def formatted(name, next, middle=''):
    """Formats a name correctly"""

    if middle:
        full_name = f"{name} {middle} {next}"
    else:
        full_name = f"{name} {next}"
    return full_name.title()
#formatted("chika", "mark")