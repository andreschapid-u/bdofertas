-- ROLES
insert into ofertas.rol(id_aut_rol,nombre) values (1,'Administrador');
insert into ofertas.rol(id_aut_rol,nombre) values (2,'Empresa');
insert into ofertas.rol(id_aut_rol,nombre) values (3,'Egresado');

-- DISCAPACIDADES

INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 1, 'Auditiva' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 2, 'Física' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 3, 'Fonética' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 4, 'Mental' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 5, 'Multiples' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 6, 'Visual' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 7, 'Epilepsias/Crisis Convulsivas' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 8, 'Intelectual' ); 


INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 1, 'Nivel Tecnológico' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 2, 'Nivel Profesional' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 3, 'Especialización' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 4, 'Maestría' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 5, 'Doctorado' ); 


-- PROGRAMAS
-- INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede, id_nivelprogra ) VALUES ( 1, 'Ingeniería de Sistemas', null, null, 2 ); 
-- INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede, id_nivelprogra ) VALUES ( 2, 'Física', null, null, 2 ); 

commit;
