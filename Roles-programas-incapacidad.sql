-- ROLES
insert into ofertas.roles (nombre) values ('Administrador');
insert into ofertas.roles (nombre) values ('Empresa');
insert into ofertas.roles (nombre) values ('Egresado');

-- DISCAPACIDADES

INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 1, 'Auditiva' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 2, 'Fisica' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 3, 'Fonetica' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 4, 'Mental' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 5, 'Multiples' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 6, 'Visual' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 7, 'Epilepsias/Crisis Convulsivas' ); 
INSERT INTO ofertas.discapacidades( id_aut_discapacidades, nombre ) VALUES ( 8, 'Intelectual' ); 


INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 1, 'Nivel Tecnológico' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 2, 'Nivel Profesional' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 3, 'Especiañización' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 4, 'Maestría' ); 
INSERT INTO ofertas.nivel_programa( id_aut_nivprogra, nombre ) VALUES ( 5, 'Doctorado' ); 


-- PROGRAMAS
INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede, id_nivelprogra ) VALUES ( 1, 'Ingenieria de Sistemas', null, null, 2 ); 
INSERT INTO ofertas.programas( id_aut_programa, nombre, id_facultad, id_sede, id_nivelprogra ) VALUES ( 2, 'Fisica', null, null, 2 ); 

commit;
