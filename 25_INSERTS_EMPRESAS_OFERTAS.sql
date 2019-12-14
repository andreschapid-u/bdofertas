--
-- LOCALIZACIONES
--
-- truncate table ofertas.empresas_sectores cascade;
-- truncate table ofertas.empresas cascade;
-- truncate table ofertas.ofertas cascade;
-- truncate table ofertas.localizacion cascade;
-- truncate table ofertas.ofertas_software cascade;
-- commit;

--Localizaciones Mamian 101 -110, Vanessa 111-120, Santiago 121-130
INSERT INTO ofertas.localizacion(id_aut_localizacion, codigo_postal, direccion, barrio, id_ciudad)
VALUES
(101, 99001, 'Calle 11N No 23-55', 'La Paz', 165),
(102, 99001, 'Calle 12N No 23-55', 'El Cadillal', 165),
(103, 99001, 'Calle 13N No 23-55', 'Remo', 165),
(104, 99001, 'Calle 14N No 23-55', 'Esmeralda', 165),
(105, 99001, 'Calle 15N No 23-55', 'Boulevard del Rio', 165),
(106, 99001, 'Calle 16N No 23-55', 'Santa Clara', 165),
(107, 99001, 'Calle 17N No 23-55', 'La Pamba', 165),
(108, 99001, 'Calle 18N No 23-55', 'Chama', 165),
(109, 99001, 'Calle 19N No 23-55', 'Lomas de Granada', 165),
(110, 99001, 'Calle 20N No 23-55', 'Los Naranjos', 165),
(111, 99001, 'Calle 1N No 23-55', 'La Paz', 165),
(112, 99001, 'Calle 2N No 23-55', 'La Esmeralda', 165),
(113, 99001, 'Calle 3N No 23-55', 'El Empedrado', 165),
(114, 99001, 'Calle 4N No 23-55', 'El Centro', 165),
(115, 99001, 'Calle 5N No 23-55', 'Santa Ines', 165),
(116, 99001, 'Calle 6N No 23-55', 'La Paz', 165),
(117, 99001, 'Calle 7N No 23-55', 'El Obando', 165),
(118, 99001, 'Calle 8N No 23-55', 'El Ortigal', 165),
(119, 99001, 'Calle 9N No 23-55', 'El Recuerdo', 165),
(120, 99001, 'Calle 10N No 23-55', 'San Camilo', 165),
(121, 99001, 'Calle falsa 123 No 1', 'Pomona', 165),
(122, 99001, 'Carrera 3 #2a-05', 'Quintas de josemiguel', 165),
(123, 99001, 'Calle 2N No 21-43', 'Aldea', 165),
(124, 99001, 'Calle 2', 'El Centro', 165),
(125, 99001, 'Carrera 10 No 10-20', 'Santa Ines', 165),
(126, 99001, 'Calle 6N No 10-49', 'La Paz', 165),
(127, 99001, 'Calle 7N No 23-55', 'Maria Occidente', 165),
(128, 99001, 'Calle 8N', 'Colegio Comfacauca', 165),
(129, 99001, 'Calle 9N No 23-55', 'El Recuerdo', 165),
(130, 99001, 'Carrera 1a No 23-55', 'Bello Horizonte', 165),
(201, 99001, 'Calle 8A No 52-63', 'La Paz', 165),
(202, 99001, 'Calle 8A No 52-68', 'El Cadillal', 165),
(203, 99001, 'Calle 8A No 52-15', 'Remo', 165),
(204, 99001, 'Calle 8A No 52-16', 'Lomas de granada', 165),
(205, 99001, 'Calle 8A No 52-69', 'La Sombrilla', 165),
(206, 99001, 'Calle 8A No 52-67', 'Santa Clara', 165),
(207, 99001, 'Calle 8A No 52-60', 'Brisas de Pubenza', 165),
(208, 99001, 'Calle 8A No 52-65', 'MAria Occidente', 165),
(209, 99001, 'Calle 8A No 52-66', 'Lomas de Granada', 165),
(210, 99001, 'Calle 8A No 52-62', 'Camilo Torres', 165);

-- 
-- EMPRESAS
--


--Empresas Mamian 1-10, Empresas Vanessa 11-20, Satiago 21-30
INSERT INTO ofertas.empresas(id_aut_empresa, nit, nombre, razon_social, anio_creacion, numero_empleados, ingresos, sitio_web, id_direccion, estado, fecha_registro, fecha_activacion, fecha_vencimiento, total_publicaciones, limite_publicaciones, num_publicaciones_actuales, correo, telefono, url_logo, url_doc_camaracomercio, descripcion)
VALUES
(1, '666999666999666', 'Leva Corp', 'Leva Corp Enterprise and Informatic Security', 2016, '11 - 50', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 101, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad inform�tica, brindando a los clientes la posibilidad de elevar los nivel'),
(2, '666999666999667', 'GPT Software', 'GPT Software, Global Power Technology', 2015, '11 - 50', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 102, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Soluciones expertas al tu alcance'),
(3, '666999666999668', 'Proware', 'Mantenimiento de computadores', 2008, '11 - 50', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 103, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Proware, el futuro en tus manos'),
(4, '666999666999669', 'Hospital La Nueva Gracia', 'Comprometidos con tigo y con tu familia', 1992, '11 - 50', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 104, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Hospital nueva gracia, el futuro en tus manos'),
(5, '666999666999610', 'Hotel Camino Real', 'Albergamos tus sueños', 2001, '151 - 300', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 105, 'Inactivo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Hospital nueva gracia, el futuro en tus manos'),
(6, '666999666999611', 'Fisioterapia del Norte', 'Tu salud fisica en manos expertas', 2014, '11 - 50', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 106, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Fisioterapia del norte, el futuro en tus manos'),
(7, '666999666999612', 'Drinking Homero Bar', 'Elevate your social network', 2017, '11 - 50', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 107, 'Inactivo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Drinking Homero Bar, el futuro en tus manos'),
(8, '666999666999613', 'Royal Films', 'AUTD', 1980, '501 - 1000', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 108, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Royal Films, el futuro en tus manos'),
(9, '666999666999614', 'Bancolombia', 'Seguimos contigo', 1836, '501 - 1000', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 109, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Bancolombia, el futuro en tus manos'),
(10, '666999666999615', 'Unimiratire', 'Protegemos tu futuro', 2006, '11 - 50', '10.000.001 - 25.000.000', 'www.levacorp.org/dashboard/home', 110, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'DIAN, el futuro en tus manos'),
(11, '123547846795411', 'Soft Corp', 'Soft Corp Enterprise and Informatic Security', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 111, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(12, '123547846795412', 'Software Corp', 'Software Corp Enterprise and Informatic Security', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softwarecorp.org/dashboard/home', 112, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(13, '123547846795413', 'Abogados SA', 'cuidamos tu vida legal', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 113, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(14, '123547846795414', 'Contadora SA', 'Tus finanzas seguras', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 114, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(15, '123547846795415', 'Cromatic', 'Diseños para toda ocacion', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 115, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(16, '123547846795416', 'Asmet Salud', 'el cuidado de tu salud en nuestras manos', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 116, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(17, '123547846795417', 'Rehabilitar', 'Recupera con nosotros lo que haz perdido', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 117, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(18, '123547846795418', 'Davivienda', 'financiera de Colombia', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 118, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(19, '123547846795419', 'OneLife', 'Together For Me', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 119, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(20, '123547846795420', 'Tu Diseno', 'Plasmasmos tus pensamientos en papel', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.softcorp.org/dashboard/home', 120, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@levacorp.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Levacorp es una empresa que se especializa en seguridad informática, brinando a los clientes la posibilidad de elevar los niveles del software de su empresa y estar prevenido ante los ataques del mundo moderno'),
(21, '333456789101112', 'Valve Corp', 'Juegos a bajo costo', 2000, '11 - 50', '10.000.001 - 25.000.000', 'www.valvecorp.com', 121, 'Activo', '2015-08-22', '2015-09-22', '2020-09-22', 8, 12, 5, 'ventas_valve@valvecorp.com', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Empresa especializada en cuidar tus compras en steam, donde te ofrecemos muchos medios de pago al mejor costo, siempre a tu servicio'),
(22, '333456789131415', 'Google Popayan', 'Sucursal abriendo tus sueños', 2018, '11 - 50', '10.000.001 - 25.000.000', 'www.googlepopayan.com', 122, 'Activo', '2018-12-12', '2019-09-22', '2020-09-22', 8, 12, 5, 'informacion@gmail.com', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Somos una nueva sucursal que busca a los mejores desarrolladores del mundo para nuestras investigaciones'),
(23, '333456789161718', 'PokerOnline', 'Apuestas en linea', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.pokerstars.com', 123, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@poker.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Empresa de apuestas en linea'),
(24, '333456789192021', 'Constructora Velasco', 'Construcciones para tu pais', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.construvelasco.com', 124, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion_velasco@constructora.com', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Construcciones Velasco, la mejor solucion'),
(25, '333456789222324', 'CRC', 'Corporacion regional del Cauca', 1995, '11 - 50', '10.000.001 - 25.000.000', 'www.crc.gov.co', 125, 'Activo', '2015-08-22', '2015-09-22', '2020-09-22', 8, 12, 5, 'informacion@crc.gov.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'CRC, Empresa publica que busca mejorar el tema del medio ambiente, generando concientizacion y acciones'),
(26, '333456789252627', 'Frisby', 'Pollo de calidad', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.frisby.com', 126, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'ventas@frisby.com', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Pollo rico, pollo Frisby'),
(27, '333456789282930', 'Banco Popular', 'Guarda tu dinero con el grupo aval', 2009, '11 - 50', '10.000.001 - 25.000.000', 'www.bancolombia.com', 127, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@bancolombia.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Bancolombia, dinero a salvo'),
(28, '333456789313233', 'San Jose', 'Hospital a tu servicio', 1998, '11 - 50', '10.000.001 - 25.000.000', 'www.hospitalsanjose.com', 128, 'Activo', '2015-08-22', '2016-09-22', '2020-09-22', 8, 12, 5, 'informacion@hsanjose.com', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'San jose, hospital al servicio de todos los pacientes'),
(29, '333456789343536', 'geeksafe', 'seguridad a tu nivel', 2011, '11 - 50', '10.000.001 - 25.000.000', 'www.geeksafe.com', 129, 'Activo', '2017-08-22', '2017-09-22', '2020-09-22', 8, 12, 5, 'informacion@geeksafe.com.co', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'seguridad en todo'),
(30, '333456789373839', 'sony', 'Productos de calidad', 1980, '11 - 50', '10.000.001 - 25.000.000', 'www.sony.com', 130, 'Inactivo', '2015-08-22', '2015-09-22', '2017-09-22', 8, 12, 5, 'informacion@sony.com', NULL, 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'https://images.freeimages.com/images/large-previews/7bc/bald-eagle-1-1400106.jpg', 'Sony, los mejores productos, tu mejor opcion');
-- 
-- SECTORES DE LAS EMPRESAS
--

--sectores Mamian 1-10, Vanessa 11-20, Santiago 21-30
INSERT INTO ofertas.empresas_sectores(id_empresa, id_sub_sector)
VALUES
(1, 76),
(1, 114),
(2, 76),
(2, 114),
(3, 76),
(3, 114),
(4, 93),
(5, 81),
(5, 172),
(6, 93),
(7, 172),
(8, 71),
(10, 64),
(11, 76),
(11, 114),
(12, 76),
(12, 114),
(13, 76),
(13, 114),
(14, 93),
(15, 81),
(15, 172),
(16, 93),
(17, 172),
(18, 71),
(20, 64),
(21, 76),
(21, 114),
(22, 76),
(22, 114),
(23, 76),
(23, 114),
(24, 93),
(25, 81),
(25, 172),
(26, 93),
(27, 172),
(28, 71),
(30, 64);

-- 
-- OFERTAS LABORALES
--

--ofertas 100 - 104 Mamian, 111-115 Vanessa, 120-125 Santiago
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (100, 2, 'Desarrollador de software', 'Se busca desarrollador de software para trabajar en PHP', 176, 2, 3, 'Sin experiencia', 0, '2019-08-22', '2019-12-22', 'Aceptada', 'Finalizada sin contratación', 32, 'Habilidades en Framework de desarrollo symfony 3.4 o 4.2 (demostrable)', 25, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values  (101, 2, 'Administrador base de datos', 'Se busca DBA para bases de datos oracle y postgress', 278, 1, 3, 'Mayor o igual que', 1, '2019-08-22', '2019-12-22', 'Aceptada', 'Finalizada sin contratación', 32, 'Manejo de procedimientos almacenados y PL SQL', 19, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (102, 8, 'Administrador', 'Se busca administrador para sucursal de de Royal Films en Popayán Campanario', 4, 1, 3, 'Mayor o igual que', 2, '2019-08-22', '2019-11-22', 'Aceptada', 'Activa', 32, 'Titulacion, especializacion o seminario en administracion publica', 25, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (103, 8, 'Contador publico', 'Se busca contador para sucursal de Royal Films en Popayán Campanario', 45, 1, 4, 'Mayor o igual que', 2, '2019-08-22', '2019-10-22', 'Aceptada', 'En selección', 32, 'Manejo de ley 3900', 35, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (104, 9, 'Analista de mercado', 'Se busca analista de mercado para sede de Bancolombia Popayán Centro', 118, 3, 3, 'Mayor o igual que', 1, '2019-08-22', '2019-09-11', 'Aceptada', 'Expirada', 32, 'Ninguna', 17, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (111, 12, 'Desarrollador de software', 'Se busca desarrollador de software para trabajar en PHP', 176, 2, 3, 'Sin experiencia', 0, '2019-08-22', '2019-12-22', 'Aceptada', 'Finalizada sin contratación', 32, 'Habilidades en Framework de desarrollo symfony 3.4 o 4.2 (demostrable)', 25, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (112, 12, 'Administrador base de datos', 'Se busca DBA para bases de datos oracle y postgress', 278, 1, 3, 'Mayor o igual que', 1, '2019-08-22', '2019-12-22', 'Aceptada', 'Finalizada sin contratación', 32, 'Manejo de procedimientos almacenados y PL SQL', 19, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (113, 18, 'Economista', 'Se busca economista para la sucursal principal de la ciudad de Popayan ', 4, 1, 3, 'Mayor o igual que', 2, '2019-08-22', '2019-11-22', 'Aceptada', 'Activa', 32, 'Titulacion, especializacion o seminario en administracion publica', 25, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (114, 18, 'Contador publico', 'Se busca contador para sucursal de Royal Films en Popayán Campanario', 45, 1, 4, 'Mayor o igual que', 2, '2019-08-22', '2019-10-22', 'Aceptada', 'En selección', 32, 'Manejo de ley 3900', 35, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (115, 19, 'Diseñador Grafico', 'Se busca diseñador para promover eventos de la empresa One Life a nivel mundial', 118, 3, 3, 'Mayor o igual que', 1, '2019-08-22', '2019-09-11', 'Aceptada', 'Expirada', 32, 'Ninguna', 17, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (122, 23, 'Economista', 'Se busca economista para consultoria en la  sucursal principal de la ciudad de Popayan ', 4, 1, 3, 'Mayor o igual que', 2, '2019-08-22', '2019-11-22', 'Aceptada', 'Activa', 32, 'Titulacion, especializacion o seminario en administracion publica', 25, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (123, 24, 'Contador publico', 'Se busca contador para llevar nuestras acciones', 45, 1, 4, 'Mayor o igual que', 2, '2019-08-22', '2019-10-22', 'Aceptada', 'En selección', 32, 'Manejo de ley 3900', 35, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values (124, 25, 'Diseñador Grafico', 'Se busca diseñador para crear un logan en nuestro nuevo proyecto', 118, 3, 3, 'Mayor o igual que', 1, '2019-08-22', '2019-09-11', 'Aceptada', 'Expirada', 32, 'Ninguna', 17, 2, 'Profesional');
INSERT INTO ofertas.ofertas(id_aut_oferta, id_empresa, nombre_oferta, descripcion, id_cargo, numero_vacantes, id_forma_pago, experiencia, anios_experiencia, fecha_publicacion, fecha_cierre, estado, estado_proceso, id_sector, requisitos_minimos, num_dias_oferta, id_aut_nivestud,perfil) values  (120, 21, 'Desarrollador de software', 'Se busca Desarrollador de software que tenga conocimientos en frameworks como laravel ', 176, 2, 3, 'Sin experiencia', 0, '2019-08-22', '2019-12-22', 'Aceptada', 'Finalizada sin contratación', 32, 'Habilidades en Framework de desarrollo symfony 3.4 o 4.2 (demostrable)', 25, 2, 'Profesional');
-- 
-- AREAS DE OFERTAS LABORALES
--
-- areas 1-10 Mamian, 11-20 Vanessa, 21-30 Santiago
INSERT INTO ofertas.ofertas_areascon(id_aut_oferta, id_areaconocimiento)
VALUES
(100, 76),
(100, 48),
(101, 76),
(101, 48),
(102, 1),
(102, 43),
(103, 1),
(103, 43),
(104, 1),
(104, 43),
(111, 76),
(112, 48),
(113, 76),
(115, 48),
(114, 1),
(122, 48),
(123, 76),
(124, 1);

-- IDIOMA DE OFERTAS LABORALES
--
INSERT INTO ofertas.ofertas_idiomas(id_oferta, id_idioma, nivel_escritura, nivel_lectura, nivel_conversacion)
VALUES

(100, 22, 'Avanzado', 'Avanzado', 'Nativo'),
(101, 37, 'Avanzado', 'Avanzado', 'Medio'),
(101, 22, 'Avanzado', 'Avanzado', 'Nativo'),
(102, 22, 'Avanzado', 'Avanzado', 'Nativo'),
(103, 22, 'Avanzado', 'Avanzado', 'Nativo'),
(104, 22, 'Avanzado', 'Avanzado', 'Nativo'),
(104, 37, 'Avanzado', 'Avanzado', 'Medio'),
(120, 22, 'Nativo', 'Avanzado', 'Medio'),
(122, 22, 'Medio', 'Medio', 'Medio'),
(123, 22, 'Nativo', 'Nativo', 'Nativo'),
(124, 22, 'Nativo', 'Medio', 'Avanzado');

-- 
-- SOFTWARE DESEABLES DE LA OFERTA
-- 
INSERT INTO ofertas.ofertas_software(id_software, id_oferta, nombre, nivel)
VALUES
(100, 100, 'Microsoft Excel', 'Nivel técnico'),
(101, 100, 'Linux', 'Nivel usuario avanzado'),
(102, 100, 'PHP MyAd125min', 'Nivel profesional'),
(103, 100, 'Visual Studio Code', 'Nivel técnico'),
(104, 100, 'PHP Storm', 'Nivel técnico'),
(107, 101, 'PHP MyAdmin', 'Nivel profesional'),
(108, 101, 'Visual Studio Code', 'Nivel técnico'),
(109, 102, 'Microsoft Windows', 'Nivel usuario'),
(110, 103, 'Microsoft Windows', 'Nivel usuario'),
(111, 103, 'JSP7', 'Nivel usuario'),
(112, 103, 'Edocx', 'Nivel usuario'),
(113, 103, 'Microsoft Windows', 'Nivel usuario'),
(114, 120, 'Oracle', 'Nivel profesional');


COMMIT;