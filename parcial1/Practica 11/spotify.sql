-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2025 a las 02:20:48
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistacanciones`
--

CREATE TABLE `artistacanciones` (
  `ID` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistacanciones`
--

INSERT INTO `artistacanciones` (`ID`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 9, 42),
(43, 9, 43),
(44, 9, 44),
(45, 9, 45),
(46, 10, 46),
(47, 10, 47),
(48, 10, 48),
(49, 10, 49),
(50, 10, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`ID`, `nombre`, `descripcion`) VALUES
(1, 'Billie Eilish', 'Billie Eilish Pirate Baird O\'Connell, conocida simplemente como Billie Eilish, es una cantante, compositora y productora musical estadounidense.'),
(2, 'Harry Styles\r\n', 'Harry Edward Styles es un cantante, compositor y actor británico. Inició su carrera como cantante en 2010 como integrante de la boy band One Direction'),
(3, 'Korn', 'Korn es una banda estadounidense de nu metal de Bakersfield, formada originalmente en 1993 por James «Munky» Shaffer, Reginald «Fieldy» Arvizu y David Silveria, quienes eran miembros de la banda L.A.P.D.'),
(4, 'System of a Down', 'System of a Down es una banda armenio-estadounidense de heavy metal, formada en 1994 en Glendale, California.​'),
(5, 'Guns N\' Roses', 'Guns N\' Roses es una banda estadounidense de hard rock formada en Hollywood, Los Ángeles, en la zona de Sunset Strip, en 1985. El grupo musical fue fundado por el vocalista y pianista Axl Rose y el guitarrista Izzy Stradlin.​​'),
(6, 'The Beatles', 'The Beatles, más conocidos en el mundo hispano como Los Beatles, fue una banda británica de rock formada en Liverpool durante los años 1960. Son considerados uno de los iconos culturales más grandes del siglo XX.'),
(7, 'Daddy Yankee', 'Ramón Luis Ayala Rodríguez ​​ conocido artísticamente como Daddy Yankee, es un cantante, compositor, productor discográfico, filántropo, locutor de radio​ y empresario puertorriqueño.'),
(8, 'J Balvin', 'José Álvaro Osorio Balvin, más conocido por su nombre artístico J Balvin, es un cantante y productor colombiano. Es reconocido como uno de los artistas latinos más exitosos del mundo, con ventas de treinta y cinco millones de álbumes y sencillos a nivel mundial.'),
(9, 'Los Ángeles Azules', 'Los Ángeles Azules es un grupo musical mexicano del género de cumbia, originario de la Ciudad de México.​ Se fundó inicialmente por cuatro de ocho hermanos conocidos como la Familia Mejía Avante, en el año 1976, y está activo oficialmente desde el año 1980.'),
(10, 'La Sonora Santanera', 'La Sonora Santanera es un grupo musical especializo en el género tropical, originario de Ciudad de México en 1955.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`ID`, `Nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'bad guy', 1, '00:03:14', '2019-03-29', 1, 'bad_guy.jpg'),
(2, 'bury a friend\r\n', 1, '00:03:13', '2019-01-30', 1, 'bury_a_friend.jpg'),
(3, 'Happier Than Ever', 1, '00:04:58', '2021-07-30', 1, 'happier_than_ever.jpg'),
(4, 'Therefore I Am', 1, '00:02:54', '2020-11-12', 1, 'therefore_i_am.jpg'),
(5, 'Ocean Eyes', 1, '00:03:20', '2016-11-18', 1, 'ocean_eyes.jpg'),
(6, 'Sign of the Times', 1, '00:05:40', '2017-04-07', 1, 'sign_of_the_times.jpg'),
(7, 'Watermelon Sugar', 1, '00:02:54', '2019-11-16', 1, 'watermelon_sugar.jpg'),
(8, 'Adore You', 1, '00:03:27', '2019-12-06', 1, 'adore_you.jpg'),
(9, 'Lights Up', 1, '00:02:52', '2019-10-11', 1, 'lights_up.jpg'),
(10, 'Golden', 1, '00:03:28', '2020-10-23', 1, 'golden.jpg'),
(11, 'Freak on a Leash', 2, '00:04:15', '1999-01-18', 1, 'freak_on_a_leash.jpg'),
(12, 'Got the Life', 2, '00:03:45', '1998-11-06', 1, 'got_the_life.jpg'),
(13, 'Falling Away from Me', 2, '00:04:30', '1999-11-09', 1, 'falling_away_from_me.jpg'),
(14, 'Twisted Transistor', 2, '00:03:08', '2005-09-27', 1, 'twisted_transistor.jpg'),
(15, 'Coming Undone', 2, '00:03:19', '2006-02-13', 1, 'coming_undone.jpg'),
(16, 'Chop Suey!', 2, '00:03:30', '2001-08-13', 1, 'chop_suey.jpg'),
(17, 'Toxicity', 2, '00:03:39', '2002-01-22', 1, 'toxicity.jpg'),
(18, 'B.Y.O.B.', 2, '00:04:15', '2005-03-28', 1, 'byob.jpg'),
(19, 'Aerials', 2, '00:03:55', '2002-06-11', 1, 'aerials.jpg'),
(20, 'Sugar', 2, '00:02:34', '1998-05-24', 1, 'sugar.jpg'),
(21, 'Sweet Child o\' Mine', 3, '00:05:56', '1988-08-17', 1, 'sweet_child_o_mine.jpg'),
(22, 'Welcome to the Jungle', 3, '00:04:33', '1987-09-28', 1, 'welcome_to_the_jungle.jpg'),
(23, 'November Rain', 3, '00:08:57', '1992-02-18', 1, 'november_rain.jpg'),
(24, 'Paradise City', 3, '00:06:46', '1989-01-10', 1, 'paradise_city.jpg'),
(25, 'Don\'t Cry', 3, '00:04:44', '1991-09-17', 1, 'dont_cry.jpg'),
(26, 'Hey Jude', 3, '00:07:11', '1968-08-26', 1, 'hey_jude.jpg'),
(27, 'Come Together', 3, '00:04:20', '1969-09-26', 1, 'come_together.jpg'),
(28, 'Let It Be', 3, '00:04:03', '1970-03-06', 1, 'let_it_be.jpg'),
(29, 'Yesterday', 3, '00:02:05', '1965-09-13', 1, 'yesterday.jpg'),
(30, 'Something', 3, '00:03:03', '1969-10-06', 1, 'something.jpg'),
(31, 'Gasolina', 4, '00:03:13', '2004-05-03', 1, 'gasolina.jpg'),
(32, 'Dura', 4, '00:03:30', '2018-01-18', 1, 'dura.jpg'),
(33, 'Lo Que Pasó, Pasó', 4, '00:03:51', '2004-06-01', 1, 'lo_que_paso_paso.jpg'),
(34, 'Ella Me Levantó', 4, '00:03:47', '2017-04-21', 1, 'ella_me_levanto.jpg'),
(35, 'Con Calma', 4, '00:03:20', '2019-01-24', 1, 'con_calma.jpg'),
(36, 'Mi Gente', 4, '00:03:06', '2017-06-30', 1, 'mi_gente.jpg'),
(37, 'Ginza', 4, '00:03:21', '2015-07-10', 1, 'ginza.jpg'),
(38, 'Safari', 4, '00:03:17', '2016-11-18', 1, 'safari.jpg'),
(39, 'X (Equis)', 4, '00:03:25', '2018-03-30', 1, 'x_equis.jpg'),
(40, 'Que Calor', 4, '00:03:11', '2019-03-15', 1, 'que_calor.jpg'),
(41, 'Cómo Te Voy a Olvidar', 5, '00:04:35', '1996-01-01', 1, 'como_te_voy_a_olvidar.jpg'),
(42, '17 Años', 5, '00:04:02', '1995-01-01', 1, '17_anos.jpg'),
(43, 'La Cumbia del Infinito', 5, '00:04:17', '2018-09-14', 1, 'la_cumbia_del_infinito.jpg'),
(44, 'Nunca Es Suficiente (con Natalia Lafourcade)', 5, '00:04:20', '2018-03-02', 1, 'nunca_es_suficiente.jpg'),
(45, 'El Listón de Tu Pelo', 5, '00:03:58', '1997-01-01', 1, 'el_liston_de_tu_pelo.jpg'),
(46, 'La Culebra', 5, '00:03:10', '1955-01-01', 1, 'la_culebra.jpg'),
(47, 'Sopa de caracol', 5, '00:03:18', '1990-01-01', 1, 'sopa_de_caracol.jpg'),
(48, 'El Baile del Perrito', 5, '00:04:05', '1992-01-01', 1, 'el_baile_del_perrito.jpg'),
(49, 'Que Bonita Es Mi Tierra', 5, '00:03:50', '1958-01-01', 1, 'que_bonita_es_mi_tierra.jpg'),
(50, 'Juana la Cubana', 5, '00:02:48', '1965-01-01', 1, 'juana_la_cubana.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`ID`, `Nombre`) VALUES
(1, 'Pop'),
(2, 'Metal'),
(3, 'Rock'),
(4, 'Reguetón'),
(5, 'Cumbia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`ID`, `descripcion`, `precio`) VALUES
(1, 'Gratis, escucha música con anuncios, sin opción de descarga y con reproducción aleatoria en móvil.', 0),
(2, 'Premium Individual, música sin anuncios, con descargas y reproducción en cualquier orden.', 129),
(3, 'Premium Duo, dos cuentas Premium para personas que viven juntas, con una playlist compartida (Duo Mi', 169),
(4, 'Premium Familiar, hasta seis cuentas Premium para una familia en el mismo hogar, con Spotify Kids y ', 199),
(5, 'Premium Estudiantes, descuento especial para universitarios, con los mismos beneficios que el plan I', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `ID` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'José David López', 'Jodav1818@gmail.com', 1),
(2, 'Emiliano López Sánchez', 'EmilianoelproXD@gmail.com', 2),
(3, 'Paolo Nicholas De Luque', 'PaoloNiko@gmail.com', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  ADD CONSTRAINT `artistacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`ID`),
  ADD CONSTRAINT `artistacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`ID`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`ID`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`ID`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
