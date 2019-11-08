drop schema if exists ofertas cascade;
CREATE SCHEMA ofertas;

CREATE  TABLE ofertas.areas_conocimiento ( 
	id_aut_areaconocimiento serial  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	CONSTRAINT pk_areas_conocimiento_id PRIMARY KEY ( id_aut_areaconocimiento )
 );

CREATE  TABLE ofertas.cargos ( 
	id_aut_cargos        serial  NOT NULL ,
	nombre               varchar(40)  NOT NULL ,
	estado               bool DEFAULT false  ,
	CONSTRAINT pk_cargos_id_0 PRIMARY KEY ( id_aut_cargos )
 );

CREATE  TABLE ofertas.carnetizacion ( 
	id_aut_carnetizacion integer  NOT NULL ,
	estado_solicitud     varchar(50)  NOT NULL ,
	CONSTRAINT pk_carnetizacion_id_aut_carnetizacion PRIMARY KEY ( id_aut_carnetizacion )
 );

CREATE  TABLE ofertas.contratos ( 
	id_aut_contrato      serial  NOT NULL ,
	duracion             varchar(20)   ,
	tipo_contrato        varchar(50)  NOT NULL ,
	jornada_laboral      varchar(30)  NOT NULL ,
	horario              varchar(40)   ,
	comentarios_salario  text   ,
	CONSTRAINT pk_contratos_id_aut_contrato PRIMARY KEY ( id_aut_contrato )
 );

CREATE  TABLE ofertas.discapacidades ( 
	id_aut_discapacidades serial  NOT NULL ,
	nombre               varchar(30)  NOT NULL ,
	CONSTRAINT pk_discapacidades_id_aut_discapacidades PRIMARY KEY ( id_aut_discapacidades )
 );

CREATE  TABLE ofertas.evento ( 
	id_aut_evento        serial  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	fecha_inicio         date   ,
	fecha_fin            date   ,
	lugar                text   ,
	descripcion          varchar(50)   ,
	cupos                numeric   ,
	a_quien_va_dirigida  varchar(50)   ,
	CONSTRAINT pk_evento_id_evento PRIMARY KEY ( id_aut_evento )
 );

CREATE  TABLE ofertas.idiomas ( 
	id_aut_idioma        serial  NOT NULL ,
	nombre               varchar(20)  NOT NULL ,
	CONSTRAINT pk_idiomas_id_aut_idioma PRIMARY KEY ( id_aut_idioma ),
	CONSTRAINT idx_idiomas UNIQUE ( nombre ) 
 );

CREATE  TABLE ofertas.nivel_programa ( 
	id_aut_nivprogra     serial  NOT NULL ,
	nombre               varchar(40)  NOT NULL ,
	CONSTRAINT pk_nivel_programa_id_aut_nivprogra PRIMARY KEY ( id_aut_nivprogra ),
	CONSTRAINT idx_nivel_programa UNIQUE ( nombre ) 
 );

CREATE  TABLE ofertas.niveles_estudio ( 
	id_aut_estudio       serial  NOT NULL ,
	nombre               varchar(50) DEFAULT 100 NOT NULL ,
	CONSTRAINT pk_niveles_estudio_id PRIMARY KEY ( id_aut_estudio ),
	CONSTRAINT idx_niveles_estudio_nombre UNIQUE ( nombre ) 
 );

CREATE  TABLE ofertas.padres ( 
	id_aut_padre         serial  NOT NULL ,
	nombres              varchar(40)  NOT NULL ,
	apellidos            varchar(40)  NOT NULL ,
	correo               varchar(60)   ,
	telefono             varchar(16)  NOT NULL ,
	id_nivel_estudio     integer  NOT NULL ,
	id_egresado          integer  NOT NULL ,
	id_programa          integer  NOT NULL ,
	CONSTRAINT pk_contactos_id PRIMARY KEY ( id_aut_padre )
 );

CREATE  TABLE ofertas.pais ( 
	id_aut_pais          serial  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	CONSTRAINT pk_pais_id_pais PRIMARY KEY ( id_aut_pais ),
	CONSTRAINT idx_pais UNIQUE ( nombre ) 
 );

CREATE  TABLE ofertas.roles ( 
	id_aut_rol           serial  NOT NULL ,
	nombre               varchar(30)  NOT NULL ,
	CONSTRAINT pk_roles_id PRIMARY KEY ( id_aut_rol )
 );

CREATE  TABLE ofertas.salarios ( 
	id_aut_salario       serial  NOT NULL ,
	minimo               integer  NOT NULL ,
	maximo               integer  NOT NULL ,
	forma_pago           varchar(20)  NOT NULL ,
	CONSTRAINT pk_salarios_id_aut_salario PRIMARY KEY ( id_aut_salario )
 );

CREATE  TABLE ofertas.sectores ( 
	id_aut_sector        serial  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	CONSTRAINT pk_table_0_id_aut_cate_sectores PRIMARY KEY ( id_aut_sector ),
	CONSTRAINT idx_sectores UNIQUE ( nombre ) 
 );

CREATE  TABLE ofertas.sede ( 
	id_aut_sede          serial  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	CONSTRAINT pk_sede_id_aut_sede PRIMARY KEY ( id_aut_sede )
 );

CREATE  TABLE ofertas.sub_sectores ( 
	id_aut_sub_sector    serial  NOT NULL ,
	nombre               varchar(100)  NOT NULL ,
	id_sectores          integer  NOT NULL ,
	CONSTRAINT pk_sectores_id PRIMARY KEY ( id_aut_sub_sector )
 );

CREATE  TABLE ofertas.users ( 
	id_aut_user          serial  NOT NULL ,
	email                varchar(60)  NOT NULL ,
	"password"           varchar(128)   ,
	id_rol               integer  NOT NULL ,
	codigo_verificacion  varchar(60)   ,
	activo               bool DEFAULT false NOT NULL ,
	CONSTRAINT pk_users_id PRIMARY KEY ( id_aut_user )
 );

CREATE  TABLE ofertas.departamentos ( 
	id_aut_dep           serial  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	id_pais_fk           integer  NOT NULL ,
	CONSTRAINT pk_departamento_id PRIMARY KEY ( id_aut_dep ),
	CONSTRAINT idx_departamentos UNIQUE ( nombre, id_pais_fk ) 
 );

CREATE  TABLE ofertas.ciudades ( 
	id_aut_ciudad        serial  NOT NULL ,
	nombre               varchar(50)   ,
	id_departamento      integer  NOT NULL ,
	CONSTRAINT pk_ciudades_id PRIMARY KEY ( id_aut_ciudad ),
	CONSTRAINT idx_ciudades UNIQUE ( nombre, id_departamento ) 
 );

CREATE  TABLE ofertas.localizacion ( 
	id_aut_localizacion  serial  NOT NULL ,
	codigo_postal        integer   ,
	direccion            varchar(100)  NOT NULL ,
	barrio               varchar(40)   ,
	id_ciudad            integer  NOT NULL ,
	CONSTRAINT pk_localizacion_id PRIMARY KEY ( id_aut_localizacion )
 );

CREATE  TABLE ofertas.egresados ( 
	id_aut_egresado      serial  NOT NULL ,
	identificacion       integer  NOT NULL ,
	nombres              varchar(40)  NOT NULL ,
	apellidos            varchar(40)  NOT NULL ,
	genero               varchar(20)  NOT NULL ,
	id_lugar_expedicion  integer  NOT NULL ,
	id_lugar_residencia  integer  NOT NULL ,
	id_nivel_educativo   integer  NOT NULL ,
	num_hijos            smallint DEFAULT 0  ,
	id_lugar_nacimiento  integer  NOT NULL ,
	fecha_nacimiento     date  NOT NULL ,
	estado               varchar(40)  NOT NULL ,
	correo               varchar(100)  NOT NULL ,
	correo_alternativo   varchar(100)  NOT NULL ,
	estado_civil         varchar(40)  NOT NULL ,
	ha_trabajado         bool   ,
	trabaja_actualmente  bool   ,
	id_aut_user          integer   ,
	grupo_etnico         varchar(40)   ,
	celular              varchar(16)  NOT NULL ,
	telefono_fijo        varchar(16)   ,
	CONSTRAINT pk_egresados_id PRIMARY KEY ( id_aut_egresado )
 );

CREATE  TABLE ofertas.egresados_discapacidades ( 
	id_egresado          integer  NOT NULL ,
	id_discapacidad      integer  NOT NULL ,
	CONSTRAINT idx_egresados_discapacidades PRIMARY KEY ( id_egresado, id_discapacidad )
 );

CREATE  TABLE ofertas.empresas ( 
	id_aut_empresa       serial  NOT NULL ,
	nit                  varchar(15)  NOT NULL ,
	nombre               varchar(100)   ,
	razon_social         varchar(200)  NOT NULL ,
	anio_creacion        smallint  NOT NULL ,
	numero_empleados     varchar(30)  NOT NULL ,
	ingresos             varchar(30)   ,
	sitio_web            varchar(200)   ,
	id_direccion         integer  NOT NULL ,
	estado               varchar(20)   ,
	fecha_registro       date DEFAULT current_date NOT NULL ,
	fecha_activacion     date   ,
	fecha_vencimineto    date   ,
	total_publicaciones  integer   ,
	limite_publicaciones integer   ,
	num_publicaciones_actuales integer   ,
	correo               varchar(60)   ,
	telefono             varchar(16)   ,
	url_logo             varchar(255)   ,
	url_doc_camaracomercio varchar(255)  NOT NULL ,
	descripcion          text   ,
	CONSTRAINT pk_empresas_id PRIMARY KEY ( id_aut_empresa ),
	CONSTRAINT idx_empresas_unique_nombre UNIQUE ( nombre ) ,
	CONSTRAINT idx_empresas_unique_nit UNIQUE ( nit ) 
 );

CREATE  TABLE ofertas.empresas_sectores ( 
	id_empresa           integer  NOT NULL ,
	id_sub_sector        integer  NOT NULL ,
	CONSTRAINT idx_empresas_sectores PRIMARY KEY ( id_empresa, id_sub_sector )
 );

CREATE  TABLE ofertas.experiencia ( 
	id_aut_exp           serial  NOT NULL ,
	id_egresado          integer   ,
	id_cargo             integer  NOT NULL ,
	nombre_jefe          varchar(60)  NOT NULL ,
	telefono_jefe        varchar(16)   ,
	correo_jefe          varchar(60)  NOT NULL ,
	nombre_empresa       varchar(50) DEFAULT 100 NOT NULL ,
	dir_empresa          varchar(50) DEFAULT 100  ,
	tel_trabajo          integer   ,
	rango_salario        varchar(50) DEFAULT 100  ,
	tipo_contrato        varchar(50) DEFAULT 50  ,
	trabajo_en_su_area   bool   ,
	sector               varchar(40)   ,
	id_ciudad            integer  NOT NULL ,
	CONSTRAINT pk_cargos_id PRIMARY KEY ( id_aut_exp )
 );

COMMENT ON COLUMN ofertas.experiencia.sector IS 'Publico=0\nPrivado=1';

CREATE  TABLE ofertas.facultades ( 
	id_aut_facultad      serial  NOT NULL ,
	nombre               varchar(60)  NOT NULL ,
	id_direccion         integer   ,
	CONSTRAINT pk_facultades_id PRIMARY KEY ( id_aut_facultad )
 );

CREATE  TABLE ofertas.ofertas ( 
	id_aut_oferta        serial  NOT NULL ,
	id_empresa           integer  NOT NULL ,
	nombre_oferta        varchar(100)  NOT NULL ,
	descripcion          text  NOT NULL ,
	id_cargo             integer  NOT NULL ,
	id_contrato          integer  NOT NULL ,
	numero_vacantes      integer DEFAULT 1 NOT NULL ,
	id_forma_pago        integer  NOT NULL ,
	experiencia          varchar(30)  NOT NULL ,
	anios_experiencia    smallint DEFAULT 0 NOT NULL ,
	fecha_publicacion    date   ,
	fecha_cierre         date   ,
	estado               varchar(20)  NOT NULL ,
	estado_proceso       varchar   ,
	id_sector            integer  NOT NULL ,
	nombre_temporal_empresa varchar(30)   ,
	licencia_conduccion  varchar(20)   ,
	requisitos_minimos   text  NOT NULL ,
	id_discapacidad      integer   ,
	num_dias_oferta      inet  NOT NULL ,
	id_aut_nivprog       integer  NOT NULL ,
	CONSTRAINT pk_ofertas_id PRIMARY KEY ( id_aut_oferta )
 );

CREATE  TABLE ofertas.ofertas_areascon ( 
	id_aut_oferta        integer  NOT NULL ,
	id_areaconocimiento  integer  NOT NULL ,
	CONSTRAINT idx_ofertas_areascon PRIMARY KEY ( id_aut_oferta, id_areaconocimiento )
 );

CREATE  TABLE ofertas.ofertas_idiomas ( 
	id_oferta            integer  NOT NULL ,
	id_idioma            integer  NOT NULL ,
	nivel_escritura      varchar(20)  NOT NULL ,
	nivel_lectura        varchar(20)  NOT NULL ,
	nivel_conversacion   varchar(20)  NOT NULL ,
	CONSTRAINT idx_ofertas_idiomas PRIMARY KEY ( id_oferta, id_idioma )
 );

CREATE  TABLE ofertas.ofertas_software ( 
	id_software          serial  NOT NULL ,
	id_oferta            integer  NOT NULL ,
	nombre               varchar(60)  NOT NULL ,
	nivel                varchar(20)  NOT NULL ,
	CONSTRAINT idx_ofertas_software PRIMARY KEY ( id_software )
 );

CREATE  TABLE ofertas.participa ( 
	id_egresado          integer  NOT NULL ,
	id_evento            integer  NOT NULL ,
	como_se_entero       varchar(50)  NOT NULL ,
	CONSTRAINT idx_participa PRIMARY KEY ( id_egresado, id_evento )
 );

CREATE  TABLE ofertas.postulaciones ( 
	id_aut_egresado      integer  NOT NULL ,
	id_aut_oferta        integer  NOT NULL ,
	fecha_postulacion    date DEFAULT current_date NOT NULL ,
	fecha_revision_empresa date   ,
	estado               varchar(30)   ,
	CONSTRAINT idx_postulaciones PRIMARY KEY ( id_aut_egresado, id_aut_oferta ),
	CONSTRAINT unq_postulaciones_id_aut_egresado UNIQUE ( id_aut_egresado ) 
 );

CREATE  TABLE ofertas.preguntas_oferta ( 
	id_aut_pregunta      serial  NOT NULL ,
	pregunta             text  NOT NULL ,
	id_oferta            integer  NOT NULL ,
	CONSTRAINT pk_preguntas_oferta_id_aut_pregunta PRIMARY KEY ( id_aut_pregunta )
 );

CREATE  TABLE ofertas.programas ( 
	id_aut_programa      serial  NOT NULL ,
	nombre               varchar(60)  NOT NULL ,
	id_facultad          integer   ,
	id_sede              integer   ,
	id_nivelprogra       integer   ,
	CONSTRAINT pk_programas_id PRIMARY KEY ( id_aut_programa )
 );

CREATE  TABLE ofertas.programas_ofertas ( 
	id_oferta            integer  NOT NULL ,
	id_programa          integer  NOT NULL ,
	CONSTRAINT idx_programas_ofertas PRIMARY KEY ( id_oferta, id_programa )
 );

CREATE  TABLE ofertas.referidos ( 
	id_aut_referido      serial  NOT NULL ,
	id_egresado          integer   ,
	nombres              varchar(100)  NOT NULL ,
	id_nivel_educativo   integer   ,
	telefono_movil       varchar(16)  NOT NULL ,
	correo               varchar(60)   ,
	parentesco           varchar(40)   ,
	id_aut_programa      integer   ,
	es_egresado          bool   ,
	CONSTRAINT pk_referidos_id PRIMARY KEY ( id_aut_referido )
 );

CREATE  TABLE ofertas.referidos_egresados ( 
	id_egresados         integer  NOT NULL ,
	id_referidos         integer  NOT NULL ,
	CONSTRAINT idx_referidos_egresados PRIMARY KEY ( id_egresados, id_referidos )
 );

CREATE  TABLE ofertas.representante_empresa ( 
	id_aut_representante_empresa serial  NOT NULL ,
	nombre               varchar(60)  NOT NULL ,
	apellidos            varchar(60)  NOT NULL ,
	id_empresa           integer  NOT NULL ,
	telefono             varchar(16)   ,
	telefono_movil       varchar(16)  NOT NULL ,
	CONSTRAINT pk_table_0_id_aut_administrador_empresa PRIMARY KEY ( id_aut_representante_empresa ),
	CONSTRAINT idx_administrador_empresa UNIQUE ( id_empresa ) 
 );

CREATE  TABLE ofertas.solicita ( 
	id_carnetizacion     integer  NOT NULL ,
	id_egresado          integer  NOT NULL ,
	CONSTRAINT idx_solicita PRIMARY KEY ( id_carnetizacion, id_egresado )
 );

CREATE  TABLE ofertas.titulo ( 
	id_aut_titulo        serial  NOT NULL ,
	nombre               varchar(50)  NOT NULL ,
	id_programa          integer  NOT NULL ,
	CONSTRAINT pk_titulo_id_aut_titulo PRIMARY KEY ( id_aut_titulo ),
	CONSTRAINT idx_titulo_id_programa UNIQUE ( id_programa ) 
 );

CREATE  TABLE ofertas.ubicacion_oferta ( 
	id_oferta            integer  NOT NULL ,
	id_ciudad            integer  NOT NULL ,
	CONSTRAINT idx_ubicacion_oferta PRIMARY KEY ( id_oferta, id_ciudad )
 );

CREATE  TABLE ofertas.administrador_empresa ( 
	id_aut_administrador_empresa serial  NOT NULL ,
	nombres              varchar(40)  NOT NULL ,
	apellidos            varchar(40)  NOT NULL ,
	id_cargo             integer  NOT NULL ,
	telefono             varchar(16)   ,
	telefono_movil       varchar(16)  NOT NULL ,
	horario_contacto     varchar(40)   ,
	correo_corporativo   varchar(60)  NOT NULL ,
	id_direccion         integer  NOT NULL ,
	id_empresa           integer  NOT NULL ,
	id_aut_user          integer  NOT NULL ,
	CONSTRAINT pk_representante_legal_id PRIMARY KEY ( id_aut_administrador_empresa ),
	CONSTRAINT idx_administrador_empresa_0 UNIQUE ( id_empresa ) ,
	CONSTRAINT idx_administrador_empresa_1 UNIQUE ( correo_corporativo ) 
 );

CREATE  TABLE ofertas.grados ( 
	id_num_acta          integer DEFAULT 50 NOT NULL ,
	tipo_grado           varchar(60)   ,
	mencion_honor        varchar(50)   ,
	titulo_especial      varchar(100)   ,
	id_tipo_de_comentarios integer   ,
	anio_graduacion      varchar(50)  NOT NULL ,
	fecha_graduacion     date   ,
	id_programa          integer  NOT NULL ,
	id_estudiante        integer  NOT NULL ,
	CONSTRAINT idx_grados PRIMARY KEY ( id_programa, id_estudiante ),
	CONSTRAINT unq_grados_id_tipo_de_comentarios UNIQUE ( id_tipo_de_comentarios ) 
 );

CREATE  TABLE ofertas.postulaciones_respuestas ( 
	id_egresado          integer  NOT NULL ,
	id_pregunta          integer  NOT NULL ,
	respuesta            text  NOT NULL ,
	CONSTRAINT idx_postulaciones_respuestas PRIMARY KEY ( id_egresado, id_pregunta )
 );

CREATE  TABLE ofertas.tipo_de_observacion ( 
	id_aut_comentario    serial  NOT NULL ,
	sugerencia_programa  text  NOT NULL ,
	opinio_universidad_futuro text  NOT NULL ,
	nombre_docente_influyo varchar(60)  NOT NULL ,
	id_grado             integer  NOT NULL ,
	CONSTRAINT pk_comentarios_id PRIMARY KEY ( id_aut_comentario )
 );

ALTER TABLE ofertas.administrador_empresa ADD CONSTRAINT fk_representante_legal_localizacion FOREIGN KEY ( id_direccion ) REFERENCES ofertas.localizacion( id_aut_localizacion );

ALTER TABLE ofertas.administrador_empresa ADD CONSTRAINT fk_representante_legal_empresa FOREIGN KEY ( id_empresa ) REFERENCES ofertas.empresas( id_aut_empresa );

ALTER TABLE ofertas.administrador_empresa ADD CONSTRAINT fk_representante_empresa FOREIGN KEY ( id_cargo ) REFERENCES ofertas.cargos( id_aut_cargos );

ALTER TABLE ofertas.administrador_empresa ADD CONSTRAINT fk_administrador_empresa_users FOREIGN KEY ( id_aut_user ) REFERENCES ofertas.users( id_aut_user );

ALTER TABLE ofertas.ciudades ADD CONSTRAINT fk_ciudades_departamentos FOREIGN KEY ( id_departamento ) REFERENCES ofertas.departamentos( id_aut_dep );

ALTER TABLE ofertas.departamentos ADD CONSTRAINT fk_departamentos_pais FOREIGN KEY ( id_pais_fk ) REFERENCES ofertas.pais( id_aut_pais );

ALTER TABLE ofertas.egresados ADD CONSTRAINT fk_egresados_ciudades FOREIGN KEY ( id_lugar_expedicion ) REFERENCES ofertas.ciudades( id_aut_ciudad );

ALTER TABLE ofertas.egresados ADD CONSTRAINT fk_egresados_localizacion FOREIGN KEY ( id_lugar_residencia ) REFERENCES ofertas.localizacion( id_aut_localizacion );

ALTER TABLE ofertas.egresados ADD CONSTRAINT fk_egresados_niveles_estudio FOREIGN KEY ( id_nivel_educativo ) REFERENCES ofertas.niveles_estudio( id_aut_estudio );

ALTER TABLE ofertas.egresados ADD CONSTRAINT fk_egresados_users FOREIGN KEY ( id_aut_user ) REFERENCES ofertas.users( id_aut_user );

ALTER TABLE ofertas.egresados ADD CONSTRAINT fk_egresados_nacimiento_ciudades FOREIGN KEY ( id_lugar_nacimiento ) REFERENCES ofertas.ciudades( id_aut_ciudad );

ALTER TABLE ofertas.egresados_discapacidades ADD CONSTRAINT fk_egresados_discapacidades_egresado FOREIGN KEY ( id_egresado ) REFERENCES ofertas.egresados( id_aut_egresado );

ALTER TABLE ofertas.egresados_discapacidades ADD CONSTRAINT fk_egresados_discapacidades_discap FOREIGN KEY ( id_discapacidad ) REFERENCES ofertas.discapacidades( id_aut_discapacidades );

ALTER TABLE ofertas.empresas ADD CONSTRAINT fk_empresas_localizacion FOREIGN KEY ( id_direccion ) REFERENCES ofertas.localizacion( id_aut_localizacion );

ALTER TABLE ofertas.empresas_sectores ADD CONSTRAINT fk_empresas_sectores_empresa FOREIGN KEY ( id_empresa ) REFERENCES ofertas.empresas( id_aut_empresa );

ALTER TABLE ofertas.empresas_sectores ADD CONSTRAINT fk_empresas_sectores_sector FOREIGN KEY ( id_sub_sector ) REFERENCES ofertas.sub_sectores( id_aut_sub_sector );

ALTER TABLE ofertas.experiencia ADD CONSTRAINT fk_cargos_egresados FOREIGN KEY ( id_egresado ) REFERENCES ofertas.egresados( id_aut_egresado );

ALTER TABLE ofertas.experiencia ADD CONSTRAINT fk_experiencia_cargos FOREIGN KEY ( id_cargo ) REFERENCES ofertas.cargos( id_aut_cargos );

ALTER TABLE ofertas.experiencia ADD CONSTRAINT fk_experiencia_ciudades FOREIGN KEY ( id_ciudad ) REFERENCES ofertas.ciudades( id_aut_ciudad );

ALTER TABLE ofertas.facultades ADD CONSTRAINT fk_facultades_localizacion FOREIGN KEY ( id_direccion ) REFERENCES ofertas.localizacion( id_aut_localizacion );

ALTER TABLE ofertas.grados ADD CONSTRAINT fk_grados_programas FOREIGN KEY ( id_programa ) REFERENCES ofertas.programas( id_aut_programa );

ALTER TABLE ofertas.grados ADD CONSTRAINT fk_grados_egresados FOREIGN KEY ( id_estudiante ) REFERENCES ofertas.egresados( id_aut_egresado );

ALTER TABLE ofertas.localizacion ADD CONSTRAINT fk_localizacion_ciudades FOREIGN KEY ( id_ciudad ) REFERENCES ofertas.ciudades( id_aut_ciudad );

ALTER TABLE ofertas.ofertas ADD CONSTRAINT fk_ofertas_empresas FOREIGN KEY ( id_empresa ) REFERENCES ofertas.empresas( id_aut_empresa );

ALTER TABLE ofertas.ofertas ADD CONSTRAINT fk_ofertas_cargos FOREIGN KEY ( id_cargo ) REFERENCES ofertas.cargos( id_aut_cargos );

ALTER TABLE ofertas.ofertas ADD CONSTRAINT fk_ofertas_contratos FOREIGN KEY ( id_contrato ) REFERENCES ofertas.contratos( id_aut_contrato );

ALTER TABLE ofertas.ofertas ADD CONSTRAINT fk_ofertas_sectores FOREIGN KEY ( id_sector ) REFERENCES ofertas.sectores( id_aut_sector );

ALTER TABLE ofertas.ofertas ADD CONSTRAINT fk_ofertas_salarios FOREIGN KEY ( id_forma_pago ) REFERENCES ofertas.salarios( id_aut_salario );

ALTER TABLE ofertas.ofertas ADD CONSTRAINT fk_ofertas_discapacidades FOREIGN KEY ( id_discapacidad ) REFERENCES ofertas.discapacidades( id_aut_discapacidades );

ALTER TABLE ofertas.ofertas ADD CONSTRAINT fk_ofertas_areas_conocimiento FOREIGN KEY ( id_aut_nivprog ) REFERENCES ofertas.nivel_programa( id_aut_nivprogra );

ALTER TABLE ofertas.ofertas_areascon ADD CONSTRAINT fk_ofertas_areascon_ofertas FOREIGN KEY ( id_aut_oferta ) REFERENCES ofertas.ofertas( id_aut_oferta );

ALTER TABLE ofertas.ofertas_areascon ADD CONSTRAINT fk_ofertas_areascon FOREIGN KEY ( id_areaconocimiento ) REFERENCES ofertas.areas_conocimiento( id_aut_areaconocimiento );

ALTER TABLE ofertas.ofertas_idiomas ADD CONSTRAINT fk_ofertas_idiomas_ofertas FOREIGN KEY ( id_oferta ) REFERENCES ofertas.ofertas( id_aut_oferta );

ALTER TABLE ofertas.ofertas_idiomas ADD CONSTRAINT fk_ofertas_idiomas_idiomas FOREIGN KEY ( id_idioma ) REFERENCES ofertas.idiomas( id_aut_idioma );

ALTER TABLE ofertas.ofertas_software ADD CONSTRAINT fk_ofertas_software_ofertas FOREIGN KEY ( id_oferta ) REFERENCES ofertas.ofertas( id_aut_oferta );

ALTER TABLE ofertas.participa ADD CONSTRAINT fk_participa_egresados FOREIGN KEY ( id_egresado ) REFERENCES ofertas.egresados( id_aut_egresado );

ALTER TABLE ofertas.participa ADD CONSTRAINT fk_participa_evento FOREIGN KEY ( id_evento ) REFERENCES ofertas.evento( id_aut_evento );

ALTER TABLE ofertas.postulaciones ADD CONSTRAINT fk_postulaciones_ofertas FOREIGN KEY ( id_aut_oferta ) REFERENCES ofertas.ofertas( id_aut_oferta );

ALTER TABLE ofertas.postulaciones ADD CONSTRAINT fk_postulaciones_egresados FOREIGN KEY ( id_aut_egresado ) REFERENCES ofertas.egresados( id_aut_egresado );

ALTER TABLE ofertas.postulaciones_respuestas ADD CONSTRAINT fk_postulaciones_respuestas_postulaciones FOREIGN KEY ( id_egresado ) REFERENCES ofertas.postulaciones( id_aut_egresado );

ALTER TABLE ofertas.postulaciones_respuestas ADD CONSTRAINT fk_postulaciones_respuestas_preguntas_oferta FOREIGN KEY ( id_pregunta ) REFERENCES ofertas.preguntas_oferta( id_aut_pregunta );

ALTER TABLE ofertas.preguntas_oferta ADD CONSTRAINT fk_preguntas_oferta_ofertas FOREIGN KEY ( id_oferta ) REFERENCES ofertas.ofertas( id_aut_oferta );

ALTER TABLE ofertas.programas ADD CONSTRAINT fk_programas_facultades FOREIGN KEY ( id_facultad ) REFERENCES ofertas.facultades( id_aut_facultad );

ALTER TABLE ofertas.programas ADD CONSTRAINT fk_programas_programas FOREIGN KEY ( id_sede ) REFERENCES ofertas.sede( id_aut_sede );

ALTER TABLE ofertas.programas ADD CONSTRAINT fk_programas_nivel_programa FOREIGN KEY ( id_nivelprogra ) REFERENCES ofertas.nivel_programa( id_aut_nivprogra );

ALTER TABLE ofertas.programas_ofertas ADD CONSTRAINT fk_programas_ofertas_programas FOREIGN KEY ( id_programa ) REFERENCES ofertas.programas( id_aut_programa );

ALTER TABLE ofertas.programas_ofertas ADD CONSTRAINT fk_programas_ofertas_ofertas FOREIGN KEY ( id_oferta ) REFERENCES ofertas.ofertas( id_aut_oferta );

ALTER TABLE ofertas.referidos ADD CONSTRAINT fk_referidos_niveles_estudio FOREIGN KEY ( id_nivel_educativo ) REFERENCES ofertas.niveles_estudio( id_aut_estudio );

ALTER TABLE ofertas.referidos ADD CONSTRAINT fk_referidos_programas FOREIGN KEY ( id_aut_programa ) REFERENCES ofertas.programas( id_aut_programa );

ALTER TABLE ofertas.referidos_egresados ADD CONSTRAINT fk_referidos_egresados_egresados FOREIGN KEY ( id_egresados ) REFERENCES ofertas.egresados( id_aut_egresado );

ALTER TABLE ofertas.referidos_egresados ADD CONSTRAINT fk_referidos_egresados_referidos FOREIGN KEY ( id_referidos ) REFERENCES ofertas.referidos( id_aut_referido );

ALTER TABLE ofertas.representante_empresa ADD CONSTRAINT fk_representante_empresa FOREIGN KEY ( id_empresa ) REFERENCES ofertas.empresas( id_aut_empresa );

ALTER TABLE ofertas.solicita ADD CONSTRAINT fk_solicita_carnetizacion FOREIGN KEY ( id_carnetizacion ) REFERENCES ofertas.carnetizacion( id_aut_carnetizacion );

ALTER TABLE ofertas.solicita ADD CONSTRAINT fk_solicita_egresados FOREIGN KEY ( id_egresado ) REFERENCES ofertas.egresados( id_aut_egresado );

ALTER TABLE ofertas.sub_sectores ADD CONSTRAINT fk_sectores_cate_sectores FOREIGN KEY ( id_sectores ) REFERENCES ofertas.sectores( id_aut_sector );

ALTER TABLE ofertas.tipo_de_observacion ADD CONSTRAINT fk_tipo_de_observacion_grados FOREIGN KEY ( id_grado ) REFERENCES ofertas.grados( id_tipo_de_comentarios );

ALTER TABLE ofertas.titulo ADD CONSTRAINT fk_titulo_programas FOREIGN KEY ( id_programa ) REFERENCES ofertas.programas( id_aut_programa );

ALTER TABLE ofertas.ubicacion_oferta ADD CONSTRAINT fk_ubicacion_oferta_ofertas FOREIGN KEY ( id_oferta ) REFERENCES ofertas.ofertas( id_aut_oferta );

ALTER TABLE ofertas.ubicacion_oferta ADD CONSTRAINT fk_ubicacion_oferta_ciudades FOREIGN KEY ( id_ciudad ) REFERENCES ofertas.ciudades( id_aut_ciudad );

ALTER TABLE ofertas.users ADD CONSTRAINT fk_users_roles FOREIGN KEY ( id_rol ) REFERENCES ofertas.roles( id_aut_rol );