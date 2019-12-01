-- APARTADO DE DOMINIOS
-- DOMINIOS OFERTAS
CREATE TYPE ofertas.dominio_tipo_contrato AS ENUM ('Término indefinido', 'Contrato de aprendizaje', 'Prestación de servicios', 'Obra a labor determinada', 'Término fijo');
CREATE TYPE ofertas.dominio_estado_empresa AS ENUM ('En espera', 'Activo', 'Inactivo');
CREATE TYPE ofertas.dominio_experiencia_oferta AS ENUM ('Sin experiencia', 'Igual a', 'Mayor o igual que', 'Menor o igual que');
CREATE TYPE ofertas.dominio_estado_oferta AS ENUM ('Aceptada', 'Rechazada', 'Pendiente');  --Administrador
CREATE TYPE ofertas.dominio_estado_oferta_emp AS ENUM ('En espera', 'Activa', 'En selección', 'Finalizada con contratación','Finalizada sin contratación', 'Expirada');  --Empresa
CREATE TYPE ofertas.dominio_jornada_laboral AS ENUM ('Medio tiempo', 'Tiempo completo', 'Tiempo parcial');
CREATE TYPE ofertas.dominio_contrato_forma_pago AS ENUM ('Moneda local', 'US Dolar');
CREATE TYPE ofertas.dominio_nivel_idioma_oferta AS ENUM ('Nativo', 'Avanzado', 'Medio', 'Bajo');
CREATE TYPE ofertas.dominio_nivel_software_oferta AS ENUM ('Ninguno', 'Nivel bajo', 'Nivel usuario', 'Nivel usuario avanzado', 'Nivel técnico', 'Nivel profesional', 'Nivel experto');
CREATE TYPE ofertas.dominio_tipo_licencia_oferta AS ENUM ('A1', 'A2', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3');
CREATE TYPE ofertas.dominio_estado_postulacion_oferta AS ENUM ('Contratado', 'Muy bueno', 'Bueno', 'Descartado', 'Desistió', 'Sin clasificación');

CREATE TYPE ofertas.dominio_numero_empleados AS ENUM ('1 - 10', '11 - 50', '51 - 150', '151 - 300', '301 - 500', '501 - 1000', '1001 - 5000', 'más de 5000');
CREATE TYPE ofertas.dominio_ingresos_empresa AS ENUM ('0 - 3.000.000', '3.000.001 - 10.000.000', '10.000.001 - 25.000.000', '25.000.001 - 50.000.000', '50.000.001 - 100.000.000', 'más de 100.000.000');


--Egresados Dominios
CREATE TYPE ofertas.dominio_estado_solicitud_carnetizacion AS ENUM ('Pendiente', 'Realizado');
CREATE TYPE ofertas.dominio_genero_egresado AS ENUM ('Masculino', 'Femenino');
CREATE TYPE ofertas.dominio_estado_egresado AS ENUM ('En espera', 'Activo', 'Inactivo');
CREATE TYPE ofertas.dominio_estado_carnetizacion AS ENUM ('Respondido', 'Solicitado', 'Recibido','Cancelado');
CREATE TYPE ofertas.dominio_estado_civil_egresado AS ENUM ('Soltero(a)', 'Casado(a)','Viudo(a)','Union Libre','Separado(a)','Comprometido(a)','Divorciado(a)');
CREATE TYPE ofertas.dominio_grupo_etnico_egresado AS ENUM ('Afrodescendiente', 'Indígena', 'Mestizo', 'Blanco', 'Otro');


commit;
--
ALTER TABLE ofertas.contratos ALTER COLUMN tipo_contrato TYPE ofertas.dominio_tipo_contrato USING tipo_contrato::ofertas.dominio_tipo_contrato;

ALTER TABLE ofertas.empresas ALTER COLUMN estado TYPE ofertas.dominio_estado_empresa USING estado::ofertas.dominio_estado_empresa;

ALTER TABLE ofertas.ofertas ALTER COLUMN experiencia TYPE ofertas.dominio_experiencia_oferta USING experiencia::ofertas.dominio_experiencia_oferta;

ALTER TABLE ofertas.salarios ALTER COLUMN forma_pago TYPE ofertas.dominio_contrato_forma_pago USING forma_pago::ofertas.dominio_contrato_forma_pago;


ALTER TABLE ofertas.ofertas ALTER COLUMN estado TYPE ofertas.dominio_estado_oferta USING estado::ofertas.dominio_estado_oferta;

ALTER TABLE ofertas.ofertas ALTER COLUMN estado_proceso TYPE ofertas.dominio_estado_oferta_emp USING estado_proceso::ofertas.dominio_estado_oferta_emp;

ALTER TABLE ofertas.ofertas_idiomas ALTER COLUMN nivel_escritura TYPE ofertas.dominio_nivel_idioma_oferta USING nivel_escritura::ofertas.dominio_nivel_idioma_oferta;
ALTER TABLE ofertas.ofertas_idiomas ALTER COLUMN nivel_lectura TYPE ofertas.dominio_nivel_idioma_oferta USING nivel_lectura::ofertas.dominio_nivel_idioma_oferta;
ALTER TABLE ofertas.ofertas_idiomas ALTER COLUMN nivel_conversacion TYPE ofertas.dominio_nivel_idioma_oferta USING nivel_conversacion::ofertas.dominio_nivel_idioma_oferta;

ALTER TABLE ofertas.ofertas_software ALTER COLUMN nivel TYPE ofertas.dominio_nivel_software_oferta USING nivel::ofertas.dominio_nivel_software_oferta;

ALTER TABLE ofertas.ofertas ALTER COLUMN licencia_conduccion TYPE ofertas.dominio_tipo_licencia_oferta USING licencia_conduccion::ofertas.dominio_tipo_licencia_oferta;

ALTER TABLE ofertas.postulaciones ALTER COLUMN estado TYPE ofertas.dominio_estado_postulacion_oferta USING estado::ofertas.dominio_estado_postulacion_oferta;

alter table ofertas.contratos alter column jornada_laboral type ofertas.dominio_jornada_laboral using jornada_laboral::ofertas.dominio_jornada_laboral;

--alter table ofertas.empresas alter column numero_empleados type varchar(20);
alter table ofertas.empresas alter column numero_empleados type ofertas.dominio_numero_empleados using numero_empleados::ofertas.dominio_numero_empleados;
alter table ofertas.empresas alter column ingresos type ofertas.dominio_ingresos_empresa using ingresos::ofertas.dominio_ingresos_empresa;


--Egresados ALTER TABLE
ALTER TABLE ofertas.carnetizacion ALTER COLUMN estado_solicitud TYPE ofertas.dominio_estado_solicitud_carnetizacion USING estado_solicitud::ofertas.dominio_estado_solicitud_carnetizacion;
ALTER TABLE ofertas.egresados ALTER COLUMN genero TYPE ofertas.dominio_genero_egresado USING genero::ofertas.dominio_genero_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN estado TYPE ofertas.dominio_estado_egresado USING estado::ofertas.dominio_estado_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN estado_solicitud TYPE ofertas.dominio_estado_carnetizacion USING estado_solicitud::ofertas.dominio_estado_carnetizacion;
ALTER TABLE ofertas.egresados ALTER COLUMN estado_civil TYPE ofertas.dominio_estado_civil_egresado USING estado_civil::ofertas.dominio_estado_civil_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN grupo_etnico TYPE ofertas.dominio_grupo_etnico_egresado USING grupo_etnico::ofertas.dominio_grupo_etnico_egresado;
commit;