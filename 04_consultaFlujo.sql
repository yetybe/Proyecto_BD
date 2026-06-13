--Consulta de flujo de caja 

SELECT DATE(fechaSolicitud) AS dia_operacion, SUM(montoTotal) AS ingresos_totales 
FROM Pedido
WHERE estadoPago = 'Pagado' 
GROUP BY DATE(fechaSolicitud) 
ORDER BY dia_operacion DESC;