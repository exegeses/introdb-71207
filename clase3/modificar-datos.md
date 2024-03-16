# Modificación de datos (registro) en una tabla

> para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**  

> Sintáxis: 

    UPDATE nombreTabla  
        SET nombreColumna = valor,
            nombreColumna2 = valor2
      WHERE colID = valorID;


> Ejemplo práctico: 

    UPDATE personas  
        SET alta = '1960-10-07', 
            dni  = 18548319 
      WHERE id = 7;  

    UPDATE personas  
        SET alta = '1961-05-24'  
      WHERE id = 7  
        OR id = 8;

    UPDATE personas  
        SET alta = '1961-05-24'  
      WHERE id IN(7, 8);
