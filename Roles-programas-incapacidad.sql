CREATE TYPE ofertas.dominio_tipo_contrato AS ENUM ('Término indefinido', 'Contrato de aprendizaje', 'Prestación de servicios', 'Obra a labor determinada', 'Término fijo');
CREATE TYPE ofertas.dominio_estado_empresa AS ENUM ('En espera', 'Activo', 'Inactivo');
CREATE TYPE ofertas.dominio_experiencia_oferta AS ENUM ('Sin experiencia', 'Igual a', 'Mayor o igual que', 'Menor o igual que');
CREATE TYPE ofertas.dominio_estado_oferta AS ENUM ('Aceptada', 'Rechazada', 'Pendiente');  --Administrador
CREATE TYPE ofertas.dominio_estado_oferta_emp AS ENUM ('En seleccion', 'Desactivada', 'Expirada');  --Empresa
CREATE TYPE ofertas.dominio_jornada_laboral AS ENUM ('Medio tiempo', 'Tiempo completo', 'Tiempo parcial');
CREATE TYPE ofertas.dominio_contrato_forma_pago AS ENUM ('Moneda local', 'US Dolar');
CREATE TYPE ofertas.dominio_nivel_idioma_oferta AS ENUM ('Nativo', 'Avanzado', 'Medio', 'Bajo');
CREATE TYPE ofertas.dominio_nivel_software_oferta AS ENUM ('Ninguno', 'Nivel bajo', 'Nivel usuario', 'Nivel usuario avanzado', 'Nivel técnico', 'Nivel profesional', 'Nivel experto');
CREATE TYPE ofertas.dominio_tipo_licencia_oferta AS ENUM ('A1', 'A2', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3');
CREATE TYPE ofertas.dominio_estado_postulacion_oferta AS ENUM ('Contratado', 'Muy bueno', 'Bueno', 'Descartado', 'Desistió', 'Sin clasificación');

CREATE TYPE ofertas.dominio_numero_empleados AS ENUM ('1 -10', '11 - 50', '51 -150', '151 - 300', '301 - 500', '501 -1000', '1001 - 5000', 'Más de 5000');
CREATE TYPE ofertas.dominio_ingresos_empresa AS ENUM ('0 - 3.000.000', '3.000.001 - 10.000.000', '10.000.001 - 25.000.000', '25.000.001 - 50.000.000', '50.000.001 - 100.000.000', 'Más de 100.000.000');


--Egresados Dominios
CREATE TYPE ofertas.dominio_estado_solicitud_carnetizacion AS ENUM ('Pendiente', 'Realizado');
CREATE TYPE ofertas.dominio_genero_egresado AS ENUM ('Masculino', 'Femenino');
CREATE TYPE ofertas.dominio_estado_egresado AS ENUM ('En espera', 'Activo', 'Inactivo');
CREATE TYPE ofertas.dominio_estado_civil_egresado AS ENUM ('Soltero', 'Casado', 'Union Libre');
CREATE TYPE ofertas.dominio_grupo_etnico_egresado AS ENUM ('Mestizo', 'Caucasico', 'Afrocolombiano', 'Indigena', 'Otro grupo');


commit;
--
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 1, 'Problemas neurologicos' ); 

-- INSERT INTO ofertas.sectores( id_aut_sector, nombre ) VALUES ( 1, 'Salud' ); 

-- INSERT INTO ofertas.sub_sectores(id_aut_sub_sector, nombre, id_sectores ) VALUES ( 1, 'Salud', 1 ); 

INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede ) VALUES ( 1, 'Sistemas', null, null ); 
INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede ) VALUES ( 2, 'Fisica', null, null ); 

insert into ofertas.roles (nombre) values ('Administrador');
insert into ofertas.roles (nombre) values ('Empresa');
insert into ofertas.roles (nombre) values ('Egresado');
commit;
