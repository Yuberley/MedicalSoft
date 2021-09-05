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
cc,cod_ef) VALUES (1,'91 a 119','70 latidos por minuto','14 respiraciones por minuto','95%','123mg/dl',21190080,1);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (2,'97 a 119','78 latidos por minuto','20 respiraciones por minuto','82%','133mg/dl',21190080,1);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (3,'82 a 119','72 latidos por minuto','22 respiraciones por minuto','86%','129mg/dl',21190080,1);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (4,'89 a 119','79 latidos por minuto','17 respiraciones por minuto','80%','126mg/dl',21190080,1);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (5,'87 a 119','72 latidos por minuto','19 respiraciones por minuto','87%','131mg/dl',21190080,1);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (6,'91 a 119','75 latidos por minuto','10 respiraciones por minuto','90%','130mg/dl',21190080,1);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (7,'entre 125 y 150','100 latidos por minuto','15 respiraciones por minuto','87%','160mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (8,'entre 132 y 141','110 latidos por minuto','11 respiraciones por minuto','89%','165mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (9,'entre 123 y 135','102 latidos por minuto','19 respiraciones por minuto','82%','163mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (10,'entre 120 y 129','108 latidos por minuto','25 respiraciones por minuto','90%','154mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (11,'entre 115 y 122','120 latidos por minuto','19 respiraciones por minuto','93%','146mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (12,'entre 120 y 129','115 latidos por minuto','15 respiraciones por minuto','85%','158mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (13,'entre 120 y 129','111 latidos por minuto','11 respiraciones por minuto','87%','160mg/dl',4798888,2);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (14,'170','63 latidos por minuto','19 respiraciones por minuto','70%','91mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (15,'175','66 latidos por minuto','20 respiraciones por minuto','70%','90mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (16,'172','65 latidos por minuto','25 respiraciones por minuto','70%','92mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (17,'180','69 latidos por minuto','22 respiraciones por minuto','70%','91mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (18,'179','67 latidos por minuto','17 respiraciones por minuto','70%','93mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (19,'177','68 latidos por minuto','20 respiraciones por minuto','70%','90mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (20,'182','70 latidos por minuto','26 respiraciones por minuto','70%','92mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (21,'183','62 latidos por minuto','24 respiraciones por minuto','70%','91mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (22,'182','60 latidos por minuto','25 respiraciones por minuto','70%','90mg/dl',1122546763,3);
INSERT INTO SIGNOS_VITALES (cod_sv,presion_arterial,frecuencia_cardiaca,frecuencia_respiratoria,saturacion_oxigeno,glucemia,
cc,cod_ef) VALUES (23,'176','58 latidos por minuto','28 respiraciones por minuto','70%','90mg/dl',1122546763,3);

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
'el paciente presenta malestar muscular despues de una semana de trabajo, dice presentar dichos dolores por el
levantamiento de objetos de tamaño y peso considerable empezo a presenciar los dolores hace tres dias',
'no hay mayores complicaciones en el paciente, sus signos son estables y hay marcas en la piel a causa del dolor',
'se le resetaran los medicamentos respectivos para aliviar el dolor y unos proteinicos para mejorar su rendimiento muscular y que los dolores no se sigan presentando',
'2021/08/28',21190080,2);
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,fech_evolucion,cc,cod_pm ) VALUES (3,
'presenta un ataque al corazon por consecuencia de su avanzada edad, a falta de la toma de sus medicamentos los ataques han empeorado',
'sus signos vitales se encuentran en estado critico, muchos de sus organos han empezado a fallar por la falta de paso de la sangre por ellos',
'el paciente sufre de constantes ataques al corazon de primer grado, se mantendra internado en la UCI en constante observacion por un posible infarto fulminante, se le aplicara morfina y otros calmantes',
'2021/08/29',4798888,3);
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,fech_evolucion,cc,cod_pm) VALUES (1,
'presenta dolores a diario en la cabeza, los dolores empeoran los dias calurosos tambien tiene dolores 
al orinar como una punzada en la zona de la vejiga','sus signos vitales se encontraban bastante bajos 
pero se a notado una alza en sus niveles de globulos rojos, en la radiografia de ve un tumor benigno en 
la zona craneosefalica no presenta gran riesgo para el paciente pero si influye en la perdida de 
concienca del mismo, el estudio en la vejiga presenta problemas de prostata','el paciente 
presenta un tumor cerebral benigno y problemas prostatico, se realizara la ciruega de extraccion del tumor en dos dias 
y se prestrara tratamiento para los problemas prostaticos',
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
'dolor estomacal','sentidos sanos','no esta mal','problemas al respirar','parocardiaco','trastorno por dolor',
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
cod_en,cod_rs,cod_antecedente) VALUES (1, '20','dolores presentados en distintas partes del cuerpo.','el paciente dice presentar 
algunos dolores en su cuerpo talez como migraña, problemas renales, perdida de conciencia','el paciente 
presenta un tumor cerebral benigno y problemas prostatico, se realizara la ciruega de extraccion del tumor en dos dias 
y se prestrara tratamiento para los problemas prostaticos','presenta dolores 
en la zona craneosefalica del paciente debido a un leve golpe en la cabeza, tiene una molestia al orinar el zona pelvica y 
debido al golpe presenta perdida de la memoria en el lapso de 2 meses para aca. no presenta 
gran riesgo para la integridad del paciente, teniendo en cuenta su sistema inmunologico y endocrino al realizar los debidos 
estudios. Tratamiento de electrolitos y constante revision de sus signos vitales',1,1,21190080,1,1,1);
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cod_ef,cod_pm,cc,
cod_en,cod_rs,cod_antecedente) VALUES (2, '27', 'malestar general','presenta dolor muscular en brazos, hombros y piernas; 
el dolor aumenta con las flexiones de dichas zonas musculares','no hay mayores complicaciones en el paciente, sus signos son estables y hay marcas en la piel a causa del dolor',
'presenta estos dolores por exceso de trabajo a la hora de levantar objetos de gran tamaño no presenta ningun tipo de contucion ni cuagulo en las zonas afectadas',
2,2,4798888,2,2,2);
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cod_ef,cod_pm,cc,
cod_en,cod_rs,cod_antecedente) VALUES (3, '103','dolor en las articulaciones, problemas cardiacos',
'el paciente tuvo un ataque al corazon de primer grado con posibilidades de empeorar a causa de su vejez, tambien ha causa de la edad tiene dolores articulares',
'el paciente sufre de constantes ataques al corazon de primer grado, se mantendra internado en la UCI en constante observacion por un posible infarto fulminante, se le aplicara morfina y otros calmantes',
'el paciente ya a tenido otros ataques al corazon silenciosos, este ya es de primer grado por lo que el sujeto se mantiene en constante monitoreo en la UCI',3,3,1122546763,3,3,3);

