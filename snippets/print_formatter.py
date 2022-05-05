"""
Author: peter rokowski (prokow01@villanova.edu)
"""

def __print_formatter(name, col_size=80):
    """
    Simple quick & dirty print formatter for columns

    :param name: name to be printed
    :param col_size: column size (default 80)
    :return: str containing column
    """

    rv = f" {name} "
    header_size = len(name)

    for i in range(0, int((col_size - 2 - header_size) / 2)):
        rv = F"-{rv}-"

    return rv if header_size % 2 == 0 else F"{rv}-"


if __name__ == '__main__':
    print(__print_formatter("hi"))
    print(__print_formatter("yoman"))
    print(__print_formatter("whats good dude?"))
    print(__print_formatter("I handle all types of names"))
    print(__print_formatter("dont worry it's cool bro"))
