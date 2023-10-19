-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 19-10-2023 a las 19:30:32
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 17:21:18', '08-10-2023 01:03:28 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Plantas', 'Explore nuestra variedad de plantas cuidadosamente seleccionadas, desde suculentas vibrantes hasta exquisitas orquídeas. Encuentre la combinación perfecta de verdor para su espacio y descubra consejos prácticos para el cuidado de estas maravillas naturales.', '2023-10-09 18:02:12', NULL),
(8, 'Macetas', 'Descubra un mundo de estilo y funcionalidad con nuestra variedad de macetas. Desde diseños modernos hasta opciones clásicas, nuestra categoría le brinda la oportunidad de realzar sus plantas con elegancia. Encuentre la maceta perfecta para complementar su espacio y elevar su experiencia de jardinería.', '2023-10-09 18:05:55', NULL),
(9, 'Herramientas de jardín', 'Equípese para el éxito en su espacio verde con nuestra selección de herramientas especializadas. Desde podadoras precisas hasta rastrillos resistentes, nuestra categoría ofrece las herramientas esenciales para cultivar y mantener un jardín exuberante. Explore calidad y funcionalidad que harán florecer su pasión por la jardinería.', '2023-10-09 18:06:51', '13-10-2023 06:12:38 AM'),
(11, 'Riego', ' Explore nuestra categoría dedicada a todo lo relacionado con el riego eficiente de sus plantas. Encuentre desde sistemas de riego automáticos hasta regaderas especializadas, asegurando que sus plantas reciban la cantidad justa de agua para florecer. Descubra soluciones que simplifican el cuidado de su jardín y promueven un crecimiento saludable.', '2023-10-09 18:31:01', NULL),
(12, 'Fertilizante y abonos', 'Nutra su jardín con nuestra selección de productos especializados. Desde fertilizantes equilibrados hasta abonos orgánicos, nuestra categoría está diseñada para maximizar el crecimiento y la vitalidad de sus plantas. Descubra fórmulas nutritivas que promueven un suelo saludable y flores exuberantes, proporcionando los elementos esenciales para un jardín próspero.', '2023-10-09 18:31:55', NULL),
(13, 'Decoraciones', ' Dale vida a tu espacio exterior con nuestra encantadora colección de decoración para jardín. Desde estatuas y fuentes hasta luces decorativas, nuestra categoría te invita a transformar tu jardín en un oasis de estilo y serenidad. Explora opciones creativas para añadir un toque personal a tu entorno al aire libre y crear un espacio encantador y acogedor.', '2023-10-09 18:32:36', '13-10-2023 06:12:00 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 20:32:57', 'COD', 'En progreso'),
(3, 1, '4', 1, '2017-03-10 20:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 17:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 20:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 20:21:38', 'COD', NULL),
(7, 1, '1', 1, '2023-10-07 20:40:00', 'Debit / Credit card', NULL),
(8, 1, '1', 1, '2023-10-07 20:40:14', 'Debit / Credit card', NULL),
(9, 1, '3', 1, '2023-10-07 20:43:06', 'COD', NULL),
(10, 1, '2', 1, '2023-10-07 20:45:15', 'Debit / Credit card', NULL),
(11, 1, '2', 1, '2023-10-08 05:38:16', 'Debit / Credit card', NULL),
(12, 4, '24', 2, '2023-10-10 00:06:11', 'Paypal', NULL),
(13, 4, '24', 2, '2023-10-10 00:29:08', NULL, NULL),
(14, 1, '26', 1, '2023-10-12 21:24:45', 'Paypal', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 20:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 20:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 20:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 20:50:36'),
(5, 1, 'En progreso', 'Producto entregado', '2023-10-08 05:30:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 21:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 21:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 21:59:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(24, 7, 18, 'Alheli', 'Vivero alegría en la zona de imi', 59, 59, '<span style=\"font-family: arial, sans-serif; background-color: rgb(255, 255, 255);\"><font color=\"#000000\" style=\"\" size=\"4\"><b>Planta de jardín de hojas alargadas.</b></font></span><div><span style=\"font-family: arial, sans-serif; background-color: rgb(255, 255, 255);\"><font color=\"#000000\" style=\"\" size=\"3\"><br></font></span></div><div><ul><li><span style=\"font-family: arial, sans-serif; background-color: rgb(255, 255, 255);\"><font color=\"#000000\" style=\"\" size=\"3\">De color verde blanquecino, flores agrupadas en ramilletes terminales y fruto en cápsula de dos valvas.</font></span></li></ul></div>', 'Alheli.png', 'Alheli.png', 'Alheli.png', 20, 'Disponible', '2023-10-09 22:48:01', NULL),
(25, 7, 16, 'Azalea', 'Vivero Mar Shelly', 79, 79, '<font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\" size=\"4\"><span style=\"font-family: arial, sans-serif;\">Planta&nbsp;</span><span style=\"font-weight: bold; font-family: arial, sans-serif;\">Azalea</span><span style=\"font-family: arial, sans-serif;\">&nbsp;de 6 pulgadas&nbsp;</span></font><br><div><font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\" size=\"4\"><span style=\"font-family: arial, sans-serif;\"><br></span></font></div><div><ul><li><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\">Las azaleas florecen a lo largo de toda la primavera y sus flores pueden durar&nbsp;</span><span style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\">unas pocas semanas</span><span style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\">&nbsp;(en mayo y junio en el hemisferio norte, y en diciembre y enero en el hemisferio sur).</span></font></span></li></ul></div>', 'azalea.png', 'azalea.png', 'azalea.png', 50, 'Disponible', '2023-10-09 22:54:40', NULL),
(26, 8, 39, 'MACETA DE BARRO DE 6 PULGADAS NARANJA', 'Vivero Jireh en la zona de imi', 79, 79, '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><font size=\"4\"><b>Maceta piña de 6 pulgadas naranja.</b></font></span><div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><br></span></div><div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><font size=\"3\">Su tamaño es excelente para plantas pequeñas con raíces cortas. Cuenta con un orificio inferior que ayuda a drenar el exceso de agua evitando que las raíces y la tierra se pudran, su acabado con textura de líneas brinda un toque de decoración distintivo. Está fabricada con barro natural, la porosidad de este material permite el libre paso del aire y transpiración de la tierra.</font></span><br></div>', 'barro1.png', 'barro1.png', 'barro1.png', 0, 'Disponible', '2023-10-09 23:00:28', NULL),
(27, 8, 23, 'MACETA PLÁSTICA 8\"', 'Vivero Xamantún', 85, 85, '<div id=\"product_longdescription_27351\" class=\"product_longdescription\" style=\"margin-bottom: 30px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><font size=\"4\" style=\"\" color=\"#000000\"><b>Maceta plástica 8\".&nbsp;</b></font></div><div id=\"product_longdescription_27351\" class=\"product_longdescription\" style=\"margin-bottom: 30px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><font size=\"3\">Cada pieza está diseñada para cualquier espacio de tu jardín. Un platillo adjunto resulta útil para uso en interiores y es fácilmente desmontable.</font></div><div><br></div><p id=\"legal_storePrice\" class=\"legal_storePrice\" style=\"margin-top: 5px; padding: 0px; font-size: 11px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"></p><div id=\"contentRecommendationWidget_7_-2000_3074457345618325079\" class=\"contentRecommendationWidget\" style=\"position: relative; z-index: 99; clear: both; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 0px !important;\"><div id=\"ci_espot_3074457345618325079_Widget_ContentRecommendation_701_3074457345618325079\"><div class=\"left_espot\" style=\"position: relative; z-index: 0;\"><div id=\"infoFeedbackPDP\" style=\"position: static;\"></div></div></div></div>', '102050.jpg', '102050.jpg', '102050.jpg', 20, 'Disponible', '2023-10-09 23:05:21', NULL),
(28, 7, 18, 'GIRASOL 5\"', 'Vivero la millonaria en la zona de San Arturo', 89, 89, '<div id=\"product_longdescription_43282\" class=\"product_longdescription\" style=\"margin-bottom: 30px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><font size=\"4\"><b>Hermosa planta de flores vistosas.&nbsp;</b></font></div><div id=\"product_longdescription_43282\" class=\"product_longdescription\" style=\"margin-bottom: 30px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><font size=\"3\">Es originaria de América y pertenece a la familia Asteraceae. Una excelente opción para decoración de jardines y como centro de mesa en interiores iluminados. Necesita mucha luz solar, se recomienda mantenerla a temperaturas de entre 12 C y 32 C. Debe regarse de 3 a 4 veces por semana.</font></div><div><br></div><p id=\"legal_storePrice\" class=\"legal_storePrice\" style=\"margin-top: 5px; padding: 0px; font-size: 11px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"></p><div id=\"contentRecommendationWidget_7_-2000_3074457345618325079\" class=\"contentRecommendationWidget\" style=\"position: relative; z-index: 99; clear: both; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 0px !important;\"><div id=\"ci_espot_3074457345618325079_Widget_ContentRecommendation_701_3074457345618325079\"><div class=\"left_espot\" style=\"position: relative; z-index: 0;\"><div id=\"infoFeedbackPDP\" style=\"position: static;\"></div></div></div></div>', 'girasol.png', 'girasol.png', 'girasol.png', 50, 'Disponible', '2023-10-09 23:15:49', NULL),
(29, 7, 19, 'Albahaca fina', 'Vivero la millonaria en la zona de San Arturo', 89, 89, '<font size=\"3\"><span style=\"font-family: arial, sans-serif; background-color: rgb(255, 255, 255);\"><font color=\"#000000\" style=\"\"><b style=\"\">Ocimum basilicum</b>&nbsp;</font></span><span style=\"color: rgb(0, 0, 0); font-family: arial, sans-serif;\">es una hierba aromática anual de la familia de las lamiáceas nativa de las regiones tropicales de África Central y el sudeste asiático, que se cultiva desde hace milenios.? Es una planta tierna y se utiliza en cocinas de todo el mundo</span></font>', 'albahaca.png', 'albahaca2.webp', 'albahaca3.png', 20, 'Disponible', '2023-10-09 23:25:55', NULL),
(30, 7, 17, 'Cempasúchil', 'Vivero Mar Shelly', 50, 50, '<div class=\"\r\n            product-block\r\n            product-block--description\r\n            \r\n          \" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><div class=\"product-description rte\" data-product-description=\"\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); line-height: 1.625; margin: 0.5rem 0px;\"><span style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><font size=\"3\"><b style=\"\">La flor de cempasúchil </b>es una flor con un gran valor simbólico en México, especialmente en la celebración del Día de Muertos. Además de esto, la flor es también utilizada en el mundo de la jardinería por sus virtudes ornamentales. Debido a su popularidad y singularidad</font></span></div></div><div class=\"\r\n            product-block\r\n            product-block--form\r\n            \r\n          \" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><div class=\"product-form--regular\" data-product-form-regular=\"\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 1rem 0px;\"><div data-product-form-area=\"\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><form method=\"post\" action=\"https://clickabasto.com/cart/add\" id=\"product_form_6949315543103\" accept-charset=\"UTF-8\" class=\"\" enctype=\"multipart/form-data\" data-product-form=\"\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\"><font size=\"3\"><variant-selection class=\"variant-selection\" product-url=\"/products/flor-de-cempasuchil-manojo.js\" variant=\"39689572679743\" data-variant-selection=\"\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(29, 29, 29); font-family: &quot;Harmonia Sans&quot;, sans-serif;\"></variant-selection><span style=\"color: rgb(29, 29, 29); font-family: &quot;Harmonia Sans&quot;, sans-serif;\"></span></font><div class=\"product-form--atc\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 3.2rem; font-size: 0px; color: rgb(29, 29, 29); font-family: &quot;Harmonia Sans&quot;, sans-serif;\"><div class=\"product-form--atc-qty form-fields--qty\" data-quantity-wrapper=\"\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative; display: inline-block; vertical-align: middle; width: 7.1875rem;\"><div class=\"form-field form-field--qty-select\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative; opacity: 1; transition: opacity 150ms cubic-bezier(0.4, 0, 0.2, 1) 0s; z-index: 1; visibility: visible;\"></div></div></div></form></div></div></div>', 'cempa.png', 'cempa-3.jpg', 'cempa3.png', 20, 'Disponible', '2023-10-11 18:40:41', NULL),
(31, 7, 19, 'Lavanda', 'Vivero Jireh en la zona de imi', 35, 35, '<h1 class=\"ui-pdp-title\" style=\"box-sizing: border-box; line-height: 1.18; margin-right: 28px; margin-bottom: 8px; color: rgba(0, 0, 0, 0.9); hyphens: auto; padding: 0px; word-break: break-word; flex: 1 1 auto;\"><font face=\"arial\" style=\"\" size=\"4\">Planta Lavanda Natural 30 Cm</font></h1><div><font size=\"3\" face=\"arial\"><span style=\"color: rgb(102, 102, 102);\">La Lavanda es una de las plantas aromáticas por excelencia, perfecta para tener en casa. Los cuidados de la lavanda no son demasiado complicados y no solo nos proporcionan el placer de disfrutar de la belleza natural de esta planta sino, además, su mayor virtud: su peculiar e irresistible perfume. Se trata de un aroma que huele a verano, a naturaleza y a fuente de remedio medicinal natural.</span><br></font></div><div><font face=\"arial\" style=\"\" size=\"4\"><br></font></div><div><font face=\"arial\" style=\"\" size=\"4\"><br></font></div><div><font face=\"arial\" style=\"\" size=\"4\"><br></font></div>', 'lavanda.png', 'lavanda2.webp', 'lavanda3.png', 25, 'Disponible', '2023-10-11 18:50:20', NULL),
(32, 9, 27, 'Pala surtek 130239', 'Vivero Xamantún', 205, 205, '<span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">La herramienta de pala de jardín más fuerte del mercado</span><br><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Paleta de jardín de alta dureza, duradera, fácil de cavar tierra dura, aplastar el suelo duro, puede soportar una variedad de trabajos de escena de alta intensidad.</span><div><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Boquilla de pala en forma de V para moler, fácil de entrar en el suelo, más afilada que otras paletas del mercado.</span></div><div><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Nuevo tipo de funda de goma de resina envuelve el mango, diseño ergonómico, sensación cómoda al tacto y antideslizante</span><br><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">El mango está soldado sin costuras, con juntas de soldadura completas, sin grietas y duradero.</span><br></div>', 'pala3.png', 'pala3.png', 'pala3.png', 50, 'Disponible', '2023-10-11 18:59:03', NULL),
(33, 9, 28, 'Tijera SPDTECH', 'Vivero Jireh en la zona de imi', 89, 89, '<font size=\"3\">Tijeras de jardinería curvadas con hoja afilada de acero inoxidable para cortar flores, recortar plantas de patio, floristería, flores, hierbas, seto bonsái y frutas (mango verde)</font>', 'tij2.png', 'tij2.png', 'tij2.png', 50, 'Disponible', '2023-10-11 19:06:53', NULL),
(34, 7, 20, 'SEMILLA AGUILENA ESTRELLA No. H300', 'Vivero alegría en la zona de imi', 29, 29, '<span style=\"font-family: &quot;Open Sans&quot;, sans-serif;\"><font color=\"#000000\" style=\"\" size=\"3\">Semilla de aguileña estrella variada Víta, planta vivaz y de colores variados que da una flor muy especial. Su contenido rinde hasta 200 plantas que tienen un tiempo de germinación de 10 a 80 días.</font></span><br>', 'aguilena.jpg', 'aguilena.jpg', 'aguilena.jpg', 30, 'Disponible', '2023-10-12 19:50:32', NULL),
(35, 7, 17, 'Flor de calabaza', 'Vivero Mar Shelly', 50, 50, '<span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><font color=\"#000000\" style=\"\" size=\"3\">¡Descubre la exquisita flor de calabaza, una joya culinaria que deleitará tu paladar con su sabor único y delicado! Originaria de la tradición gastronómica mexicana, esta flor comestible es conocida por su textura tierna y su gusto suave, lo que la convierte en un ingrediente versátil para una variedad de platillos creativos.</font></span><br>', 'calabaza-1.png', 'calabaza-2.png', 'calabaza-3.jpg', 30, 'Disponible', '2023-10-12 19:53:48', NULL),
(36, 7, 17, 'Flor de izote', 'Vivero Xamantún', 45, 45, '<br><div><p style=\"border: 0px solid rgb(217, 217, 227); box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space-collapse: preserve;\"><font size=\"3\" style=\"background-color: rgb(255, 255, 255);\" color=\"#000000\">¡Explora la exquisita flor de izote y sumérgete en una experiencia culinaria llena de sabores auténticos y frescura inigualable! Originaria de América Central, la flor de izote, también conocida como yuca o flor de palma, es un ingrediente tradicional que añade un toque distintivo a tus platos.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space-collapse: preserve;\"><font size=\"3\" style=\"background-color: rgb(255, 255, 255);\" color=\"#000000\">Imagina darle vida a tus recetas con la delicadeza y suavidad de nuestras flores de izote. Con sus pétalos tiernos y sabor ligeramente herbal, estas flores son perfectas para una variedad de preparaciones culinarias creativas.</font></p></div>', 'izote-1.png', 'izote-2.png', 'izote-3.png', 25, 'Disponible', '2023-10-12 20:10:05', NULL),
(37, 7, 20, 'Semilla de cactus', 'Vivero Jireh en la zona de imi', 25, 25, '<br><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(255, 255, 255);\"><font color=\"#000000\" style=\"\">¡Embárcate en una aventura culinaria única con nuestras semillas de cactus! Provenientes de cactus cuidadosamente seleccionados, estas semillas son un tesoro culinario que añadirá un toque exótico y saludable a tus platillos.</font></span><br></div>', 'cactus.jpg', 'cactus.jpg', 'cactus.jpg', 20, 'Disponible', '2023-10-12 20:13:45', NULL),
(38, 11, 31, 'Truper PR-409', 'Vivero alegría en la zona de imi', 108, 120, '<font size=\"3\"><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\">Pistola para riego con cuerpo fabricado de plástico ABS y TPR.</span><br><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\">Accesorio para jardín con mango ergonómico con recubrimiento confort grip para mejor agarre en condici</span><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\">ones secas y húmedas.</span></font><br>', 'aspe3.png', 'aspe3.png', 'aspe3.png', 30, 'Disponible', '2023-10-12 20:18:41', NULL),
(39, 13, 36, 'Luces solares', 'Vivero Xamantún', 620, 620, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"3\">Paquete de 16 luces solares para caminos exteriores, luces solares para exteriores, impermeables, iluminación LED de acero inoxidable para jardines, luces solares para entrada, patio</font></span></h1>', 'antorcha-1.jpg', 'antorcha-2.jpg', 'antorcha-3.jpg', 20, 'Disponible', '2023-10-12 20:30:22', NULL),
(40, 13, 36, 'TIKI Brand Island King', 'Vivero Mar Shelly', 450, 450, '<div id=\"title_feature_div\" class=\"celwidget\" data-feature-name=\"title\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"title\" data-csa-c-slot-id=\"title_feature_div\" data-csa-c-asin=\"B08R139GQN\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"tm7spd-3p9gwz-aqyetb-8tzt7d\" data-cel-widget=\"title_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div id=\"titleSection\" class=\"a-section a-spacing-none\" style=\"box-sizing: border-box; margin-bottom: 0px;\"><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"3\">Antorcha decorativa para exteriores, para césped, patio y patio, metal negro, 65 pulgadas, 1120128</font></span></h1></div></div><div id=\"bylineInfo_feature_div\" class=\"celwidget\" data-feature-name=\"bylineInfo\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"bylineInfo\" data-csa-c-slot-id=\"bylineInfo_feature_div\" data-csa-c-asin=\"B08R139GQN\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"ftwf7m-bi9wrl-voio5g-r3d8y3\" data-cel-widget=\"bylineInfo_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"></div>', 'antorchas2-1.jpg', 'antorchas2-2.jpg', 'antorchas2-3.jpg', 20, 'Disponible', '2023-10-12 20:33:42', NULL),
(41, 13, 36, 'Living Green Antorcha de Bambú', 'Vivero la millonaria en la zona de San Arturo', 208, 208, '<font color=\"#000000\" size=\"3\"><span style=\"background-color: rgb(255, 255, 255);\">Living Green Antorcha de Bambú para jardín 1.50 m Incluye Mecha - Ideal para hoteles, restaurantes, Eventos y Ocasiones Especiale</span>s</font><br>', 'bambu-1.jpg', 'bambu-2.jpg', 'bambu-3.jpg', 50, 'Disponible', '2023-10-12 20:37:57', NULL),
(42, 13, 36, 'SLAWA Luces de camino', 'Vivero alegría en la zona de imi', 340, 340, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; margin-bottom: 0px !important; line-height: 32px !important;\"><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\" size=\"3\"><span style=\"font-weight: 400;\">SLAWA Luces de camino de paisaje al aire última intervensión negro E26, patio, porche, de pie IP65, impermeable, de bolardo para césped, de aluminio fundido a presión, cuadrada, de poste luz de acera</span></font><br></h1>', 'luces-1.jpg', 'luces-2.jpg', 'luces-3.jpg', 20, 'Disponible', '2023-10-12 20:41:30', NULL),
(43, 13, 36, 'Luces solares de luciérnaga', 'Vivero la millonaria en la zona de San Arturo', 402, 402, '<font size=\"3\" color=\"#000000\">Luces solares de luciérnaga para exteriores, paquete de 4 luces solares de jardín para exteriores, impermeables, 8 bombillas LED, luces decorativas solares de color blanco cálido para camino, patio, paisaje</font><br>', 'solares-1.jpg', 'solares-2.jpg', 'solares-3.jpg', 20, 'Disponible', '2023-10-12 20:46:48', NULL),
(44, 13, 37, 'Valla de jardín', 'Vivero Jireh en la zona de imi', 409, 409, '<font size=\"3\" color=\"#000000\">Zippity Outdoor Products ZP19056 No Dig Roger - Valla de jardín (3 unidades), color blanco, 24 pulgadas de ancho x 22 pulgadas de alto</font><br>', 'blanca-1.jpg', 'blanca-2.jpg', 'blanca-3.jpg', 15, 'Disponible', '2023-10-12 20:55:01', NULL),
(45, 13, 37, 'Cerca de bambú', 'Vivero Mar Shelly', 550, 550, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Yufenj Valla Decorativa de caña Natural, persiana Enrollable de bambú, decoración para Interiores y Exteriores, Rollo de caña Vintage, privacidad, decoración del hogar para Patio Trasero 130x100CM</span></h1>', 'bambuu-1.jpg', 'bambuu-2.jpg', 'bambuu-3.jpg', 50, 'Disponible', '2023-10-12 21:00:24', NULL),
(46, 12, 34, ' Costal de Sustrato', 'Vivero alegría en la zona de imi', 540, 540, '<font size=\"3\"><br></font><div><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><font size=\"3\">Costal de Sustrato Perlita y Humus de lombriz de 100 lts&nbsp;</font></span><br></div>', 'abo1.png', 'abo1.png', 'abo1.png', 30, 'Disponible', '2023-10-12 21:07:29', NULL),
(48, 8, 22, 'Maceta wisteria', 'Vivero la millonaria en la zona de San Arturo', 209, 209, '<div id=\"product_longdescription_278675\" class=\"product_longdescription\" style=\"margin-bottom: 30px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><font size=\"3\" style=\"\" color=\"#000000\">Maceta de cerámica en color rojo con diseño redondo y base tipo plato. Contiene 3 botones de foamy. Acabado tipo barro esmaltado.</font></div><div><br></div><p id=\"legal_storePrice\" class=\"legal_storePrice\" style=\"margin-top: 5px; padding: 0px; font-size: 11px; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"></p><div id=\"contentRecommendationWidget_7_-2000_3074457345618325079\" class=\"contentRecommendationWidget\" style=\"position: relative; z-index: 99; clear: both; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 0px !important;\"><div id=\"ci_espot_3074457345618325079_Widget_ContentRecommendation_701_3074457345618325079\"><div class=\"left_espot\" style=\"position: relative; z-index: 0;\"><div id=\"infoFeedbackPDP\" style=\"position: static;\"></div></div></div></div>', '138021.jpg', '138021.jpg', '138021.jpg', 20, 'Disponible', '2023-10-12 21:13:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(17, 7, 'Plantas comestibles', '2023-10-09 18:36:40', NULL),
(18, 7, 'Plantas florales', '2023-10-09 18:37:17', NULL),
(19, 7, 'Plantas medicinales y aromáticas', '2023-10-09 18:38:04', NULL),
(20, 7, 'Semillas', '2023-10-09 18:38:14', NULL),
(22, 8, 'Macetas cerámicas', '2023-10-09 18:38:59', NULL),
(23, 8, 'Macetas de plastico', '2023-10-09 18:39:19', NULL),
(24, 8, 'Macetas de fibra de vidrio', '2023-10-09 18:39:43', NULL),
(27, 9, 'Cavar y asentar la tierra', '2023-10-09 18:42:05', NULL),
(28, 9, 'Corte y mantenimiento', '2023-10-09 18:42:21', NULL),
(29, 10, 'Control de plagas y repelentes', '2023-10-09 18:42:53', NULL),
(30, 10, 'Herbicidas y fungicidas', '2023-10-09 18:43:36', NULL),
(31, 11, 'Dispensadores y aspersores', '2023-10-09 18:43:59', NULL),
(32, 11, 'Mangueras y accesorios de riego', '2023-10-09 18:44:22', NULL),
(33, 12, 'Cuidados complementarios', '2023-10-09 18:44:41', NULL),
(34, 12, 'Fertilizante y abonos', '2023-10-09 18:44:59', NULL),
(35, 12, 'Tierra y sutratos', '2023-10-09 18:45:11', NULL),
(36, 13, 'Antorchas, velas y accesorios decorativos', '2023-10-09 18:45:43', NULL),
(37, 13, 'Cercas', '2023-10-09 18:45:50', NULL),
(39, 8, 'Macetas de barro', '2023-10-09 22:56:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 16:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 19:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 19:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 19:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 19:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 19:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 13:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 20:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 20:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 18:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 18:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 02:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 10:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-07 20:39:55', '08-10-2023 03:16:13 AM', 1),
(25, 'jmass8493@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-07 21:51:10', NULL, 1),
(26, 'jmass8493@gmail.com', 0x3a3a3100000000000000000000000000, '2023-10-08 04:47:03', NULL, 1),
(27, 'anuj.lpu1@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-08 05:33:07', '08-10-2023 11:05:29 AM', 1),
(28, 'anuj.lpu1@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-08 05:35:54', NULL, 1),
(29, 'jmass8493@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-10 00:06:01', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 20:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 18:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 10:30:32', ''),
(4, 'Jonathan Mass ', 'jmass8493@gmail.com', 9811293499, '827ccb0eea8a706c4c34a16891f84e7b', 'Calle suctuc', 'México', 'Campeche', 24087, 'Calle suctuc', 'México', 'Campeche', 24087, '2023-10-07 21:50:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 19:53:17'),
(4, 4, 2, '2023-10-08 04:49:29'),
(5, 4, 2, '2023-10-08 04:58:57'),
(6, 4, 2, '2023-10-08 04:59:34'),
(7, 4, 2, '2023-10-08 05:01:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
