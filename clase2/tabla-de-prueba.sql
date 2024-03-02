# vamos a crear una tabla de pruebas

create table pruebas
(
    id  tinyint unsigned auto_increment primary key not null,
    alfanumerico tinytext not null,
    aproximado float not null,
    exacto decimal(10,2) not null
);

-- Insertamos datos en tabla de pruebas
insert into pruebas
    values
        ( default, 'hola', 15, 25.5 ),
        ( default, 'hola', 25.5, 80 ),
        ( default, 'hola', 80, 42 ),
        ( default, 'hola', 42, 32.88 ),
        ( default, 'hola', 32.88, 15 );