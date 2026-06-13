-- Descuento automatico transaccional PARTE 1
--Antes de ejecutar el UPDATE, vamos a hacer una consulta la cual
--nos permite saber exactamente cuanta cantidad se le va a restar a cada insumo para
--un pedido en especifico 
SELECT i.idInsumo, i.nombre AS insumo,
    i.stockActual AS stock_original,
    SUM(dp.cantidad * r.cantNecesaria) AS total_a_descontar, --Multiplicamos las unidades que pidio el cliente por 
														     --el costo de la receta y luego sumamos por si el insumo
															 --se usa en varios productos del mismo pedido
    i.stockActual - SUM(dp.cantidad * r.cantNecesaria) AS stock_proyectado --Tomamos el stock de la bodega y le restamos 
																			--el resultado de total_a_descontar
FROM Detalle_Pedido dp
JOIN Receta r ON dp.idProducto = r.idProducto
JOIN INSUMOS i ON r.idInsumo = i.idInsumo
WHERE dp.idPedido = 1 --Hacemos todo esto para el pedido 1
GROUP BY i.idInsumo, i.nombre, i.stockActual; --Y lo agrupamos segun el id