# Insertar datos en una tabla

> En SQL tenemos tres maneras de insertar datos en una tabla

## Sintáxis usando SET 

    INSERT INTO nombreTabla  
        SET  
            nombreColumna = valor,  
            nombreColumna2 = valor2,  
            nombreColumna3 = valor3,  
            nombreColumna4 = valor4;  

> Ejemplo práctico:

    INSERT INTO personas  
        SET  
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25582410,  
            alta = '2008-12-12';  


    INSERT INTO personas  
        SET
            apellido = 'González',  
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2005-09-30';

## Sintáxis completa (se mencionan las columnas)

    INSERT INTO nombreTabla  
        ( nombreCol2, nombreCol3, nombreCol4 )  
      VALUES  
        ( valorCol2, valorCol3, valorCol4 );  

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );


## Sintáxis simplificada (NO se mencionan las columnas)

    INSERT INTO nombreTabla  
      VALUES  
        ( valorCol1, valorCol2, valorCol3, valorCol4 );  

    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );


-----
### Ejemplo para insertar múltiples registros

INSERT INTO personas
( apellido, nombre, dni, alta )
VALUES
( 'Page', 'Jimmy', 18543219, '1944-01-09' ),
( 'Bonham', 'Bonzo', 18543319, '1960-06-12' ),
( 'Jones', 'John', 18543419, '1960-06-12' ),
( 'Plant', 'Robert', 18543519, '1960-06-12' );


INSERT INTO personas
VALUES
( DEFAULT, 'Page', 'Jimmy', 18543219, '1944-01-09' ),
( DEFAULT, 'Bonham', 'Bonzo', 18543319, '1960-06-12' ),
( DEFAULT, 'Jones', 'John', 18543419, '1960-06-12' ),
( DEFAULT, 'Plant', 'Robert', 18543519, '1960-06-12' );