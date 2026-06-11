-- ==========================================
-- OBJETIVO: Inserción de datos
-- ==========================================

-- 1. Insertar Productos (Catálogo)
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

-- 2. Insertar Insumos 
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

-- 3. Insertar Recetas 
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