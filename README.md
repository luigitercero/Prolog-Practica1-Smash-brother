# Prolog-Practica1-Smash-brother


## Intalacion 
``` bash
sudo apt install gprolog
sudo apt install swi-prolog-nox
```

## inforamtion
https://www.smashbros.com/en_US/fighter/index.html

https://www.smashbros.com/en_US/fighter/series.html

# Ejecutar un archivo
```
swipl likes.pl
```

## salir

```
halt .
```
## comentario 

```prolog
%esto es un comentario en prolog
```
## Fuciones de Busqueda

todos las clases y objetos al cosultar estan en minusculas y en mayusculas las variables

```prolog
% consulta que es mario
es(X,mario) .
```

```
% obtinene todas las razas ejem:humano, mono ,etc ..
es(X,Y) .
```
**al precionar espacio para hacer la consulta debe precionar ";"  y luego enter para mostrar los demas atributos**


## Fuciones dot
````
dot -Tpng dia.pl > output.png
````

