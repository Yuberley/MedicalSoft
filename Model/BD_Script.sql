#INSERCIÓN DE DATOS

#ESTADO CIVIL
INSERT INTO ESTADO_CIVIL (cod_st,nomb_st) VALUES (1,'soltero(a)');
INSERT INTO ESTADO_CIVIL (cod_st,nomb_st) VALUES (2,'casado(a)');
INSERT INTO ESTADO_CIVIL (cod_st,nomb_st) VALUES (3,'viudo(a)');
INSERT INTO ESTADO_CIVIL (cod_st,nomb_st) VALUES (4,'divorciado(a)');

#EPS
INSERT INTO EPS (cod_eps, nomb_eps) VALUES (1,'NuevaEps');
INSERT INTO EPS (cod_eps, nomb_eps) VALUES (2,'Colsanitas');
INSERT INTO EPS (cod_eps, nomb_eps) VALUES (3,'Medimas');
INSERT INTO EPS (cod_eps, nomb_eps) VALUES (4,'Cafesalud');
INSERT INTO EPS (cod_eps, nomb_eps) VALUES (5,'Coomeva');

#ESCOLARIDAD
INSERT INTO ESCOLARIDAD (cod_escolaridad,nomb_escolaridad) VALUES (1,'primaria');
INSERT INTO ESCOLARIDAD (cod_escolaridad,nomb_escolaridad) VALUES (2,'bachillerato');
INSERT INTO ESCOLARIDAD (cod_escolaridad,nomb_escolaridad) VALUES (3,'pregrado');
INSERT INTO ESCOLARIDAD (cod_escolaridad,nomb_escolaridad) VALUES (4,'posgrado');

#PERSONAS  
INSERT INTO PERSONAS (cc,nombre,apellidos,edad,sexo,fech_nacimiento) VALUES (21190080,'Alejandro','Buitrago Rojas',30,
  'hombre', ('1991/02/21')
);
INSERT INTO PERSONAS (cc,nombre,apellidos,edad,sexo,fech_nacimiento) VALUES (1122546763,'Camila','Hernandez Orjuela',
  19,'mujer','2002/11/27'
);
INSERT INTO PERSONAS (cc,nombre,apellidos,edad,sexo,fech_nacimiento) VALUES (4798888,'Jhonatan','Palomino Perez',51,
  'hombre','1970/06/08'
);

#LUGAR
INSERT INTO LUGAR (cod_lugar,nacimiento,recidencia,procedencia) VALUES (1,'Acacias','Villavicencio','Villavicencio');
INSERT INTO LUGAR (cod_lugar,nacimiento,recidencia,procedencia) VALUES (2,'Villavicencio','Villavicencio','Villavicencio');
INSERT INTO LUGAR (cod_lugar,nacimiento,recidencia,procedencia) VALUES (3,'Cumaral','Guaviare','Guamal');
INSERT INTO LUGAR (cod_lugar,nacimiento,recidencia,procedencia) VALUES (4,'Restrepo','Acacias','Villavicencio');
INSERT INTO LUGAR (cod_lugar,nacimiento,recidencia,procedencia) VALUES (5,'La ceja','Villavicencio','Cali');

#PACIENTES
INSERT INTO PACIENTES (cc,ocupacion,religion,raza,lateralidad,informante,parentesco,rh,confiabilidad, 
   cod_eps,cod_st,cod_escolaridad,cod_lugar) VALUES (21190080, 'celador', 'católico', 'no aplica', 'diestro', 'Diana', 
  'esposa', 'A+', 'alta', 3, 2, 3, 3 
);
INSERT INTO PACIENTES (cc,ocupacion,religion,raza,lateralidad,informante,parentesco,rh,confiabilidad, 
  cod_eps,cod_st,cod_escolaridad,cod_lugar) VALUES (4798888, 'docente', 'catolico', 'indigena', 'diestro', 'Juan', 
  'hermano', 'O+', 'alta', 1, 2, 2, 1
);
INSERT INTO PACIENTES (cc,ocupacion,religion,raza,lateralidad,informante,parentesco,rh,confiabilidad, 
  cod_eps,cod_st,cod_escolaridad,cod_lugar) VALUES (1122546763, 'electricista', 'agnostico', 'afroamericano', 'zurdo', 
  'Rosa', 'madre', 'A+', 'media', 5, 3, 4, 4 
);

#EXAMEN FISICO
INSERT INTO EXAMEN_FISICO (cod_ef,torax,abdomen,extremidades,columna) VALUES (1,'buen estado','perfecto estado','estado regular',
  'mal estado');
INSERT INTO EXAMEN_FISICO (cod_ef,torax,abdomen,extremidades,columna) VALUES (2,'mal estado','perfecto estado','estado regular',
  'buen estado');
INSERT INTO EXAMEN_FISICO (cod_ef,torax,abdomen,extremidades,columna) VALUES (3,'perfecto estado','estado regular','mal estado ',
  'mal estado');

#SIGNOS VITALES
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (1,'91 a 119','70 latidos por minuto','14 respiraciones por minuto','95%','133mg/dl',21190080,1);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (2,'entre 120 y 129','100 latidos por minuto','11 respiraciones por minuto','87%','160mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (3,'menor a 90','63 latidos por minuto','19 respiraciones por minuto','70%','90mg/dl',1122546763,3);

#MEDICAMENTOS
INSERT INTO MEDICAMENTOS (cod_medicamentos,nomb_medicamento,dosis,concentracion,tiempo_administracion) VALUES (1,'paracetamol',
'cada 8 horas','2 tabletas','1 semana');
INSERT INTO MEDICAMENTOS (cod_medicamentos,nomb_medicamento,dosis,concentracion,tiempo_administracion) VALUES (2,'ibuprofeno',
'cada 24 horas','1 tableta','5 dias');
INSERT INTO MEDICAMENTOS (cod_medicamentos,nomb_medicamento,dosis,concentracion,tiempo_administracion) VALUES (3,'aspirina',
'cada 8 horas','1 tableta','1 mes');
INSERT INTO MEDICAMENTOS (cod_medicamentos,nomb_medicamento,dosis,concentracion,tiempo_administracion) VALUES (4,'omeprazol',
'cada 6 horas','4 mg','permanente');
INSERT INTO MEDICAMENTOS (cod_medicamentos,nomb_medicamento,dosis,concentracion,tiempo_administracion) VALUES (5,'lexotiroxina',
'cada 12 horas','1 capsula','2 meses');

#PARACLINICOS
INSERT INTO PARACLINICOS (cod_paraclinico,nomb_paraclinico) VALUES (1,'electrocardiograma');
INSERT INTO PARACLINICOS (cod_paraclinico,nomb_paraclinico) VALUES (2,'audimetria');
INSERT INTO PARACLINICOS (cod_paraclinico,nomb_paraclinico) VALUES (3,'espirometria');
INSERT INTO PARACLINICOS (cod_paraclinico,nomb_paraclinico) VALUES (4,'visiometria');
INSERT INTO PARACLINICOS (cod_paraclinico,nomb_paraclinico) VALUES (5,'optometria');

#PLAN MANEJO
INSERT INTO PLAN_MANEJO (cod_pm,descripcion,cod_evolucion) VALUES (1,'Hay que revisar el estado del paciente, se recomienda 
  guardar reposo por un par de semanas',1);
INSERT INTO PLAN_MANEJO (cod_pm,descripcion,cod_evolucion) VALUES (2,'El paciente se encuentra con altos niveles de azucar, 
  se recomienda aplicar 2 dosis de insulina de 2mg al dia',2);
INSERT INTO PLAN_MANEJO (cod_pm,descripcion,cod_evolucion) VALUES (3,'El paciente no presenta mayores dificultades 
  respiratorios, por otro lado, la frecuencia respiratoria es muy elevada, hay que revisar ',3);

#EVOLUCIÓN
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,fech_evolucion,cc,cod_pm) VALUES (2,
'El paciente ha tenido una mejora continua, esperemos que así continúe','El paciente aunque ha mejorado sigue presentando unos 
resultados preocupantes','Hay que seguir tomando el medicamento','2021/08/28',21190080,2);
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,fech_evolucion,cc,cod_pm ) VALUES (3,
'El paciente ha estado empeorando, no se tienen muy buenas expectativas pero se hará el máximo esfuerzo','No hay ninguna mejora, 
hay que estudiar todas las posibilidades','Hay que mantener en UCI','2021/08/29',4798888,3);
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,fech_evolucion,cc,cod_pm) VALUES (1,
'El paciente muestra una mejora progresiva','El paciente ya casi está carente de sintomas','Se le dará de alta al paciente pronto',
'2021/08/18',1122546763,1);

#RECETA
INSERT INTO receta (cod_medicamentos,cod_pm) VALUES (1,1);
INSERT INTO receta (cod_medicamentos,cod_pm) VALUES (2,2);
INSERT INTO receta (cod_medicamentos,cod_pm) VALUES (3,3);

#SOLICITA
INSERT INTO solicita (cod_paraclinico,cod_pm) VALUES (1,1);
INSERT INTO solicita (cod_paraclinico,cod_pm) VALUES (2,2);
INSERT INTO solicita (cod_paraclinico,cod_pm) VALUES (3,3);

#EXAMEN NEUROLOGICO
INSERT INTO EXAMEN_NEUROLOGICO (cod_en,mental,pares_craneales,motor_raquideo,sensitivo_raquideo,reflejos,coordinacion,marcha) 
VALUES (1,'estable','tamaño natural','en perfecto estado','normal','bajos','buena','positiva');
INSERT INTO EXAMEN_NEUROLOGICO (cod_en,mental,pares_craneales,motor_raquideo,sensitivo_raquideo,reflejos,coordinacion,marcha) 
VALUES (2,'alerta','debiles','acelerado','nulo','estables','mala','mala');
INSERT INTO EXAMEN_NEUROLOGICO (cod_en,mental,pares_craneales,motor_raquideo,sensitivo_raquideo,reflejos,coordinacion,marcha)
VALUES (3,'estable','comportamiento normal','critico','en observación','buenos','amotro','no se puede mantener de pie');

#REVISION SISTEMA
INSERT INTO REVISION_SISTEMA (cod_rs,nepuropsiquiatrico,mamas,sintomas_generales,cabeza_sentidos,linforreticular,cardiopulmonar,
gastrointestinal,psicogenicos,genitourinario,musculoesqueletico,piel_faneras,endocrino,venereos) VALUES (1,'Estado aceptable',
'No aplica','dolor de cabeza','estables','bien','debil','estreñimiento','bien','no hay problema','fuerte','libre de imperfecciones',
'todo funcionando bien','bien');
INSERT INTO REVISION_SISTEMA (cod_rs,nepuropsiquiatrico,mamas,sintomas_generales,cabeza_sentidos,linforreticular,cardiopulmonar,
gastrointestinal,psicogenicos,genitourinario,musculoesqueletico,piel_faneras,endocrino,venereos ) VALUES (2,'Estado precacrio','bien',
'jaqueca','controles','debil','problemas al respirar','come sano','trastorno somatomorfo','no hay problema','adecuado',
'bien','todo bastante bien','no aplica');
INSERT INTO REVISION_SISTEMA (cod_rs,nepuropsiquiatrico,mamas,sintomas_generales,cabeza_sentidos,linforreticular,cardiopulmonar,
gastrointestinal,psicogenicos,genitourinario,musculoesqueletico,piel_faneras,endocrino,venereos) VALUES (3,'Mal estado','bien',
'dolor estomacal','sentidos sanos','no esta mal','problemas al respirar','dolor de estomago','trastorno por dolor',
'le duele al orinar','enclenque','no tiene','normal','nada');

#ANTECEDENTES
INSERT INTO ANTECEDENTES (cod_antecedente,psicososiales,familiares,quirurgicos,hospitalarios,patologicos,farmacologicos,
toxico_alergicos,traumaticos,gineco_obstetrico,inmunologicos,psiquiatricos) VALUES (1,'se le dificulta','ninguno','apendicitis',
'3 meses en la UCI','anemia','omeprazol','claustrofobia','no aplica','ninguno','ninguno','ninguno');
INSERT INTO ANTECEDENTES (cod_antecedente,psicososiales,familiares,quirurgicos,hospitalarios,patologicos,farmacologicos,
toxico_alergicos,traumaticos,gineco_obstetrico,inmunologicos,psiquiatricos) VALUES (2,'ninguno','cancer','cesarea','no',
'ninguno','amoxacilina','lactosa','ninguno','no tiene ningun problema','rinitis','ninguno');
INSERT INTO ANTECEDENTES (cod_antecedente,psicososiales,familiares,quirurgicos,hospitalarios,patologicos,farmacologicos,
toxico_alergicos,traumaticos,gineco_obstetrico,inmunologicos,psiquiatricos) VALUES (3,'si','diabetes','apendicitis, 
calculos renales','2 cirugías','no','ninguno','a las nueces','no','rinitis','ninguno','ninguno');

#HISTORIA CLINICA
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cod_ef,cod_pm,cc,
cod_en,cod_rs,cod_antecedente) VALUES (1, '20','dolor','migraña','migraña que puede ser tratada facilmente','no es grave',1,1,21190080,1,1,1);
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cod_ef,cod_pm,cc,
cod_en,cod_rs,cod_antecedente) VALUES (2, '27', 'malestar','infeccion','infeccion no maligna','esta bien',2,2,4798888,2,2,2);
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cod_ef,cod_pm,cc,
cod_en,cod_rs,cod_antecedente) VALUES (3, '103','dolor','vejez','estomago con problemas en las tripas','se va a morir',3,3,1122546763,3,3,3);

