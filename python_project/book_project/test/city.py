def count(country, city, population=""):
    """Returns a string of country and city"""

    if population:
        full_string = f"{country} {city} {population}"
    else:
        full_string = f"{country} {city}"
    return full_string.title()