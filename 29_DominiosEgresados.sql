--Egresados Dominios
CREATE TYPE ofertas.dominio_estado_solicitud_carnetizacion AS ENUM ('PENDIENTE', 'RESPONDIDO','CANCELADO','RECHAZADO','RECIBIDO');
CREATE TYPE ofertas.dominio_genero_egresado AS ENUM ('MASCULINO', 'FEMENINO');
CREATE TYPE ofertas.dominio_estado_egresado AS ENUM ('ACTIVO LOGUEADO','ACTIVO NO LOGUEADO','PENDIENTE');
CREATE TYPE ofertas.dominio_estado_civil_egresado AS ENUM ('SOLTERO(A)', 'CASADO(A)','VIUDO(A)','UNION LIBRE','SEPARADO(A)','COMPROMETIDO(A)','DIVORCIADO(A)','NINGUNO');
CREATE TYPE ofertas.dominio_grupo_etnico_egresado AS ENUM ('AFRODESCENDIENTE', 'INDÍGENA', 'MESTIZO', 'BLANCO', 'OTRO','NINGUNO');
CREATE TYPE ofertas.dominio_estado_grado AS ENUM ('PENDIENTE','ACTIVO');
CREATE TYPE ofertas.dominio_tipo_grado_grado AS ENUM ('GRADO POSTUMO','GRADO PRIVADO');
CREATE TYPE ofertas.dominio_categoria_experiencia AS ENUM ('INDEPENDIENTE','EMPRESARIO','EMPLEADO');


--Egresados ALTER TABLE
ALTER TABLE ofertas.carnetizacion ALTER COLUMN estado_solicitud TYPE ofertas.dominio_estado_solicitud_carnetizacion USING estado_solicitud::ofertas.dominio_estado_solicitud_carnetizacion;
ALTER TABLE ofertas.egresados ALTER COLUMN genero TYPE ofertas.dominio_genero_egresado USING genero::ofertas.dominio_genero_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN estado TYPE ofertas.dominio_estado_egresado USING estado::ofertas.dominio_estado_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN estado_civil TYPE ofertas.dominio_estado_civil_egresado USING estado_civil::ofertas.dominio_estado_civil_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN grupo_etnico TYPE ofertas.dominio_grupo_etnico_egresado USING grupo_etnico::ofertas.dominio_grupo_etnico_egresado;
ALTER TABLE ofertas.grados ALTER COLUMN estado TYPE ofertas.dominio_estado_grado USING estado::ofertas.dominio_estado_grado;
ALTER TABLE ofertas.grados ALTER COLUMN tipo_grado TYPE ofertas.dominio_tipo_grado_grado USING tipo_grado::ofertas.dominio_tipo_grado_grado;
ALTER TABLE ofertas.experiencia ALTER COLUMN categoria TYPE ofertas.dominio_categoria_experiencia USING categoria::ofertas.dominio_categoria_experiencia;


commit;