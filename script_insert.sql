use futbol;

insert into jugadores values (27585697,'Juan','Paolo',4165456897,'4to','padre','M','1','Medio',10424515,'Los chichimecas','2001/10/2');
insert into jugadores values (27585698,'Pedro','Perez',4165456898,'4to','padre','M','1','Medio',8424515,'Los chichimecas','2002/10/2');
insert into jugadores values (27585699,'Jose','Ruiz',4165456899,'6to','padre','M','3','Portero',9424515,'Los chichimecas','2004/10/2');
insert into jugadores values (27585696,'Juana','Paola',4165456891,'5to','hermano','F','2','Extremo',10433215,'Cruz Azul','2003/10/2');
insert into jugadores values (27585695,'Mirko','Tripalo',4165456893,'5to','primo','M','2','Lateral',1288315,'Tachira','2005/10/2');

insert into representantes values (7585697,'Jeremy','Paolo',2125236897,2125244897,2124244897,'M','Washington','Caracas','1','Albanil');
insert into representantes values (8585697,'Pedro','Perez',2125432898,2125456897,2125444897,'M','Quinta','Bello monte','2','Carpintero');
insert into representantes values (9585697,'Julio','Ruiz',2125456899,2125246897,2125254897,'M','Tokyo','Caracas','1','profesor');
insert into representantes values (23711591,'Yonder','Gomez',2125456891,2124736897,2124244897,'M','Rivas','La Vega','3','Buhonero');
insert into representantes values (6585767,'Mijail','Tal',2125456893,2125249997,2124244897,'M','Martín','Latina','4','Ajedrecista');

insert into trabajador values (158587432,'Miriam','Sol',212545212,212145212,2124244197,'1987/11/24','VEN','F',NULL,'1','1','Secretaria');
insert into trabajador values (18245789,'Juliana','Lopez',212545213,212245212,2125444297,'1990/10/22','VEN','F','Tecnico','1','1','RR.HH');
insert into trabajador values (11256987,'Alejandro','Jauregui',212545214,212345212,2125254397,'1996/12/24','VEN','M',NULL,'2','2','Calienta_bancos');
insert into trabajador values (20333567,'Pedro','Mendez',212545215,212445212,2124244497,'1977/04/04','VEN','M','Limpia_Autos','3','3','Coordinador Administrativo');
insert into trabajador values (19998543,'Steve','Melendi',212545216,212645212,2124244597,'1968/01/29','USA','M','Entrenador','2','2','Entrenador');

insert into lugar values ('1','Caracas','ciudad',NULL);
insert into lugar values ('2','Bello monte','municipio','1');
insert into lugar values ('3','La Vega','parroquia','1');
insert into lugar values ('4','El Cafetal','municipio',NULL);
insert into lugar values ('5','Caricuao','sector','1');

insert into historial_trabajador values ('2005/01/24','2015/01/24','Mesera','Mejoría','1',158587432);	
insert into historial_trabajador values ('2002/03/24','2010/01/24','Actriz','falta de ganancia','1',18245789);
insert into historial_trabajador values ('2009/01/10','2010/01/24','Espía','copia','1',11256987);
insert into historial_trabajador values ('1999/03/24','2000/01/24','Actuario','','1',20333567);
insert into historial_trabajador values ('2000/01/20','2018/01/24','Jugador','Jugador','3',19998543);

insert into sede values ('1','Amigos','2002/04/20','San Andrés','El Bosque',50000,80000,'1');
insert into sede values ('2','Deportiva','2005/03/12','Milagrosa','La Virgen',30000,50000,'2');	
insert into sede values ('3','Candelaria','2003/01/01','Gerona','Chievo',30000,50000,'3');	
insert into sede values ('4','23 de Enero','2000/12/12','Chacao','Chacao',50000,80000,'4');
insert into sede values ('5','Altamira','2010/05/30','Altamira','Washington',50000,80000,'5');

insert into horario values ('2008','2009','Lunes','7','9','1','1');
insert into horario values ('2007','2008','Martes','9','11','1','2');
insert into horario values ('2006','2007','Miercoles','11','1','2','3');
insert into horario values ('2005','2006','Jueves','1','3','1','4');
insert into horario values ('2004','2005','Viernes','3','5','3','5');

insert into categoria values ('1','Escuelita','2011','2012');
insert into categoria values ('2','Pre Mini','2010','2010');
insert into categoria values ('3','Mini','2009','2009');	
insert into categoria values ('4','Preb','2007','2008');
insert into categoria values ('5','Prea','2005','2006');
insert into categoria values ('6','infantilc','2003','2004');
insert into categoria values ('7','infantilb','2001','2002');
insert into categoria values ('8','infantila','1999','2000');

insert into proveedor values ('a1','1','Futbolillo','Julio',4143025891);
insert into proveedor values ('a2','1','Zoom','Susana',4143025892);
insert into proveedor values ('a3','3','Banesco','Ernesto',4143025893);
insert into proveedor values ('a4','2','Benavides','Ezio',4143025894);
insert into proveedor values ('a5','3','Monarcas','Mary Jane',4143025895);

insert into asistencia values ('7:00',27585697,'2008','2009','Lunes','1','1');
insert into asistencia values ('9:00',27585698,'2008','2009','Lunes','1','1');
insert into asistencia values ('9:50',27585699,'2005','2006','Martes','2','4');
insert into asistencia values ('11:05',27585696,'2007','2008','Miercoles','3','2');
insert into asistencia values ('1:00',27585695,'2007','2008','Jueves','4','2');

insert into notas values ('2008','2009',1,16.4,false,27585697);
insert into notas values ('2008','2009',2,18.0,false,27585698);
insert into notas values ('2005','2006',3,15.0,false,27585699);
insert into notas values ('2007','2008',2,9.0,true,27585696);
insert into notas values ('2007','2008',2,13.0,false,27585695);

insert into colegio values('1','Belagua','Obligatorio',27585697);
insert into colegio values('2','Christel House','Obligatorio',27585698);
insert into colegio values('3','San Jose','Obligatorio',27585699);
insert into colegio values('4','Andres Bello','Obligatorio',27585696);
insert into colegio values('5','Simon Bolivar','Obligatorio',27585695);

insert into posicion values ('Portero','Tapa balón');
insert into posicion values ('Defensa','Defiende');
insert into posicion values ('Medio','Asiste');
insert into posicion values ('Extremo','Centra');
insert into posicion values ('Delantero','Anota');

insert into equipo values ('Los chichimecas','Mixto','1',27585697);
insert into equipo values ('Cruz Azul','Mixto','2',27585698);
insert into equipo values ('Tachira','Unisex','3',27585699);
insert into equipo values ('Union Espanola','Unisex','4',27585696);
insert into equipo values ('Uni Catolica','Unisex','5',27585695);

insert into partido values (1,'2017/12/01','2008','2009',1,0,'Los chichimecas','Uni Catolica');
insert into partido values (2,'2017/12/04','2007','2008',3,0,'Cruz Azul','Union Espanola');
insert into partido values (3,'2017/12/06','2007','2008',2,2,'Uni Catolica','Cruz Azul');
insert into partido values (4,'2017/10/11','2005','2006',1,1,'Los chichimecas','Cruz Azul');
insert into partido values (5,'2017/11/15','2006','2007',0,0,'Union Espanola','Los chichimecas');

insert into gol values (27585697,'Medio',1);
insert into gol values (27585698,'Medio',2);
insert into gol values (27585698,'Medio',3);
insert into gol values (27585696,'Extremo',4);
insert into gol values (27585695,'Lateral',5);

insert into cambio_color values ('2005','2006','','amarillo','negro','1');
insert into cambio_color values ('2007','2008','','verde','rojo','1');
insert into cambio_color values ('2008','2009','','azul','rojo','1');
insert into cambio_color values ('2004','2005','','blanco','blanco','1');
insert into cambio_color values ('2006','2007','','rosa','blanco','1');

insert into producto values ('1','uniforme',50,50,30,'2017/11/03','uniforme','14',65000,'1');
insert into producto values ('2','hidratacion',100,80,80,'2017/08/02','hidratacion',NULL,15000,'1');
insert into producto values ('3','balones',150,120,50,'2016/05/05','balones',NULL,120000,'2');
insert into producto values ('4','cal',80,80,50,'2016/03/03','cal',NULL,25000,'1');
insert into producto values ('5','conos',70,50,45,'2017/03/03','conos',NULL,55000,'3');

insert into infooc values(1,'2017/12/05',130000,'1','1');
insert into infooc values(2,'2017/11/05',85000,'2','2');	
insert into infooc values(3,'2017/11/06',29500,'3','3');	
insert into infooc values(4,'2017/12/02',77700,'4','4');	
insert into infooc values(5,'2017/12/01',84350,'5','5');

insert into detalle_compra values(2,130000,1,'1');	
insert into detalle_compra values(1,85000,2,'2');
insert into detalle_compra values(1,29500,3,'3');
insert into detalle_compra values(1,77700,4,'4');
insert into detalle_compra values(1,84350,5,'5');	

insert into ajustes values ('2017/02/12',1,'uniforme','1');
insert into ajustes values ('2017/02/13',1,'uniforme','1');
insert into ajustes values ('2017/02/14',1,'uniforme','1');
insert into ajustes values ('2017/02/15',1,'uniforme','1');
insert into ajustes values ('2017/02/16',1,'uniforme','1');

insert into inscripcion values ('2017/05/05','2017/05/05',50000,true,true,true,false,false,'2008','2009',27585697,'1');
insert into inscripcion values ('2017/05/06','2017/05/06',50000,true,false,true,false,true,'2008','2009',27585698,'1');
insert into inscripcion values ('2017/05/07','2017/05/07',80000,true,true,true,true,true,'2008','2009',27585699,'1');
insert into inscripcion values ('2017/05/08','2017/05/08',80000,true,true,true,true,true,'2008','2009',27585696,'1');
insert into inscripcion values ('2017/05/09','2017/05/09',50000,true,true,true,false,false,'2008','2009',27585695,'1');

insert into mensualidad values ('05',1,'2017/05/01',50000,'2008','2009','Banesco','10000');
insert into mensualidad values ('06',2,'2017/06/01',70000,'2007','2008','Provincial','10000');
insert into mensualidad values ('07',3,'2017/07/01',85000,'2005','2006','Mercantil','10000');
insert into mensualidad values ('08',4,'2017/08/01',102000,'2008','2009','Exterior','10000');
insert into mensualidad values ('09',5,'2017/09/01',185000,'2005','2006','Bicentenario','10000');

insert into factura_uniforme values (1,'2017/05/01',9585697,'1');
insert into factura_uniforme values (2,'2017/05/01',23711591,'1');
insert into factura_uniforme values (3,'2017/05/02',6585767,'2');
insert into factura_uniforme values (4,'2017/05/03',23711591,'1');
insert into factura_uniforme values (5,'2017/05/03',23711591,'2');

insert into pago_uniforme values ('2017/05/01',150000,'Banesco',150000,1);
insert into pago_uniforme values ('2017/05/01',150000,'Banesco',150000,2);
insert into pago_uniforme values ('2017/05/02',150000,'Banesco',150000,3);
insert into pago_uniforme values ('2017/05/03',150000,'Mercantil',150000,4);
insert into pago_uniforme values ('2017/05/03',150000,'Provincial',150000,5);

insert into detalle_uniforme values (1,150000,'1');
insert into detalle_uniforme values (1,150001,'1');
insert into detalle_uniforme values (1,150002,'1');
insert into detalle_uniforme values (1,150003,'1');
insert into detalle_uniforme values (1,150004,'1');

insert into pruebas values (15.04,0.5,'30s','70s','420s',20,50,'2017/03/01',30,14,27585697);
insert into pruebas values (15.04,0.5,'30s','70s','420s',20,50,'2017/03/01',32,14,27585698);
insert into pruebas values (15.04,0.5,'30s','70s','420s',20,50,'2017/03/01',31,14,27585699);
insert into pruebas values (15.04,0.5,'30s','70s','420s',20,50,'2017/03/01',28,12,27585696);
insert into pruebas values (15.04,0.5,'30s','70s','420s',20,50,'2017/03/01',40,14,27585695);

insert into ejercicios values (1,'Piques');
insert into ejercicios values (2,'Centros');
insert into ejercicios values (3,'Abdominales');
insert into ejercicios values (4,'Conduccion');
insert into ejercicios values (5,'Pases largos');

insert into plan_entrenamiento values (1,'Plan1','Diurno','2008','2009','Lunes','1','1');
insert into plan_entrenamiento values (2,'Plan2','Diurno','2007','2008','Martes','2','2');
insert into plan_entrenamiento values (3,'Plan3','Diurno','2006','2007','Miercoles','3','3');
insert into plan_entrenamiento values (4,'Plan4','Diurno','2005','2006','Jueves','4','4');
insert into plan_entrenamiento values (5,'Plan5','Diurno','2004','2005','Viernes','5','5');

insert into duracion_plan_entrenamiento values ('2h',1,1,'Medio','1');
insert into duracion_plan_entrenamiento values ('2h',2,2,'Delantero','2');
insert into duracion_plan_entrenamiento values ('2h',3,3,'Defensa','3');
insert into duracion_plan_entrenamiento values ('1h',5,5,'Extremo','4');
insert into duracion_plan_entrenamiento values ('1h',4,4,'Lateral','5');	

