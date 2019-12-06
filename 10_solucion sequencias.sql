SELECT setval(pg_get_serial_sequence('ofertas.cargos', 'id_aut_cargos'), coalesce(max(id_aut_cargos)+1,1), false) FROM ofertas.cargos;

SELECT setval(pg_get_serial_sequence('ofertas.empresas', 'id_aut_empresa'), coalesce(max(id_aut_empresa)+1,1), false) FROM ofertas.cargos;

SELECT setval(pg_get_serial_sequence('ofertas.ofertas', 'id_aut_oferta'), coalesce(max(id_aut_oferta)+1,1), false) FROM ofertas.ofertas;
