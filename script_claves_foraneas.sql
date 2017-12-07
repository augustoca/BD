use futbol;

alter table jugadores add constraint fkcategoria foreign key (cod_categoria) references categoria(cod_categoria);
alter table jugadores add constraint fkposicion foreign key (posicion) references posicion(tipo_pos);
alter table jugadores add constraint fkrepresentantes foreign key (ci_representante) references representantes(ci);
alter table jugadores add constraint fkequipo foreign key (equipo) references equipo(nombre);

alter table representantes add constraint fklugar foreign key (cod_lugar) references lugar(cod_lugar);

alter table notas add constraint fkcijugador foreign key (ci_jugador) references jugadores(ci);

alter table colegio add constraint fkcijugador1 foreign key (ci_jugador) references jugadores(ci);

alter table equipo add constraint fkcategoria1 foreign key (cod_categoria) references categoria(cod_categoria);
alter table equipo add constraint fkcijugador4 foreign key (ci_capitan) references jugadores(ci);

alter table partido add constraint fkequipolocal foreign key (nombre_local) references equipo(nombre);
alter table partido add constraint fkequipovisitante foreign key (nombre_visitante) references equipo(nombre);

alter table trabajador add constraint fksede foreign key (cod_sede) references sede(cod_sede);
alter table trabajador add constraint fklugar1 foreign key (cod_lugar) references lugar(cod_lugar);

alter table historial_trabajador add constraint fksede1 foreign key (cod_sede) references sede(cod_sede);
alter table historial_trabajador add constraint fktrabajador foreign key (ci_trabajador) references trabajador (ci);

alter table sede add constraint fklugar2 foreign key (cod_lugar) references lugar(cod_lugar);

alter table horario add constraint fksede2 foreign key (cod_sede) references sede(cod_sede);
alter table horario add constraint fkcategoria2 foreign key (cod_categoria) references categoria(cod_categoria);

alter table proveedor add constraint fklugar3 foreign key (cod_lugar) references lugar(cod_lugar);

alter table asistencia add constraint fkjugador foreign key (ci_jugador) references jugadores(ci);
alter table asistencia add constraint fkano_ini foreign key (ano_ini) references horario(ano_ini);
alter table asistencia add constraint fkano_fin foreign key (ano_fin) references horario(ano_ini);
/*alter table asistencia add constraint fkdia foreign key (dia) references horario(dia);*/
alter table asistencia add constraint fkcategoria3 foreign key (cod_categoria) references categoria(cod_categoria);
alter table asistencia add constraint fksede8 foreign key (cod_sede) references sede(cod_sede);

alter table gol add constraint fkjugador2 foreign key (ci_jugador) references jugadores(ci);
alter table gol add constraint fkposicion1 foreign key (cod_posicion) references posicion(tipo_pos);
alter table gol add constraint fkconsecutivo foreign key (consecutivo) references partido(consecutivo);

alter table cambio_color add constraint fkuniformes foreign key (cod_uniforme) references producto(cod_producto);

alter table producto add constraint fksede3 foreign key (cod_sede) references sede(cod_sede);

alter table infooc add constraint fksede4 foreign key (cod_sede) references sede(cod_sede);
alter table infooc add constraint fkrif foreign key (rif) references proveedor(rif);

alter table detalle_compra add constraint fkoc foreign key (oc) references infooc(oc);
alter table detalle_compra add constraint fkproducto foreign key (cod_producto) references producto(cod_producto);

alter table ajustes add constraint fkproducto1 foreign key (cod_producto) references producto(cod_producto);

alter table inscripcion add constraint fksede5 foreign key (cod_sede) references sede(cod_sede);
alter table inscripcion add constraint fkjugador3 foreign key (ci_jugador) references jugadores(ci);

alter table mensualidad add constraint fkano_ini1 foreign key (ano_ini) references inscripcion(ano_ini);
alter table mensualidad add constraint fkano_fin1 foreign key (ano_fin) references inscripcion(ano_fin);
alter table mensualidad add constraint ci_jugador foreign key (ci_jugador) references inscripcion(ci_jugador);

alter table factura_uniforme add constraint fksede6 foreign key (cod_sede) references sede(cod_sede);
alter table factura_uniforme add constraint fkrep foreign key (ci_representante) references representantes(ci);

alter table pago_uniforme add constraint fkfact foreign key (numeracion_fac) references factura_uniforme(numeracion);

alter table detalle_uniforme add constraint fkcodproducto foreign key (cod_uniforme) references producto(cod_producto);

alter table pruebas add constraint fkjugador foreign key (ci_jugador) references jugadores(ci);

alter table plan_entrenamiento add constraint fkano_ini2 foreign key (ano_ini) references horario(ano_ini);
alter table plan_entrenamiento add constraint fkano_fin2 foreign key (ano_fin) references horario(ano_fin);
alter table plan_entrenamiento add constraint fkdia foreign key (dia) references horario(dia);
alter table plan_entrenamiento add constraint fksede7 foreign key (cod_sede) references sede(cod_sede);
alter table plan_entrenamiento add constraint fkcategoria4 foreign key (cod_categoria) references categoria(cod_categoria);

alter table duracion_plan_entrenamiento add constraint fkentrenamiento foreign key (id_entrenamiento) references entrenamiento(id);
alter table duracion_plan_entrenamiento add constraint fkejercicio foreign key (id_ejercicio) references ejercicios(id);
alter table duracion_plan_entrenamiento add constraint fkcategoria5 foreign key (cod_categoria) references categoria(cod_categoria);
alter table duracion_plan_entrenamiento add constraint fkposicion2 foreign key (cod_posicion) references posicion(tipo_pos);

/*alter table lugar add constraint fklugarp foreign key (cod_lugarp) references lugar(cod_lugarp);*/
