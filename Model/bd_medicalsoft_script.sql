CREATE TABLE USUARIOS
(
  cod_usuario INT NOT NULL,
  nombre varchar(60),
  roll varchar(30),
  user varchar(30),
  password varchar(30),
  PRIMARY KEY (cod_usuario)
);

CREATE TABLE CIUDADES
(
  cod_lugar INT NOT NULL,
  nomb_ciudad INT,
  PRIMARY KEY (cod_lugar)
);

CREATE TABLE ESTADO_CIVIL
(
  cod_st INT NOT NULL,
  nomb_st INT,
  PRIMARY KEY (cod_st)
);

CREATE TABLE EPS
(
  cod_eps INT NOT NULL,
  nomb_eps INT,
  PRIMARY KEY (cod_eps)
);

CREATE TABLE ESCOLARIDAD
(
  cod_escolaridad INT NOT NULL,
  nomb_escolaridad INT,
  PRIMARY KEY (cod_escolaridad)
);

CREATE TABLE PERSONAS
(
  cc INT NOT NULL,
  nombre INT,
  apellidos INT,
  edad INT,
  sexo INT,
  fech_nacimiento INT,
  PRIMARY KEY (cc)
);

CREATE TABLE PACIENTES
(
  ocupacion INT,
  religion INT,
  raza INT,
  lateralidad INT,
  informante INT,
  parentesco INT,
  rh INT,
  confiabilidad INT,
  habitacion INT,
  fech_dato INT,
  fech_ingreso INT,
  cod_paciente INT NOT NULL,
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
  cod_sv INT NOT NULL,
  presion_arterial INT,
  frecuencia_cardiaca INT,
  frecuencia_respiratoria INT,
  saturacion_oxigeno INT,
  glusemia INT,
  fech_sv INT,
  cod_paciente INT NOT NULL,
  PRIMARY KEY (cod_sv),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente),
  UNIQUE (fech_sv)
);

CREATE TABLE EXAMEN_FISICO
(
  cod_ef INT NOT NULL,
  torax INT,
  abdomen INT,
  extremidades INT,
  columna INT,
  cod_sv INT NOT NULL,
  PRIMARY KEY (cod_ef),
  FOREIGN KEY (cod_sv) REFERENCES SIGNOS_VITALES(cod_sv)
);

CREATE TABLE EVOLUCION
(
  cod_evolucion INT NOT NULL,
  subjetivo INT,
  objetivo INT,
  analisis INT,
  fech_evolucion INT,
  cod_paciente INT NOT NULL,
  PRIMARY KEY (cod_evolucion),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente),
  UNIQUE (fech_evolucion)
);

CREATE TABLE PLAN_MANEJO
(
  cod_pm INT NOT NULL,
  descripcion INT,
  cod_evolucion INT NOT NULL,
  PRIMARY KEY (cod_pm),
  FOREIGN KEY (cod_evolucion) REFERENCES EVOLUCION(cod_evolucion)
);

CREATE TABLE PARACLINICOS
(
  cod_paraclinico INT NOT NULL,
  nomb_paraclinico INT,
  cod_pm INT NOT NULL,
  PRIMARY KEY (cod_paraclinico),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm)
);

CREATE TABLE lugar
(
  nacimiento INT,
  recidencia INT,
  procedencia INT,
  cod_paciente INT NOT NULL,
  cod_lugar INT NOT NULL,
  PRIMARY KEY (cod_paciente, cod_lugar),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente),
  FOREIGN KEY (cod_lugar) REFERENCES CIUDADES(cod_lugar)
);

CREATE TABLE HISTORIA_CLINICA
(
  cod_hc INT NOT NULL,
  motivo_consulta INT,
  enfermedad_actual INT,
  analisis INT,
  diagnosticos INT,
  fech_hc INT,
  cod_ef INT NOT NULL,
  cod_pm INT NOT NULL,
  cod_paciente INT NOT NULL,
  PRIMARY KEY (cod_hc),
  FOREIGN KEY (cod_ef) REFERENCES EXAMEN_FISICO(cod_ef),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm),
  FOREIGN KEY (cod_paciente) REFERENCES PACIENTES(cod_paciente)
);

CREATE TABLE EXAMEN_NEUROLOGICO
(
  cod_en INT NOT NULL,
  mental INT,
  pares_craneales INT,
  motor_raquideo INT,
  sensitivo_raquideo INT,
  reflejos INT,
  coordinacion INT,
  marcha INT,
  cod_hc INT NOT NULL,
  PRIMARY KEY (cod_en),
  FOREIGN KEY (cod_hc) REFERENCES HISTORIA_CLINICA(cod_hc)
);

CREATE TABLE REVISION_SISTEMA
(
  nepuropsiquiatrico INT,
  mamas INT,
  cod_rs INT NOT NULL,
  sintomas_generales INT,
  cabeza_sentidos INT,
  linforreticular INT,
  cardiopulmonar INT,
  gastrointestinal INT,
  psicogenicos INT,
  genitourinario INT,
  musculoesqueletico INT,
  piel_faneras INT,
  endocrino INT,
  venereos INT,
  cod_hc INT NOT NULL,
  PRIMARY KEY (cod_rs),
  FOREIGN KEY (cod_hc) REFERENCES HISTORIA_CLINICA(cod_hc)
);

CREATE TABLE ANTECEDENTES
(
  psicososiales INT,
  familiares INT,
  quirurgicos INT,
  hospitalarios INT,
  patologicos INT,
  farmacologicos INT,
  toxico_alergicos INT,
  traumaticos INT,
  gineco_obstetrico INT,
  inmunologicos INT,
  psiquiatricos INT,
  cod_antecedente INT NOT NULL,
  cod_hc INT NOT NULL,
  PRIMARY KEY (cod_antecedente),
  FOREIGN KEY (cod_hc) REFERENCES HISTORIA_CLINICA(cod_hc)
);

CREATE TABLE MEDICAMENTOS
(
  nomb_medicamento INT,
  dosis INT,
  concentracion INT,
  tiempo_administracion INT,
  cod_medicamentos INT NOT NULL,
  cod_pm INT NOT NULL,
  PRIMARY KEY (cod_medicamentos),
  FOREIGN KEY (cod_pm) REFERENCES PLAN_MANEJO(cod_pm)
);