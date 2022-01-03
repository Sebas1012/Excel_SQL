# Excel a SQLserver

Estos scripts permiten enviar los datos de una tabla en Excel a una tabla en SQLserver.

## Funcionamiento:

Este programa se divide en dos partes, la primera que se encarga de leer los datos del archivo Excel y enviarlos como un JSON atraves de una petición HTTP-POST, y la segunda parte que se encarga de recibir ese JSON e insertarlo a nuestra tabla en SQLserver.

<p align="center">
  <img src='https://user-images.githubusercontent.com/50553819/147832572-ead765c4-b7db-494f-9817-1540aece901f.png' width='400px' height='210px'/>
</p>

El archivo [main.py](main.py) consta de una funcion que se encarga de recibir los diferentes parametros necesarios para trabajar con el excel.
```Python
def read_xl(book, counter_file, sheet_name):
  ...
```

Esta funcion solo recibe 3 parametros en forma de string donde:
- **book**: Es la ruta del archivo excel, para mantener un orden sugiero usar la carpeta [document](document) y ahi depositar los archivos a usar.
- **counter_file**: En este parametro se debe pasar la ruta de un archivo de texto plano con el numero de la fila desde donde se desea comenzar a enviar los registros a la base de datos. Recomiendo usar la carpeta counters y ahi crear todos los .txt necesarios. *Sugiero que el nombre del archivo sea tal que: counter_nombredelahoja.txt*
- **sheet_name**: Este parametro recibe el nombre de la hoja en la que se encuentra la tabla a usar. Si desea usar la hoja activa solo pase como parametro *'None'*

## Software Usado:

| Lenguaje/Libreria | Version |
| --- | --- |
| [Python](https://www.python.org/)  | 3.10.1 |
| [Ruby](https://www.ruby-lang.org/es/) | 2.7.4 |
| [Openpyxl](https://openpyxl.readthedocs.io/en/stable/) | 3.0.9 |
| [Requests](https://docs.python-requests.org/en/latest/) | 2.26.0 |
| [Sinatra](http://sinatrarb.com/) | 2.1.0 |
| [Puma](https://puma.io/) | 5.5.2 |
| [Tiny_tds](https://github.com/rails-sqlserver/tiny_tds) | 2.1.5 |

## Instalación de dependencias:

Todas las dependencias que usa este proyecto se encuentran manejadas por los correspondientes manejadores de paquetes de cada lenguaje, pip para python y bundler para ruby, las dependencias de python se encuentran en el archivo [requirements.txt](/requirements.txt), mientras que las de ruby se encuentran en el archivo [Gemfile](/api/Gemfile), para instalar las dependencias utilice los siguientes comandos:

- Dependencias Python:
```
pip install -r requirements.txt
```
- Dependencias Ruby:
```
bundle
```

*Nota: Recuerde estar situado en la ruta correcta para poder ejecutar los comandos.*

<p align="center">
  <b>Hecho con ❤️ por: Sebastián. </b>
</p>
