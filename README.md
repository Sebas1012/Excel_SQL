# Excel a SQL

Estos scripts permiten enviar los datos de una tabla en Excel a una tabla en SQLserver.

## Funcionamiento:

Este programa se divide en dos partes, la primera que se encarga de leer los datos del archivo Excel y enviarlos como un JSON atraves de una petición HTTP-POST, y la segunda parte que se encarga de recibir ese JSON e insertarlo a nuestra tabla en SQLserver.

<p align="center">
  <img src='https://user-images.githubusercontent.com/50553819/147832572-ead765c4-b7db-494f-9817-1540aece901f.png' width='400px' height='210px'/>
</p>

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
