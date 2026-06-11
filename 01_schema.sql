-- ==========================================
-- OBJETIVO: Definición de Datos (DDL)
-- ==========================================


CREATE TABLE Cliente (
    idCliente SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(12),
    correo VARCHAR(100)
);

CREATE TABLE Productos (
    idProducto SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    precioUnitario INT NOT NULL
);

CREATE TABLE Insumos (
    idInsumo SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    unidadMedida VARCHAR(10) NOT NULL,
    stockActual DECIMAL(10,2) NOT NULL,
    stockMinimo DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pedido (
    idPedido SERIAL PRIMARY KEY,
    idCliente INT NOT NULL,
    fechaSolicitud DATE NOT NULL,
    fechaEntrega TIMESTAMP NOT NULL,
    estadoProduccion VARCHAR(20) NOT NULL,
    estadoPago VARCHAR(15) NOT NULL,
    montoTotal INT NOT NULL,
    CONSTRAINT fk_pedido_cliente 
        FOREIGN KEY(idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Detalle_Pedido (
    idPedido INT NOT NULL,
    idProducto INT NOT NULL,
    cantidad INT NOT NULL,
    precioHistorico INT NOT NULL,
    especificaciones VARCHAR(200),
    -- Llave primaria compuesta
    PRIMARY KEY (idPedido, idProducto),
    -- Llaves foráneas
    CONSTRAINT fk_detalle_pedido 
        FOREIGN KEY(idPedido) REFERENCES Pedido(idPedido),
    CONSTRAINT fk_detalle_producto 
        FOREIGN KEY(idProducto) REFERENCES Productos(idProducto)
);

CREATE TABLE Receta (
    idProducto INT NOT NULL,
    idInsumo INT NOT NULL,
    cantNecesaria DECIMAL(10,2) NOT NULL,
    -- Llave primaria compuesta
    PRIMARY KEY (idProducto, idInsumo),
    -- Llaves foráneas
    CONSTRAINT fk_receta_producto 
        FOREIGN KEY(idProducto) REFERENCES Productos(idProducto),
    CONSTRAINT fk_receta_insumo 
        FOREIGN KEY(idInsumo) REFERENCES Insumos(idInsumo)
);