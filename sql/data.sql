-- insert into usuario (nombre, apellidos, email, passwordd, telefono, rol) values
-- ('Wilmer', 'Guevara', 'wilmer@mail.com', 'wilmer123', '987321654', 'ROLE_SUPERADMIN'),
-- ('Alexa', 'Torres', 'alexa@mail.com', 'alexa123', '987111111', 'ROLE_SUPERVISOR'),
-- ('Pedro', 'Ramírez', 'pedro@mail.com', 'pedro123', '987222222', 'ROLE_ADMINISTRADOR'),
-- ('Carla', 'Díaz', 'carla@mail.com', 'carla123', '987333333', 'ROLE_CLIENTE'),
-- ('Jorge', 'Medina', 'jorge@mail.com', 'jorge123', '987444444', 'ROLE_CLIENTE'),
-- ('Sofía', 'Cruz', 'sofia@mail.com', 'sofia123', '987666666', 'ROLE_CLIENTE'),
-- ('Laura', 'Martínez', 'laura@mail.com', 'laura123', '985678901', 'ROLE_CLIENTE'),
-- ('Diego', 'Vargas', 'diego@mail.com', 'diego123', '987999999', 'ROLE_CLIENTE');

insert into imagen (enlace, nombre, alt) values
-- images 002
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414719/p-1_pubfcz.png', 'NTP 399.002', 'NTP-399.002'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414719/p-2_qfgmkn.png', 'NTP 399.002', 'NTP-399.002'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414720/p-3_g8inhg.png', 'NTP 399.002', 'NTP-399.002'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414719/p-4_mzn9y3.png', 'NTP 399.002', 'NTP-399.002'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414928/cat_i6fbwp.png', 'Conducción de fluidos a presión Unión SP', 'NTP-399.002'),
-- images 003
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414818/p-1_aog6es.png', 'NTP 399.003', 'NTP-399.003'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414819/p-2_cjzbic.png', 'NTP 399.003', 'NTP-399.003'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414968/cat_qilmg5.png', 'Instalaciones de desagüe', 'NTP-399.003'),
-- images 006
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415081/p-1_g0bpdc.png', 'NTP 399.006', 'NTP-399.006'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415079/p-3_muj4fn.png', 'NTP 399.006', 'NTP-399.006'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415079/p-2_bbcygx.png', 'NTP 399.006', 'NTP-399.006'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415080/p-4_eyhkqw.png', 'NTP 399.006', 'NTP-399.006'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763414990/cat_jazzq2.png', 'Instalaciones eléctricas', 'NTP-399.006'),
-- images 166
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415178/p-1_tyocqb.png', 'NTP 399.166', 'NTP-399.166'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415177/p-2_ayg4dp.png', 'NTP 399.166', 'NTP-399.166'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415178/cat_c38aiu.png', 'Conducción de fluidos a presión Unión Roscada', 'NTP-399.166'),
-- images 1452
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415294/p-1_yjsgzs.png', 'NTP 399.166', 'NTP-399.166'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415292/p-2_g10aim.png', 'NTP 399.166', 'NTP-399.166'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415293/cat_ozb84u.png', 'Abastecimiento de agua, drenaje y alcantarillado con presión', 'NTP-399.166'),
-- images 4435
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415912/p-1_ikj6w3.png', 'NTP 399.166', 'NTP-399.166'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415331/p-2_behpvf.png', 'NTP 399.166', 'NTP-399.166'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415331/p-3_qxe13a.png', 'NTP 399.166', 'NTP-399.166'),
('https://res.cloudinary.com/dbxcev580/image/upload/v1763415330/cat_d5rljp.png', 'Alcantarillado y drenaje sin presión', 'NTP-399.166');


insert into categoria (nombre, norma, imagen_id, usos) values
('Conducción de fluidos a presión Unión SP', 'NTP 399.002', 5, 'Los tubos de PVC para agua a presión con unión tipo Campana-Espiga, son diseñados para soportar diferentes rangos de presiones según su presion nominal, lo que es ideal para instalaciones como riego, descarga con presión, agua potable a una temperatura de 25°C, el uso de unión con cemento solvente garantiza un unión hermética y duradera.'),
('Instalaciones de desagüe', 'NTP 399.003', 8, 'Los tubos de desagüe, se fabrican por el proceso de extrusión se usan como componentes esenciales en sistemas de fontanería para la evacuación de aguas residuales, instalaciones domiciliarias de desagüe y descarga de fluidos sin presión.'),
('Instalaciones eléctricas', 'NTP 399.006', 13, 'Los tubos de PVC para electricidad son ideales para instalaciones de baja y mediana tensión, por su uso se puede instalar tanto de forma aérea como enterrado, ya que su diseño le permite soportar esfuerzos externos, además de su fácil manipulación es ideal para protección de cables en casas, oficinas, tiendas supermercados.'),
('Conducción de fluidos a presión Unión Roscada', 'NTP 399.166', 16, 'Los tubos de PVC para agua a presión con unión tipo rosca, son diseñados para soportar presiones de hasta 10 bar de forma continua en instalaciones de servicio de agua potable a una temperatura de 25°C, el uso de la rosca garantiza la fácil manipulación o cambio en caso de reparación a la vez que brinda una buena heremeticidad con el ajuste.'),
('Abastecimiento de agua, drenaje y alcantarillado con presión', 'NTP ISO 1452-2', 19, 'Los tubos de PVC para agua a presión de norma NTP ISO 1452-2 son adecuados para diferentes tipo de instalaciones: conducciones de agua principales y derivaciones enterradas; transporte de agua en conducciones aéreas, en el exterior y en el interior de edificios; y drenaje y alcantarillado, enterrado o aéreo con presión, además que por su unión con anillo elastomérico son de fácil instalación sin uso de cementos manteniéndose una excelente hermeticidad.'),
('Alcantarillado y drenaje sin presión', 'NTP ISO 4435', 23, 'Los tubos de norma NTP ISO 4435 son diseñados para para sistemas sin presión de drenaje y alcantarillado, que transportan desagües domésticos e industriales, así como aguas superficiales; además de sus grandes propiedades a la corrosión es ideal para aguas servidas. Su fácil instalación con su unión con anillo elastomérico da una ventaja en la rapidez y tiempo.');

-- Productos relacionados con las categorías existentes
insert into producto (nombre, descripcion, imagen_id, categoria_id) values
-- CATEGORÍA 1: Tuberías para conducción de fluidos a presión Unión SP (imagen_id = 1)
('Tuberias para Fluidos a Presión 1/2" SP', 'Tubería de 1/2" para conducción de fluidos a presión, segura y eficiente.', 1, 1),
('Tuberias para Fluidos a Presión 3/4" SP', 'Tubería de 3/4" de alta durabilidad para sistemas de presión.', 2, 1),
('Tuberias para Fluidos a Presión 1" SP', 'Tubería de 1" diseñada para instalaciones hidráulicas bajo presión.', 3, 1),
('Tuberias para Fluidos a Presión 1 1/2" SP', 'Tubería de 1 1/2" resistente, ideal para sistemas presurizados.', 4, 1),
('Tuberias para Fluidos a Presión 2" SP', 'Tubería de 2" para transporte eficiente de fluidos a presión.', 4, 1),
('Tuberias para Fluidos a Presión 3" SP', 'Tubería de 3" para sistemas hidráulicos con estándares NTP - 399.002.', 2, 1),
('Tuberias para Fluidos a Presión 4" SP', 'Tubería de 4" de alta calidad para conducción de fluidos.', 1, 1),
('Tuberias para Fluidos a Presión 6" SP', 'Tubería de 6" con excelente resistencia a la presión.', 2, 1),
('Tuberias para Fluidos a Presión 8" SP', 'Tubería de 8" para aplicaciones industriales de fluidos a presión.', 3, 1),
-- CATEGORÍA 2: Tuberías para conducción de desagüe (imagen_id = 2)
('Tuberias para Desague 1 1/2" SP', 'Tubería de 1/2" para sistemas de desagüe, durable y eficiente.', 6, 2),
('Tuberias para Desague 2" SP', 'Tubería de 2" diseñada para drenaje y evacuación de líquidos.', 7, 2),
('Tuberias para Desague 3" SP', 'Tubería de 3" para desagüe, fabricada con altos estándares de calidad.', 6, 2),
('Tuberias para Desague 4" SP', 'Tubería de 4" para sistemas de drenaje confiables y resistentes.', 7, 2),
('Tuberias para Desague 6" SP', 'Tubería de 6" para evacuación de aguas residuales en grandes instalaciones.', 6, 2),
('Tuberias para Desague 8" SP', 'Tubería de 8" para desagüe, ideal para redes de saneamiento.', 7, 2),
-- CATEGORÍA 3: Tuberías para instalaciones eléctricas de desagüe (imagen_id = 3)
('Tuberias para Desague 1/2" SP', 'Tubería de 1/2" para instalación eléctrica, resistente y flexible.', 9, 3),
('Tuberias para Desague 5/8" SP', 'Tubería de 5/8" ideal para canalización eléctrica segura.', 10, 3),
('Tuberias para Desague 3/4" SP', 'Tubería de 3/4" para protección de cables eléctricos.', 11, 3),
('Tuberias para Desague 1" SP', 'Tubería de 1" para instalaciones eléctricas con alta durabilidad.', 12, 3),
('Tuberias para Desague 1 1/2" SP', 'Tubería de 1 1/2" para canalización eficiente de conductores eléctricos.', 11, 3),
('Tuberias para Desague 2" SP', 'Tubería de 2" para infraestructura eléctrica, segura y confiable.', 10, 3),
-- CATEGORÍA 4: Tuberías para fluidos a presión Unión Roscada (imagen_id = 4)
('Tuberias para Fluidos a Presion con Unión Roscada 1/2"', 'Tubería de 1/2" con unión roscada para fácil instalación en sistemas de presión.', 14, 4),
('Tuberias para Fluidos a Presion con Unión Roscada 3/4"', 'Tubería de 3/4" con rosca, ideal para conexiones hidráulicas.', 15, 4),
('Tuberias para Fluidos a Presion con Unión Roscada 1"', 'Tubería de 1" con unión roscada, resistente y segura.', 14, 4),
('Tuberias para Fluidos a Presion con Unión Roscada 1 1/4"', 'Tubería de 1 1/4" con rosca para sistemas de presión confiables.', 15, 4),
('Tuberias para Fluidos a Presion con Unión Roscada 1 1/2"', 'Tubería de 1 1/2" con unión roscada para montaje rápido.', 14, 4),
('Tuberias para Fluidos a Presion con Unión Roscada 2"', 'Tubería de 2" con conexión roscada, ideal para redes de presión.', 15, 4),
-- CATEGORÍA 5: Tuberías para abastecimiento de agua, drenaje y alcantarillado con presión (imagen_id = 5)
('Tuberias para Fluidos a Presión 63mm UF', 'Tubería de 63mm para sistemas de presión, fabricada según NTP - ISO 1452.', 17, 5),
('Tuberias para Fluidos a Presión 75mm UF', 'Tubería de 75mm para conducción de fluidos a presión, conforme a normativas.', 18, 5),
('Tuberias para Fluidos a Presión 90mm UF', 'Tubería de 90mm ideal para redes de fluidos presurizados, resistente y confiable.', 17, 5),
('Tuberias para Fluidos a Presión 110mm UF', 'Tubería de 110mm diseñada para soportar presión en sistemas hidráulicos.', 18, 5),
('Tuberias para Fluidos a Presión 140mm UF', 'Tubería de 140mm con alta resistencia para aplicaciones de presión.', 17, 5),
('Tuberias para Fluidos a Presión 160mm UF', 'Tubería de 160mm para redes de presión, garantizando durabilidad y seguridad.', 18, 5),
('Tuberias para Fluidos a Presión 200mm UF', 'Tubería de 200mm para grandes instalaciones de fluidos a presión.', 17, 5),
-- CATEGORÍA 6: Tuberías para alcantarillado y drenaje sin presión (imagen_id = 6)
('Tuberias para Alcantarillado 110mm UF', 'Tubería de 110mm para redes de alcantarillado, resistente y durable.', 20, 6),
('Tuberias para Alcantarillado 160mm UF', 'Tubería de 160mm ideal para sistemas de drenaje y alcantarillado.', 21, 6),
('Tuberias para Alcantarillado 200mm UF', 'Tubería de 200mm para conducción eficiente de aguas residuales.', 22, 6);

-- -- Mensajes
-- insert into mensaje
-- (nombre, tipo_documento, documento, telefono, email, contenido, tipo, estado, medio_respuesta, usuario_id, creacion)
-- values
-- ('Juan Pérez', 'DNI', '12345678', '+987654321', 'juanperez@gmail.com',
--  'Estoy interesado en sus productos de PVC de 2 pulgadas. ¿Podrían enviarme una cotización detallada?',
--  'CONTACTENOS', 'PENDIENTE', null, 4, '2024-12-05 11:30:30'),

-- ('María Gómez', 'RUC', '20654321987', '+912345678', 'maria.gomez@yahoo.com',
--  'Realicé una compra hace dos semanas y el pedido llegó incompleto. Necesito una solución urgente.',
--  'QUEJA', 'EN_PROCESO', 'EMAIL', 4, '2023-08-30 11:30:30'),

-- ('Carla Rivas', 'PASAPORTE', 'PZ1122334', '+12345678', 'cliente.anonimo@test.com',
--  '¿Qué tipo de garantía ofrecen en las tuberías de PVC clase 10? Estoy considerando una compra mayorista.',
--  'CONTACTENOS', 'CERRADO', 'WHATSAPP', NULL, '2024-12-05 11:30:30'),

-- ('Carlos López', 'DNI', '11223344', '+999888777', 'carlos.lopez@hotmail.com',
--  'Compré tuberías de PVC de 3 pulgadas y algunas vinieron con defectos de fabricación. Deseo presentar un reclamo.',
--  'RECLAMO', 'CERRADO', 'PRESENCIAL', 5, '2025-01-25 11:30:30'),

-- ('Ana Torres', 'OTRO', '94810122', '+955666444', 'ana.torres@gmail.com',
--  'La atención en la sucursal de San Isidro fue deficiente. Agradecería que me contacten para resolverlo.',
--  'QUEJA', 'RESUELTO', 'PRESENCIAL', NULL, '2025-10-16 11:30:30'),

-- ('Pedro Salazar', 'DNI', '44556677', '+988776655', 'pedro.salazar@empresa.com',
--  'Estoy buscando cotización para 100 metros de tubería PVC de 4" y accesorios de unión.',
--  'CONTACTENOS', 'PENDIENTE', NULL, 6, '2025-10-10 10:15:20'),

-- ('Lucía Fernández', 'RUC', '20588741236', '+976543210', 'ventas@constructoraandes.pe',
--  'Requerimos cotización por mayor para tuberías de PVC clase 10 y 15. Favor de enviar proforma por correo.',
--  'CONTACTENOS', 'EN_PROCESO', 'EMAIL', 7, '2025-09-02 14:40:50'),

-- ('Diego Ramos', 'DNI', '33445566', '+933221100', 'diegoramos@gmail.com',
--  'He intentado comunicarme varias veces sin respuesta. Necesito saber el estado de mi pedido.',
--  'QUEJA', 'EN_PROCESO', 'WHATSAPP', 6, '2025-08-21 09:25:00'),

-- ('Rosa Medina', 'DNI', '55667788', '+977665544', 'rosa.medina@outlook.com',
--  'Deseo obtener información sobre los métodos de pago para pedidos al por mayor.',
--  'CONTACTENOS', 'RESUELTO', 'EMAIL', NULL, '2025-07-15 16:45:10'),

-- ('Miguel Torres', 'DNI', '66778899', '+911223344', 'miguel.torres@gmail.com',
--  'Recibí un producto diferente al solicitado, por lo que quiero dejar constancia de mi reclamo.',
--  'RECLAMO', 'PENDIENTE', 'TELEFONO', 4, '2025-06-28 08:35:00');


-- insert into cotizacion (id, numero, estado, comentario, nombre, tipo_documento, documento, telefono, email, usuario_id, creacion) values
-- (1, 'COT-2024-001', 'PENDIENTE', 'Entrega urgente', 'Ana Torres', 'DNI', '11111111', '987111111', 'ana@example.com', 4, '2024-10-20 09:15:00'),
-- (2, 'COT-2024-002', 'EN_PROCESO', 'Revisar stock', 'Luis Ramírez', 'DNI', '22222222', '987222222', 'luis@example.com', 4, '2024-10-20 11:30:00'),
-- (3, 'COT-2024-003', 'ENVIADA', 'Cliente solicita información', 'Carla Díaz', 'RUC', '33333333', '987333333', 'carla@example.com', 4, '2024-11-02 10:00:00'),
-- (4, 'COT-2024-004', 'ACEPTADA', 'Entrega programada', 'Jorge Medina', 'DNI', '44444444', '987444444', 'jorge@example.com', 5, '2024-11-10 15:45:00'),
-- (5, 'COT-2024-005', 'RECHAZADA', 'Cliente canceló pedido', 'Juan Pérez', 'DNI', '12345678', '987654321', 'juan@example.com', 8, '2024-12-01 09:00:00'),
-- (6, 'COT-2024-006', 'CERRADA', 'Cotización finalizada', 'María López', 'DNI', '87654321', '987123456', 'maria@example.com', 5, '2024-12-05 14:30:00'),
-- (7, 'COT-2025-007', 'PENDIENTE', 'Necesito entrega rápida', 'Pedro Gómez', 'RUC', '11223344', '986543210', 'pedro@example.com', 4, '2025-01-10 11:00:00'),
-- (8, 'COT-2025-008', 'ENVIADA', 'Revisar stock', 'Laura Martínez', 'DNI', '99887766', '985678901', 'laura@example.com', 6, '2025-01-15 16:20:00'),
-- (9, 'COT-2025-009', 'ACEPTADA', 'Entrega programada', 'Mario Silva', 'DNI', '55555555', '987555555', 'mario@example.com', 7, '2025-02-02 09:50:00'),
-- (10, 'COT-2025-010', 'RECHAZADA', 'Cliente urgente', 'Sofía Cruz', 'RUC', '66666666', '987666666', 'sofia@example.com', 6, '2025-02-14 12:15:00'),
-- (11, 'COT-2025-011', 'CERRADA', 'Revisar disponibilidad', 'Andrés Rojas', 'DNI', '77777777', '987777777', 'andres@example.com', 5, '2025-03-03 14:30:00'),
-- (12, 'COT-2025-012', 'PENDIENTE', 'Entrega rápida', 'Carolina Paredes', 'DNI', '88888888', '987888888', 'carolina@example.com', 5, '2025-03-15 12:45:00'),
-- (13, 'COT-2025-013', 'EN_PROCESO', 'Cliente urgente', 'Diego Vargas', 'RUC', '99999999', '987999999', 'diego@example.com', 8, '2025-04-01 09:20:00'),
-- (14, 'COT-2025-014', 'ENVIADA', 'Entrega programada', 'Natalia Ramos', 'DNI', '10101010', '987101010', 'natalia@example.com', 8, '2025-04-12 11:35:00'),
-- (15, 'COT-2025-015', 'ACEPTADA', 'Entrega rápida', 'Juan Pérez', 'DNI', '12345678', '987654321', 'juan@example.com', 6, '2025-05-02 08:00:00'),
-- (16, 'COT-2025-016', 'RECHAZADA', 'Cotización enviada por correo', 'Luis Castro', 'DNI', '12121212', '987121212', 'luis.castro@mail.com', 5, '2025-05-02 09:15:00'),
-- (17, 'COT-2025-017', 'CERRADA', 'Cliente aprobó la proforma', 'Marta Ruiz', 'RUC', '23232323', '987232323', 'marta.ruiz@mail.com', 5, '2025-05-02 10:00:00'),
-- (18, 'COT-2025-018', 'PENDIENTE', 'Esperando confirmación', 'David Pérez', 'DNI', '34343434', '987343434', 'davidp@mail.com', 5, '2025-05-03 14:40:00'),
-- (19, 'COT-2025-019', 'EN_PROCESO', 'Pago realizado', 'Andrea Sánchez', 'DNI', '45454545', '987454545', 'andrea@mail.com', 8, '2025-05-04 11:25:00'),
-- (20, 'COT-2025-020', 'ENVIADA', 'Cliente desistió de la compra', 'José Ramos', 'RUC', '56565656', '987565656', 'jose.ramos@mail.com', 8, '2025-05-05 16:55:00'),
-- (21, 'COT-2025-021', 'ACEPTADA', 'Se está preparando la cotización', 'Natalia Ortega', 'DNI', '67676767', '987676767', 'natalia@mail.com', 5, '2025-05-06 10:35:00'),
-- (22, 'COT-2025-022', 'RECHAZADA', 'Pedido entregado', 'Héctor Salas', 'DNI', '78787878', '987787878', 'hector@mail.com', 4, '2025-05-07 12:00:00'),
-- (23, 'COT-2025-023', 'CERRADA', 'Esperando confirmación de entrega', 'Daniela León', 'DNI', '89898989', '987898989', 'daniela@mail.com', 5, '2025-05-08 09:45:00'),
-- (24, 'COT-2025-024', 'PENDIENTE', 'Solicitud información adicional', 'Lucía Fernández', 'DNI', '90909090', '987909090', 'lucia@mail.com', 6, '2025-05-10 09:15:00'),
-- (25, 'COT-2025-025', 'EN_PROCESO', 'Revisión técnica', 'Pedro Gutiérrez', 'RUC', '91919191', '987919191', 'pedro.g@mail.com', 7, '2025-05-12 11:30:00'),
-- (26, 'COT-2025-026', 'ENVIADA', 'Cotización enviada al cliente', 'Carolina Rojas', 'DNI', '92929292', '987929292', 'carolina.r@mail.com', 8, '2025-05-14 14:45:00'),
-- (27, 'COT-2025-027', 'ACEPTADA', 'Cliente aprobó proforma', 'José Pérez', 'DNI', '93939393', '987939393', 'jose.p@mail.com', 7, '2025-05-16 10:00:00'),
-- (28, 'COT-2025-028', 'RECHAZADA', 'Pago parcial recibido', 'María Vargas', 'RUC', '94949494', '987949494', 'maria.v@mail.com', 7, '2025-05-18 16:30:00'),
-- (29, 'COT-2025-029', 'CERRADA', 'Pendiente confirmación medidas', 'Andrés Silva', 'DNI', '95959595', '987959595', 'andres@mail.com', 7, '2025-05-20 09:00:00'),
-- (30, 'COT-2025-030', 'PENDIENTE', 'Revisión almacén', 'Carla Díaz', 'DNI', '96969696', '987969696', 'carla.diaz@mail.com', 6, '2025-05-22 13:20:00'),
-- (31, 'COT-2025-031', 'EN_PROCESO', 'Cliente canceló pedido', 'Jorge Alarcón', 'DNI', '97979797', '987979797', 'jorge.a@mail.com', 6, '2025-05-23 08:40:00'),
-- (32, 'COT-2025-032', 'ENVIADA', 'Pedido entregado con éxito', 'Ana Ruiz', 'RUC', '98989898', '987989898', 'ana.ruiz@mail.com', 8, '2025-05-25 12:10:00'),
-- (33, 'COT-2025-033', 'ACEPTADA', 'Aprobado en obra', 'Luis Hernández', 'DNI', '99999990', '987999000', 'luis.h@mail.com', 5, '2025-05-30 15:45:00'),
-- (34, 'COT-2025-034', 'RECHAZADA', 'Cotización urgente', 'Sofía Torres', 'DNI', '10101010', '987101010', 'sofia.torres@mail.com', 4, '2025-06-01 11:00:00'),
-- (35, 'COT-2025-035', 'CERRADA', 'Cliente pagó', 'Miguel Gamarra', 'RUC', '20202020', '987202020', 'miguel.g@mail.com', 5, '2025-06-02 15:30:00'),
-- (36, 'COT-2025-036', 'PENDIENTE', 'Validación técnica', 'Carmen Silva', 'DNI', '30303030', '987303030', 'carmen.s@mail.com', 8, '2025-06-03 09:50:00'),
-- (37, 'COT-2025-037', 'ACEPTADA', 'Entrega programada', 'Ricardo Lozano', 'DNI', '40404040', '987404040', 'ricardo.l@mail.com', 5, '2025-08-04 17:25:00'),
-- (38, 'COT-2025-038', 'ENVIADA', 'Esperando respuesta cliente', 'Paola Gutiérrez', 'RUC', '50505050', '987505050', 'paola.g@mail.com', 6, '2025-08-05 10:40:00'),
-- (39, 'COT-2025-039', 'ACEPTADA', 'Cliente aprobó', 'Alberto Ramos', 'DNI', '60606060', '987606060', 'alberto@mail.com', 5, '2025-09-06 15:20:00'),
-- (40, 'COT-2025-040', 'RECHAZADA', 'Falta confirmar cantidades', 'Camila Sánchez', 'DNI', '70707070', '987707070', 'camila@mail.com', 4, '2025-10-07 09:10:00'),
-- (41, 'COT-2025-041', 'CERRADA', 'Entrega parcial aprobada', 'Juan Alvarado', 'RUC', '80808080', '987808080', 'juan.alvarado@mail.com', 6, '2025-10-08 13:45:00'),
-- (42, 'COT-2025-042', 'PENDIENTE', 'Solicitó descuento', 'Rosa Castillo', 'DNI', '11111111', '987111111', 'rosa.c@mail.com', 7, '2025-11-09 08:30:00'),
-- (43, 'COT-2025-043', 'EN_PROCESO', 'Aprobada cambios mínimos', 'Mario Vargas', 'DNI', '22222222', '987222222', 'mario.v@mail.com', 8, '2025-11-10 16:20:00'),
-- (44, 'COT-2025-044', 'ACEPTADA', 'Esperando validación ingeniería', 'Gabriela Torres', 'RUC', '33333333', '987333333', 'gabriela@mail.com', 6, '2025-11-11 10:10:00'),
-- (45, 'COT-2025-045', 'ACEPTADA', 'Cotización confirmada', 'Hugo Medina', 'DNI', '44444444', '987444444', 'hugo.m@mail.com', 6, '2025-11-11 14:55:00'),
-- (46, 'COT-2025-046', 'RECHAZADA', 'Pendiente firma de contrato', 'Juliana Flores', 'DNI', '55555555', '987555555', 'juliana@mail.com', 5, '2025-11-11 11:15:00'),
-- (47, 'COT-2025-047', 'ACEPTADA', 'Entrega completada', 'Ana Torres', 'DNI', '11111111', '987111111', 'ana@example.com', 5, '2025-11-12 09:15:00'),
-- (48, 'COT-2025-048', 'ACEPTADA', 'Revisar stock', 'Luis Ramírez', 'DNI', '22222222', '987222222', 'luis@example.com', 7, '2025-11-12 10:30:00'),
-- (49, 'COT-2025-049', 'ACEPTADA', 'Cliente solicita información', 'Carla Díaz', 'RUC', '33333333', '987333333', 'carla@example.com', 8, '2025-11-12 11:00:00'),
-- (50, 'COT-2025-050', 'ACEPTADA', 'Entrega programada', 'Jorge Medina', 'DNI', '44444444', '987444444', 'jorge@example.com', 5, '2025-11-12 13:41:00'),
-- (51, 'COT-2025-051', 'PENDIENTE', 'Entrega programada', 'Jorge Medina', 'DNI', '44444444', '987444444', 'jorge@example.com', 4, '2025-11-13 13:42:00'),
-- (52, 'COT-2025-052', 'PENDIENTE', 'Entrega programada', 'Jorge Medina', 'DNI', '44444444', '987444444', 'jorge@example.com', 5, '2025-11-13 13:43:00'),
-- (53, 'COT-2025-053', 'ACEPTADA', 'Entrega programada', 'Jorge Medina', 'DNI', '44444444', '987444444', 'jorge@example.com', 7, '2025-11-14 13:44:00'),
-- (54, 'COT-2025-054', 'ACEPTADA', 'Entrega programada', 'Jorge Medina', 'DNI', '44444444', '987444444', 'jorge@example.com', 6, '2025-11-14 13:45:00');


-- -- Detalles de cotización (continuación y completado)
-- insert into cotizacion_detalle (producto_id, cotizacion_id, cantidad) values
-- -- Cotización 1
-- (1, 1, 20),
-- (2, 1, 20),
-- -- Cotización 2
-- (3, 2, 12),
-- (1, 2, 5),
-- -- Cotización 3
-- (2, 3, 55),
-- -- Cotización 4
-- (1, 4, 32),

-- -- Cotización 5
-- (4, 5, 10),
-- (5, 5, 8),

-- -- Cotización 6
-- (6, 6, 12),
-- (7, 6, 15),

-- -- Cotización 7
-- (10, 7, 25),
-- (11, 7, 30),

-- -- Cotización 8
-- (13, 8, 20),
-- (14, 8, 12),

-- -- Cotización 9
-- (15, 9, 10),
-- (16, 9, 8),

-- -- Cotización 10
-- (18, 10, 5),
-- (19, 10, 7),

-- -- Cotización 11
-- (20, 11, 20),
-- (21, 11, 25),

-- -- Cotización 12
-- (23, 12, 15),
-- (24, 12, 10),

-- -- Cotización 13
-- (25, 13, 18),
-- (26, 13, 20),

-- -- Cotización 14
-- (27, 14, 12),
-- (28, 14, 10),

-- -- Cotización 15
-- (29, 15, 25),
-- (30, 15, 20),

-- -- Cotización 16
-- (32, 16, 10),
-- (33, 16, 15),

-- -- Cotización 17
-- (35, 17, 8),
-- (30, 17, 10),

-- -- Cotización 18
-- (28, 18, 12),
-- (32, 18, 15),

-- -- Cotización 19
-- (12, 19, 20),
-- (15, 19, 25),

-- -- Cotización 20
-- (1, 20, 12),
-- (5, 20, 8),

-- -- Cotización 21
-- (3, 21, 15),
-- (7, 21, 10),

-- -- Cotización 22
-- (10, 22, 25),

-- -- Cotización 23
-- (14, 23, 10),
-- (12, 23, 5),

-- -- Cotización 24
-- (18, 24, 20),

-- -- Cotización 25
-- (25, 25, 12),
-- (27, 25, 6),

-- -- Cotización 26
-- (30, 26, 18),
-- (29, 26, 10),

-- -- Cotización 27
-- (35, 27, 5),
-- (33, 27, 15),

-- -- Cotización 28
-- (1, 28, 12),
-- (5, 28, 8),

-- -- Cotización 29
-- (7, 29, 20),
-- (8, 29, 10),

-- -- Cotización 30
-- (9, 30, 15),
-- (10, 30, 10),
-- (11, 30, 15),
-- (12, 30, 10),

-- -- Cotización 31
-- (13, 31, 20),
-- (14, 31, 25),
-- (15, 31, 15),

-- -- Cotización 32
-- (20, 32, 30),
-- (21, 32, 10),

-- -- Cotización 33
-- (22, 33, 10),
-- (23, 33, 5),

-- -- Cotización 34
-- (25, 34, 15),
-- (26, 34, 20),

-- -- Cotización 35
-- (27, 35, 12),

-- -- Cotización 36
-- (28, 36, 10),
-- (30, 36, 8),

-- -- Cotización 37
-- (32, 37, 20),
-- (33, 37, 25),

-- -- Cotización 38
-- (1, 38, 10),
-- (5, 38, 15),

-- -- Cotización 39
-- (3, 39, 20),
-- (7, 39, 8),

-- -- Cotización 40
-- (2, 40, 12),
-- (4, 40, 10),

-- -- Cotización 41
-- (6, 41, 25),
-- (8, 41, 18),

-- -- Cotización 42
-- (10, 42, 20),
-- (11, 42, 12),

-- -- Cotización 43
-- (12, 43, 30),
-- (14, 43, 15),

-- -- Cotización 44
-- (15, 44, 18),
-- (16, 44, 10),

-- -- Cotización 45
-- (18, 45, 25),
-- (19, 45, 20),

-- -- Cotización 46
-- (20, 46, 15),
-- (21, 46, 10),

-- -- Cotización 47
-- (22, 47, 12),
-- (23, 47, 18),

-- -- Cotización 48
-- (24, 48, 14),
-- (25, 48, 20),

-- -- Cotización 49
-- (26, 49, 22),
-- (27, 49, 16),

-- -- Cotización 50
-- (28, 50, 10),
-- (30, 50, 15),

-- -- Cotizacion 54
-- (1, 51, 10),
-- (2, 51, 15),
-- (3, 51, 20),
-- (4, 51, 25),
-- (5, 51, 30),

-- (6, 52, 12),
-- (7, 52, 18),
-- (8, 52, 24),
-- (9, 52, 30),

-- (10, 53, 14),
-- (11, 53, 21),
-- (12, 53, 28),
-- (13, 53, 35),

-- (14, 54, 16),
-- (15, 54, 24),
-- (16, 54, 32),
-- (17, 54, 40);

-- insert into cotizacion_pdf (enlace, cotizacion_id) values
-- ('https://tuberiasperuanito.com/wp-content/uploads/2025/04/Tuberias-para-Alcantarillado-110mm-UF-scaled-e1750736328578-300x300.jpg', 2),
-- ('https://tuberiasperuanito.com/wp-content/uploads/2025/04/Tuberias-para-Alcantarillado-110mm-UF-scaled-e1750736328578-300x300.jpg', 4);
