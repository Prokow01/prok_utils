"""
increment_num_in_file.py

"""


import os


input_fi = "DataModel/MsCohortData.cs"
output_fi = "DataModel/MsCohortData.cs_mod"

search_string = "[LoadColumn(0)]"
replace_string = "[LoadColumn({0})]\n"


def main():
    count = 0
    file_content = []
    with open(input_fi, "r") as in_fi:
        for li in in_fi.readlines():
            if search_string in li:
                file_content.append(replace_string.format(count))
                count = count+1
            else:
                file_content.append(li)


    with open(output_fi, "w") as out_fi:
        for li in file_content:
            out_fi.write(li)


    print("done")


if __name__ == '__main__':
    main()


