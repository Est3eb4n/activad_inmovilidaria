INSERT INTO document (code, type_document, number_document) VALUES
('DOC001', 'Cédula de Ciudadanía', '123456789'),
('DOC002', 'Tarjeta de Identidad', '987654321'),
('DOC003', 'Pasaporte', 'PA123456'),
('DOC004', 'NIT', '900123456-1'),
('DOC005', 'Cédula de Extranjería', 'CE123456');

INSERT INTO place (code, city, country, addres, zip_code) VALUES
('PL01', 'Bogotá', 'Colombia', 'Calle 123 #45-67', 110111),
('PL02', 'Medellín', 'Colombia', 'Carrera 80 #34-56', 050012),
('PL03', 'Cali', 'Colombia', 'Avenida 5N #23-45', 760001),
('PL04', 'Barranquilla', 'Colombia', 'Calle 84 #45-23', 080001),
('PL05', 'Cartagena', 'Colombia', 'Avenida Pedro de Heredia #12-34', 130001);

INSERT INTO paymethod (code, name, active) VALUES
('PM01', 'Transferencia Bancaria', true),
('PM02', 'Efectivo', true),
('PM03', 'Tarjeta de Crédito', true),
('PM04', 'Cheque', false),
('PM05', 'PSE', true);

INSERT INTO categories (code, name, active) VALUES
('CAT01', 'Residencial', true),
('CAT02', 'Comercial', true),
('CAT03', 'Industrial', true),
('CAT04', 'Mixto', true),
('CAT05', 'Rural', false);

INSERT INTO type_vivienda (code, name) VALUES
('TV01', 'Apartamento'),
('TV02', 'Casa'),
('TV03', 'Local Comercial'),
('TV04', 'Oficina'),
('TV05', 'Bodega');

INSERT INTO type_dwelling (code, name) VALUES
('TD01', 'Venta'),
('TD02', 'Arriendo'),
('TD03', 'Arriendo con opción a compra'),
('TD04', 'Permuta'),
('TD05', 'Tiempo Compartido');

INSERT INTO type_contract (code, name) VALUES
('TC01', 'Contrato de Arrendamiento'),
('TC02', 'Contrato de Compraventa'),
('TC03', 'Contrato de Comodato'),
('TC04', 'Contrato de Administración'),
('TC05', 'Contrato de Leasing');

INSERT INTO status_dwelling (code, name) VALUES
('SD01', 'Disponible'),
('SD02', 'Arrendada'),
('SD03', 'Vendida'),
('SD04', 'En Mantenimiento'),
('SD05', 'Retirada del Mercado');

INSERT INTO cliente_nature (code, name) VALUES
('CN01', 'Persona Natural - Soltero/a'),
('CN02', 'Persona Natural - Casado/a'),
('CN03', 'Persona Natural - Unión Libre'),
('CN04', 'Persona Natural - Divorciado/a'),
('CN05', 'Persona Natural - Viudo/a');

INSERT INTO cliente_juridic (code, nombre_compania, representante_legal_nombre, representante_legal_tipo_doc, representante_legal_num_doc, representante_legal_email, representante_legal_telefono) VALUES
('CJ01', 'Inversiones ABC S.A.S.', 'Carlos Andrés Pérez', 'Cédula de Ciudadanía', '123456789', 'carlos@inversionesabc.com', '3101234567'),
('CJ02', 'Propiedades XYZ Ltda.', 'María Fernanda Gómez', 'Cédula de Ciudadanía', '987654321', 'maria@propiedadesxyz.com', '3202345678'),
('CJ03', 'Desarrollos Urbanos S.A.', 'Jorge Enrique Rodríguez', 'Cédula de Ciudadanía', '456789123', 'jorge@desarrollosurbanos.com', '3003456789'),
('CJ04', 'Fondo Inmobiliario Colombia', 'Ana Lucía Martínez', 'Pasaporte', 'PA789456', 'ana@fondoinmobiliario.com', '3154567890'),
('CJ05', 'Constructora Edificar S.A.', 'Pedro Antonio Sánchez', 'Cédula de Ciudadanía', '321654987', 'pedro@constructoraedificar.com', '3015678901');


INSERT INTO type_status (code, name) VALUES
('TS01', 'Activo'),
('TS02', 'Terminado'),
('TS03', 'En Mora'),
('TS04', 'Suspendido'),
('TS05', 'Cancelado');

INSERT INTO user (code, name, email, password, document_id, phone_number, place_id, user_type, active) VALUES
('US01', 'Admin Principal', 'admin@inmobiliaria.com', 'admin123', 1, 3101234567, 1, 'admin', true),
('US02', 'Agente María López', 'maria@inmobiliaria.com', 'agente123', 2, 3202345678, 2, 'agente', true),
('US03', 'Agente Carlos Ramírez', 'carlos@inmobiliaria.com', 'agente456', 3, 3003456789, 3, 'agente', true),
('US04', 'Supervisor Ana Torres', 'ana@inmobiliaria.com', 'super123', 4, 3154567890, 4, 'admin', true),
('US05', 'Agente Juan García', 'juan@inmobiliaria.com', 'agente789', 5, 3015678901, 5, 'agente', false);

INSERT INTO vivienda (vivienda_id, direccion, barrio, localidad, ciudad, m2_construido, m2_privado, num_habitaciones, num_cocinas, tiene_patio, num_matricula_inmobiliaria, tipo_uso_id, status_id) VALUES
(1, 'Carrera 15 #123-45', 'Chapinero', 'Chapinero', 'Bogotá', '120', '80', '3', '1', true, 'MI123456789', 1, 1),
(2, 'Calle 100 #45-67', 'Rosales', 'Usaquén', 'Bogotá', '200', '150', '4', '1', true, 'MI987654321', 1, 2),
(3, 'Avenida 4N #23-45', 'Granada', 'Sur', 'Cali', '80', '50', '2', '1', false, 'MI456789123', 2, 1),
(4, 'Carrera 80 #34-56', 'El Poblado', 'El Poblado', 'Medellín', '150', '100', '3', '2', true, 'MI321654987', 1, 3),
(5, 'Calle 84 #12-34', 'Alto Prado', 'Norte', 'Barranquilla', '300', '200', '5', '2', true, 'MI789123456', 1, 1);

INSERT INTO client (nat_cliente_id, jur_cliente_id, documento, document_id, nombre_razon_social, direccion, barrio, localidad, telefono, email, fecha_registro) VALUES
(1, NULL, '123456789', 1, 'Laura González', 'Calle 72 #12-34', 'Teusaquillo', 'Teusaquillo', '3101234567', 'laura@gmail.com', '2023-01-15'),
(2, NULL, '987654321', 2, 'Andrés Martínez', 'Carrera 7 #45-67', 'La Candelaria', 'La Candelaria', '3202345678', 'andres@gmail.com', '2023-02-20'),
(NULL, 1, '900123456-1', 4, 'Inversiones ABC S.A.S.', 'Avenida 6N #23-45', 'Centro', 'Centro', '3003456789', 'contacto@inversionesabc.com', '2023-03-10'),
(3, NULL, '456789123', 3, 'Sofía Ramírez', 'Calle 50 #34-56', 'Prado', 'Prado', '3154567890', 'sofia@gmail.com', '2023-04-05'),
(NULL, 2, '800987654-1', 5, 'Propiedades XYZ Ltda.', 'Carrera 45 #12-34', 'Buenavista', 'Buenavista', '3015678901', 'info@propiedadesxyz.com', '2023-05-12');

INSERT INTO contracts (id_vivenda, id_cliente, id_contrac, canon_arrendamiento, fecha_inicio, fecha_fin, num_poliza, comision_agente, id_status, certificado_ingresos, certificado_laboral, adiciones_admin) VALUES
(2, 1, 1, '2500000', '2023-06-01', '2024-05-31', 'POL123456', '40%', 1, '/docs/certificados/ingreso1.pdf', '/docs/certificados/laboral1.pdf', 'Ninguna'),
(4, 3, 2, '5000000', '2023-07-15', '2024-07-14', 'POL654321', '1%', 3, '/docs/certificados/ingreso2.pdf', '/docs/certificados/laboral2.pdf', 'Requiere póliza adicional'),
(1, 2, 1, '1800000', '2023-08-01', '2024-07-31', 'POL789123', '40%', 1, '/docs/certificados/ingreso3.pdf', '/docs/certificados/laboral3.pdf', 'Incluye parqueadero'),
(5, 4, 1, '3200000', '2023-09-01', '2024-08-31', 'POL321654', '40%', 2, '/docs/certificados/ingreso4.pdf', '/docs/certificados/laboral4.pdf', 'Ninguna'),
(3, 5, 2, '1500000', '2023-10-15', '2024-10-14', 'POL987321', '1%', 1, '/docs/certificados/ingreso5.pdf', '/docs/certificados/laboral5.pdf', 'Pago trimestral adelantado');

INSERT INTO payments (id_contrac, fecha_pago, valor, type_pay, periodo_pagado, id_status, fecha_corte) VALUES
(1, '2023-06-05', 2500000, 1, 'Junio 2023', 1, '2023-06-05'),
(1, '2023-07-03', 2500000, 1, 'Julio 2023', 1, '2023-07-03'),
(1, '2023-08-02', 2500000, 1, 'Agosto 2023', 1, '2023-08-02'),
(2, '2023-08-15', 5000000, 2, 'Agosto 2023', 3, '2023-08-20'),
(3, '2023-09-01', 1800000, 3, 'Septiembre 2023', 1, '2023-09-01'),
(4, '2023-10-01', 3200000, 1, 'Octubre 2023', 2, '2023-10-01'),
(5, '2023-11-01', 1500000, 4, 'Noviembre 2023', 1, '2023-11-01');