from openpyxl import Workbook, load_workbook
from openpyxl.worksheet import worksheet
import json

# Configuraciones Iniciales
workbook = load_workbook('./document/datos.xlsx')
worksheet = workbook.active

for row in worksheet.values:

    # Omito la primera fila que contiene los encabezados en el archivo excel.
    if row[0] == 'Tipo Doc':
        continue

    # Transformo los datos en un diccionario
    data = {
        "tipo_doc" : row[0],
        "documento" : row[1],
        "fecha_atencion" : row[2],
        "tipo_atencion" : row[3],
        "medico" : row[4],
        "dx" : row[5],
        "descripcion_dx" : row[6],
        "lateralidad" : row[7],
        "av" : row[6],
        "tipo_av" : row[8],
        "emc" : row[9],
        "av_lb" : row[10],
        "observaciones" : row[11],
        "eps" : row[12],
    }

    print(data)
