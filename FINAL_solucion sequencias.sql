SELECT setval(pg_get_serial_sequence('ofertas.administrador_empresa', 'id_aut_administrador_empresa'), coalesce(max(id_aut_administrador_empresa)+1,1), false) FROM ofertas.administrador_empresa;
SELECT setval(pg_get_serial_sequence('ofertas.apoyos', 'id_aut_apoyo'), coalesce(max(id_aut_apoyo)+1,1), false) FROM ofertas.apoyos;
SELECT setval(pg_get_serial_sequence('ofertas.areas_conocimiento', 'id_aut_areaconocimiento'), coalesce(max(id_aut_areaconocimiento)+1,1), false) FROM ofertas.areas_conocimiento;
SELECT setval(pg_get_serial_sequence('ofertas.cargos', 'id_aut_cargos'), coalesce(max(id_aut_cargos)+1,1), false) FROM ofertas.cargos;
SELECT setval(pg_get_serial_sequence('ofertas.carnetizacion', 'id_aut_carnetizacion'), coalesce(max(id_aut_carnetizacion)+1,1), false) FROM ofertas.carnetizacion;
SELECT setval(pg_get_serial_sequence('ofertas.ciudades', 'id_aut_ciudad'), coalesce(max(id_aut_ciudad)+1,1), false) FROM ofertas.ciudades;
SELECT setval(pg_get_serial_sequence('ofertas.contratos', 'id_aut_contrato'), coalesce(max(id_aut_contrato)+1,1), false) FROM ofertas.contratos;
SELECT setval(pg_get_serial_sequence('ofertas.departamentos', 'id_aut_dep'), coalesce(max(id_aut_dep)+1,1), false) FROM ofertas.departamentos;
SELECT setval(pg_get_serial_sequence('ofertas.discapacidades', 'id_aut_discapacidades'), coalesce(max(id_aut_discapacidades)+1,1), false) FROM ofertas.discapacidades;
SELECT setval(pg_get_serial_sequence('ofertas.egresados', 'id_aut_egresado'), coalesce(max(id_aut_egresado)+1,1), false) FROM ofertas.egresados;
SELECT setval(pg_get_serial_sequence('ofertas.empresas', 'id_aut_empresa'), coalesce(max(id_aut_empresa)+1,1), false) FROM ofertas.empresas;
SELECT setval(pg_get_serial_sequence('ofertas.evento', 'id_aut_evento'), coalesce(max(id_aut_evento)+1,1), false) FROM ofertas.evento;
SELECT setval(pg_get_serial_sequence('ofertas.experiencia', 'id_aut_exp'), coalesce(max(id_aut_exp)+1,1), false) FROM ofertas.experiencia;
SELECT setval(pg_get_serial_sequence('ofertas.facultades', 'id_aut_facultad'), coalesce(max(id_aut_facultad)+1,1), false) FROM ofertas.facultades;
SELECT setval(pg_get_serial_sequence('ofertas.grados', 'id_aut_grado'), coalesce(max(id_aut_grado)+1,1), false) FROM ofertas.grados;
SELECT setval(pg_get_serial_sequence('ofertas.idiomas', 'id_aut_idioma'), coalesce(max(id_aut_idioma)+1,1), false) FROM ofertas.idiomas;
SELECT setval(pg_get_serial_sequence('ofertas.localizacion', 'id_aut_localizacion'), coalesce(max(id_aut_localizacion)+1,1), false) FROM ofertas.localizacion;
SELECT setval(pg_get_serial_sequence('ofertas.niveles_estudio', 'id_aut_estudio'), coalesce(max(id_aut_estudio)+1,1), false) FROM ofertas.niveles_estudio;
SELECT setval(pg_get_serial_sequence('ofertas.ofertas', 'id_aut_oferta'), coalesce(max(id_aut_oferta)+1,1), false) FROM ofertas.ofertas;
SELECT setval(pg_get_serial_sequence('ofertas.pais', 'id_aut_pais'), coalesce(max(id_aut_pais)+1,1), false) FROM ofertas.pais;
SELECT setval(pg_get_serial_sequence('ofertas.preguntas_oferta', 'id_aut_pregunta'), coalesce(max(id_aut_pregunta)+1,1), false) FROM ofertas.preguntas_oferta;
SELECT setval(pg_get_serial_sequence('ofertas.programas', 'id_aut_programa'), coalesce(max(id_aut_programa)+1,1), false) FROM ofertas.programas;
SELECT setval(pg_get_serial_sequence('ofertas.recepcion_hv', 'id_aut_recepcionhv'), coalesce(max(id_aut_recepcionhv)+1,1), false) FROM ofertas.recepcion_hv;
SELECT setval(pg_get_serial_sequence('ofertas.recuperar_password', 'id_recuperar_password'), coalesce(max(id_recuperar_password)+1,1), false) FROM ofertas.recuperar_password;
SELECT setval(pg_get_serial_sequence('ofertas.referidos', 'id_aut_referido'), coalesce(max(id_aut_referido)+1,1), false) FROM ofertas.referidos;
SELECT setval(pg_get_serial_sequence('ofertas.representante_empresa', 'id_aut_representante_empresa'), coalesce(max(id_aut_representante_empresa)+1,1), false) FROM ofertas.representante_empresa;
SELECT setval(pg_get_serial_sequence('ofertas.rol', 'id_aut_rol'), coalesce(max(id_aut_rol)+1,1), false) FROM ofertas.rol;
SELECT setval(pg_get_serial_sequence('ofertas.salarios', 'id_aut_salario'), coalesce(max(id_aut_salario)+1,1), false) FROM ofertas.salarios;
SELECT setval(pg_get_serial_sequence('ofertas.sectores', 'id_aut_sector'), coalesce(max(id_aut_sector)+1,1), false) FROM ofertas.sectores;
SELECT setval(pg_get_serial_sequence('ofertas.sede', 'id_aut_sede'), coalesce(max(id_aut_sede)+1,1), false) FROM ofertas.sede;
SELECT setval(pg_get_serial_sequence('ofertas.servicios', 'id_aut_servicio'), coalesce(max(id_aut_servicio)+1,1), false) FROM ofertas.servicios;
SELECT setval(pg_get_serial_sequence('ofertas.sub_sectores', 'id_aut_sub_sector'), coalesce(max(id_aut_sub_sector)+1,1), false) FROM ofertas.sub_sectores;
SELECT setval(pg_get_serial_sequence('ofertas.tipo_de_observacion', 'id_aut_comentario'), coalesce(max(id_aut_comentario)+1,1), false) FROM ofertas.tipo_de_observacion;
SELECT setval(pg_get_serial_sequence('ofertas.titulo', 'id_aut_titulo'), coalesce(max(id_aut_titulo)+1,1), false) FROM ofertas.titulo;
SELECT setval(pg_get_serial_sequence('ofertas.universidad', 'id_aut_universidad'), coalesce(max(id_aut_universidad)+1,1), false) FROM ofertas.universidad;
SELECT setval(pg_get_serial_sequence('ofertas.users', 'id_aut_user'), coalesce(max(id_aut_user)+1,1), false) FROM ofertas.users;
commit;
