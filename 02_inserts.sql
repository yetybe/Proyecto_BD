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
('Colisas', 'Panadería', 350),
('Rosita', 'Panadería', 350),
('Chocoso', 'Panadería', 400),
('Pan Integral', 'Panadería', 350),
('Berlín', 'Panadería', 800),
('Pan de Completo', 'Panadería', 200),
('Pan de Hamburguesa', 'Panadería', 250),
('Pan Bocado de Dama', 'Panadería', 150),
('Pan Frica', 'Panadería', 300),
('Pan Ciabatta', 'Panadería', 450),
('Baguette', 'Panadería', 1200),
('Empanada de Queso', 'Panadería', 2000),
('Empanada de Pino', 'Panadería', 2500),
('Empanada Napolitana', 'Panadería', 2500),
('Empanada Mechada Queso', 'Panadería', 2800),

-- Hojarasca (IDs 20 al 27)
('Chilenitos', 'Hojarasca', 800),
('Torta Pompadur', 'Hojarasca', 22000),
('Palmeritas', 'Hojarasca', 500),
('Alfajor Mendocino', 'Hojarasca', 1200),
('Torta Mil Hojas', 'Hojarasca', 20000),
('Cachitos con Manjar', 'Hojarasca', 900),
('Torta Amor', 'Hojarasca', 24000),
('Torta de Merengue Hojarasca', 'Hojarasca', 23000),

-- Bizcochos y Pastelería Dulce (IDs 28 al 40)
('Torta 3 Leches', 'Bizcochos', 18000),
('Torta Selva Negra', 'Bizcochos', 19000),
('Torta de Piña Crema', 'Bizcochos', 17000),
('Torta Moka', 'Bizcochos', 18500),
('Torta Panqueque Naranja', 'Bizcochos', 21000),
('Torta Panqueque Trufa', 'Bizcochos', 22000),
('Brazo de Reina', 'Bizcochos', 8000),
('Torta Manjar Nuez', 'Bizcochos', 20000),
('Tartaleta de Frutas', 'Bizcochos', 12000),
('Pie de Limón', 'Bizcochos', 10000),
('Kuchen de Nuez', 'Bizcochos', 11000),
('Kuchen de Manzana', 'Bizcochos', 9000),
('Empolvados', 'Bizcochos', 700),

-- Coctelería (IDs 41 al 50)
('Canapés de Palmito', 'Coctelería', 400),
('Canapés de Camarón', 'Coctelería', 600),
('Tapaditos de Ave Pimiento', 'Coctelería', 500),
('Tapaditos de Ave Mayo', 'Coctelería', 500),
('Mini Pizzetas', 'Coctelería', 350),
('Empanaditas de Queso Cocktail', 'Coctelería', 400),
('Empanaditas de Pino Cocktail', 'Coctelería', 450),
('Trufas de Chocolate', 'Coctelería', 300),
('Cachitos Cocktail', 'Coctelería', 400),
('Mini Alfajores', 'Coctelería', 350);

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
-- Receta: Hallulla (1)
(1, 1, 100.00), -- Harina
(1, 3, 2.00),   -- Sal
(1, 6, 10.00),  -- Manteca
(1, 4, 3.00),   -- Levadura

-- Receta: Marraqueta (2)
(2, 1, 120.00), -- Harina
(2, 3, 2.50),   -- Sal
(2, 4, 4.00),   -- Levadura

-- Receta: Empanada de Queso (16)
(16, 1, 80.00), -- Harina
(16, 6, 15.00), -- Manteca
(16, 14, 100.00), -- Queso Mantecoso

-- Receta: Empanada de Pino (17)
(17, 1, 80.00), -- Harina
(17, 6, 15.00), -- Manteca
(17, 15, 80.00), -- Carne Molida
(17, 16, 60.00), -- Cebolla
(17, 19, 10.00), -- Aceitunas
(17, 10, 0.50), -- Huevos (mitad de huevo duro)

-- Receta: Empanada Napolitana (18)
(18, 1, 80.00), -- Harina
(18, 14, 60.00), -- Queso
(18, 17, 40.00), -- Jamón
(18, 20, 30.00), -- Tomate

-- Receta: Empanada Mechada Queso (19)
(19, 1, 80.00), -- Harina
(19, 14, 60.00), -- Queso
(19, 18, 80.00), -- Carne Mechada

-- Receta: Torta 3 Leches (28)
(28, 1, 500.00), -- Harina
(28, 2, 400.00), -- Azúcar
(28, 10, 8.00),  -- Huevos
(28, 8, 1000.00), -- Leche

-- Receta: Torta Mil Hojas (24)
(24, 1, 800.00), -- Harina
(24, 7, 300.00), -- Mantequilla
(24, 11, 1500.00), -- Manjar

-- Receta: Chilenitos (20)
(20, 1, 50.00),  -- Harina
(20, 10, 1.00),  -- Huevos
(20, 11, 80.00); -- Manjar

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

-- Detalle_Pedido
INSERT INTO Detalle_Pedido (idPedido, idProducto, cantidad, precioHistorico, especificaciones) VALUES
(1, 28, 1, 18000, 'Que diga Feliz Cumpleaños'),
(2, 16, 2, 2000, 'Bien doradas'),
(3, 3, 10, 300, 'Bolsa de papel'),
(4, 24, 1, 20000, 'Con harto manjar'),
(5, 41, 20, 400, 'En bandeja plástica'),
(6, 17, 5, 2500, 'Sin pasas'),
(7, 20, 10, 800, 'Con azúcar flor extra'),
(8, 31, 1, 18500, 'Que diga Feliz Aniversario'),
(9, 33, 1, 22000, 'Sin crema encima'),
(10, 4, 15, 300, 'Entregar calientes'),
(11, 23, 5, 1200, 'En caja de regalo'),
(12, 36, 1, 12000, 'Fruta fresca de la estación'),
(13, 34, 1, 8000, 'Corte tradicional'),
(14, 45, 20, 350, 'Con harto queso'),
(15, 27, 1, 23000, 'Mantener bien helada'),
(16, 37, 1, 10000, 'Merengue bien dorado'),
(17, 22, 10, 500, 'Bien crocantes'),
(18, 39, 1, 9000, 'Sin pasas'),
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
(32, 38, 1, 11000, 'Masa bien delgada'),
(33, 42, 30, 600, 'Salsa golf aparte'),
(34, 43, 20, 500, 'Pan de bocado'),
(35, 44, 20, 500, 'Pasta bien molida'),
(36, 46, 25, 400, 'Listas para hornear'),
(37, 47, 20, 450, 'Sin picante'),
(38, 48, 30, 300, 'Pasadas por cacao'),
(39, 49, 20, 400, 'Con harto manjar'),
(40, 50, 25, 350, 'Con coco rallado'),
(41, 18, 5, 2500, 'Con harto orégano'),
(42, 1, 10, 250, 'Recién hechas');




