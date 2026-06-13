--Consulta stock actual
SELECT
    ins.nombre AS insumo,
    ins.stockActual,
    ins.stockMinimo,
    SUM(dp.cantidad * r.cantNecesaria) AS cantidad_requerida,
    ins.stockActual - SUM(dp.cantidad * r.cantNecesaria) AS stock_proyectado
FROM Pedido p
JOIN Detalle_Pedido dp ON p.idPedido = dp.idPedido
JOIN Receta r ON dp.idProducto = r.idProducto
JOIN Insumos ins ON r.idInsumo = ins.idInsumo
WHERE p.estadoProduccion = 'En Proceso'
GROUP BY
    ins.nombre,
    ins.stockActual,
    ins.stockMinimo
ORDER BY stock_proyectado ASC;