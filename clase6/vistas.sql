# Vistas

/*
 Una vista es una consulta que podemos
 almacenar dentro de nuestra base de datos
 Esto nos resulta muy útil cuando
 tenemos que realizar alguna consulta
 de manera frecuente   (diara, varias veces por día)
 */

/*#####
  Parece una tabla independiente
  pero en realidad no lo es
 */

CREATE VIEW lista_precios
AS
    SELECT  idProducto AS id,
            prdNombre AS Producto,
            prdPrecio AS 'Precio Contado',
            prdPrecio*1.05 AS 'Precio Lista',
            mkNombre AS Marca,
            catNombre AS Categoría
    FROM productos AS p
             JOIN marcas AS m
                  ON p.idMarca = m.idMarca
             JOIN categorias AS c
                  ON p.idCategoria = c.idCategoria;


/*
 Listar todas las vistas dentro de una base de datos
 */
    SHOW FULL TABLES
        WHERE TABLE_TYPE = 'VIEW';

/*
 Obtener el código de creación de una vista
 */
SHOW CREATE VIEW lista_precios;