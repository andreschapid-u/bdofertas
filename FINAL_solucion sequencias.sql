SELECT setval(pg_get_serial_sequence('ofertas.administrador_empresa', 'id_aut_administrador_empresa'), coalesce(max(id_aut_administrador_empresa)+1,1), false) FROM ofertas.administrador_empresa;
SELECT setval(pg_get_serial_sequence('ofertas.apoyos', 'id_aut_apoyo'), coalesce(max(id_aut_apoyo)+1,1), false) FROM ofertas.apoyos;
SELECT setval(pg_get_serial_sequence('ofertas.areas_conocimiento', 'id_aut_areaconocimiento'), coalesce(max(id_aut_areaconocimiento)+1,1), false) FROM ofertas.areas_conocimiento;
SELECT setval(pg_get_serial_sequence('ofertas.cargos', 'id_aut_cargos'), coalesce(max(id_aut_cargos)+1,1), false) FROM ofertas.cargos;
SELECT setval(pg_get_serial_sequence('ofertas.carnetizacion', 'id_aut_carnetizacion'), coalesce(max(id_aut_carnetizacion)+1,1), false) FROM ofertas.carnetizacion;
SELECT setval(pg_get_serial_sequence('ofertas.ciudades', 'id_aut_ciudad'), coalesce(max(id_aut_ciudad)+1,1), false) FROM ofertas.ciudades;
SELECT setval(pg_get_serial_sequence('ofertas.departamentos', 'id_aut_dep'), coalesce(max(id_aut_dep)+1,1), false) FROM ofertas.departamentos;
SELECT setval(pg_get_serial_sequence('ofertas.departamentos', 'id_aut_dep'), coalesce(max(id_aut_dep)+1,1), false) FROM ofertas.departamentos;

SELECT setval(pg_get_serial_sequence('ofertas.empresas', 'id_aut_empresa'), coalesce(max(id_aut_empresa)+1,1), false) FROM ofertas.empresas;

SELECT setval(pg_get_serial_sequence('ofertas.ofertas', 'id_aut_oferta'), coalesce(max(id_aut_oferta)+1,1), false) FROM ofertas.ofertas;
