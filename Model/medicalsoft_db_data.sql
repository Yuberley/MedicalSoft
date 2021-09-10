SET GLOBAL FOREIGN_KEY_CHECKS=0;

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
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (1,'Medellin - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (2,'Abejorral - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (3,'Abriaquí - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (4,'Alejandría - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (5,'Amagá - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (6,'Amalfi - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (7,'Andes - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (8,'Angelópolis - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (9,'Angostura - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (10,'Anorí - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (11,'Anza - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (12,'Apartadó - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (13,'Arboletes - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (14,'Argelia - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (15,'Armenia - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (16,'Barbosa - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (17,'Bello - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (18,'Betania - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (19,'Betulia - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (20,'Ciudad Bolívar - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (21,'Briceño - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (22,'Buriticá - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (23,'Cáceres - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (24,'Caicedo - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (25,'Caldas - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (26,'Campamento - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (27,'Cañasgordas - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (28,'Caracolí - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (29,'Caramanta - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (30,'Carepa - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (31,'Carolina - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (32,'Caucasia - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (33,'Chigorodó - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (34,'Cisneros - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (35,'Cocorná - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (36,'Concepción - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (37,'Concordia - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (38,'Copacabana - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (39,'Dabeiba - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (40,'Don Matías - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (41,'Ebéjico - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (42,'El Bagre - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (43,'Entrerrios - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (44,'Envigado - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (45,'Fredonia - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (46,'Giraldo - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (47,'Girardota - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (48,'Gómez Plata - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (49,'Guadalupe - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (50,'Guarne - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (51,'Guatapé - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (52,'Heliconia - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (53,'Hispania - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (54,'Itagui - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (55,'Ituango - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (56,'Jericó - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (57,'La Ceja - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (58,'La Estrella - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (59,'La Pintada - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (60,'La Unión - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (61,'Liborina - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (62,'Maceo - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (63,'Marinilla - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (64,'Montebello - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (65,'Murindó - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (66,'Barranquilla - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (67,'Baranoa - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (68,'Candelaria - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (69,'Galapa - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (70,'Luruaco - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (71,'Malambo - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (72,'Manatí - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (73,'Piojo - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (74,'Polonuevo - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (75,'Sabanagrande - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (76,'Sabanalarga - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (77,'Santa Lucía - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (78,'Santo Tomas - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (79,'Soledad - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (80,'Suan - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (81,'Tubara - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (82,'Usiacurí - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (83,'Achí - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (84,'Arenal - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (85,'Arjona - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (86,'Arroyohondo - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (87,'Calamar - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (88,'Cantagallo - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (89,'Cicuco - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (90,'Córdoba - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (91,'Clemencia - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (92,'El Guamo - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (93,'Magangué - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (94,'Mahates - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (95,'Margarita - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (96,'Montecristo - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (97,'Mompós - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (98,'Morales - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (99,'Norosí - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (100,'Pinillos - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (101,'Regidor - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (102,'Río Viejo - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (103,'San Estanislao - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (104,'San Fernando - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (105,'San Juan Nepomuceno - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (106,'Santa Catalina - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (107,'Santa Rosa - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (108,'Simití - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (109,'Soplaviento - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (110,'Talaigua Nuevo - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (111,'Tiquisio - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (112,'Turbaco - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (113,'Turbaná - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (114,'Villanueva - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (115,'Tunja - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (116,'Almeida - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (117,'Aquitania - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (118,'Arcabuco - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (119,'Berbeo - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (120,'Betéitiva - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (121,'Boavita - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (122,'Boyacá - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (123,'Briceño - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (124,'Buena Vista - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (125,'Busbanzá - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (126,'Caldas - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (127,'Campohermoso - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (128,'Cerinza - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (129,'Chinavita - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (130,'Chiquinquirá - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (131,'Chiscas - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (132,'Chita - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (133,'Chitaraque - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (134,'Chivatá - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (135,'Cómbita - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (136,'Coper - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (137,'Corrales - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (138,'Covarachía - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (139,'Cubará - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (140,'Cucaita - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (141,'Cuítiva - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (142,'Chíquiza - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (143,'Chivor - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (144,'Duitama - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (145,'El Cocuy - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (146,'El Espino - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (147,'Firavitoba - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (148,'Floresta - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (149,'Gachantivá - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (150,'Gameza - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (151,'Garagoa - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (152,'Guacamayas - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (153,'Guateque - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (154,'Guayatá - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (155,'Güicán - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (156,'Iza - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (157,'Jenesano - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (158,'Jericó - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (159,'Labranzagrande - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (160,'La Capilla - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (161,'La Victoria - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (162,'Macanal - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (163,'Manizales - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (164,'Aguadas - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (165,'Anserma - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (166,'Aranzazu - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (167,'Belalcázar - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (168,'Chinchiná - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (169,'Filadelfia - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (170,'La Dorada - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (171,'La Merced - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (172,'Manzanares - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (173,'Marmato - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (174,'Marulanda - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (175,'Neira - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (176,'Norcasia - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (177,'Pácora - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (178,'Palestina - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (179,'Pensilvania - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (180,'Riosucio - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (181,'Risaralda - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (182,'Salamina  - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (183,'Samaná - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (184,'San José - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (185,'Supía - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (186,'Victoria - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (187,'Villamaría - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (188,'Viterbo - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (189,'Florencia - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (190,'Albania - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (191,'Curillo - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (192,'El Doncello - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (193,'El Paujil - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (194,'Morelia - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (195,'Puerto Rico - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (196,'Solano - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (197,'Solita  - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (198,'Valparaíso - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (199,'Popayán - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (200,'Almaguer - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (201,'Argelia - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (202,'Balboa - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (203,'Bolívar - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (204,'Buenos Aires - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (205,'Cajibío - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (206,'Caldono - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (207,'Caloto - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (208,'Corinto - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (209,'El Tambo - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (210,'Florencia - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (211,'Guachené - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (212,'Guapi - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (213,'Inzá - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (214,'Jambaló - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (215,'La Sierra - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (216,'La Vega - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (217,'López - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (218,'Mercaderes - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (219,'Miranda - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (220,'Morales - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (221,'Padilla - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (222,'Patía - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (223,'Piamonte - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (224,'Piendamó - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (225,'Puerto Tejada - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (226,'Puracé - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (227,'Rosas - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (228,'Santa Rosa - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (229,'Silvia - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (230,'Sotara - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (231,'Suárez - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (232,'Sucre - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (233,'Timbío - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (234,'Timbiquí - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (235,'Toribio - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (236,'Totoró - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (237,'Villa Rica - Cauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (238,'Valledupar - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (239,'Aguachicar - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (240,'Agustín Codazzir - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (241,'Astrear - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (242,'Becerrilr - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (243,'Bosconiar - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (244,'Chimichaguar - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (245,'Chiriguanár - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (246,'Curumanír - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (247,'El Copeyr - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (248,'El Pasor - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (249,'Gamarrar - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (250,'Gonzálezr - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (251,'La Gloriar - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (252,'Manaurer - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (253,'Pailitasr - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (254,'Pelayar - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (255,'Pueblo Bellor - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (256,'La Pazr - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (257,'San Albertor - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (258,'San Diegor - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (259,'San Martínr - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (260,'Tamalamequer - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (261,'Montería - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (262,'Ayapel - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (263,'Buenavista - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (264,'Canalete - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (265,'Cereté - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (266,'Chimá - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (267,'Chinú - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (268,'Cotorra - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (269,'Lorica - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (270,'Los Córdobas - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (271,'Momil - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (272,'Moñitos - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (273,'Planeta Rica - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (274,'Pueblo Nuevo - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (275,'Puerto Escondido - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (276,'Purísima - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (277,'Sahagún - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (278,'San Andrés Sotavento - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (279,'San Antero - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (280,'San Pelayo - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (281,'Tierralta - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (282,'Tuchín - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (283,'Valencia - Cordoba');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (284,'Anapoima - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (285,'Arbeláez - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (286,'Beltrán - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (287,'Bituima - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (288,'Bojacá - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (289,'Cabrera - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (290,'Cachipay - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (291,'Cajicá - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (292,'Caparrapí - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (293,'Caqueza - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (294,'Chaguaní - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (295,'Chipaque - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (296,'Choachí - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (297,'Chocontá - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (298,'Cogua - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (299,'Cota - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (300,'Cucunubá - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (301,'El Colegio - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (302,'El Rosal - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (303,'Fomeque - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (304,'Fosca - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (305,'Funza - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (306,'Fúquene - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (307,'Gachala - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (308,'Gachancipá  - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (309,'Gachetá - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (310,'Girardot - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (311,'Granada - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (312,'Guachetá - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (313,'Guaduas - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (314,'Guasca - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (315,'Guataquí - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (316,'Guatavita - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (317,'Guayabetal - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (318,'Gutiérrez - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (319,'Jerusalén - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (320,'Junín - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (321,'La Calera - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (322,'La Mesa - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (323,'La Palma - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (324,'Vianí - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (325,'Villagómez - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (326,'Villapinzón - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (327,'Villeta - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (328,'Viotá - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (329,'Zipacón - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (330,'Quibdó - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (331,'Acandí - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (332,'Alto Baudo - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (333,'Atrato - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (334,'Bagadó - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (335,'Bahía Solano - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (336,'Bajo Baudó - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (337,'Bojaya - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (338,'Cértegui - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (339,'Condoto - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (340,'Juradó - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (341,'Lloró - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (342,'Medio Atrato - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (343,'Medio Baudó - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (344,'Medio San Juan - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (345,'Nóvita - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (346,'Nuquí - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (347,'Río Iro - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (348,'Río Quito - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (349,'Riosucio - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (350,'Sipí - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (351,'Unguía - Choco');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (352,'Neiva - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (353,'Acevedo - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (354,'Agrado - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (355,'Aipe - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (356,'Algeciras - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (357,'Altamira - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (358,'Baraya - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (359,'Campoalegre - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (360,'Colombia - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (361,'Elías - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (362,'Garzón - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (363,'Gigante - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (364,'Guadalupe - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (365,'Hobo - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (366,'Iquira - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (367,'Isnos - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (368,'La Argentina - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (369,'La Plata - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (370,'Nátaga - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (371,'Oporapa - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (372,'Paicol - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (373,'Palermo - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (374,'Palestina - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (375,'Pital - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (376,'Pitalito - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (377,'Rivera - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (378,'Saladoblanco - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (379,'Santa María - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (380,'Suaza - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (381,'Tarqui - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (382,'Tesalia - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (383,'Tello - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (384,'Teruel - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (385,'Timaná - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (386,'Villavieja - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (387,'Yaguará - Huila');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (388,'Riohacha - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (389,'Albania - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (390,'Barrancas - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (391,'Dibula - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (392,'Distracción - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (393,'El Molino - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (394,'Fonseca - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (395,'Hatonuevo - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (396,'Maicao - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (397,'Manaure - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (398,'Uribia - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (399,'Urumita - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (400,'Villanueva - La Guajira');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (401,'Santa Marta - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (402,'Algarrobo - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (403,'Aracataca - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (404,'Ariguaní - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (405,'Cerro San Antonio - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (406,'Chivolo - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (407,'Concordia - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (408,'El Banco - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (409,'El Piñon - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (410,'El Retén - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (411,'Fundación - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (412,'Guamal - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (413,'Nueva Granada - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (414,'Pedraza - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (415,'Pivijay - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (416,'Plato - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (417,'Remolino - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (418,'Salamina - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (419,'San Zenón - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (420,'Santa Ana - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (421,'Sitionuevo - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (422,'Tenerife - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (423,'Zapayán - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (424,'Zona Bananera - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (425,'Villavicencio - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (426,'Acacias - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (427,'Cabuyaro - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (428,'Cubarral - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (429,'Cumaral - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (430,'El Calvario - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (431,'El Castillo - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (432,'El Dorado - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (433,'Granada - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (434,'Guamal - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (435,'Mapiripán - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (436,'Mesetas - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (437,'La Macarena - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (438,'Uribe - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (439,'Lejanías - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (440,'Puerto Concordia - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (441,'Puerto Gaitán - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (442,'Puerto López - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (443,'Puerto Lleras - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (444,'Puerto Rico - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (445,'Restrepo - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (446,'San Juanito - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (447,'San Martín - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (448,'Vista Hermosa - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (449,'Pasto - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (450,'Albán - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (451,'Aldana - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (452,'Ancuyá - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (453,'Barbacoas - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (454,'Colón - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (455,'Consaca - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (456,'Contadero - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (457,'Córdoba - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (458,'Cuaspud - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (459,'Cumbal - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (460,'Cumbitara - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (461,'El Charco - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (462,'El Peñol - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (463,'El Rosario - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (464,'El Tambo - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (465,'Funes - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (466,'Guachucal - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (467,'Guaitarilla - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (468,'Gualmatán - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (469,'Iles - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (470,'Imués - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (471,'Ipiales - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (472,'La Cruz - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (473,'La Florida - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (474,'La Llanada - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (475,'La Tola - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (476,'La Unión - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (477,'Leiva - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (478,'Linares - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (479,'Los Andes - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (480,'Magüí - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (481,'Mallama - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (482,'Mosquera - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (483,'Nariño - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (484,'Olaya Herrera - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (485,'Ospina - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (486,'Francisco Pizarro - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (487,'Policarpa - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (488,'Potosí - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (489,'Providencia - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (490,'Puerres - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (491,'Pupiales - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (492,'Ricaurte - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (493,'Roberto Payán - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (494,'Samaniego - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (495,'Sandoná - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (496,'San Bernardo - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (497,'San Lorenzo - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (498,'San Pablo - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (499,'Santa Bárbara - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (500,'Sapuyes - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (501,'Taminango - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (502,'Tangua - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (503,'Túquerres - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (504,'Yacuanquer - Nariño');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (505,'Armenia - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (506,'Buenavista - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (507,'Circasia - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (508,'Córdoba - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (509,'Filandia - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (510,'La Tebaida - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (511,'Montenegro - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (512,'Pijao - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (513,'Quimbaya - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (514,'Salento - Quindio');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (515,'Pereira - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (516,'Apía - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (517,'Balboa - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (518,'Dosquebradas - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (519,'Guática - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (520,'La Celia - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (521,'La Virginia - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (522,'Marsella - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (523,'Mistrató - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (524,'Pueblo Rico - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (525,'Quinchía - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (526,'Santuario - Risaralda');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (527,'Bucaramanga - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (528,'Aguada - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (529,'Albania - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (530,'Aratoca - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (531,'Barbosa - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (532,'Barichara - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (533,'Barrancabermeja - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (534,'Betulia - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (535,'Bolívar - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (536,'Cabrera - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (537,'California - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (538,'Carcasí - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (539,'Cepitá - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (540,'Cerrito - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (541,'Charalá - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (542,'Charta - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (543,'Chipatá - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (544,'Cimitarra - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (545,'Concepción - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (546,'Confines - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (547,'Contratación - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (548,'Coromoro - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (549,'Curití - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (550,'El Guacamayo - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (551,'El Playón - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (552,'Encino - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (553,'Enciso - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (554,'Florián - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (555,'Floridablanca - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (556,'Galán - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (557,'Gambita - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (558,'Girón - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (559,'Guaca - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (560,'Guadalupe - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (561,'Guapotá - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (562,'Guavatá - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (563,'Güepsa - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (564,'Jesús María - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (565,'Jordán - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (566,'La Belleza - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (567,'Landázuri - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (568,'La Paz - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (569,'Lebríja - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (570,'Los Santos - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (571,'Macaravita - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (572,'Málaga - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (573,'Matanza - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (574,'Mogotes - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (575,'Molagavita - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (576,'Ocamonte - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (577,'Oiba - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (578,'Onzaga - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (579,'Palmar - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (580,'Páramo - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (581,'Piedecuesta - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (582,'Pinchote - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (583,'Puente Nacional - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (584,'Rionegro - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (585,'San Andrés - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (586,'San Gil - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (587,'San Joaquín - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (588,'San Miguel - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (589,'Santa Bárbara - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (590,'Simacota - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (591,'Socorro - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (592,'Suaita - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (593,'Sucre - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (594,'Suratá - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (595,'Tona - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (596,'Vélez - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (597,'Vetas - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (598,'Villanueva - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (599,'Zapatoca - Santander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (600,'Sincelejo - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (601,'Buenavista - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (602,'Caimito - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (603,'Coloso - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (604,'Coveñas - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (605,'Chalán - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (606,'El Roble - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (607,'Galeras - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (608,'Guaranda - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (609,'La Unión - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (610,'Los Palmitos - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (611,'Majagual - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (612,'Morroa - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (613,'Ovejas - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (614,'Palmito - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (615,'San Benito Abad - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (616,'San Marcos - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (617,'San Onofre - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (618,'San Pedro - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (619,'Sucre - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (620,'Tolú Viejo - Sucre');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (621,'Alpujarra - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (622,'Alvarado - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (623,'Ambalema - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (624,'Armero - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (625,'Ataco - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (626,'Cajamarca - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (627,'Chaparral - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (628,'Coello - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (629,'Coyaima - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (630,'Cunday - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (631,'Dolores - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (632,'Espinal - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (633,'Falan - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (634,'Flandes - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (635,'Fresno - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (636,'Guamo - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (637,'Herveo - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (638,'Honda - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (639,'Icononzo - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (640,'Mariquita - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (641,'Melgar - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (642,'Murillo - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (643,'Natagaima - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (644,'Ortega - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (645,'Palocabildo - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (646,'Piedras - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (647,'Planadas - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (648,'Prado - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (649,'Purificación - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (650,'Rio Blanco - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (651,'Roncesvalles - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (652,'Rovira - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (653,'Saldaña - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (654,'Santa Isabel - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (655,'Venadillo - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (656,'Villahermosa - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (657,'Villarrica - Tolima');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (658,'Arauquita - Arauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (659,'Cravo Norte - Arauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (660,'Fortul - Arauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (661,'Puerto Rondón - Arauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (662,'Saravena - Arauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (663,'Tame - Arauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (664,'Arauca - Arauca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (665,'Yopal - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (666,'Aguazul - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (667,'Chámeza - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (668,'Hato Corozal - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (669,'La Salina - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (670,'Monterrey - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (671,'Pore - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (672,'Recetor - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (673,'Sabanalarga - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (674,'Sácama - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (675,'Tauramena - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (676,'Trinidad - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (677,'Villanueva - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (678,'Mocoa - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (679,'Colón - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (680,'Orito - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (681,'Puerto Caicedo - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (682,'Puerto Guzmán - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (683,'Leguízamo - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (684,'Sibundoy - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (685,'San Francisco - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (686,'San Miguel - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (687,'Santiago - Putumayo');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (688,'Leticia - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (689,'El Encanto - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (690,'La Chorrera - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (691,'La Pedrera - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (692,'La Victoria - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (693,'Puerto Arica - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (694,'Puerto Nariño - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (695,'Puerto Santander - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (696,'Tarapacá - Amazonas');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (697,'Inírida - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (698,'Barranco Minas - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (699,'Mapiripana - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (700,'San Felipe - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (701,'Puerto Colombia - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (702,'La Guadalupe - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (703,'Cacahual - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (704,'Pana Pana - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (705,'Morichal - Guainía');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (706,'Mitú - Vaupés');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (707,'Caruru - Vaupés');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (708,'Pacoa - Vaupés');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (709,'Taraira - Vaupés');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (710,'Papunaua - Vaupés');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (711,'Puerto Carreño - Vichada');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (712,'La Primavera - Vichada');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (713,'Santa Rosalía - Vichada');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (714,'Cumaribo - Vichada');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (715,'San José del Fragua - Caqueta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (716,'Barranca de Upía - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (717,'Palmas del Socorro - Satander');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (718,'San Juan de Río Seco - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (719,'Juan de Acosta - Atlantico');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (720,'Fuente de Oro - Meta');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (721,'San Luis de Gaceno - Casanare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (722,'El Litoral del San Juan - Chocó');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (723,'Villa de San Diego de Ubate - Cundinamarca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (724,'Barranco de Loba - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (725,'Togüí - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (726,'Santa Rosa del Sur - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (727,'El Cantón del San Pablo - Chocó');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (728,'Villa de Leyva - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (729,'San Sebastián de Buenavista - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (730,'Paz de Río - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (731,'Hatillo de Loba - Bolivar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (732,'Sabanas de San Angel - Magdalena');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (733,'Calamar - Guaviare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (734,'Río de Oro - Cesar');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (735,'San Pedro de Uraba - Antioquia');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (736,'San José del Guaviare - Guaviare');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (737,'Santa Rosa de Viterbo - Boyaca');
INSERT INTO LUGAR (cod_lugar, lugar) VALUES (738,'Santander de Quilichao - Cauca');

#PACIENTES
INSERT INTO PACIENTES (cc,ocupacion,religion,raza,lateralidad,informante,parentesco,rh,confiabilidad, 
   cod_eps,cod_st,cod_escolaridad,nacimiento,recidencia,procedencia) VALUES (21190080, 'celador', 'católico', 'no aplica', 'diestro', 'Diana', 
  'esposa', 'A+', 'alta', 3, 2, 3, 429, 432, 435);
INSERT INTO PACIENTES (cc,ocupacion,religion,raza,lateralidad,informante,parentesco,rh,confiabilidad, 
  cod_eps,cod_st,cod_escolaridad,nacimiento,recidencia,procedencia) VALUES (4798888, 'docente', 'catolico', 'indigena', 'diestro', 'Juan', 
  'hermano', 'O+', 'alta', 1, 2, 2, 439, 449, 449);
INSERT INTO PACIENTES (cc,ocupacion,religion,raza,lateralidad,informante,parentesco,rh,confiabilidad, 
  cod_eps,cod_st,cod_escolaridad,nacimiento,recidencia,procedencia) VALUES (1122546763, 'electricista', 'agnostico', 'afroamericano', 'zurdo', 
  'Rosa', 'madre', 'A+', 'media', 5, 3, 4, 529, 129, 439);

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
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,cc,cod_pm) VALUES (2,
'el paciente presenta malestar muscular despues de una semana de trabajo, dice presentar dichos dolores por el
levantamiento de objetos de tamaño y peso considerable empezo a presenciar los dolores hace tres dias',
'no hay mayores complicaciones en el paciente, sus signos son estables y hay marcas en la piel a causa del dolor',
'se le resetaran los medicamentos respectivos para aliviar el dolor y unos proteinicos para mejorar su rendimiento muscular y que los dolores no se sigan presentando',21190080,2);
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,cc,cod_pm ) VALUES (3,
'presenta un ataque al corazon por consecuencia de su avanzada edad, a falta de la toma de sus medicamentos los ataques han empeorado',
'sus signos vitales se encuentran en estado critico, muchos de sus organos han empezado a fallar por la falta de paso de la sangre por ellos',
'el paciente sufre de constantes ataques al corazon de primer grado, se mantendra internado en la UCI en constante observacion por un posible infarto fulminante, se le aplicara morfina y otros calmantes',4798888,3);
INSERT INTO EVOLUCION (cod_evolucion,subjetivo,objetivo,analisis,cc,cod_pm) VALUES (1,
'presenta dolores a diario en la cabeza, los dolores empeoran los dias calurosos tambien tiene dolores 
al orinar como una punzada en la zona de la vejiga','sus signos vitales se encontraban bastante bajos 
pero se a notado una alza en sus niveles de globulos rojos, en la radiografia de ve un tumor benigno en 
la zona craneosefalica no presenta gran riesgo para el paciente pero si influye en la perdida de 
concienca del mismo, el estudio en la vejiga presenta problemas de prostata','el paciente 
presenta un tumor cerebral benigno y problemas prostatico, se realizara la ciruega de extraccion del tumor en dos dias 
y se prestrara tratamiento para los problemas prostaticos',1122546763,1);

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
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cc) VALUES (1, '20','dolores presentados en distintas partes del cuerpo.','el paciente dice presentar 
algunos dolores en su cuerpo talez como migraña, problemas renales, perdida de conciencia','el paciente 
presenta un tumor cerebral benigno y problemas prostatico, se realizara la ciruega de extraccion del tumor en dos dias 
y se prestrara tratamiento para los problemas prostaticos','presenta dolores 
en la zona craneosefalica del paciente debido a un leve golpe en la cabeza, tiene una molestia al orinar el zona pelvica y 
debido al golpe presenta perdida de la memoria en el lapso de 2 meses para aca. no presenta 
gran riesgo para la integridad del paciente, teniendo en cuenta su sistema inmunologico y endocrino al realizar los debidos 
estudios. Tratamiento de electrolitos y constante revision de sus signos vitales',21190080);
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cc) VALUES (2, '27', 'malestar general','presenta dolor muscular en brazos, hombros y piernas; 
el dolor aumenta con las flexiones de dichas zonas musculares','no hay mayores complicaciones en el paciente, sus signos son estables y hay marcas en la piel a causa del dolor',
'presenta estos dolores por exceso de trabajo a la hora de levantar objetos de gran tamaño no presenta ningun tipo de contucion ni cuagulo en las zonas afectadas',4798888);
INSERT INTO HISTORIA_CLINICA (cod_hc,habitacion,motivo_consulta,enfermedad_actual,analisis,diagnosticos,cc) VALUES (3, '103','dolor en las articulaciones, problemas cardiacos',
'el paciente tuvo un ataque al corazon de primer grado con posibilidades de empeorar a causa de su vejez, tambien ha causa de la edad tiene dolores articulares',
'el paciente sufre de constantes ataques al corazon de primer grado, se mantendra internado en la UCI en constante observacion por un posible infarto fulminante, se le aplicara morfina y otros calmantes',
'el paciente ya a tenido otros ataques al corazon silenciosos, este ya es de primer grado por lo que el sujeto se mantiene en constante monitoreo en la UCI',1122546763);

