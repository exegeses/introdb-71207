# creación de una tabla

> Para crear una tabla utilizamos 
> el comado **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla  
    (  
        nombreColumna1 tipo características,
        nombreColumna2 tipo características,
        nombreColumna3 tipo características,
        nombreColumna4 tipo características
    );

> Ejemplo práctico: 

    CREATE TABLE personas  
    (  
        id tinyint unsigned auto_increment primary key not null,  
        apellido varchar(45) not null,  
        nombre varchar(45) not null,  
        dni int unsigned unique not null,   
        alta date not null
    );