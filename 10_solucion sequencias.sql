SELECT setval(pg_get_serial_sequence('ofertas.cargos', 'id_aut_cargos'), coalesce(max(id_aut_cargos)+1,1), false) FROM ofertas.cargos;
