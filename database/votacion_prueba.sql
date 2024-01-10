/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : votacion_prueba

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 10/01/2024 11:21:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for candidato
-- ----------------------------
DROP TABLE IF EXISTS `candidato`;
CREATE TABLE `candidato`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of candidato
-- ----------------------------
INSERT INTO `candidato` VALUES (1, 'Opcion1');
INSERT INTO `candidato` VALUES (2, 'Opcion2');
INSERT INTO `candidato` VALUES (3, 'Opcion3');

-- ----------------------------
-- Table structure for comuna
-- ----------------------------
DROP TABLE IF EXISTS `comuna`;
CREATE TABLE `comuna`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_region` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_region`(`id_region` ASC) USING BTREE,
  CONSTRAINT `fk_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 347 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comuna
-- ----------------------------
INSERT INTO `comuna` VALUES (1, 'Arica ', 1);
INSERT INTO `comuna` VALUES (2, 'Camarones ', 1);
INSERT INTO `comuna` VALUES (3, 'Putre ', 1);
INSERT INTO `comuna` VALUES (4, 'General Lagos ', 1);
INSERT INTO `comuna` VALUES (5, 'Iquique ', 2);
INSERT INTO `comuna` VALUES (6, 'Alto Hospicio ', 2);
INSERT INTO `comuna` VALUES (7, 'Pozo Almonte ', 2);
INSERT INTO `comuna` VALUES (8, 'Camiña ', 2);
INSERT INTO `comuna` VALUES (9, 'Colchane ', 2);
INSERT INTO `comuna` VALUES (10, 'Huara ', 2);
INSERT INTO `comuna` VALUES (11, 'Pica ', 2);
INSERT INTO `comuna` VALUES (12, 'Antofagasta ', 3);
INSERT INTO `comuna` VALUES (13, 'Mejillones ', 3);
INSERT INTO `comuna` VALUES (14, 'Sierra Gorda ', 3);
INSERT INTO `comuna` VALUES (15, 'Taltal ', 3);
INSERT INTO `comuna` VALUES (16, 'Calama ', 3);
INSERT INTO `comuna` VALUES (17, 'Ollagüe ', 3);
INSERT INTO `comuna` VALUES (18, 'San Pedro de Atacama ', 3);
INSERT INTO `comuna` VALUES (19, 'Tocopilla ', 3);
INSERT INTO `comuna` VALUES (20, 'María Elena ', 3);
INSERT INTO `comuna` VALUES (21, 'Copiapó ', 4);
INSERT INTO `comuna` VALUES (22, 'Caldera ', 4);
INSERT INTO `comuna` VALUES (23, 'Tierra Amarilla ', 4);
INSERT INTO `comuna` VALUES (24, 'Chañaral ', 4);
INSERT INTO `comuna` VALUES (25, 'Diego de Almagro ', 4);
INSERT INTO `comuna` VALUES (26, 'Vallenar ', 4);
INSERT INTO `comuna` VALUES (27, 'Alto del Carmen ', 4);
INSERT INTO `comuna` VALUES (28, 'Freirina ', 4);
INSERT INTO `comuna` VALUES (29, 'Huasco ', 4);
INSERT INTO `comuna` VALUES (30, 'La Serena ', 5);
INSERT INTO `comuna` VALUES (31, 'Coquimbo ', 5);
INSERT INTO `comuna` VALUES (32, 'Andacollo ', 5);
INSERT INTO `comuna` VALUES (33, 'La Higuera ', 5);
INSERT INTO `comuna` VALUES (34, 'Paihuano ', 5);
INSERT INTO `comuna` VALUES (35, 'Vicuña ', 5);
INSERT INTO `comuna` VALUES (36, 'Illapel ', 5);
INSERT INTO `comuna` VALUES (37, 'Canela ', 5);
INSERT INTO `comuna` VALUES (38, 'Los Vilos ', 5);
INSERT INTO `comuna` VALUES (39, 'Salamanca ', 5);
INSERT INTO `comuna` VALUES (40, 'Ovalle ', 5);
INSERT INTO `comuna` VALUES (41, 'Combarbalá ', 5);
INSERT INTO `comuna` VALUES (42, 'Monte Patria ', 5);
INSERT INTO `comuna` VALUES (43, 'Punitaqui ', 5);
INSERT INTO `comuna` VALUES (44, 'Río Hurtado ', 5);
INSERT INTO `comuna` VALUES (45, 'Valparaíso ', 6);
INSERT INTO `comuna` VALUES (46, 'Casablanca ', 6);
INSERT INTO `comuna` VALUES (47, 'Concón ', 6);
INSERT INTO `comuna` VALUES (48, 'Juan Fernández ', 6);
INSERT INTO `comuna` VALUES (49, 'Puchuncaví ', 6);
INSERT INTO `comuna` VALUES (50, 'Quintero ', 6);
INSERT INTO `comuna` VALUES (51, 'Viña del Mar ', 6);
INSERT INTO `comuna` VALUES (52, 'Isla de Pascua ', 6);
INSERT INTO `comuna` VALUES (53, 'Los Andes ', 6);
INSERT INTO `comuna` VALUES (54, 'Calle Larga ', 6);
INSERT INTO `comuna` VALUES (55, 'Rinconada ', 6);
INSERT INTO `comuna` VALUES (56, 'San Esteban ', 6);
INSERT INTO `comuna` VALUES (57, 'La Ligua ', 6);
INSERT INTO `comuna` VALUES (58, 'Cabildo ', 6);
INSERT INTO `comuna` VALUES (59, 'Papudo ', 6);
INSERT INTO `comuna` VALUES (60, 'Petorca ', 6);
INSERT INTO `comuna` VALUES (61, 'Zapallar ', 6);
INSERT INTO `comuna` VALUES (62, 'Quillota ', 6);
INSERT INTO `comuna` VALUES (63, 'La Calera ', 6);
INSERT INTO `comuna` VALUES (64, 'Hijuelas ', 6);
INSERT INTO `comuna` VALUES (65, 'La Cruz ', 6);
INSERT INTO `comuna` VALUES (66, 'Nogales ', 6);
INSERT INTO `comuna` VALUES (67, 'San Antonio ', 6);
INSERT INTO `comuna` VALUES (68, 'Algarrobo ', 6);
INSERT INTO `comuna` VALUES (69, 'Cartagena ', 6);
INSERT INTO `comuna` VALUES (70, 'El Quisco ', 6);
INSERT INTO `comuna` VALUES (71, 'El Tabo ', 6);
INSERT INTO `comuna` VALUES (72, 'Santo Domingo ', 6);
INSERT INTO `comuna` VALUES (73, 'San Felipe ', 6);
INSERT INTO `comuna` VALUES (74, 'Catemu ', 6);
INSERT INTO `comuna` VALUES (75, 'Llay-Llay ', 6);
INSERT INTO `comuna` VALUES (76, 'Panquehue ', 6);
INSERT INTO `comuna` VALUES (77, 'Putaendo ', 6);
INSERT INTO `comuna` VALUES (78, 'Santa María ', 6);
INSERT INTO `comuna` VALUES (79, 'Quilpué ', 6);
INSERT INTO `comuna` VALUES (80, 'Limache ', 6);
INSERT INTO `comuna` VALUES (81, 'Olmué ', 6);
INSERT INTO `comuna` VALUES (82, 'Villa Alemana ', 6);
INSERT INTO `comuna` VALUES (83, 'Rancagua ', 8);
INSERT INTO `comuna` VALUES (84, 'Codegua ', 8);
INSERT INTO `comuna` VALUES (85, 'Coinco ', 8);
INSERT INTO `comuna` VALUES (86, 'Coltauco ', 8);
INSERT INTO `comuna` VALUES (87, 'Doñihue ', 8);
INSERT INTO `comuna` VALUES (88, 'Graneros ', 8);
INSERT INTO `comuna` VALUES (89, 'Las Cabras ', 8);
INSERT INTO `comuna` VALUES (90, 'Machalí ', 8);
INSERT INTO `comuna` VALUES (91, 'Malloa ', 8);
INSERT INTO `comuna` VALUES (92, 'Mostazal ', 8);
INSERT INTO `comuna` VALUES (93, 'Olivar ', 8);
INSERT INTO `comuna` VALUES (94, 'Peumo ', 8);
INSERT INTO `comuna` VALUES (95, 'Pichidegua ', 8);
INSERT INTO `comuna` VALUES (96, 'Quinta de Tilcoco ', 8);
INSERT INTO `comuna` VALUES (97, 'Rengo ', 8);
INSERT INTO `comuna` VALUES (98, 'Requínoa ', 8);
INSERT INTO `comuna` VALUES (99, 'San Vicente ', 8);
INSERT INTO `comuna` VALUES (100, 'Pichilemu ', 8);
INSERT INTO `comuna` VALUES (101, 'La Estrella ', 8);
INSERT INTO `comuna` VALUES (102, 'Litueche ', 8);
INSERT INTO `comuna` VALUES (103, 'Marchigüe ', 8);
INSERT INTO `comuna` VALUES (104, 'Navidad ', 8);
INSERT INTO `comuna` VALUES (105, 'Paredones ', 8);
INSERT INTO `comuna` VALUES (106, 'San Fernando ', 8);
INSERT INTO `comuna` VALUES (107, 'Chépica ', 8);
INSERT INTO `comuna` VALUES (108, 'Chimbarongo ', 8);
INSERT INTO `comuna` VALUES (109, 'Lolol ', 8);
INSERT INTO `comuna` VALUES (110, 'Nancagua ', 8);
INSERT INTO `comuna` VALUES (111, 'Palmilla ', 8);
INSERT INTO `comuna` VALUES (112, 'Peralillo ', 8);
INSERT INTO `comuna` VALUES (113, 'Placilla ', 8);
INSERT INTO `comuna` VALUES (114, 'Pumanque ', 8);
INSERT INTO `comuna` VALUES (115, 'Santa Cruz ', 8);
INSERT INTO `comuna` VALUES (116, 'Talca ', 9);
INSERT INTO `comuna` VALUES (117, 'Constitución ', 9);
INSERT INTO `comuna` VALUES (118, 'Curepto ', 9);
INSERT INTO `comuna` VALUES (119, 'Empedrado ', 9);
INSERT INTO `comuna` VALUES (120, 'Maule ', 9);
INSERT INTO `comuna` VALUES (121, 'Pelarco ', 9);
INSERT INTO `comuna` VALUES (122, 'Pencahue ', 9);
INSERT INTO `comuna` VALUES (123, 'Río Claro ', 9);
INSERT INTO `comuna` VALUES (124, 'San Clemente ', 9);
INSERT INTO `comuna` VALUES (125, 'San Rafael ', 9);
INSERT INTO `comuna` VALUES (126, 'Cauquenes ', 9);
INSERT INTO `comuna` VALUES (127, 'Chanco ', 9);
INSERT INTO `comuna` VALUES (128, 'Pelluhue ', 9);
INSERT INTO `comuna` VALUES (129, 'Curicó ', 9);
INSERT INTO `comuna` VALUES (130, 'Hualañé ', 9);
INSERT INTO `comuna` VALUES (131, 'Licantén ', 9);
INSERT INTO `comuna` VALUES (132, 'Molina ', 9);
INSERT INTO `comuna` VALUES (133, 'Rauco ', 9);
INSERT INTO `comuna` VALUES (134, 'Romeral ', 9);
INSERT INTO `comuna` VALUES (135, 'Sagrada Familia ', 9);
INSERT INTO `comuna` VALUES (136, 'Teno ', 9);
INSERT INTO `comuna` VALUES (137, 'Vichuquén ', 9);
INSERT INTO `comuna` VALUES (138, 'Linares ', 9);
INSERT INTO `comuna` VALUES (139, 'Colbún ', 9);
INSERT INTO `comuna` VALUES (140, 'Longaví ', 9);
INSERT INTO `comuna` VALUES (141, 'Parral ', 9);
INSERT INTO `comuna` VALUES (142, 'Retiro ', 9);
INSERT INTO `comuna` VALUES (143, 'San Javier ', 9);
INSERT INTO `comuna` VALUES (144, 'Villa Alegre ', 9);
INSERT INTO `comuna` VALUES (145, 'Yerbas Buenas ', 9);
INSERT INTO `comuna` VALUES (146, 'Chillán ', 10);
INSERT INTO `comuna` VALUES (147, 'Bulnes ', 10);
INSERT INTO `comuna` VALUES (148, 'Chillán Viejo ', 10);
INSERT INTO `comuna` VALUES (149, 'El Carmen ', 10);
INSERT INTO `comuna` VALUES (150, 'Pemuco ', 10);
INSERT INTO `comuna` VALUES (151, 'Pinto ', 10);
INSERT INTO `comuna` VALUES (152, 'Quillón ', 10);
INSERT INTO `comuna` VALUES (153, 'San Ignacio ', 10);
INSERT INTO `comuna` VALUES (154, 'Yungay ', 10);
INSERT INTO `comuna` VALUES (155, 'Quirihue ', 10);
INSERT INTO `comuna` VALUES (156, 'Cobquecura ', 10);
INSERT INTO `comuna` VALUES (157, 'Coelemu ', 10);
INSERT INTO `comuna` VALUES (158, 'Ninhue ', 10);
INSERT INTO `comuna` VALUES (159, 'Portezuelo ', 10);
INSERT INTO `comuna` VALUES (160, 'Ránquil ', 10);
INSERT INTO `comuna` VALUES (161, 'Treguaco ', 10);
INSERT INTO `comuna` VALUES (162, 'San Carlos ', 10);
INSERT INTO `comuna` VALUES (163, 'Coihueco ', 10);
INSERT INTO `comuna` VALUES (164, 'Ñiquén ', 10);
INSERT INTO `comuna` VALUES (165, 'San Fabián ', 10);
INSERT INTO `comuna` VALUES (166, 'San Nicolás ', 10);
INSERT INTO `comuna` VALUES (167, 'Concepción ', 11);
INSERT INTO `comuna` VALUES (168, 'Coronel ', 11);
INSERT INTO `comuna` VALUES (169, 'Chiguayante ', 11);
INSERT INTO `comuna` VALUES (170, 'Florida ', 11);
INSERT INTO `comuna` VALUES (171, 'Hualqui ', 11);
INSERT INTO `comuna` VALUES (172, 'Lota ', 11);
INSERT INTO `comuna` VALUES (173, 'Penco ', 11);
INSERT INTO `comuna` VALUES (174, 'San Pedro de La Paz ', 11);
INSERT INTO `comuna` VALUES (175, 'Santa Juana ', 11);
INSERT INTO `comuna` VALUES (176, 'Talcahuano ', 11);
INSERT INTO `comuna` VALUES (177, 'Tomé ', 11);
INSERT INTO `comuna` VALUES (178, 'Hualpén ', 11);
INSERT INTO `comuna` VALUES (179, 'Lebu ', 11);
INSERT INTO `comuna` VALUES (180, 'Arauco ', 11);
INSERT INTO `comuna` VALUES (181, 'Cañete ', 11);
INSERT INTO `comuna` VALUES (182, 'Contulmo ', 11);
INSERT INTO `comuna` VALUES (183, 'Curanilahue ', 11);
INSERT INTO `comuna` VALUES (184, 'Los Álamos ', 11);
INSERT INTO `comuna` VALUES (185, 'Tirúa ', 11);
INSERT INTO `comuna` VALUES (186, 'Los Ángeles ', 11);
INSERT INTO `comuna` VALUES (187, 'Antuco ', 11);
INSERT INTO `comuna` VALUES (188, 'Cabrero ', 11);
INSERT INTO `comuna` VALUES (189, 'Laja ', 11);
INSERT INTO `comuna` VALUES (190, 'Mulchén ', 11);
INSERT INTO `comuna` VALUES (191, 'Nacimiento ', 11);
INSERT INTO `comuna` VALUES (192, 'Negrete ', 11);
INSERT INTO `comuna` VALUES (193, 'Quilaco ', 11);
INSERT INTO `comuna` VALUES (194, 'Quilleco ', 11);
INSERT INTO `comuna` VALUES (195, 'San Rosendo ', 11);
INSERT INTO `comuna` VALUES (196, 'Santa Bárbara ', 11);
INSERT INTO `comuna` VALUES (197, 'Tucapel ', 11);
INSERT INTO `comuna` VALUES (198, 'Yumbel ', 11);
INSERT INTO `comuna` VALUES (199, 'Alto Biobío ', 11);
INSERT INTO `comuna` VALUES (200, 'Temuco ', 12);
INSERT INTO `comuna` VALUES (201, 'Carahue ', 12);
INSERT INTO `comuna` VALUES (202, 'Cunco ', 12);
INSERT INTO `comuna` VALUES (203, 'Curarrehue ', 12);
INSERT INTO `comuna` VALUES (204, 'Freire ', 12);
INSERT INTO `comuna` VALUES (205, 'Galvarino ', 12);
INSERT INTO `comuna` VALUES (206, 'Gorbea ', 12);
INSERT INTO `comuna` VALUES (207, 'Lautaro ', 12);
INSERT INTO `comuna` VALUES (208, 'Loncoche ', 12);
INSERT INTO `comuna` VALUES (209, 'Melipeuco ', 12);
INSERT INTO `comuna` VALUES (210, 'Nueva Imperial ', 12);
INSERT INTO `comuna` VALUES (211, 'Padre Las Casas ', 12);
INSERT INTO `comuna` VALUES (212, 'Perquenco ', 12);
INSERT INTO `comuna` VALUES (213, 'Pitrufquén ', 12);
INSERT INTO `comuna` VALUES (214, 'Pucón ', 12);
INSERT INTO `comuna` VALUES (215, 'Saavedra ', 12);
INSERT INTO `comuna` VALUES (216, 'Teodoro Schmidt ', 12);
INSERT INTO `comuna` VALUES (217, 'Toltén ', 12);
INSERT INTO `comuna` VALUES (218, 'Vilcún ', 12);
INSERT INTO `comuna` VALUES (219, 'Villarrica ', 12);
INSERT INTO `comuna` VALUES (220, 'Cholchol ', 12);
INSERT INTO `comuna` VALUES (221, 'Angol ', 12);
INSERT INTO `comuna` VALUES (222, 'Collipulli ', 12);
INSERT INTO `comuna` VALUES (223, 'Curacautín ', 12);
INSERT INTO `comuna` VALUES (224, 'Ercilla ', 12);
INSERT INTO `comuna` VALUES (225, 'Lonquimay ', 12);
INSERT INTO `comuna` VALUES (226, 'Los Sauces ', 12);
INSERT INTO `comuna` VALUES (227, 'Lumaco ', 12);
INSERT INTO `comuna` VALUES (228, 'Purén ', 12);
INSERT INTO `comuna` VALUES (229, 'Renaico ', 12);
INSERT INTO `comuna` VALUES (230, 'Traiguén ', 12);
INSERT INTO `comuna` VALUES (231, 'Victoria ', 12);
INSERT INTO `comuna` VALUES (232, 'Valdivia ', 13);
INSERT INTO `comuna` VALUES (233, 'Corral ', 13);
INSERT INTO `comuna` VALUES (234, 'Lanco ', 13);
INSERT INTO `comuna` VALUES (235, 'Los Lagos ', 13);
INSERT INTO `comuna` VALUES (236, 'Máfil ', 13);
INSERT INTO `comuna` VALUES (237, 'Mariquina ', 13);
INSERT INTO `comuna` VALUES (238, 'Paillaco ', 13);
INSERT INTO `comuna` VALUES (239, 'Panguipulli ', 13);
INSERT INTO `comuna` VALUES (240, 'La Unión ', 13);
INSERT INTO `comuna` VALUES (241, 'Futrono ', 13);
INSERT INTO `comuna` VALUES (242, 'Lago Ranco ', 13);
INSERT INTO `comuna` VALUES (243, 'Río Bueno ', 13);
INSERT INTO `comuna` VALUES (244, 'Puerto Montt ', 14);
INSERT INTO `comuna` VALUES (245, 'Calbuco ', 14);
INSERT INTO `comuna` VALUES (246, 'Cochamó ', 14);
INSERT INTO `comuna` VALUES (247, 'Fresia ', 14);
INSERT INTO `comuna` VALUES (248, 'Frutillar ', 14);
INSERT INTO `comuna` VALUES (249, 'Los Muermos ', 14);
INSERT INTO `comuna` VALUES (250, 'Llanquihue ', 14);
INSERT INTO `comuna` VALUES (251, 'Maullín ', 14);
INSERT INTO `comuna` VALUES (252, 'Puerto Varas ', 14);
INSERT INTO `comuna` VALUES (253, 'Castro ', 14);
INSERT INTO `comuna` VALUES (254, 'Ancud ', 14);
INSERT INTO `comuna` VALUES (255, 'Chonchi ', 14);
INSERT INTO `comuna` VALUES (256, 'Curaco de Vélez ', 14);
INSERT INTO `comuna` VALUES (257, 'Dalcahue ', 14);
INSERT INTO `comuna` VALUES (258, 'Puqueldón ', 14);
INSERT INTO `comuna` VALUES (259, 'Queilén ', 14);
INSERT INTO `comuna` VALUES (260, 'Quellón ', 14);
INSERT INTO `comuna` VALUES (261, 'Quemchi ', 14);
INSERT INTO `comuna` VALUES (262, 'Quinchao ', 14);
INSERT INTO `comuna` VALUES (263, 'Osorno ', 14);
INSERT INTO `comuna` VALUES (264, 'Puerto Octay ', 14);
INSERT INTO `comuna` VALUES (265, 'Purranque ', 14);
INSERT INTO `comuna` VALUES (266, 'Puyehue ', 14);
INSERT INTO `comuna` VALUES (267, 'Río Negro ', 14);
INSERT INTO `comuna` VALUES (268, 'San Juan de la Costa ', 14);
INSERT INTO `comuna` VALUES (269, 'San Pablo ', 14);
INSERT INTO `comuna` VALUES (270, 'Chaitén ', 14);
INSERT INTO `comuna` VALUES (271, 'Futaleufú ', 14);
INSERT INTO `comuna` VALUES (272, 'Hualaihué ', 14);
INSERT INTO `comuna` VALUES (273, 'Palena ', 14);
INSERT INTO `comuna` VALUES (274, 'Coyhaique ', 15);
INSERT INTO `comuna` VALUES (275, 'Lago Verde ', 15);
INSERT INTO `comuna` VALUES (276, 'Aysén ', 15);
INSERT INTO `comuna` VALUES (277, 'Cisnes ', 15);
INSERT INTO `comuna` VALUES (278, 'Guaitecas ', 15);
INSERT INTO `comuna` VALUES (279, 'Cochrane ', 15);
INSERT INTO `comuna` VALUES (280, 'O\'Higgins', 15);
INSERT INTO `comuna` VALUES (281, 'Tortel ', 15);
INSERT INTO `comuna` VALUES (282, 'Chile Chico ', 15);
INSERT INTO `comuna` VALUES (283, 'Río Ibáñez ', 15);
INSERT INTO `comuna` VALUES (284, 'Punta Arenas ', 16);
INSERT INTO `comuna` VALUES (285, 'Laguna Blanca ', 16);
INSERT INTO `comuna` VALUES (286, 'Río Verde ', 16);
INSERT INTO `comuna` VALUES (287, 'San Gregorio ', 16);
INSERT INTO `comuna` VALUES (288, 'Cabo de Hornos ', 16);
INSERT INTO `comuna` VALUES (289, 'Antártica ', 16);
INSERT INTO `comuna` VALUES (290, 'Porvenir ', 16);
INSERT INTO `comuna` VALUES (291, 'Primavera ', 16);
INSERT INTO `comuna` VALUES (292, 'Timaukel ', 16);
INSERT INTO `comuna` VALUES (293, 'Natales ', 16);
INSERT INTO `comuna` VALUES (294, 'Torres del Paine ', 16);
INSERT INTO `comuna` VALUES (295, 'Santiago ', 7);
INSERT INTO `comuna` VALUES (296, 'Cerrillos ', 7);
INSERT INTO `comuna` VALUES (297, 'Cerro Navia ', 7);
INSERT INTO `comuna` VALUES (298, 'Conchalí ', 7);
INSERT INTO `comuna` VALUES (299, 'El Bosque ', 7);
INSERT INTO `comuna` VALUES (300, 'Estación Central ', 7);
INSERT INTO `comuna` VALUES (301, 'Huechuraba ', 7);
INSERT INTO `comuna` VALUES (302, 'Independencia ', 7);
INSERT INTO `comuna` VALUES (303, 'La Cisterna ', 7);
INSERT INTO `comuna` VALUES (304, 'La Florida ', 7);
INSERT INTO `comuna` VALUES (305, 'La Granja ', 7);
INSERT INTO `comuna` VALUES (306, 'La Pintana ', 7);
INSERT INTO `comuna` VALUES (307, 'La Reina ', 7);
INSERT INTO `comuna` VALUES (308, 'Las Condes ', 7);
INSERT INTO `comuna` VALUES (309, 'Lo Barnechea ', 7);
INSERT INTO `comuna` VALUES (310, 'Lo Espejo ', 7);
INSERT INTO `comuna` VALUES (311, 'Lo Prado ', 7);
INSERT INTO `comuna` VALUES (312, 'Macul ', 7);
INSERT INTO `comuna` VALUES (313, 'Maipú ', 7);
INSERT INTO `comuna` VALUES (314, 'Ñuñoa ', 7);
INSERT INTO `comuna` VALUES (315, 'Pedro Aguirre Cerda ', 7);
INSERT INTO `comuna` VALUES (316, 'Peñalolén ', 7);
INSERT INTO `comuna` VALUES (317, 'Providencia ', 7);
INSERT INTO `comuna` VALUES (318, 'Pudahuel ', 7);
INSERT INTO `comuna` VALUES (319, 'Quilicura ', 7);
INSERT INTO `comuna` VALUES (320, 'Quinta Normal ', 7);
INSERT INTO `comuna` VALUES (321, 'Recoleta ', 7);
INSERT INTO `comuna` VALUES (322, 'Renca ', 7);
INSERT INTO `comuna` VALUES (323, 'San Joaquín ', 7);
INSERT INTO `comuna` VALUES (324, 'San Miguel ', 7);
INSERT INTO `comuna` VALUES (325, 'San Ramón ', 7);
INSERT INTO `comuna` VALUES (326, 'Vitacura ', 7);
INSERT INTO `comuna` VALUES (327, 'Puente Alto ', 7);
INSERT INTO `comuna` VALUES (328, 'Pirque ', 7);
INSERT INTO `comuna` VALUES (329, 'San José de Maipo ', 7);
INSERT INTO `comuna` VALUES (330, 'Colina ', 7);
INSERT INTO `comuna` VALUES (331, 'Lampa ', 7);
INSERT INTO `comuna` VALUES (332, 'Til Til ', 7);
INSERT INTO `comuna` VALUES (333, 'San Bernardo ', 7);
INSERT INTO `comuna` VALUES (334, 'Buin ', 7);
INSERT INTO `comuna` VALUES (335, 'Calera de Tango ', 7);
INSERT INTO `comuna` VALUES (336, 'Paine ', 7);
INSERT INTO `comuna` VALUES (337, 'Melipilla ', 7);
INSERT INTO `comuna` VALUES (338, 'Alhué ', 7);
INSERT INTO `comuna` VALUES (339, 'Curacaví ', 7);
INSERT INTO `comuna` VALUES (340, 'María Pinto ', 7);
INSERT INTO `comuna` VALUES (341, 'San Pedro ', 7);
INSERT INTO `comuna` VALUES (342, 'Talagante ', 7);
INSERT INTO `comuna` VALUES (343, 'El Monte ', 7);
INSERT INTO `comuna` VALUES (344, 'Isla de Maipo ', 7);
INSERT INTO `comuna` VALUES (345, 'Padre Hurtado ', 7);
INSERT INTO `comuna` VALUES (346, 'Peñaflor ', 7);

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES (1, 'Arica y Parinacota');
INSERT INTO `region` VALUES (2, 'Tarapacá');
INSERT INTO `region` VALUES (3, 'Antofagasta');
INSERT INTO `region` VALUES (4, 'Atacama');
INSERT INTO `region` VALUES (5, 'Coquimbo');
INSERT INTO `region` VALUES (6, 'Valparaíso');
INSERT INTO `region` VALUES (7, 'Metropolitana');
INSERT INTO `region` VALUES (8, 'O\'Higgins');
INSERT INTO `region` VALUES (9, 'Maule');
INSERT INTO `region` VALUES (10, 'Ñuble');
INSERT INTO `region` VALUES (11, 'Biobío');
INSERT INTO `region` VALUES (12, 'La Araucanía');
INSERT INTO `region` VALUES (13, 'Los Ríos');
INSERT INTO `region` VALUES (14, 'Los Lagos');
INSERT INTO `region` VALUES (15, 'Aysén');
INSERT INTO `region` VALUES (16, 'Magallanes');

-- ----------------------------
-- Table structure for votantes
-- ----------------------------
DROP TABLE IF EXISTS `votantes`;
CREATE TABLE `votantes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `rut` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_comuna` int NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_candidato` int NULL DEFAULT NULL,
  `web` int NULL DEFAULT 0,
  `tv` int NULL DEFAULT 0,
  `redes` int NULL DEFAULT 0,
  `amigo` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_votantes_candidato`(`id_candidato` ASC) USING BTREE,
  INDEX `fk_comuna`(`id_comuna` ASC) USING BTREE,
  CONSTRAINT `fk_comuna` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_votantes_candidato` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of votantes
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
