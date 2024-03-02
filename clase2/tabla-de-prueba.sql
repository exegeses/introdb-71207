# vamos a crear una tabla de pruebas

create table pruebas
(
    id  tinyint unsigned auto_increment primary key not null,
    alfanumerico tinytext not null,
    aproximado float not null,
    exacto decimal(10,2) not null
);

