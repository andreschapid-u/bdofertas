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

commit;

ALTER TABLE ofertas.contratos ALTER COLUMN tipo_contrato TYPE ofertas.dominio_tipo_contrato USING tipo_contrato::ofertas.dominio_tipo_contrato;

ALTER TABLE ofertas.empresas ALTER COLUMN estado TYPE ofertas.dominio_estado_empresa USING estado::ofertas.dominio_estado_empresa;

ALTER TABLE ofertas.ofertas ALTER COLUMN experiencia TYPE ofertas.dominio_experiencia_oferta USING experiencia::ofertas.dominio_experiencia_oferta;

ALTER TABLE ofertas.ofertas ALTER COLUMN estado TYPE ofertas.dominio_estado_oferta USING estado::ofertas.dominio_estado_oferta;

ALTER TABLE ofertas.ofertas ALTER COLUMN estado_proceso TYPE ofertas.dominio_estado_oferta_emp USING estado_proceso::ofertas.dominio_estado_oferta_emp;

ALTER TABLE ofertas.ofertas_idiomas ALTER COLUMN nivel_escritura TYPE ofertas.dominio_nivel_idioma_oferta USING nivel_escritura::ofertas.dominio_nivel_idioma_oferta;
ALTER TABLE ofertas.ofertas_idiomas ALTER COLUMN nivel_lectura TYPE ofertas.dominio_nivel_idioma_oferta USING nivel_lectura::ofertas.dominio_nivel_idioma_oferta;
ALTER TABLE ofertas.ofertas_idiomas ALTER COLUMN nivel_conversacion TYPE ofertas.dominio_nivel_idioma_oferta USING nivel_conversacion::ofertas.dominio_nivel_idioma_oferta;

ALTER TABLE ofertas.ofertas_software ALTER COLUMN nivel TYPE ofertas.dominio_nivel_software_oferta USING nivel::ofertas.dominio_nivel_software_oferta;

ALTER TABLE ofertas.ofertas ALTER COLUMN licencia_conduccion TYPE ofertas.dominio_tipo_licencia_oferta USING licencia_conduccion::ofertas.dominio_tipo_licencia_oferta;

ALTER TABLE ofertas.postulaciones ALTER COLUMN estado TYPE ofertas.dominio_estado_postulacion_oferta USING estado::ofertas.dominio_estado_postulacion_oferta;
