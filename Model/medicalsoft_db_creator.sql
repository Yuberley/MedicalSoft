CREATE TABLE USUARIOS
(
  cod_usuario INT NOT NULL auto_increment,
  nombre varchar(30),
  roll varchar(30),
  users varchar(30),
  passwords varchar(30),
  PRIMARY KEY (cod_usuario)
);

CREATE TABLE ESTADO_CIVIL
(
  cod_st INT NOT NULL auto_increment,
  nomb_st varchar(80),
  PRIMARY KEY (cod_st)
);

CREATE TABLE EPS
(
  cod_eps INT NOT NULL auto_increment,
  nomb_eps varchar(80),
  PRIMARY KEY (cod_eps)
);

CREATE TABLE ESCOLARIDAD
(
  cod_escolaridad INT NOT NULL auto_increment,
  nomb_escolaridad varchar(80),
  PRIMARY KEY (cod_escolaridad)
);

CREATE TABLE PERSONAS
(
  cc INT NOT NULL,
  nombre varchar(30),
  apellidos varchar(30),
  edad INT,
  sexo varchar(10),
  fech_nacimiento DATE,
  PRIMARY KEY (cc)
);

CREATE TABLE LUGAR
(
  cod_lugar INT NOT NULL auto_increment,
  nacimiento varchar(50),
  recidencia varchar(50),
  procedencia varchar(50),
  PRIMARY KEY (cod_lugar)
);

CREATE TABLE PACIENTES
(
  cc INT NOT NULL,
  ocupacion varchar(200),
  religion varchar(200),
  raza varchar(200),
  lateralidad varchar(200),
  informante varchar(200),
  parentesco varchar(200),
  rh varchar(4),
  confiabilidad varchar(200),
  fech_ingreso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  cod_eps INT NOT NULL,
  cod_st INT NOT NULL,
  cod_escolaridad INT NOT NULL,
  cod_lugar INT NOT NULL,
  PRIMARY KEY (cc),
  FOREIGN KEY (cod_eps) REFERENCES EPS(cod_eps),
  FOREIGN KEY (cod_st) REFERENCES ESTADO_CIVIL(cod_st),
  FOREIGN KEY (cod_escolaridad) REFERENCES ESCOLARIDAD(cod_escolaridad),
  FOREIGN KEY (cc) REFERENCES PERSONAS(cc),
  FOREIGN KEY (cod_lugar) REFERENCES LUGAR(cod_lugar)
);

CREATE TABLE EXAMEN_FISICO
(
  cod_ef INT NOT NULL auto_increment,
  torax varchar(500),
  abdomen varchar(500),
  extremidades varchar(500),
  columna varchar(500),
  PRIMARY KEY (cod_ef)
);

CREATE TABLE SIGNOS_VITALES
(
  cod_sv INT NOT NULL auto_increment,
  presion_arterial varchar(500),
  frecuencia_cardiaca varchar(500),
  frecuencia_respiratoria varchar(500),
  saturacion_oxigeno varchar(500),
  glucemia varchar(500),
  fech_sv TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  cc INT NOT NULL,
  cod_ef INT NOT NULL,
  PRIMARY KEY (cod_sv),
  FOREIGN KEY (cc) REFERENCES PACIENTES(cc),
  FOREIGN KEY (cod_ef) REFERENCES EXAMEN_FISICO(cod_ef)
);

CREATE TABLE MEDICAMENTOS
(
  cod_medicamentos INT NOT NULL auto_increment,
  nomb_medicamento varchar(500),
  dosis varchar(500),
  concentracion varchar(500),
  tiempo_administracion varchar(500),
  PRIMARY KEY (cod_medicamentos)
);

CREATE TABLE PARACLINICOS
(
  cod_paraclinico INT NOT NULL auto_increment,
  nomb_paraclinico varchar(500),
  PRIMARY KEY (cod_paraclinico)
);

CREATE TABLE PLAN_MANEJO
(
  cod_pm INT NOT NULL auto_increment,
  descripcion varchar(500),
  cod_evolucion INT NOT NULL,
  PRIMARY KEY (cod_pm)
);

CREATE TABLE EVOLUCION
(
  cod_evolucion INT NOT NULL auto_increment,
  subjetivo varchar(500),
  objetivo varchar(500),
  analisis varchar(500),
  fech_evolucion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  cc INT NOT NULL,
  cod_pm INT NOT NULL,
  PRIMARY KEY (cod_evolucion),
  FOREIGN KEY (cc) REFERENCES PACIENTES(cc),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm)
);

CREATE TABLE receta
(
  cod_medicamentos INT NOT NULL,
  cod_pm INT NOT NULL,
  PRIMARY KEY (cod_medicamentos, cod_pm),
  FOREIGN KEY (cod_medicamentos) REFERENCES MEDICAMENTOS(cod_medicamentos),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm)
);

CREATE TABLE solicita
(
  cod_paraclinico INT NOT NULL,
  cod_pm INT NOT NULL,
  PRIMARY KEY (cod_paraclinico, cod_pm),
  FOREIGN KEY (cod_paraclinico) REFERENCES PARACLINICOS(cod_paraclinico),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm)
);

CREATE TABLE EXAMEN_NEUROLOGICO
(
  cod_en INT NOT NULL auto_increment,
  mental varchar(500),
  pares_craneales varchar(500),
  motor_raquideo varchar(500),
  sensitivo_raquideo varchar(500),
  reflejos varchar(500),
  coordinacion varchar(500),
  marcha varchar(500),
  PRIMARY KEY (cod_en)
);

CREATE TABLE REVISION_SISTEMA
(
  cod_rs INT NOT NULL auto_increment,
  nepuropsiquiatrico varchar(500),
  mamas varchar(500),
  sintomas_generales varchar(500),
  cabeza_sentidos varchar(500),
  linforreticular varchar(500),
  cardiopulmonar varchar(500),
  gastrointestinal varchar(500),
  psicogenicos varchar(500),
  genitourinario varchar(500),
  musculoesqueletico varchar(500),
  piel_faneras varchar(500),
  endocrino varchar(500),
  venereos varchar(500),
  PRIMARY KEY (cod_rs)
);

CREATE TABLE ANTECEDENTES
(
  cod_antecedente INT NOT NULL auto_increment,
  psicososiales varchar(200),
  familiares varchar(200),
  quirurgicos varchar(200),
  hospitalarios varchar(200),
  patologicos varchar(200),
  farmacologicos varchar(200),
  toxico_alergicos varchar(200),
  traumaticos varchar(200),
  gineco_obstetrico varchar(200),
  inmunologicos varchar(200),
  psiquiatricos varchar(200),
  PRIMARY KEY (cod_antecedente)
);

CREATE TABLE HISTORIA_CLINICA
(
  cod_hc INT NOT NULL auto_increment,
  habitacion varchar(5),
  motivo_consulta varchar(500),
  enfermedad_actual varchar(500),
  analisis varchar(500),
  diagnosticos varchar(500),
  fech_hc TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  cod_ef INT NOT NULL,
  cod_pm INT NOT NULL,
  cc INT NOT NULL,
  cod_en INT NOT NULL,
  cod_rs INT NOT NULL,
  cod_antecedente INT NOT NULL,
  PRIMARY KEY (cod_hc),
  FOREIGN KEY (cod_ef) REFERENCES EXAMEN_FISICO(cod_ef),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm),
  FOREIGN KEY (cc) REFERENCES PACIENTES(cc),
  FOREIGN KEY (cod_en) REFERENCES EXAMEN_NEUROLOGICO(cod_en),
  FOREIGN KEY (cod_rs) REFERENCES REVISION_SISTEMA(cod_rs),
  FOREIGN KEY (cod_antecedente) REFERENCES ANTECEDENTES(cod_antecedente)
);