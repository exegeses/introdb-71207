/* esto no se puede hacer
create table facturas
(
    letra char primary key,
    numero integer primary key,
    clienteID integer,
    articuloID integer,
    fecha date,
    monto double
);*/

/* esto se puede hacer pero es un problema
create table facturas
(
    letra char,
    numero integer,
    clienteID integer,
    articuloID integer,
    fecha date,
    monto double,
    primary key ( letra, numero )
);
*/
/* Esto no se puede hacer
   porque si tengo una columna auto incremental
   esa columna debe ser la única primary key */
create table facturas
(
    letra char,
    numero integer auto_increment,
    clienteID integer,
    articuloID integer,
    fecha date,
    monto double,
    primary key ( letra, numero )
);