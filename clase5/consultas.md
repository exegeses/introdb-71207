# Consulta en SQL

## Consultas a server
> Instrucciones vistas

    -- listar bases de datos  
    SHOW DATABASES;  

    -- listar tablas dentro de una base de datos  
    SHOW TABLES; 

    -- mostrar la estructura de una tabla    
    DESCRIBE nombreTabla;  

> La palabra reservada más importante o al menos 
> la más utilizada es la palabra **SELECT**  

    -- Mostrar la base de datos activa  
    SELECT DATABASE();

## Consultas a tablas de una base de datos
> Para realizar consultas a una tabla 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**

    -- traer todos los datos de todas las columnas de una tabla
    SELECT * FROM nombreTable;

> Si queremos traer los datos de **algunas** columnas 
> de una tabla tenemos que mencionar 
> los nombres de las columnas separadas por comas

    SELECT columna1, columna2    
    FROM nombreTable;  

    SELECT aeropuerto, precio   
    FROM destinos; 

### Orden de los resultados

> Para ordenar los resultados de una consulta
> utilizamos la palabra reservada **ORDER BY**

    select * from regiones    
    order by idRegion;

    SELECT aeropuerto, precio  
    FROM destinos  
    ORDER BY aeropuerto;

    SELECT aeropuerto, precio  
    FROM destinos  
    ORDER BY precio;

    SELECT aeropuerto, precio     
      FROM destinos  
      ORDER BY idRegion, precio;

## Filtrado de resultados

> Filtrar resultados significa traer solamente 
> los registros que cumplan una condición dada

> Para implementar un filtro utilizamos 
> la palabra reservada **WHERE**
> seguida de una condición

> Traer todos los destinos con un precio hasta 8000

    SELECT aeropuerto, precio     
      FROM destinos  
      WHERE precio <=  8000;

> Traer todos los destinos con un precio 
> entre 6600 y 8000

    SELECT aeropuerto, precio   
      FROM destinos  
      WHERE precio >= 6600  
      AND precio <= 8000;

    SELECT aeropuerto, precio   
      FROM destinos  
      WHERE precio BETWEEN 6600 AND 8000;

> Traer aeropuerto y precio 
> de los destinos de la regiones 3 y 5

    SELECT aeropuerto, precio   
       FROM destinos   
       WHERE idRegion = 3   
       OR idRegion = 5;

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion IN( 3, 5 );
