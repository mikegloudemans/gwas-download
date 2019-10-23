#!/usr/bin/python
import xlrd
import csv
import sys

# Source: https://stackoverflow.com/questions/20105118/convert-xlsx-to-csv-correctly-using-python

def csv_from_excel(excel_file, sheet_name, new_file, encoding_override=False):
    wb = xlrd.open_workbook(excel_file)
    sh = wb.sheet_by_name(sheet_name)
    your_csv_file = open(new_file, 'w')
    wr = csv.writer(your_csv_file, delimiter='\t')

    def fix(x):
        if type(x) is unicode:
            return x.encode('ascii', 'ignore')
        else:
            return x

    for rownum in range(sh.nrows):
        wr.writerow([fix(s) for s in sh.row_values(rownum)])

    your_csv_file.close()

# runs the csv_from_excel function:
csv_from_excel(sys.argv[1], sys.argv[2], sys.argv[3])
