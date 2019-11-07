INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 1, 'Problemas neurologicos' ); 

-- INSERT INTO ofertas.sectores( id_aut_sector, nombre ) VALUES ( 1, 'Salud' ); 

-- INSERT INTO ofertas.sub_sectores(id_aut_sub_sector, nombre, id_sectores ) VALUES ( 1, 'Salud', 1 ); 

INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede ) VALUES ( 1, 'Sistemas', null, null ); 
INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede ) VALUES ( 2, 'Fisica', null, null ); 

insert into ofertas.roles (nombre) values ('Administrador');
insert into ofertas.roles (nombre) values ('Empresa');
insert into ofertas.roles (nombre) values ('Egresado');
commit;
