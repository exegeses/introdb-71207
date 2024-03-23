# tablas catálogo

-- tabla marcas
create table marcas
(
    idMarca tinyint unsigned auto_increment primary key not null,
    mkNombre varchar(45) unique not null
);

-- tabla categorias
create table categorias
(
    idCategoria tinyint unsigned auto_increment primary key not null,
    catNombre varchar(45) unique not null
);

-- tabla productos
create table productos
(
    idProducto mediumint unsigned auto_increment primary key not null,
    prdNombre varchar(45) unique not null,
    prdPrecio decimal(8,2) unsigned not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean default(1) not null,
    foreign key ( idMarca ) references marcas ( idMarca ),
    foreign key ( idCategoria ) references categorias ( idCategoria )
);