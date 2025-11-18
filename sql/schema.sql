-- USE tuberiasperuanito;

-- --! Table usuario
-- create TABLE IF NOT EXISTS usuario (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     nombre VARCHAR(100) NOT NULL,
--     apellidos VARCHAR(100) NOT NULL,
--     email VARCHAR(150) UNIQUE NOT NULL,
--     passwordd VARCHAR(255) NOT NULL,
--     telefono VARCHAR(25) NOT NULL,
--     rol VARCHAR(20) NOT NULL DEFAULT 'ROLE_CLIENTE' CHECK (rol IN ('ROLE_SUPERADMIN', 'ROLE_ADMINISTRADOR', 'ROLE_SUPERVISOR', 'ROLE_CLIENTE'))
-- );

--! Table imagen
create TABLE IF NOT EXISTS imagen (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enlace VARCHAR(255) NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    alt VARCHAR(50) NOT NULL
);

--! Table categoria
create TABLE IF NOT EXISTS categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    usos TEXT NOT NULL,
    norma VARCHAR(50) NOT NULL,
    imagen_id INT NOT NULL,
    FOREIGN KEY (imagen_id) REFERENCES imagen (id) ON delete RESTRICT ON update CASCADE
);

--! Table producto
create TABLE IF NOT EXISTS producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    imagen_id INT NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (imagen_id) REFERENCES imagen (id) ON delete RESTRICT ON update CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categoria (id) ON delete RESTRICT ON update CASCADE
);

-- --! Table cotizacion
-- create TABLE IF NOT EXISTS cotizacion (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     -- datos de la cotizacion
--     numero VARCHAR(50) NOT NULL UNIQUE,
--     estado VARCHAR(20) NOT NULL DEFAULT 'PENDIENTE' CHECK (estado IN ('PENDIENTE', 'EN_PROCESO', 'ENVIADA', 'ACEPTADA', 'RECHAZADA', 'CERRADA')),
--     creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     comentario TEXT,
--     -- datos del cliente
--     nombre VARCHAR(200) NOT NULL,
--     tipo_documento VARCHAR(20) NOT NULL DEFAULT 'DNI' CHECK (tipo_documento IN ('DNI', 'RUC', 'PASAPORTE', 'OTRO')),
--     documento VARCHAR(30) NOT NULL,
--     telefono VARCHAR(25) NOT NULL,
--     email VARCHAR(150) NOT NULL,
--     -- empresa
--     observaciones TEXT,
--     -- usuario relacionado
--     usuario_id INT NOT NULL,
--     FOREIGN KEY (usuario_id) REFERENCES usuario (id) ON delete CASCADE ON update CASCADE
-- );

-- --! Table cotizacion_detalle
-- create TABLE IF NOT EXISTS cotizacion_detalle (
--     producto_id INT NOT NULL,
--     cotizacion_id INT NOT NULL,
--     cantidad INT NOT NULL,
--     PRIMARY KEY (producto_id, cotizacion_id),
--     FOREIGN KEY (producto_id) REFERENCES producto (id) ON delete CASCADE ON update CASCADE,
--     FOREIGN KEY (cotizacion_id) REFERENCES cotizacion (id) ON delete CASCADE ON update CASCADE
-- );

-- create TABLE IF NOT EXISTS cotizacion_pdf (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     enlace VARCHAR(255) NOT NULL,
--     creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     cotizacion_id INT NOT NULL UNIQUE,
--     FOREIGN KEY (cotizacion_id) REFERENCES cotizacion (id) ON delete CASCADE ON update CASCADE
-- );

-- --! Table mensaje
-- create TABLE IF NOT EXISTS mensaje (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     -- datos del remitente
--     nombre VARCHAR(200) NULL,
--     tipo_documento VARCHAR(20) NOT NULL DEFAULT 'DNI' CHECK (tipo_documento IN ('DNI', 'RUC', 'PASAPORTE', 'OTRO')),
--     documento VARCHAR(30) NULL,
--     telefono VARCHAR(25) NULL,
--     email VARCHAR(150) NULL,
--     -- contenido del mensaje
--     contenido TEXT NOT NULL,
--     tipo VARCHAR(20) NOT NULL DEFAULT 'CONTACTENOS' CHECK (tipo IN ('CONTACTENOS', 'QUEJA', 'RECLAMO')),
--     estado VARCHAR(20) NOT NULL DEFAULT 'PENDIENTE' CHECK (estado IN ('PENDIENTE', 'EN_PROCESO', 'RESUELTO', 'CERRADO')),
--     medio_respuesta VARCHAR(20) NULL CHECK (medio_respuesta IN ('EMAIL', 'TELEFONO', 'WHATSAPP', 'PRESENCIAL')),
--     -- metadata
--     creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     -- usuario relacionado
--     usuario_id INT NULL,
--     FOREIGN KEY (usuario_id) REFERENCES usuario (id) ON delete SET NULL ON update CASCADE
-- );

-- --! Table cotizacion_historial_estado
-- create TABLE IF NOT EXISTS cotizacion_historial_estado (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     cotizacion_id INT NOT NULL,
--     estado_anterior VARCHAR(20) NOT NULL CHECK (estado_anterior IN ('PENDIENTE', 'EN_PROCESO', 'ENVIADA', 'ACEPTADA', 'RECHAZADA', 'CERRADA')),
--     estado_nuevo VARCHAR(20) NOT NULL CHECK (estado_nuevo IN ('PENDIENTE', 'EN_PROCESO', 'ENVIADA', 'ACEPTADA', 'RECHAZADA', 'CERRADA')),
--     observacion TEXT NULL,
--     fecha_cambio DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     usuario_id INT NULL,
--     FOREIGN KEY (cotizacion_id) REFERENCES cotizacion(id) ON delete CASCADE ON update CASCADE,
--     FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON delete SET NULL ON update CASCADE
-- );


CREATE TABLE IF NOT EXISTS imagen (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    enlace VARCHAR(255) NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    alt VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS categoria (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    usos TEXT NOT NULL,
    norma VARCHAR(50) NOT NULL,
    imagen_id INT NOT NULL,
    FOREIGN KEY (imagen_id) REFERENCES imagen (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS producto (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    imagen_id INT NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (imagen_id) REFERENCES imagen (id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categoria (id) ON DELETE RESTRICT ON UPDATE CASCADE
);