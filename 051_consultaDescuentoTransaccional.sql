-- Descuento automatico transaccional PARTE 1
--nos permite saber exactamente cuanta cantidad se le va a restar a cada insumo para
--un pedido en especifico 
SELECT i.idInsumo, i.nombre AS insumo,
    i.stockActual AS stock_original,
    SUM(dp.cantidad * r.cantNecesaria) AS total_a_descontar, 
														     
    i.stockActual - SUM(dp.cantidad * r.cantNecesaria) AS stock_proyectado 
																			
FROM Detalle_Pedido dp
JOIN Receta r ON dp.idProducto = r.idProducto
JOIN INSUMOS i ON r.idInsumo = i.idInsumo
WHERE dp.idPedido = 1
GROUP BY i.idInsumo, i.nombre, i.stockActual;