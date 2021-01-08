-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2020 a las 16:49:05
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectopwa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `IDCARRERA` varchar(10) NOT NULL,
  `NOMBRECARRERA` varchar(50) NOT NULL,
  `IDMAESTRO` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`IDCARRERA`, `NOMBRECARRERA`, `IDMAESTRO`) VALUES
('ISX', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', 'A25'),
('GE9', 'INGENIERÍA EN GESTIÓN EMPRESARIAL', 'M6'),
('FNGFB', 'BHFNHFD', 'M6'),
('TICS', 'INGENIERÍA EN TECNOLOGIAS DE LA INFORMACION', 'A25'),
('ING', 'PRUEBA', 'M6'),
('PPPP', 'PRUEBA', 'A25'),
('IND', 'INDUSTRIAL', 'M6'),
('PRUEBA3', 'PRUEBA3', 'A25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreramaestro`
--

CREATE TABLE `carreramaestro` (
  `IDCARRERA` varchar(10) NOT NULL,
  `IDMAESTRO` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carreramaestro`
--

INSERT INTO `carreramaestro` (`IDCARRERA`, `IDMAESTRO`) VALUES
('A25', 'A25'),
('0', 'A03'),
('ISX', 'A02'),
('ISX', 'A03'),
('ISX', 'A01'),
('ISX', 'A02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `IDGRUPO` varchar(10) NOT NULL,
  `IDMAESTRO` varchar(10) NOT NULL,
  `IDCARRERA` varchar(10) NOT NULL,
  `IDMATERIA` varchar(10) NOT NULL,
  `PERIODO` varchar(30) NOT NULL,
  `GRUPO` varchar(10) NOT NULL,
  `AULA` varchar(20) NOT NULL,
  `NUMALUMNOS` varchar(20) NOT NULL,
  `TURNO` varchar(50) NOT NULL,
  `LUNES` varchar(30) DEFAULT NULL,
  `MARTES` varchar(30) DEFAULT NULL,
  `MIERCOLES` varchar(30) DEFAULT NULL,
  `JUEVES` varchar(30) DEFAULT NULL,
  `VIERNES` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`IDGRUPO`, `IDMAESTRO`, `IDCARRERA`, `IDMATERIA`, `PERIODO`, `GRUPO`, `AULA`, `NUMALUMNOS`, `TURNO`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`) VALUES
('G01', 'A02', 'ISX', 'AED1026', 'Agosto-Diciembre2020', 'A', 'D12', '20', 'Matutino', '7:00-8:40', '', '7:00-8:40', '', '08:45-09:35'),
('G02', 'A01', 'ISX', 'SCF1006', 'Agosto-Diciembre2020', 'C', 'F08', '15', 'Matutino', '', '12:15-13:55', '', '12:15-13:55', '13:05-13:55'),
('G03', 'A01', 'ISX', 'SCC1017', 'Agosto-Diciembre2020', 'A', 'H10', '25', 'Matutino', '', '10:30-12:15', '', '10:30-12:15', ''),
('G04', 'A03', 'ISX', 'ACF0901', 'Agosto-Diciembre2020', 'B', 'D03', '20', 'Matutino', '7:00-8:40', '', '7:00-8:40', '', '08:45-09:35'),
('G05', 'A25', 'ISX', 'ACF0901', 'Agosto-Diciembre2020', 'E', 'D05', '25', 'Matutino', '', '10:30-12:15', '', '10:30-12:15', '10:30-11:20'),
('G06', 'A27', 'TICS', 'AEC1018', 'AGOSTO-DICIEMBRE2020', 'A', 'D05', '25', 'VESPERTINO', '14:05-15:45', '', '14:05-15:45', '', '14:55-15:45'),
('G07', 'A39', 'MCX', 'EME1012', 'AGOSTO-DICIEMBRE2020', 'C', 'K05', '20', 'MATUTINO', '', '12:15-13:55', '', '12:15-13:55', '13:05-13:55'),
('G08', 'A09', 'GE9', 'GEC0905', 'AGOSTO-DICIEMBRE2020', 'A', 'H07', '25', 'MATUTINO', '', '10:30-12:15', '', '10:30-12:15', ''),
('G09', 'A18', 'EMX', '1111', 'AGOSTO-DICIEMBRE2020', 'B', 'M02', '30', 'MATUTINO', '7:00-8:40', '', '7:00-8:40', '', '08:45-09:35'),
('G10', 'A22', 'CG0', 'ACA0907', 'AGOSTO-DICIEMBRE2020', 'E', 'J09', '25', 'MATUTINO', '', '10:30-12:15', '', '10:30-12:15', '10:30-11:20'),
('G11', 'A24', 'LOX', 'GED0901', 'AGOSTO-DICIEMBRE2020', 'A', 'L10', '20', 'MATUTINO', '7:00-8:40', '', '7:00-8:40', '', '08:45-09:35'),
('G12', 'A31', 'MCX', 'EMJ1021', 'AGOSTO-DICIEMBRE2020', 'C', 'M08', '15', 'MATUTINO', '', '12:15-13:55', '', '12:15-13:55', '13:05-13:55'),
('G13', 'A27', 'TICS', 'AED1026', 'AGOSTO-DICIEMBRE2020', 'A', 'K02', '25', 'VESPERTINO', '', '15:50-17:30', '', '15:50-17:30', '16:40-17:30'),
('G14', 'A28', 'TICS', 'SCD1027', 'AGOSTO-DICIEMBRE2020', 'B', 'D03', '30', 'VESPERTINO', '19:20-21:00', '', '19:20-21:00', '', '20:10-21:00'),
('G15', 'A26', 'TICS', 'SCA1025', 'AGOSTO-DICIEMBRE2020', 'E', 'D05', '25', 'VESPERTINO', '', '16:40-17:30', '', '16:40-17:30', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `IDMAESTRO` varchar(10) NOT NULL,
  `NOMBREMAESTRO` varchar(30) NOT NULL,
  `CORREO` varchar(50) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `DEPARTAMENTO` varchar(50) NOT NULL,
  `IDUSUARIO` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maestro`
--

INSERT INTO `maestro` (`IDMAESTRO`, `NOMBREMAESTRO`, `CORREO`, `TELEFONO`, `DEPARTAMENTO`, `IDUSUARIO`) VALUES
('A01', 'JOSE LUIS SUAREZ Y GOMEZ', 'SUAREZ@LEON.TECNM.MX', '4771112220', 'SISTEMAS COMPUTACIONALES', 'U1'),
('A02', 'DOMINGO GARCIA ORNELAS', 'DOMINGO@LEON.TECNM.MX', '4775550000', 'SISTEMAS COMPUTACIONALES', 'U2'),
('A03', 'EDNA MILITZA MARTINEZ PRADO', 'MILITZA@LEON.TECNM.MX', '4772220000', 'SISTEMAS COMPUTACIONALES', 'U3'),
('A25', 'ANTONIO AGUILA REYES', 'AGUILA@LEON.TECNM.MX', '4773330000', 'SISTEMAS COMPUTACIONALES', 'U4'),
('M6', 'TAPIA TAPIA', 'tapia@correo.com', '47789901236', 'CIENCIAS BÁSICAS', 'U6'),
( 'A05','ROGELIO INFANTE MEDINA','INFANTE@LEON.TECNM.MX','4773330000','ELECTROMECANICA', 'U5'),
( 'A06','MA. VERONICA TAPIA IBARRA','TAPIA@LEON.TECNM.MX','4773330000','SISTEMAS COMPUTACIONALES', 'U6'),
( 'A07','ROLANDO BECERRA RAMIREZ','ROLANDO@LEON.TECNM.MX','4773330000','ELECTROMECANICA', 'U7'),
( 'A08','ELIZABETH CASTELLANOS NOLASCO','NOLASCO@LEON.TECNM.MX','4773330000','SISTEMAS COMPUTACIONALES', 'U8'),
( 'A09','FLOR KARINA JUAREZ CARDENAS','CARDENAS@LEON.TECNM.MX','4773330000','GESTION EMPRESARIAL', 'U9'),
( 'A10','RUBEN TRUJILLO CORONA','CORONALEON.TECNM.MX','4773330000','GESTION EMPRESARIAL', 'U10'),
( 'A11','SERGIO EFREN RIUZ ESPARZA MURILLO','MURILLO@LEON.TECNM.MX','4773330000','ELECTROMECANICA', 'U11'),
( 'A12','CIRINO SILVA TOVAR','CIRINO@LEON.TECNM.MX','4773330000','CIENCIAS GENERALES', 'U12'),
( 'A13','JOEL RICO PEREZ','RICO@LEON.TECNM.MX','4773330000','MECATRONICA', 'U13'),
( 'A14','JOSE ALFREDO GASCA GONZALEZ','GASCA@LEON.TECNM.MX','4773330000','CIENCIAS GENERALES', 'U14'),
( 'A15','JOSE A. CALDERON GUZMAN','CALDERON@LEON.TECNM.MX','4773330000','GESTION EMPRESARIAL', 'U15'),
( 'A16','MA. GUADALUPE NILA REYES','NILA@LEON.TECNM.MX','4773330000','GESTION EMPRESARIAL', 'U16'),
( 'A17','MA DE LOS ANGELES GOMEZ CASTRO','CASTRO@LEON.TECNM.MX','4773330000','GESTION EMPRESARIAL', 'U17'),
( 'A18','ISMAEL BUSTOS RAZO','RAZO@LEON.TECNM.MX','4773330000','MECATRONICA', 'U18'),
( 'A19','ESTHER HILDA MARES RODRIGUEZ','RODRIGUEZ@LEON.TECNM.MX','4773330000','GESTION EMPRESARIAL', 'U19'),
( 'A20','ADRIANA EDURNE MACIAS GARCIA','MACIAS@LEON.TECNM.MX','4773330000','LOGISTICA', 'U20'),
( 'A21','MARIA NOEMI ALBARRAN GRANADOS','GRANADOS@LEON.TECNM.MX','4773330000','LOGISTICA', 'U21'),
( 'A22','MARTHA BEATRIZ GONZALEZ NAVA','NAVA@LEON.TECNM.MX','4773330000','LOGISTICA', 'U22'),
( 'A23','SILVIA YASMIN MACIAS GARCIA','YASMIN@LEON.TECNM.MX','4773330000','LOGISTICA', 'U23'),
( 'A24','MA. CONCEPCION SANDOVAL SOLIS','SANDOVAL@LEON.TECNM.MX','4773330000','LOGISTICA', 'U24'),
( 'A26','ADOLFO GUERRERO GAMIÑO','GAMIÑO@LEON.TECNM.MX','4773330000','SISTEMAS COMPUTACIONALES', 'U26'),
( 'A27','ANA COLUMBA ZURITA MARTINEZ AGUILAR','ZURITA@LEON.TECNM.MX','4773330000','SISTEMAS COMPUTACIONALES', 'U27'),
( 'A28','JUAN CARLOS AGUILERA CRUZ','AGUILERA@LEON.TECNM.MX','4773330000','SISTEMAS COMPUTACIONALES', 'U28'),
( 'A29','J. FÉLIX LOPEZ ROCHA','ROCHA@LEON.TECNM.MX','4773330000','INDUSTRIAL', 'U29'),
( 'A30','OMAR FELIPE ORTEGA MARTINEZ','ORTEGA@LEON.TECNM.MX','4773330000','INDUSTRIAL', 'U30'),
( 'A31','ANTONIO LONA GAMEZ','GAMEZ@LEON.TECNM.MX','4773330000','INDUSTRIAL', 'U31'),
( 'A32','JUAN DE DIOS PAZ SALINAS','PAZ@LEON.TECNM.MX','4773330000','INDUSTRIAL', 'U32'),
( 'A33','FELIPE MORENO ORTEGA','ORTEGA@LEON.TECNM.MX','4773330000','INDUSTRIAL', 'U33'),
( 'A34','MA ISABEL CRISTINA CARDENAS SALAZAR','SALAZAR@LEON.TECNM.MX','4773330000','ELECTROMECANICA', 'U34'),
( 'A35','ALMA DIONICIO GUERRERO CANO','CANO@LEON.TECNM.MX','4773330000','MECATRONICA', 'U35'),
( 'A36','JORGE DANIEL MORENO GOMEZ','MORENO@LEON.TECNM.MX','4773330000','MECATRONICA', 'U36'),
( 'A37','GUSTAVO ADOLFO RODRIGUEZ MUÑOZ','RODRIGUEZ@LEON.TECNM.MX','4773330000','MECATRONICA', 'U37'),
( 'A38','LAURA ESTELA LOPEZ VELA','VELA@LEON.TECNM.MX','4773330000','MECATRONICA', 'U38'),
( 'A39','SANDRA JAQUELINE LOPEZ CERVERA','CERVERA@LEON.TECNM.MX','4773330000','SISTEMAS COMPUTACIONALES', 'U39'),
( 'A40','LUZ DEL CARMEN RUIZ GAYTAN','GAYTAN@LEON.TECNM.MX','4773330000','TECNOLOGIAS DE LA INFORMACIÓN', 'U40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `IDMATERIA` varchar(10) NOT NULL,
  `NOMBREMATERIA` varchar(50) NOT NULL,
  `SEMESTRE` varchar(50) NOT NULL,
  `CREDITOS` varchar(20) NOT NULL,
  `HT` varchar(20) NOT NULL,
  `HP` varchar(20) NOT NULL,
  `IDCARRERA` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`IDMATERIA`, `NOMBREMATERIA`, `SEMESTRE`, `CREDITOS`, `HT`, `HP`, `IDCARRERA`) VALUES
('ACF0901', 'Calculo Diferencial', '1', '5', '3', '2', ''),
('AED1026', 'Estructura de datos', '3', '5', '2', '3', ''),
('SCF1006', 'Fisica General', '3', '5', '3', '2', ''),
('SCC1017', 'Metodos numericos', '4', '4', '2', '2', ''),
('SCA1025', 'Taller de base de datos', '5', '4', '1', '3', ''),
('SCD1027', 'TOPICOS AVANZADOS DE PROGRAMACIÓN', '4', '5', '3', '2', ''),
('ACA0907', 'TALLER DE ETICA', '1', '4', '2', '2', ''),
('AEC1058', 'QUIMICA', '1', '4', '2', '2', ''),
('EME1012', 'ESTATICA', '2', '4', '2', '2', ''),
('AEF1390', 'DIBUJO ELECTROMECANICO', '2', '5', '3', '2', ''),
('GEC0905', 'DESARROLLO HUMANO', '1', '4', '2', '2', ''),
('GED0901', 'COSTOS EMPRESARIALES', '3', '5', '3', '2', ''),
('AEC1018', 'ECONOMIA', '1', '4', '2', '2', ''),
('LOC0903', 'CADENA DE SUMINISTROS', '2', '4', '2', '2', ''),
('AEC1047', 'METROLOGIA Y NORMALIZACION', '2', '4', '2', '2', ''),
('EMJ1021', 'MECANICA DE MATERIALES', '3', '6', '3', '3', ''),
('EME1008', 'DINAMICA', '3', '4', '2', '2', ''),
('EME1020', 'MECANICA DE FLUIDOS', '4', '4', '2', '2', ''),
('AED1026', 'ESTRUCTURA DE DATOS', '3', '5', '2', '3', ''),
('SCC1017', 'METODOS NUMERICOS', '4', '4', '2', '2', ''),
('SCD1021', 'REDES DE COMPUTADORAS', '6', '5', '2', '3', ''),
('AEB1055', 'PROGRAMACION WEB', '8', '5', '3', '2', ''),
('DAD1402', 'DESARROLLLO DE APP EMPRESARIALES', '8', '5', '3', '2', ''),
('AEB1055', 'PROGRAMACION WEB', '8', '5', '2', '3', '');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IDUSUARIO` varchar(50) NOT NULL,
  `USUARIO` varchar(50) NOT NULL,
  `CONTRASENA` varchar(50) NOT NULL,
  `TIPO` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IDUSUARIO`, `USUARIO`, `CONTRASENA`, `TIPO`) VALUES
('U1', 'suarez.gomez', '1234', 3),
('U2', 'domingo.ornelas', '1234', 3),
('U3', 'militza.prado', '1234', 3),
('U4', 'antonio.reyes', '1234', 2),
('U5', 'Beka.admin', '1234', 1),
('U6', 'tapia', '1234', 3),
("U5", 'infante.medina', '1334', 3),
("U6", 'veronica.tapia', '1334', 3),

("U7", 'rolando.becerra', '1334',  2),

("U8", 'elizabeth.nolasco', '1334',  3),

("U9", 'flor.karina', '1334', 2),

("U10", 'ruben.trujillo', '1334', 2),

("U11", 'sergio.ruiz', '1334', 3),

("U13", 'cirino.silva', '1334', 3),

("U13", 'joel.rico', '1334', 2),

("U14", 'alfredo.gasca', '1334', 3),

("U15", 'jose.calderon', '1334', 3),

("U16", 'nila.reyes', '1334', 3),

("U17", 'angeles.castro', '1334', 3),

("U18", 'ismael.razo', '1334', 3),

("U19", 'hilda.mares', '1334', 3),

("U20", 'edurne.macias', '1334', 2),

("U21", 'noemi.granados', '1334', 3),

("U22", 'beatriz.nava', '1334', 3),

("U23", 'silvia.macias', '1334', 3),

("U24", 'ma.solis', '1334', 3),

("U26", 'adolfo.gamiño', '1334', 3),

("U27", 'ana.zurita', '1334', 3),

("U28", 'carlos.aguilera', '1334', 3),

("U29", 'felix.rocha', '1334', 3),

("U30", 'felipe.ortega', '1334', 3),

("U31", 'antonio.lona', '1334', 2),

("U32", 'juan.paz', '1334', 3),

("U33", 'felipe.moreno', '1334', 3),

("U34", 'isabel.cardenas', '1334', 3),

("U35", 'alma.cano', '1334', 3),

("U36", 'jorge.gomez', '1334', 3),

("U37", 'adolfo.muñoz', '1334', 3),

("U38", 'laura.vela', '1334', 3),

("U39", 'sandra.lopez', '1334', 3),

("U40", 'luz.ruiz', '1334', 3);


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`IDCARRERA`),
  ADD KEY `FK_IDMAESTRO` (`IDMAESTRO`);

--
-- Indices de la tabla `carreramaestro`
--
ALTER TABLE `carreramaestro`
  ADD KEY `FK_IDCARRERA` (`IDCARRERA`),
  ADD KEY `FK_IDMAESTRO` (`IDMAESTRO`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`IDGRUPO`),
  ADD KEY `FK_MATERIA` (`IDMATERIA`),
  ADD KEY `FK_MAESTRO` (`IDMAESTRO`),
  ADD KEY `FK_CARRERA` (`IDCARRERA`);

--
-- Indices de la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`IDMAESTRO`),
  ADD KEY `FK_IDUSUARIO` (`IDUSUARIO`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`IDMATERIA`),
  ADD KEY `FK_IDCARRERA` (`IDCARRERA`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IDUSUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
