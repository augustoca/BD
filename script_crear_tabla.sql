create database futbol;
use futbol;

create table representantes (
	ci int(11) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null, 
	tel_casa varchar(50) not null, 
	tel_ofi varchar(50) not null, 
	tel_ul varchar(50) not null, 
	sexo char(1) not null, 
	calle varchar(255) not null, 
	urb varchar(255) not null,
	cod_lugar varchar(20) not null,
	check (sexo in ('M','F')), 
	constraint pkci primary key (ci)
);

create table jugadores (
	ci int(11) not null, 
	nombre varchar(50) not null, 
	apellido varchar(50) not null, 
	celular varchar(11) not null, 
	grado varchar(10) not null, 
	parentesco varchar(20) not null,
	sexo char(1) not null,
	cod_categoria varchar(20) not null,
	posicion varchar(10) not null,
	ci_representante int(11) not null,
	equipo varchar(20) not null,
	check (sexo in ('M','F')),
	check (parentesco in ('Padre','Madre','Hermano','Hijo', 'Primo')), 
	constraint pkci primary key(ci)
);

create table trabajador (
	ci int(11) not null, 
	nombre varchar(50) not null, 
	apellido varchar(50) not null, 
	tel_casa int(11) not null, 
	tel_ofi int(11) not null, 
	fec_nac date, 
	nacionalidad varchar(20) not null, 
	sexo char(1) not null, 
	tipo varchar(15),
	cod_sede varchar(20) not null,
	cod_lugar varchar(20) not null,
	profesion varchar(20),
	check (sexo in ('M','F')),
	check (tipo in ('Administrativo','Tecnico','Entrenador')),
	constraint pktrabajador primary key(ci)
);

create table lugar (
	cod_lugar varchar(20) not null,
	descripcion varchar(50) not null,
	tipo varchar (15) not null,
	cod_lugarp varchar(20),
	check (tipo in ('ciudad','estado','municipio','parroquia','sector')),
	constraint pklug primary key (cod_lugar)
);

create table lugarp (
	cod_lugarp varchar(20) not null,
	descripcion varchar(50) not null,
	tipo varchar (15) not null,
	cod_lugar varchar(20),
	check (tipo in ('ciudad','estado','municipio','parroquia','sector')),
	constraint pklug primary key (cod_lugar)
);

create table historial_trabajador (
	periodo_ini date not null,
	periodo_fin date not null, 
	cargo varchar(20) not null,
	descripcion varchar(50) not null,
	cod_sede varchar(20) not null,
	ci_trabajador int(8) not null,
	check (cargo in ('Administrativo','Tecnico','Entrenador')),
	constraint pkhis primary key(periodo_ini, cod_sede, ci_trabajador)
);

create table sede (
	cod_sede varchar(20) not null,
	nombre varchar(20) not null,
	fecha_apertura date not null,
	calle varchar (20)  not null,
	urbanización varchar(20) not null,
	costo_3d float not null,
	costo_5d float not null,
	cod_lugar varchar(20) not null,
	constraint pksede primary key(cod_sede)
);

create table horario (
	ano_ini varchar(2) not null,
	ano_fin varchar(2) not null,
	dia varchar(10) not null,
	hora_ini varchar(5) not null,
	hora_fin varchar(5) not null,
	cod_sede varchar(20) not null,
	cod_categoria varchar(20) not null,
	constraint pkhorario primary key(ano_ini, ano_fin, dia, cod_sede,cod_categoria)
);

create table categoria (
	cod_categoria varchar(20) not null,
	nombre varchar(20) not null,
	ano_desde varchar(2) not null,
	ano_hasta varchar(2) not null,
	constraint pkcategoria primary key(cod_categoria,ano_desde,ano_hasta)
);

create table proveedor(
	rif varchar(20) not null,
	cod_lugar varchar(20) not null,
	nombre varchar(20) not null,
	persona_contacto varchar(20) not null,
	telefono int(11) not null,
	constraint pkproveedor primary key (rif)
);

create table asistencia (
	hora_llegada varchar(5) not null,
	ci_jugador int(8) not null,
	ano_ini varchar(2) not null,
	ano_fin varchar(2) not null,
	dia varchar(10) not null,
	cod_sede varchar(20) not null,
	cod_categoria varchar(20) not null,
	constraint pkasistencia primary key(hora_llegada,ci_jugador, ano_ini, ano_fin, dia, cod_sede,cod_categoria)
);

create table notas(
	ano_ini varchar(2) not null,
	ano_fin varchar(2) not null,
	lapso int(1) not null,
	promedio float not null,
	reprobado boolean not null,
	ci_jugador int (8),
	constraint pknotas primary key(ano_ini, ano_fin, lapso, ci_jugador)
);

create table colegio (
	cod_colegio varchar(20) not null,
	nombre varchar (20) not null,
	caracter varchar(10) not null,
	ci_jugador int (8),
	constraint pkcolegio primary key(cod_colegio)
);

create table posicion (
	tipo_pos varchar(10) not null,
	descripcion varchar(50) not null,
	constraint pkposicion primary key(tipo_pos)
);

create table equipo (
	nombre varchar(20) not null,
	tipo varchar (20) not null,
	cod_categoria varchar(20) not null,
	ci_capitan int (8),
	constraint pkequipo primary key(nombre)
);

create table partido(
	consecutivo int not null auto_increment,
	fecha date not null,
	ano_ini varchar(2) not null,
	ano_fin varchar(2) not null,
	goles_local int not null,
	goles_visitante int not null,
	nombre_local varchar(20) not null,
	nombre_visitante varchar(20) not null,
	constraint pkpartido primary key(consecutivo)
);

create table gol (
	ci_jugador int (8) not null,
	cod_posicion varchar(20) not null,
	consecutivo int not null auto_increment,
	constraint pkgol primary key (consecutivo,ci_jugador,cod_posicion)
);

create table cambio_color(
	ano_ini varchar(2) not null,
	ano_fin varchar(2) not null,
	tipo_uniforme varchar(20) not null,
	color_short varchar(20) not null,
	color_franela varchar(20) not null,
	cod_uniforme varchar(20) not null,
	constraint pkcamcol primary key(ano_ini,ano_fin,cod_uniforme)
);

create table producto(
	cod_producto varchar(20) not null,
	descripcion varchar(20) not null,
	cantidad_teorica int not null,
	cantidad_fisica int not null,
	fecha_inventario_fisico date not null,
	cantidad_minima int not null,
	tipo varchar(20) not null,
	talla varchar(2),
	costo float,
	cod_sede varchar(20) not null,
	constraint pkproducto primary key(cod_producto)
);

create table infooc(
	oc int  not null auto_increment,
	fecha date not null,
	monto int not null,
	rif varchar(20) not null,
	cod_sede varchar(20) not null,
	constraint pkinfooc primary key(oc)
);

create table detalle_compra(
	cantidad int not null,
	precio float not null,
	oc int not null,
	cod_producto varchar(20),
	constraint pkdetalle primary key (cod_producto,oc,precio)
);

create table ajustes(
	fecha date not null,
	cantidad int not null,
	tipo varchar (20),
	cod_producto varchar(20) not null,
	constraint pkajustes primary key(fecha,cod_producto)
);

create table inscripcion(
	fecha date not null,
	fecha_pago date not null,
	monto float not null,
	lunes boolean ,
	martes boolean, 
	miercoles boolean, 
	jueves boolean, 
	viernes boolean,
	ano_ini varchar(2) not null,
	ano_fin varchar(2) not null,
	ci_jugador int (8) not null,
	cod_sede varchar(20) not null,
	constraint pkins primary key(ano_ini,ano_fin,ci_jugador,cod_sede)
);

create table mensualidad(
	mes char(2) not null,
	consecutivo int not null auto_increment,
	fecha date not null,
	monto float not null,
	ano_ini varchar(2) not null,
	ano_fin varchar(2) not null,
	banco varchar(10),
	comision varchar(10),
	constraint pkmensualidad primary key(consecutivo,mes)
);

create table factura_uniforme(
	numeracion int not null auto_increment ,
	fecha_compra date not null,
	ci_representante int(8) not null,
	cod_sede varchar(20) not null,
	constraint pkfactura_uniforme primary key(numeracion)
);

create table pago_uniforme(
	fecha date not null,
	monto float not null,
	banco varchar(10),
	transferencia  int(11),
	numeracion_fac int auto_increment not null,
	constraint pkpagouni primary key(numeracion_fac,fecha)
);

create table detalle_uniforme(
	cantidad int not null,
	precio float not null,
	cod_uniforme varchar(20) not null,
	constraint pkdetuni primary key(precio,cod_uniforme)
);

create table pruebas(
	velocidad float not null,
	resistencia float not null,
	tiempo_200 varchar(5) not null,
	tiempo_600 varchar(5) not null,
	tiempo_1000 varchar(5) not null,
	flexiones int not null,
	abdominales int not null,
	fecha date not null,
	peso float not null,
	talla float not null,
	ci_jugador int (8) not null,
	constraint pkpruebas primary key(fecha,ci_jugador)
);

create table ejercicios(
	id int not null,
	descripcion varchar(50) not null,
	constraint pkejercicios primary key(id)
);

create table plan_entrenamiento(
	id int not null,
	nombre varchar(20) not null,
	tipo varchar(20) not null,
	ano_ini varchar(20) not null,
	ano_fin varchar(20) not null,
	dia varchar(10) not null,
	cod_sede varchar(20) not null,
	cod_categoria varchar(20) not null,
	constraint pkplanentrenamiento primary key(id)
);

create table duracion_plan_entrenamiento(
	duracion varchar(20) not null,
	id_entrenamiento int not null,
	id_ejercicios int not null,
	cod_posicion varchar(20) not null,
	cod_categoria varchar(20) not null,
	constraint pkduracionplanentrenamiento primary key(duracion,id_entrenamiento,id_ejercicios,cod_posicion,cod_categoria)
);
