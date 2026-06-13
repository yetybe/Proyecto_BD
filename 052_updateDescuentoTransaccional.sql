--Descuento automatico transaccional PARTE 2
--Ahora pasamos a preparar al UPDATE con una tabla temporal
--Creamos la tabla temporal
WITH InsumosADescontar AS (
    SELECT r.idInsumo, 
        --Multiplicamos lo que pide el cliente por lo que exige la receta y sumamos el total por insumo
        SUM(dp.cantidad * r.cantNecesaria) AS total_descuento
    FROM Detalle_Pedido dp
    JOIN Receta r ON dp.idProducto = r.idProducto
    WHERE dp.idPedido = 1 --Denuevo hacemos esto para el pedido 1
    GROUP BY r.idInsumo --Agrupamos por el ID del insumo para que el SUM() agrupe todo en una sola línea por ingrediente
)

--Ahora aplicamos los cambios en bodega con UPDATE
UPDATE INSUMOS i
--Actualizamos el stock: al stock actual le restamos el total calculado arriba
SET stockActual = i.stockActual - descargas.total_descuento
FROM InsumosADescontar descargas --Hacemos que extraiga los datos desde la tabla temporal
WHERE i.idInsumo = descargas.idInsumo; --Emparejamos los ID para asegurar que la harina se descuente de la harina, etc
