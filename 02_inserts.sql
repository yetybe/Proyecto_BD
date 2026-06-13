-- ==========================================
-- OBJETIVO: Inserción de datos
-- ==========================================

-- Productos
INSERT INTO Productos (nombre, categoria, precioUnitario) VALUES 
-- Panadería y Masas Saladas (IDs 1 al 19)
('Hallulla', 'Panadería', 250),
('Marraqueta', 'Panadería', 250),
('Dobladitas', 'Panadería', 300),
('Pan Amasado', 'Panadería', 300),
('Chocoso', 'Panadería', 400),
('Pan Integral', 'Panadería', 350),
('Berlín', 'Panadería', 800),
('Pan de Completo', 'Panadería', 200),
('Pan Bocado de Dama', 'Panadería', 150),
('Pan Ciabatta', 'Panadería', 450),
('Baguette', 'Panadería', 1200),
('Empanada de Queso', 'Panadería', 2000),
('Empanada de Pino', 'Panadería', 2500),
('Empanada Napolitana', 'Panadería', 2500),
('Empanada Mechada Queso', 'Panadería', 2800),

-- Hojarasca (IDs 20 al 27)
('Torta Pompadur', 'Hojarasca', 22000),
('Palmeritas', 'Hojarasca', 500),
('Alfajor Mendocino', 'Hojarasca', 1200),
('Torta Mil Hojas', 'Hojarasca', 20000),
('Cachitos con Manjar', 'Hojarasca', 900),
('Torta de Merengue Hojarasca', 'Hojarasca', 23000),

-- Bizcochos y Pastelería Dulce (IDs 28 al 40)
('Torta 3 Leches', 'Bizcochos', 18000),
('Torta Selva Negra', 'Bizcochos', 19000),
('Torta de Piña Crema', 'Bizcochos', 17000),
('Torta Moka', 'Bizcochos', 18500),
('Brazo de Reina', 'Bizcochos', 8000),
('Torta Manjar Nuez', 'Bizcochos', 20000),
('Tartaleta de Frutas', 'Bizcochos', 12000),
('Pie de Limón', 'Bizcochos', 10000),
('Empolvados', 'Bizcochos', 700),

-- Coctelería (IDs 41 al 50)
('Canapés de Camarón', 'Coctelería', 600),
('Tapaditos de Ave Pimiento', 'Coctelería', 500),
('Tapaditos de Ave Mayo', 'Coctelería', 500),
('Mini Pizzetas', 'Coctelería', 350),
('Empanaditas de Queso Cocktail', 'Coctelería', 400),
('Empanaditas de Pino Cocktail', 'Coctelería', 450),
('Trufas de Chocolate', 'Coctelería', 300);

-- Insumos 
INSERT INTO Insumos (nombre, unidadMedida, stockActual, stockMinimo) VALUES 
-- Masas y Secos (IDs 1 al 5)
('Harina', 'Gramos', 100000.00, 20000.00),
('Azúcar', 'Gramos', 50000.00, 10000.00),
('Sal', 'Gramos', 10000.00, 2000.00),
('Levadura', 'Gramos', 5000.00, 1000.00),
('Polvos de Hornear', 'Gramos', 4000.00, 1000.00),
-- Grasas y Lácteos (IDs 6 al 10)
('Manteca', 'Gramos', 30000.00, 5000.00),
('Mantequilla', 'Gramos', 20000.00, 4000.00),
('Leche', 'Mililitros', 40000.00, 5000.00),
('Crema Chantilly', 'Gramos', 15000.00, 3000.00),
('Huevos', 'Unidades', 500.00, 100.00),
-- Rellenos Dulces (IDs 11 al 13)
('Manjar', 'Gramos', 40000.00, 8000.00),
('Cobertura de Chocolate', 'Gramos', 10000.00, 2000.00),
('Mermelada de Alcayota', 'Gramos', 5000.00, 1000.00),
-- Rellenos Salados (IDs 14 al 20)
('Queso Mantecoso', 'Gramos', 25000.00, 5000.00),
('Carne Molida (Pino)', 'Gramos', 15000.00, 3000.00),
('Cebolla', 'Gramos', 20000.00, 4000.00),
('Jamón', 'Gramos', 10000.00, 2000.00),
('Carne Mechada', 'Gramos', 12000.00, 2000.00),
('Aceitunas', 'Gramos', 5000.00, 1000.00),
('Tomate', 'Gramos', 8000.00, 2000.00);

-- Recetas
INSERT INTO Receta (idProducto, idInsumo, cantNecesaria) VALUES 
-- [PANADERÍA]
-- 1. Hallulla
(1, 1, 100.00), -- Harina
(1, 3, 2.00),   -- Sal
(1, 6, 10.00),  -- Manteca
(1, 4, 3.00),   -- Levadura
-- 2. Marraqueta
(2, 1, 120.00), -- Harina
(2, 3, 2.50),   -- Sal
(2, 4, 4.00),   -- Levadura
-- 3. Dobladitas
(3, 1, 100.00), -- Harina
(3, 3, 2.00),   -- Sal
(3, 6, 15.00),  -- Manteca
-- 4. Pan Amasado
(4, 1, 110.00), -- Harina
(4, 3, 2.00),   -- Sal
(4, 6, 12.00),  -- Manteca
(4, 4, 3.50),   -- Levadura
-- 5. Chocoso
(5, 1, 100.00), -- Harina
(5, 2, 10.00),  -- Azúcar
(5, 7, 15.00),  -- Mantequilla
(5, 4, 3.00),   -- Levadura
-- 6. Pan Integral
(6, 1, 120.00), -- Harina
(6, 3, 2.50),   -- Sal
(6, 4, 4.00),   -- Levadura
-- 7. Berlín
(7, 1, 80.00),  -- Harina
(7, 2, 15.00),  -- Azúcar
(7, 8, 30.00),  -- Leche
(7, 10, 0.50),  -- Huevos
(7, 9, 40.00),  -- Crema Chantilly (Relleno)
-- 8. Pan de Completo
(8, 1, 90.00),  -- Harina
(8, 3, 1.50),   -- Sal
(8, 8, 20.00),  -- Leche
(8, 4, 3.00),   -- Levadura
-- 9. Pan Bocado de Dama
(9, 1, 50.00),  -- Harina
(9, 2, 10.00),  -- Azúcar
(9, 10, 0.25),  -- Huevos
(9, 4, 2.00),   -- Levadura
-- 10. Pan Ciabatta
(10, 1, 130.00), -- Harina
(10, 3, 3.00),   -- Sal
(10, 4, 2.00),   -- Levadura
-- 11. Baguette
(11, 1, 200.00), -- Harina
(11, 3, 4.00),   -- Sal
(11, 4, 5.00),   -- Levadura
-- 12. Empanada de Queso
(12, 1, 80.00),  -- Harina
(12, 6, 15.00),  -- Manteca
(12, 14, 100.00),-- Queso Mantecoso
-- 13. Empanada de Pino
(13, 1, 80.00),  -- Harina
(13, 6, 15.00),  -- Manteca
(13, 15, 80.00), -- Carne Molida
(13, 16, 60.00), -- Cebolla
(13, 19, 10.00), -- Aceitunas
(13, 10, 0.50),  -- Huevos
-- 14. Empanada Napolitana
(14, 1, 80.00),  -- Harina
(14, 14, 60.00), -- Queso
(14, 17, 40.00), -- Jamón
(14, 20, 30.00), -- Tomate
-- 15. Empanada Mechada Queso
(15, 1, 80.00),  -- Harina
(15, 14, 60.00), -- Queso
(15, 18, 80.00), -- Carne Mechada

-- [HOJARASCA]
-- 16. Torta Pompadur
(16, 1, 600.00), -- Harina
(16, 10, 6.00),  -- Huevos
(16, 11, 800.00),-- Manjar
(16, 9, 300.00), -- Crema Chantilly
-- 17. Palmeritas
(17, 1, 50.00),  -- Harina
(17, 7, 30.00),  -- Mantequilla
(17, 2, 20.00),  -- Azúcar
-- 18. Alfajor Mendocino
(18, 1, 60.00),  -- Harina
(18, 7, 20.00),  -- Mantequilla
(18, 11, 50.00), -- Manjar
(18, 12, 30.00), -- Cobertura de Chocolate
-- 19. Torta Mil Hojas
(19, 1, 800.00), -- Harina
(19, 7, 300.00), -- Mantequilla
(19, 11, 1500.00),-- Manjar
-- 20. Cachitos con Manjar
(20, 1, 40.00),  -- Harina
(20, 7, 15.00),  -- Mantequilla
(20, 11, 60.00), -- Manjar
-- 21. Torta de Merengue Hojarasca
(21, 1, 500.00), -- Harina
(21, 7, 200.00), -- Mantequilla
(21, 10, 8.00),  -- Huevos
(21, 2, 400.00), -- Azúcar
(21, 11, 600.00),-- Manjar

-- [BIZCOCHOS Y PASTELERÍA DULCE]
-- 22. Torta 3 Leches
(22, 1, 500.00), -- Harina
(22, 2, 400.00), -- Azúcar
(22, 10, 8.00),  -- Huevos
(22, 8, 1000.00),-- Leche
-- 23. Torta Selva Negra
(23, 1, 450.00), -- Harina
(23, 2, 350.00), -- Azúcar
(23, 10, 6.00),  -- Huevos
(23, 9, 800.00), -- Crema Chantilly
(23, 12, 200.00),-- Cobertura de Chocolate
-- 24. Torta de Piña Crema
(24, 1, 500.00), -- Harina
(24, 2, 300.00), -- Azúcar
(24, 10, 6.00),  -- Huevos
(24, 9, 600.00), -- Crema Chantilly
-- 25. Torta Moka
(25, 1, 500.00), -- Harina
(25, 2, 350.00), -- Azúcar
(25, 10, 6.00),  -- Huevos
(25, 9, 500.00), -- Crema Chantilly
(25, 12, 150.00),-- Cobertura de Chocolate
-- 26. Brazo de Reina
(26, 1, 200.00), -- Harina
(26, 2, 150.00), -- Azúcar
(26, 10, 4.00),  -- Huevos
(26, 11, 400.00),-- Manjar
-- 27. Torta Manjar Nuez
(27, 1, 500.00), -- Harina
(27, 2, 300.00), -- Azúcar
(27, 10, 6.00),  -- Huevos
(27, 11, 800.00),-- Manjar
-- 28. Tartaleta de Frutas
(28, 1, 300.00), -- Harina
(28, 7, 150.00), -- Mantequilla
(28, 2, 100.00), -- Azúcar
(28, 9, 400.00), -- Crema Chantilly
-- 29. Pie de Limón
(29, 1, 250.00), -- Harina
(29, 7, 120.00), -- Mantequilla
(29, 2, 200.00), -- Azúcar
(29, 10, 4.00),  -- Huevos
-- 30. Empolvados
(30, 1, 30.00),  -- Harina
(30, 10, 0.50),  -- Huevos
(30, 2, 10.00),  -- Azúcar
(30, 11, 40.00), -- Manjar

-- [COCTELERÍA]
-- 31. Canapés de Camarón
(31, 1, 10.00),  -- Harina
(31, 7, 5.00),   -- Mantequilla
-- 32. Tapaditos de Ave Pimiento
(32, 1, 15.00),  -- Harina
(32, 7, 5.00),   -- Mantequilla
-- 33. Tapaditos de Ave Mayo
(33, 1, 15.00),  -- Harina
(33, 7, 5.00),   -- Mantequilla
-- 34. Mini Pizzetas
(34, 1, 20.00),  -- Harina
(34, 14, 15.00), -- Queso Mantecoso
(34, 20, 10.00), -- Tomate
-- 35. Empanaditas de Queso Cocktail
(35, 1, 15.00),  -- Harina
(35, 6, 5.00),   -- Manteca
(35, 14, 20.00), -- Queso Mantecoso
-- 36. Empanaditas de Pino Cocktail
(36, 1, 15.00),  -- Harina
(36, 6, 5.00),   -- Manteca
(36, 15, 15.00), -- Carne Molida
(36, 16, 10.00), -- Cebolla
-- 37. Trufas de Chocolate
(37, 12, 30.00), -- Cobertura de Chocolate
(37, 11, 20.00), -- Manjar
(37, 8, 10.00);  -- Leche

-- Clientes
INSERT INTO Cliente (idCliente, nombre, apellido, telefono, correo) VALUES
(1, 'Camila', 'Rojas', '+56911112222', 'crojas@email.cl'),
(2, 'Diego', 'Soto', '+56933334444', 'dsoto@email.cl'),
(3, 'Valentina', 'Silva', '+56955556666', 'vsilva@email.cl'),
(4, 'Matías', 'Muñoz', '+56977778888', 'mmunoz@email.cl'),
(5, 'Constanza', 'Tapia', '+56999990000', 'ctapia@email.cl'),
(6, 'Felipe', 'Castro', '+56912345678', 'fcastro@email.cl'),
(7, 'Javiera', 'Morales', '+56987654321', 'jmorales@email.cl'),
(8, 'Sebastián', 'Díaz', '+56911223344', 'sdiaz@email.cl'),
(9, 'María', 'González', '+56955443322', 'mgonzalez@email.cl'),
(10, 'Juan', 'Pérez', '+56999887766', 'jperez@email.cl');

-- Pedidos
INSERT INTO Pedido (idCliente, fechaSolicitud, fechaEntrega, estadoProduccion, estadoPago, montoTotal) VALUES
(4, '2026-06-01', '2026-06-02 10:00:00', 'Entregado', 'Pagado', 18000),
(8, '2026-06-01', '2026-06-01 15:00:00', 'Entregado', 'Pagado', 4000),
(1, '2026-06-01', '2026-06-03 12:00:00', 'Entregado', 'Pagado', 3000),
(9, '2026-06-01', '2026-06-02 18:00:00', 'Entregado', 'Pagado', 20000),
(3, '2026-06-01', '2026-06-04 11:00:00', 'Entregado', 'Pagado', 8000),
(7, '2026-06-01', '2026-06-02 09:30:00', 'Entregado', 'Pagado', 12500),

(10, '2026-06-02', '2026-06-04 16:00:00', 'Entregado', 'Pagado', 8000),
(2, '2026-06-02', '2026-06-05 10:00:00', 'Entregado', 'Pagado', 18500),
(5, '2026-06-02', '2026-06-03 14:00:00', 'Entregado', 'Pagado', 22000),
(6, '2026-06-02', '2026-06-02 17:30:00', 'Entregado', 'Pagado', 4500),
(1, '2026-06-02', '2026-06-03 11:00:00', 'Entregado', 'Pagado', 6000),
(4, '2026-06-02', '2026-06-04 12:00:00', 'Entregado', 'Pagado', 12000),

(8, '2026-06-03', '2026-06-05 09:00:00', 'Terminado', 'Pagado', 8000),
(3, '2026-06-03', '2026-06-06 13:00:00', 'Terminado', 'Abonado', 7000),
(10, '2026-06-03', '2026-06-04 15:30:00', 'Entregado', 'Pagado', 23000),
(2, '2026-06-03', '2026-06-07 10:00:00', 'En Proceso', 'Abonado', 10000),
(9, '2026-06-03', '2026-06-05 18:00:00', 'Terminado', 'Pagado', 5000),
(5, '2026-06-03', '2026-06-04 11:00:00', 'Entregado', 'Pagado', 9000),

(7, '2026-06-04', '2026-06-06 14:00:00', 'Terminado', 'Pagado', 3000),
(1, '2026-06-04', '2026-06-05 16:30:00', 'Entregado', 'Pagado', 11200),
(6, '2026-06-04', '2026-06-07 12:00:00', 'En Proceso', 'Pendiente', 1750),
(3, '2026-06-04', '2026-06-06 09:30:00', 'Terminado', 'Pagado', 3200),
(8, '2026-06-04', '2026-06-08 10:00:00', 'En Proceso', 'Abonado', 4500),
(2, '2026-06-04', '2026-06-05 17:00:00', 'Entregado', 'Pagado', 2400),

(5, '2026-06-05', '2026-06-08 15:00:00', 'En Proceso', 'Abonado', 22000),
(9, '2026-06-05', '2026-06-07 11:00:00', 'Terminado', 'Pagado', 20000),
(4, '2026-06-05', '2026-06-06 18:00:00', 'Terminado', 'Pagado', 9000),
(10, '2026-06-05', '2026-06-09 10:00:00', 'En Proceso', 'Pendiente', 19000),
(1, '2026-06-05', '2026-06-08 12:00:00', 'En Proceso', 'Abonado', 17000),
(6, '2026-06-05', '2026-06-07 14:30:00', 'Terminado', 'Pagado', 21000),

(8, '2026-06-06', '2026-06-09 11:00:00', 'En Proceso', 'Pendiente', 20000),
(2, '2026-06-06', '2026-06-08 16:00:00', 'En Proceso', 'Abonado', 11000),
(7, '2026-06-06', '2026-06-10 10:00:00', 'En Proceso', 'Abonado', 18000),
(3, '2026-06-06', '2026-06-09 12:00:00', 'En Proceso', 'Pendiente', 10000),
(10, '2026-06-06', '2026-06-08 17:30:00', 'En Proceso', 'Abonado', 10000),
(5, '2026-06-06', '2026-06-07 15:00:00', 'Terminado', 'Pagado', 10000),

(9, '2026-06-07', '2026-06-10 09:30:00', 'En Proceso', 'Abonado', 9000),
(4, '2026-06-07', '2026-06-09 14:00:00', 'En Proceso', 'Pendiente', 9000),
(1, '2026-06-07', '2026-06-11 11:00:00', 'En Proceso', 'Abonado', 8000),
(6, '2026-06-07', '2026-06-08 18:00:00', 'En Proceso', 'Abonado', 8750),
(2, '2026-06-07', '2026-06-10 13:00:00', 'En Proceso', 'Pendiente', 12500),
(7, '2026-06-07', '2026-06-09 10:00:00', 'En Proceso', 'Abonado', 2500);

-- Detalle_Pedido (CORREGIDO PARA 37 PRODUCTOS)
INSERT INTO Detalle_Pedido (idPedido, idProducto, cantidad, precioHistorico, especificaciones) VALUES
(1, 28, 1, 18000, 'Que diga Feliz Cumpleaños'),
(2, 16, 2, 22000, 'Bien doradas'),
(3, 3, 10, 300, 'Bolsa de papel'),
(4, 24, 1, 20000, 'Con harto manjar'),
(5, 31, 20, 600, 'En bandeja plástica'), 
(6, 17, 5, 2500, 'Sin pasas'),
(7, 20, 10, 800, 'Con azúcar flor extra'),
(8, 31, 1, 18500, 'Que diga Feliz Aniversario'),
(9, 33, 1, 22000, 'Sin crema encima'),
(10, 4, 15, 300, 'Entregar calientes'),
(11, 23, 5, 1200, 'En caja de regalo'),
(12, 36, 1, 12000, 'Fruta fresca de la estación'),
(13, 34, 1, 8000, 'Corte tradicional'),
(14, 35, 20, 400, 'Con harto queso'), 
(15, 27, 1, 23000, 'Mantener bien helada'),
(16, 37, 1, 10000, 'Merengue bien dorado'),
(17, 22, 10, 500, 'Bien crocantes'),
(18, 20, 1, 900, 'Sin pasas'), 
(19, 2, 12, 250, 'Recién horneado'),
(20, 19, 4, 2800, 'Bien sazonado'),
(21, 8, 5, 350, 'Con semillas'),
(22, 9, 4, 800, 'Con crema pastelera'),
(23, 14, 10, 450, 'Formato mediano'),
(24, 15, 2, 1200, 'Bien crujiente'),
(25, 21, 1, 22000, 'Para servir hoy'),
(26, 35, 1, 20000, 'Nuez picada fina'),
(27, 25, 10, 900, 'Harto relleno'),
(28, 29, 1, 19000, 'Con cerezas enteras'),
(29, 30, 1, 17000, 'Piña picada fina'),
(30, 32, 1, 21000, 'Relleno suave'),
(31, 35, 1, 20000, 'Sin azúcar extra'),
(32, 37, 1, 300, 'Masa bien delgada'), 
(33, 32, 30, 500, 'Salsa golf aparte'),
(34, 34, 20, 350, 'Pan de bocado'), 
(35, 35, 20, 400, 'Pasta bien molida'),
(36, 36, 25, 450, 'Listas para hornear'), 
(37, 36, 20, 450, 'Sin picante'), 
(38, 37, 30, 300, 'Pasadas por cacao'), 
(39, 30, 20, 700, 'Con harto manjar'), 
(40, 17, 25, 500, 'Con coco rallado'),
(41, 18, 5, 2500, 'Con harto orégano'),
(42, 1, 10, 250, 'Recién hechas');