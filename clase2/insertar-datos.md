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

## Sintáxis simplificada (NO se mencionan las columnas)