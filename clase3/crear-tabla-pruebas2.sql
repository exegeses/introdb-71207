create table pruebas2
(
    id tinyint unsigned auto_increment primary key not null,
    numero int(3) not null ,
    numero2 int(4) not null ,
    numero3 int(5) not null,
    numero4 int not null
);

insert into pruebas2
    ( numero, numero2, numero3, numero4 )
  VALUES
   ( 123, 123, 123, 123 );

insert into pruebas2
    ( numero, numero2, numero3, numero4 )
VALUES
    ( 1234, 1234, 1234, 1234 );

insert into pruebas2
( numero, numero2, numero3, numero4 )
VALUES
    ( 12345, 12345, 12345, 12345 );