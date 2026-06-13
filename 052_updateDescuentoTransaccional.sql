--Descuento automatico transaccional PARTE 2
WITH InsumosADescontar AS (
    SELECT r.idInsumo, 
        SUM(dp.cantidad * r.cantNecesaria) AS total_descuento
    FROM Detalle_Pedido dp
    JOIN Receta r ON dp.idProducto = r.idProducto
    WHERE dp.idPedido = 1 
    GROUP BY r.idInsumo 
)
UPDATE INSUMOS i
SET stockActual = i.stockActual - descargas.total_descuento
FROM InsumosADescontar descargas
WHERE i.idInsumo = descargas.idInsumo;
