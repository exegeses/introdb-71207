# alias en SQL

/* los alias nos van a servir principalmente
   para renombrar una columna o enunciado de una tabla
   también sirven para renombrar una tabla
!! El renombrado no es permanente
   sino que es solamente para el reporte
 */

-- Se implementa un alias
-- con la palabra reservada **AS**

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

/* Advertencia: podemos implementar un alias
   sin mencionar la palabra **AS**
   ( el espacio cumple esa función )
 */