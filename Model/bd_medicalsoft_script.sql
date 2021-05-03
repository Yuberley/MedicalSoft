CREATE TABLE USUARIOS
(
  cod_usuario SERIAL NOT NULL,
  nombre varchar(60),
  roll varchar(30),
  users varchar(30),
  passwords varchar(30),
  PRIMARY KEY (cod_usuario)
);

CREATE TABLE CIUDADES
(
  cod_lugar SERIAL NOT NULL,
  nomb_ciudad varchar(30),
  PRIMARY KEY (cod_lugar)
);

CREATE TABLE ESTADO_CIVIL
(
  cod_st SERIAL NOT NULL,
  nomb_st varchar(30),
  PRIMARY KEY (cod_st)
);

CREATE TABLE EPS
(
  cod_eps SERIAL NOT NULL,
  nomb_eps varchar(30),
  PRIMARY KEY (cod_eps)
);

CREATE TABLE ESCOLARIDAD
(
  cod_escolaridad SERIAL NOT NULL,
  nomb_escolaridad varchar(30),
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

CREATE TABLE PACIENTES
(
  cod_paciente SERIAL NOT NULL,
  ocupacion varchar(30),
  religion varchar(30),
  raza varchar(30),
  lateralidad varchar(30),
  informante varchar(30),
  parentesco varchar(30),
  rh varchar(3),
  confiabilidad varchar(30),
  habitacion varchar(30),
  fech_ingreso TIMESTAMP,
  cod_eps INT NOT NULL,
  cod_st INT NOT NULL,
  cod_escolaridad INT NOT NULL,
  cc INT NOT NULL,
  PRIMARY KEY (cod_paciente),
  FOREIGN KEY (cod_eps) REFERENCES EPS(cod_eps),
  FOREIGN KEY (cod_st) REFERENCES ESTADO_CIVIL(cod_st),
  FOREIGN KEY (cod_escolaridad) REFERENCES ESCOLARIDAD(cod_escolaridad),
  FOREIGN KEY (cc) REFERENCES PERSONAS(cc)
);

CREATE TABLE SIGNOS_VITALES
(
  cod_sv SERIAL NOT NULL,
  presion_arterial varchar(30),
  frecuencia_cardiaca varchar(30),
  frecuencia_respiratoria varchar(30),
  saturacion_oxigeno varchar(30),
  glusemia varchar(30),
  fech_sv TIMESTAMP,
  cod_paciente INT NOT NULL,
  PRIMARY KEY (cod_sv),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente)
);

CREATE TABLE EXAMEN_FISICO
(
  cod_ef SERIAL NOT NULL,
  torax varchar(30),
  abdomen varchar(30),
  extremidades varchar(30),
  columna varchar(30),
  cod_sv INT NOT NULL,
  PRIMARY KEY (cod_ef),
  FOREIGN KEY (cod_sv) REFERENCES SIGNOS_VITALES(cod_sv)
);

CREATE TABLE MEDICAMENTOS
(
  cod_medicamentos SERIAL NOT NULL,
  nomb_medicamento varchar(100),
  dosis varchar(100),
  concentracion varchar(100),
  tiempo_administracion varchar(100),
  PRIMARY KEY (cod_medicamentos)
);

CREATE TABLE PARACLINICOS
(
  cod_paraclinico SERIAL NOT NULL,
  nomb_paraclinico varchar(60),
  PRIMARY KEY (cod_paraclinico)
);

CREATE TABLE PLAN_MANEJO
(
  cod_pm SERIAL NOT NULL,
  descripcion varchar(60),
  cod_evolucion INT NOT NULL,
  PRIMARY KEY (cod_pm)
);

CREATE TABLE EVOLUCION
(
  cod_evolucion SERIAL NOT NULL,
  subjetivo varchar(30),
  objetivo varchar(30),
  analisis varchar(30),
  fech_evolucion DATE,
  cod_paciente INT NOT NULL,
  cod_pm INT NOT NULL,
  PRIMARY KEY (cod_evolucion),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm)
);

CREATE TABLE lugar
(
  nacimiento INT NOT NULL,
  recidencia INT NOT NULL,
  procedencia INT NOT NULL,
  cod_paciente INT NOT NULL,
  PRIMARY KEY (cod_paciente),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente),
  FOREIGN KEY (nacimiento) REFERENCES CIUDADES(cod_lugar),
  FOREIGN KEY (recidencia) REFERENCES CIUDADES(cod_lugar),
  FOREIGN KEY (procedencia) REFERENCES CIUDADES(cod_lugar)
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
  cod_en SERIAL NOT NULL,
  mental varchar(60),
  pares_craneales varchar(30),
  motor_raquideo varchar(30),
  sensitivo_raquideo varchar(30),
  reflejos varchar(30),
  coordinacion varchar(30),
  marcha varchar(30),
  PRIMARY KEY (cod_en)
);

CREATE TABLE REVISION_SISTEMA
(
  cod_rs SERIAL NOT NULL,
  nepuropsiquiatrico varchar(100),
  mamas varchar(100),
  sintomas_generales varchar(100),
  cabeza_sentidos varchar(100),
  linforreticular varchar(100),
  cardiopulmonar varchar(100),
  gastrointestinal varchar(100),
  psicogenicos varchar(100),
  genitourinario varchar(100),
  musculoesqueletico varchar(100),
  piel_faneras varchar(100),
  endocrino varchar(100),
  venereos varchar(100),
  PRIMARY KEY (cod_rs)
);

CREATE TABLE ANTECEDENTES
(
  cod_antecedente SERIAL NOT NULL,
  psicososiales varchar(100),
  familiares varchar(100),
  quirurgicos varchar(100),
  hospitalarios varchar(100),
  patologicos varchar(100),
  farmacologicos varchar(100),
  toxico_alergicos varchar(100),
  traumaticos varchar(100),
  gineco_obstetrico varchar(100),
  inmunologicos varchar(100),
  psiquiatricos varchar(100),
  PRIMARY KEY (cod_antecedente)
);

CREATE TABLE HISTORIA_CLINICA
(
  cod_hc SERIAL NOT NULL,
  motivo_consulta varchar(100),
  enfermedad_actual varchar(100),
  analisis varchar(200),
  diagnosticos varchar(500),
  fech_hc TIMESTAMP,
  cod_ef INT NOT NULL,
  cod_pm INT NOT NULL,
  cod_paciente INT NOT NULL,
  cod_en INT NOT NULL,
  cod_rs INT NOT NULL,
  cod_antecedente INT NOT NULL,
  PRIMARY KEY (cod_hc),
  FOREIGN KEY (cod_ef) REFERENCES EXAMEN_FISICO(cod_ef),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente),
  FOREIGN KEY (cod_en) REFERENCES EXAMEN_NEUROLOGICO(cod_en),
  FOREIGN KEY (cod_rs) REFERENCES REVISION_SISTEMA(cod_rs),
  FOREIGN KEY (cod_antecedente) REFERENCES ANTECEDENTES(cod_antecedente)
);
