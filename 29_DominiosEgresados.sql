--Egresados Dominios
CREATE TYPE ofertas.dominio_estado_solicitud_carnetizacion AS ENUM ('Pendiente', 'Respondido','Cancelado');
CREATE TYPE ofertas.dominio_genero_egresado AS ENUM ('Masculino', 'Femenino');
CREATE TYPE ofertas.dominio_estado_egresado AS ENUM ('EN ESPERA', 'ACTIVO', 'INACTIVO','PENDIENTE');
CREATE TYPE ofertas.dominio_estado_civil_egresado AS ENUM ('Soltero(a)', 'Casado(a)','Viudo(a)','Union Libre','Separado(a)','Comprometido(a)','Divorciado(a)');
CREATE TYPE ofertas.dominio_grupo_etnico_egresado AS ENUM ('Afrodescendiente', 'Indígena', 'Mestizo', 'Blanco', 'Otro');

--Egresados ALTER TABLE
ALTER TABLE ofertas.carnetizacion ALTER COLUMN estado_solicitud TYPE ofertas.dominio_estado_solicitud_carnetizacion USING estado_solicitud::ofertas.dominio_estado_solicitud_carnetizacion;
ALTER TABLE ofertas.egresados ALTER COLUMN genero TYPE ofertas.dominio_genero_egresado USING genero::ofertas.dominio_genero_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN estado TYPE ofertas.dominio_estado_egresado USING estado::ofertas.dominio_estado_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN estado_civil TYPE ofertas.dominio_estado_civil_egresado USING estado_civil::ofertas.dominio_estado_civil_egresado;
ALTER TABLE ofertas.egresados ALTER COLUMN grupo_etnico TYPE ofertas.dominio_grupo_etnico_egresado USING grupo_etnico::ofertas.dominio_grupo_etnico_egresado;
commit;