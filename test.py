import json
import requests
from openpyxl import load_workbook

def read_xl(book, counter_file):
  book = load_workbook(str(book))
  sheet = book.active

  counter_file = open(str(counter_file), 'r')
  i = int(counter_file.read())
  j = 0

  for row in sheet.iter_rows(min_row=1, max_row=1, values_only=True):
    columns = row

  headers = {'Content-Type':'application/json'}

  for row in sheet.iter_rows(min_row=i, values_only=True):
    data = dict(zip(columns, row))

    data = json.dumps(data)

    # request = requests.post('http://admin:test@127.0.0.1:4567/test', headers=headers, data=data)
    print(data)


print(read_xl('./document/datos.xlsx', './counter.txt'))



