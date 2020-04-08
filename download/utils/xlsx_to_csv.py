#!/usr/bin/python
import xlrd
import csv
import sys

# Source: https://stackoverflow.com/questions/20105118/convert-xlsx-to-csv-correctly-using-python

def csv_from_excel(excel_file, encoding_override=False):

    base_dir = "/".join(excel_file.split("/")[:-1] + [""])

    wb = xlrd.open_workbook(excel_file)
    # Turn each sheet into its own file, even if we don't need all of them
    for sheet in wb.sheets():
        sheet_name = sheet.name
        print sheet.name
        sh = wb.sheet_by_name(sheet_name)

        # Eliminate undesirable filename characters from sheet names
        new_sheet_name = sheet_name.replace(" ", "_")
        new_sheet_name = sheet_name.replace(">", "-gt-")
        new_sheet_name = sheet_name.replace("<", "-lt-")

        # Write sheet to a new file in same directory
        with open(base_dir + new_sheet_name + ".txt", 'w') as w:
            wr = csv.writer(w, delimiter='\t')

            def fix(x):
                if type(x) is unicode:
                    return x.encode('ascii', 'ignore')
                else:
                    return x

            for rownum in range(sh.nrows):
                wr.writerow([fix(s) for s in sh.row_values(rownum)])


# runs the csv_from_excel function
if __name__ == "__main__":
    csv_from_excel(sys.argv[1])
