-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2024 a las 05:57:27
-- Versión del servidor: 10.4.17-MariaDB-log
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `globalweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `lastName` varchar(40) CHARACTER SET utf8 NOT NULL,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_productos`
--

CREATE TABLE `bitacora_productos` (
  `Fecha` date NOT NULL,
  `Sentencia` varchar(255) NOT NULL,
  `Contrasentencia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacora_productos`
--

INSERT INTO `bitacora_productos` (`Fecha`, `Sentencia`, `Contrasentencia`) VALUES
('2023-11-29', 'INSERT INTO jewelry (productName,price,description) VALUES (\'anilllo\', \'300.00\', anillo rojo);', 'DELETE FROM jewelry WHERE productName = anilllo'),
('2023-11-29', 'INSERT INTO jewelry (productName,price,description) VALUES (\'anillo\', \'100.00\', anillo rojo);', 'DELETE FROM jewelry WHERE productName = anillo'),
('2023-11-29', 'DELETE FROM jewelry WHERE productName = anilllo', 'INSERT INTO jewelry (productName,price,description) VALUES (\'anilllo\', \'300.00\', anillo rojo);anilllo'),
('2023-11-29', 'INSERT INTO jewelry (productName,price,description) VALUES (\'anillo\', \'100.00\', anillo dorado con piedra roja);', 'DELETE FROM jewelry WHERE productName = anillo'),
('2023-11-29', 'UPDATE jewelry SET productName = \'anillo\',price = 100.00\',description=\'anillo dorado con piedra roja\';', 'DELETE FROM jewelry WHERE productName = anillo'),
('2023-11-29', 'DELETE FROM jewelry WHERE productName = anillo reloj', 'INSERT INTO jewelry (productName,price,description) VALUES (\'anillo reloj\', \'1000.00\', anillo dorado con un reloj funcional diminuto);anillo reloj'),
('2023-12-06', 'INSERT INTO jewelry (productName,price,description) VALUES (\'prueba\', \'100.00\', prueba);', 'DELETE FROM jewelry WHERE productName = prueba'),
('2023-12-06', 'DELETE FROM jewelry WHERE productName = prueba', 'INSERT INTO jewelry (productName,price,description) VALUES (\'prueba\', \'100.00\', prueba);prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_usuarios`
--

CREATE TABLE `bitacora_usuarios` (
  `Fecha` date NOT NULL,
  `Sentencia` varchar(255) NOT NULL,
  `Contrasentencia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacora_usuarios`
--

INSERT INTO `bitacora_usuarios` (`Fecha`, `Sentencia`, `Contrasentencia`) VALUES
('2023-12-04', 'INSERT INTO users (name,phone,email) VALUES (\'saloc3\', \'12369\', saloc2@saloc2.com);', 'DELETE FROM users WHERE email = saloc2@saloc2.com'),
('2023-12-04', 'DELETE FROM users WHERE email = saloc2@saloc2.com', 'INSERT INTO users (name,phone,email) VALUES (\'saloc3\', \'12369\', saloc2@saloc2.com);saloc3'),
('2023-12-04', 'UPDATE users SET name = \'Saloc\',phone = 12345\',email=\'saloc2204@gmail.com\';', 'DELETE FROM users WHERE name = Saloc'),
('2023-12-06', 'INSERT INTO users (name,phone,email) VALUES (\'cualquiera\', \'12345\', cualquiera@cualquiera.com);', 'DELETE FROM users WHERE email = cualquiera@cualquiera.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clothes`
--

CREATE TABLE `clothes` (
  `productName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ProductAmount` int(11) NOT NULL,
  `sizes` varchar(60) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clothes`
--

INSERT INTO `clothes` (`productName`, `price`, `ProductAmount`, `sizes`, `date`, `description`, `image`) VALUES
('blusa blanca', 400.00, 5, ' S M L', '2023-11-24 05:43:11', 'blusa blanca de lana con detalles negros', '656037efa9b037.11449716.jpg'),
('blusa vino', 300.00, 4, ' XS S M', '2023-11-24 06:42:15', 'blusa color vino con textura', '656045c79875b7.01225903.jpg'),
('blazer cafe', 800.00, 3, ' XS M L', '2023-11-24 05:44:58', 'blazer cafe con tela estampada ', '6560385a45b849.04313250.jpg'),
('borrar', 200.00, 1, ' XS S', '2023-12-06 18:45:14', 'borrar', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jewelry`
--

CREATE TABLE `jewelry` (
  `productName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ProductAmount` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jewelry`
--

INSERT INTO `jewelry` (`productName`, `price`, `ProductAmount`, `date`, `description`, `image`) VALUES
('artes pavorreal ', 800.00, 3, '2023-11-23 23:46:58', 'aretes dorados con la figura de un pavorreal ', '656038d2bf2983.06209774.jpg'),
('anillo de olivo', 900.00, 5, '2023-11-23 23:47:50', 'anillo con la forma de una corona de olivo y laure', '65603906b111d1.89844127.jpg'),
('anillo', 100.00, 2, '2023-11-29 19:45:53', 'anillo dorado con piedra roja', '6567e951f2fcd6.92663851.jpg');

--
-- Disparadores `jewelry`
--
DELIMITER $$
CREATE TRIGGER `bitacora_productoDelete` AFTER DELETE ON `jewelry` FOR EACH ROW BEGIN
                INSERT INTO bitacora_productos (Fecha, Sentencia, Contrasentencia)
                VALUES (NOW(), 
                        CONCAT('DELETE FROM jewelry WHERE productName = ', OLD.productName),
                        CONCAT('INSERT INTO jewelry (productName,price,description) VALUES (''', OLD.productName, ''', ''', OLD.price, ''', ', OLD.description, ');', OLD.productName)
                );
                    IF ROW_COUNT() = 0 THEN
                        SIGNAL SQLSTATE '45000'
                        SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_productoDelete';
                    END IF;
                END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_productoUPDATE` AFTER UPDATE ON `jewelry` FOR EACH ROW BEGIN
                INSERT INTO bitacora_productos (Fecha, Sentencia, Contrasentencia)
                VALUES (NOW(), 
                        CONCAT('UPDATE jewelry SET productName = ''',NEW.productName, ''',price = ',NEW.price,''',description=''',NEW.description,''';'),
                        CONCAT('DELETE FROM jewelry WHERE productName = ', NEW.productName)
                );
                    IF ROW_COUNT() = 0 THEN
                        SIGNAL SQLSTATE '45000'
                        SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_productoUPDATE';
                    END IF;
                END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_productos` AFTER INSERT ON `jewelry` FOR EACH ROW BEGIN
                        INSERT INTO bitacora_productos (Fecha, Sentencia, Contrasentencia)
                        VALUES (NOW(), 
                                CONCAT('INSERT INTO jewelry (productName,price,description) VALUES (''', NEW.productName, ''', ''', NEW.price, ''', ', NEW.description, ');'),
                                CONCAT('DELETE FROM jewelry WHERE productName = ', NEW.productName)
                        );
                            IF ROW_COUNT() = 0 THEN
                                SIGNAL SQLSTATE '45000'
                                SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_producto';
                            END IF;
                        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `productName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `amount` int(20) NOT NULL,
  `sizes` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `costumerUser` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`productName`, `amount`, `sizes`, `price`, `costumerUser`, `date`, `image`, `type`) VALUES
('blusa vino', 1, 'XS', 300.00, 'a22110109@ceti.mx', '2023-12-03 23:13:47', '656045c79875b7.01225903.jpg', 'Clothes'),
('tacón café', 1, '22', 800.00, 'a22110109@ceti.mx', '2023-12-03 23:13:57', '655f5c36d73729.87681074.jpg', 'Shoes'),
('tacón café', 1, '22.5', 800.00, 'rsantana@ceti.mx', '2023-12-06 12:49:20', '655f5c36d73729.87681074.jpg', 'Shoes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shoes`
--

CREATE TABLE `shoes` (
  `productName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ProductAmount` int(11) NOT NULL,
  `sizes` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `shoes`
--

INSERT INTO `shoes` (`productName`, `price`, `ProductAmount`, `sizes`, `date`, `description`, `image`) VALUES
('tacón café', 800.00, 10, ' 22 22.5 23 24', '2023-11-23 08:05:42', 'tacón de látex color café', '655f5c36d73729.87681074.jpg'),
('zapatos de cuero', 700.00, 12, ' 22 22.5 23 23.5', '2023-11-23 08:07:14', 'tacones de cuero color café con detalles en tela d', '655f5c92bceb58.82971798.jpg'),
('zapato con medalla', 1000.00, 11, ' 22 22.5 23 23.5 24', '2023-11-23 08:08:37', 'zapato de piel con medalla de color dorado', '655f5ce5da0437.04976756.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `name` varchar(30) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `addressStreet` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`name`, `lastname`, `email`, `phone`, `password`, `state`, `addressStreet`, `city`, `admin`) VALUES
('david', 'monroy', 'a18100616@ceti.mx', 2147483647, '$2y$05$2HrIgH8QPOTMHH3M/OhOCu/qldEda7JMOg3n.r0GkRXZp3FmRnIMe', 'jalisco', 'pelicano', 'guadalajara', 1),
('joshua', 'salcedo', 'a22110109@ceti.mx', 2147483647, '$2y$05$djWPtetEol2ct4zAvP4HMukqtPhyqDCvGgqcDem7.Fx9fHcD1IvZC', 'jalisco', 'ruisenor', 'guadalajara', 0),
('rosita', 'santana', 'rsantana@ceti.mx', 3312456, '$2y$05$.sQ8cpYpwmB38nl6AlbhHutp71cXPIqFtavRz8/SvmRuxlIFVCu5m', 'jalisco', 'ninguno', 'guadalajara', 0),
('Saloc', 'saloc', 'saloc2204@gmail.com', 12345, '$2y$05$Zq100.qHX8EbyJUSDk.XuOEAS0NE5p3kjNEwtQ15WpoqLiRB1IOMi', 'jalisco', 'ninguno', 'ninguno', 0),
('cualquiera', 'cualquiera', 'cualquiera@cualquiera.com', 12345, '$2y$05$MdnXl7/aMcnfr8wrMDJEZ.WhBu5rolGCzhubOA.Jj7Q6qo8jivlZa', 'cualquiera', 'cualquiera', 'cualquiera', 0);

--
-- Disparadores `users`
--
DELIMITER $$
CREATE TRIGGER `bitacora_usuarios` AFTER INSERT ON `users` FOR EACH ROW BEGIN
                        INSERT INTO bitacora_usuarios (Fecha, Sentencia, Contrasentencia)
                        VALUES (NOW(), 
                                CONCAT('INSERT INTO users (name,phone,email) VALUES (''', NEW.name, ''', ''', NEW.phone, ''', ', NEW.email, ');'),
                                CONCAT('DELETE FROM users WHERE email = ', NEW.email)
                        );
                            IF ROW_COUNT() = 0 THEN
                                SIGNAL SQLSTATE '45000'
                                SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_producto';
                            END IF;
                        END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_usuariosDelete` AFTER DELETE ON `users` FOR EACH ROW BEGIN
                INSERT INTO bitacora_usuarios (Fecha, Sentencia, Contrasentencia)
                VALUES (NOW(), 
                        CONCAT('DELETE FROM users WHERE email = ', OLD.email),
                        CONCAT('INSERT INTO users (name,phone,email) VALUES (''', OLD.name, ''', ''', OLD.phone, ''', ', OLD.email, ');', OLD.name)
                );
                    IF ROW_COUNT() = 0 THEN
                        SIGNAL SQLSTATE '45000'
                        SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_productoDelete';
                    END IF;
                END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_usuariosUPDATE` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
                INSERT INTO bitacora_usuarios (Fecha, Sentencia, Contrasentencia)
                VALUES (NOW(), 
                        CONCAT('UPDATE users SET name = ''',NEW.name, ''',phone = ',NEW.phone,''',email=''',NEW.email,''';'),
                        CONCAT('DELETE FROM users WHERE name = ', NEW.name)
                );
                    IF ROW_COUNT() = 0 THEN
                        SIGNAL SQLSTATE '45000'
                        SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_productoUPDATE';
                    END IF;
                END
$$
DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
