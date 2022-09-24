-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2022 a las 13:57:27
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `miniatura` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`, `miniatura`) VALUES
(1, 'Nutrición', 'Productos de nutrición interna (vitaminas, oligoelementos, etc) y comida general', 'abc'),
(2, 'Belleza', 'Maquillajes, sombras de ojos, etc.', 'abc'),
(3, 'Hogar', 'Lavavajillas, deterjentes, etc.', 'abc'),
(4, 'Cuidado personal', 'Gel de ducha, champus, cuidado de la boca', 'abc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido1` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos2` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contrasenia` varchar(300) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion_facturacion` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `poblacion_facturacion` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cp_facturacion` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pais_facturacion` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion_envio` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `poblacion_envio` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cp_envio` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pais_envio` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(9) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_rol` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido1`, `apellidos2`, `email`, `contrasenia`, `direccion_facturacion`, `poblacion_facturacion`, `cp_facturacion`, `pais_facturacion`, `direccion_envio`, `poblacion_envio`, `cp_envio`, `pais_envio`, `telefono`, `id_rol`) VALUES
(1, 'El mejor', 'del Mundo', 'Mundial', 'ejemplo@example.com', '123456', 'C/Gominola', 'Pueblo de la chocolatina', '000001', 'Pais de la felicidad', 'Pais de la felicidad', 'Pais de la felicidad', '00001', 'Pais de la felicidad', '678912345', 1),
(2, 'El mejor', 'del Mundo', 'Mundial', 'example@example.com', '123456', 'Pais de la felicidad', 'Pais de la felicidad', '00002', 'Pais de la felicidad', 'Pais de la felicidad', 'Pais de la felicidad', '00002', 'Pais de la felicidad', '678912345', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_pedido`
--

CREATE TABLE `linea_pedido` (
  `id_linea_pedido` int(10) UNSIGNED NOT NULL,
  `id_pedido` int(10) UNSIGNED NOT NULL,
  `id_producto` int(10) UNSIGNED NOT NULL,
  `precio` double NOT NULL,
  `referencia` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cantidad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(10) UNSIGNED NOT NULL,
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `fecha_pedido` date NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email_pedido` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion_envio` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL,
  `poblacion_envio` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cp_envio` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pais_envio` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(10) UNSIGNED NOT NULL,
  `referencia` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `peso` double NOT NULL,
  `vista_general` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `caracteristicas` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `beneficios` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `ingredientes` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `uso_sugerido` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `miniatura` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `id_subcat` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `referencia`, `nombre`, `precio`, `peso`, `vista_general`, `caracteristicas`, `beneficios`, `ingredientes`, `uso_sugerido`, `miniatura`, `imagen`, `stock`, `id_subcat`) VALUES
(2, '110671', 'Acondicionador Reparador para el Cuidado del Color SATINIQUE™', 13.9, 280, 'El cabello castigado revive. El color se mantiene auténtico durante más tiempo. La colección de Reparador para el Cuidado del Color SATINIQUE™ es perfecto para los cabellos dañados o teñidos', 'ENERJUVE™, un complejo exclusivo y patentado en EE.UU., cargado positivamente con lípidos reforzantes, creatina y el suavizante compuesto 18-MEA\r\nMezcla única de extractos de granada y de semilla de uva\r\nChampú y acondicionador especial, con fórmulas reforzantes y sin sulfatos, que hidratan y reparan la cutícula', 'Ayuda a reparar y restaurar el cabello y devolverle su estado natural y saludable*\r\nHace que el cabello sea hasta 9 veces más fuerte*\r\nEl color se mantiene durante más tiempo, hasta 45 lavados*\r\nAyuda a reparar y evitar la aparición de puntas abiertas*\r\nProporciona al cabello una sensación suave y sedosa**\r\n\r\n* Cuando se usa como sistema formado por el Champú Reparador para el Cuidado del Color, Acondicionador, Mascarilla Revitalizante y el Spray de Defensa Doble\r\n** Cuando se usa como sistema con el champú y acondicionador', 'Los científicos de SATINIQUETM han combinado su conocimiento nutricional y de belleza para incorporar ingredientes innovadores para la salud del cabello con productos botánicos y nutrientes cuidadosamente seleccionados. Por esa razón la línea de Reparación del Color contiene una fórmula sin sulfatos, mezclada con extracto de granada para revitalizar el cabello seco y apagado y protegerlo del daño ambiental, y con extracto de semilla de uva, que es un extraordinario agente antioxidante. Estos revitalizantes ingredientes ricos en antioxidantes (la granada contiene hasta tres veces los antioxidantes que contiene el té verde o el vino tinto) se ven complementados con nuestro complejo natural ENERJUVE™, extraído de fuentes naturales para restaurar el estado natural y saludable del cabello.', 'Aplicar el champú al cabello húmedo, masajear hasta lograr una espuma sedosa y aclarar. No destiñe el color\r\nDespués del champú, aplicar el acondicionador y distribuirlo por todo el cabello. Se aclara fácilmente, dejando un cabello sedoso y fácil de peinar\r\nSuave, para el uso diario', 'images\\cuidado_cabello\\acondicionadorColorSantinique.jpg', 'images\\cuidado_cabello\\acondicionadorColorSantinique.jpg', 250, 26),
(3, '110664', 'Acondicionador Suave e Hidratante SATINIQUE™', 13.66, 280, 'El Acondicionador Suave e Hidratante SATINIQUE™ restaura la hidratación del cabello y lo suaviza desde las raíces hasta las puntas.  \r\nPor qué te gustará\r\n\r\nEl clima, el entorno, el estilizado con calor y los tratamientos químicos pueden afectar a tu pelo, provocando la pérdida de hidratación y haciendo que sea más difícil de peinar y mantener suave.\r\n\r\nSu fórmula contiene una mezcla de aceite de semilla de KuKui, conocido por sus propiedades rejuvenecedoras y suavizantes, para ayudar a mejorar la elasticidad y devolverte el control de tu pelo. Además, la provitamina B5 actúa hidratando, nutriendo y, lo que es más importante, protegiendo tu pelo contra los agresores del entorno, al tiempo que le da un brillo intenso. Aplícalo después de lavarte el pelo con el Champú Suave e Hidratante SATINIQUE. Solo tienes que distribuirlo uniformemente por el cabello y después aclararlo. Una vez seco, tu pelo tendrá un aspecto y una sensación de suavidad e hidratación perfecta. \r\nDatos que debes saber\r\n\r\n    Potenciado por el exclusivo complejo ENERJUVE™, patentado en los EE.UU., un complejo de lípidos, creatina y 18-MEA cargado positivamente que penetra en el corazón del cabello, se une a las zonas dañadas y les devuelve su fuerza. \r\n    Restaura el brillo y la elasticidad con una mezcla nutritiva y suavizante de aceite de semilla de KuKui y provitamina B5.\r\n    Desprende un fresco y vibrante aroma a pera, manzana verde, rosa y almizcle. \r\n    Lo bastante delicado con el cuero cabelludo y el pelo como para usar a diario.', '', '', 'Los científicos de SATINIQUE™ han combinado su conocimiento nutricional y de belleza para incorporar ingredientes innovadores para la salud del cabello con productos botánicos y nutrientes cuidadosamente seleccionados. Por esa razón la línea Suave e Hidratante contiene una cuidadosa mezcla de aceite de semilla de Kukui, conocida por sus efectos calmantes y rejuvenecedores, para ayudar a reponer el brillo y la elasticidad, y Pro-vitamina B5, un nutriente natural que hidrata, restaura la humedad, protege y hace que los cabellos tengan un aspecto radiante. Estos ingredientes activos están complementados por nuestro exclusivo complejo ENERJUVE™, que restaura el cabello hasta alcanzar su estado natural y saludable.', '     Aplicar el champú al cabello húmedo, masajear hasta lograr una espuma sedosa y aclarar\r\n    Después del champú, aplicar el acondicionador y distribuirlo por todo el cabello; aclarar finalmente\r\n    Suave, para el uso diario', 'images\\cuidado_cabello\\acondicionadorSuaveSantinique.jpg', 'images\\cuidado_cabello\\acondicionadorSuaveSantinique.jpg', 250, 26),
(4, '110670 ', 'Champú Anticaspa SATINIQUE™', 13.11, 280, 'Experimenta la pureza y claridad en tu cuero cabelludo y tu cabello. Perfecto para transformar cualquier cabello con caspa o cuero cabelludo con picores en un cabello precioso, sin descamaciones.', '• ENERJUVE™, un complejo exclusivo y patentado , cargado positivamente con lípidos reforzantes, creatina y el suavizante compuesto 18-MEA\r\n• Mezcla de vitamina E y un ingrediente único de aguacate\r\n ', '• El aguacate y la vitamina E ayudan a purificar e hidratar. El piritionato de zinc ayuda a controlar la caspa y aliviar el picor y la sequedad del cuero cabelludo*\r\n• Tras 4 semanas, el 100% de los encuestados experimentaron una reducción de la caspa*\r\n• Ayuda a eliminar la descamación ', '• Contiene aguacate y vitamina E, Contiene aguacate y vitamina E, que ayudan a purificar e hidratar.\r\n• Contiene aguacate y vitamina E, que ayudan a purificar e hidratar.\r\n• El piritionato de zinc calma el cuero cabelludo, minimizando la sequedad, el picor y las escamas.\r\n• El cabello queda con un aspecto radiante, saludable y vital.\r\n• El cabello queda con un aspecto radiante, saludable y vital. que ayudan a purificar e hidratar.\r\n• El piritionato de zinc calma el cuero cabelludo, minimizando la sequedad, el picor y las escamas. \r\n• El cabello queda con un aspecto radiante, saludable y vital.', 'Aplicar sobre el cabello húmedo, masajear sobre el cuero cabelludo. Aclarar a fondo y a continuación aplicar el acondicionador de la gama SATINIQUE que mejor se adapte a tu tipo de cabello. Suficientemente suave para usarlo cada día.', 'images\\cuidado_cabello\\anticaspaSantinique1.jpg', 'images\\cuidado_cabello\\anticaspaSantinique1.jpg', 250, 26),
(5, '116823', 'Acondicionador Anticaída SATINIQUE™ ', 13.9, 280, 'Perfecto para reducir la posibilidad de rotura del cabello frágil, fino y debilitado.\r\nContiene ENERJUVE para devolverle al cabello su estado natural saludable.\r\nLa mezcla contiene ginseng y extracto de hoja de morera para estimular la circulación y reducir la pérdida de cabello.\r\n', 'ENERJUVE™, un complejo exclusivo y patentado en EE.UU., cargado positivamente con lípidos reforzantes, creatina y el suave complejo 18-MEA\r\nMezcla exclusiva de ginseng y hoja de morera', 'La mezcla de ginseng y extracto de hoja de morera estimula la circulación si se masajea en el cuero cabelludo\r\nFórmula de alto rendimiento que ayuda a reducir la pérdida de cabello debida a roturas y lo deja con una nueva dimensión de cuerpo y grosor*\r\n\r\n*Cuando se usa como sitema con el Champú y Acondicionador Anticaída y Tónico para el Cuero Cabelludo.\r\nIr arriba\r\nConecta con nosotros\r\n\r\n', '\r\n\r\nLos científicos de SATINIQUE™ combinaron su experiencia en nutrición y belleza para incorporar ingredientes especiales para la salud del cabello con ingredientes botánicos y nutrientes cuidadosamente seleccionados. Es por eso que el Champú Anticaída contiene una mezcla de ginseng, extracto de eclipta alba y extracto de hoja de morera, que ayuda a energizar el cuero cabelludo (con masaje). Estos ingredientes estimulantes se complementan con nuestro exclusivo complejo ENERJUVE™ para restaurar el cabello a su estado natural y saludable.\r\nIr arriba\r\nConecta con nosotros\r\n\r\n', 'Aplica el champú sobre el cabello húmedo, masajea el cabello y el cuero cabelludo con un movimiento circular, enjuaga\r\nDespués de lavar con el champú, aplica el acondicionador y distribuyéndolo por todo el cabello, a continuación enjuaga de nuevo\r\nSuficientemente suave para un uso diario\r\n\r\n\r\n', 'images\\cuidado_cabello\\anticaidaSantinique.jpg', 'images\\cuidado_cabello\\anticaidaSantinique.jpg', 250, 26),
(6, '115304', 'Champú Acondicionador 2 en 1 SATINIQUE™ ', 13.11, 280, 'Experimenta lo fácil que es tener un cabello de aspecto saludable. El Champú Acondicionador 2 en 1 es perfecto para simplificar la rutina de cuidado del cabello: limpia y acondiciona en un solo paso\r\nPara todo tipo de cabello', 'ENERJUVE ™, un complejo exclusivo y patentado en EE.UU., cargado positivamente con lípidos reforzantes, creatina y el suave compuesto 18-MEA\r\nEl aceite de semilla de borraja y la vitamina E ayudan a hidratar y proteger el cabello', ' Ayuda a reparar y restaurar el cabello hasta su estado natural y de aspecto saludable\r\nLimpia con suavidad y acondiciona con cada uso\r\nDeja el cabello con una sensación de suavidad, fácil de peinar y con un aspecto saludable.\r\nPerfecto para limpieza y estilizado diario', 'Los científicos de SATINIQUETM han combinado su conocimiento nutricional y de belleza para incorporar ingredientes innovadores para la salud del cabello con productos botánicos y nutrientes cuidadosamente seleccionados.\r\nEstos ingredientes suaves y eficaces se ven complementados por nuestro exclusivo complejo ENERJUVE™, que restaura el cabello hasta alcanzar su estado natural y saludable.', 'Aplicar sobre el cabello húmedo, masajear hasta lograr una espuma sedosa y aclarar\r\nSuficientemente suave para usarlo cada día', 'images\\cuidado_cabello\\champu2en1acondicionadorSantinique.jpg', 'images\\cuidado_cabello\\champu2en1acondicionadorSantinique.jpg', 250, 26),
(7, '119008 ', 'Champú y Gel de Ducha 2 en 1 HYMM™ ', 7.56, 250, 'Un hombre, una solución: el Champú y Gel de Ducha 2 en 1 limpia el cuerpo de los pies a la cabeza y sumerge la piel en un baño de bienestar. Fórmula creada con extracto de menta acuática y minerales marinos que limpian a fondo cuerpo y cabello, dejando un aroma fresco y proporcionando un suave efecto acondicionador.', 'Fórmula creada con extracto de menta acuática y minerales marinos.\r\nLimpia tanto el cabello como el cuerpo.\r\nDeja un aroma fresco.\r\nSu botella con capa abatible es fácil de abrir y cerrar con una mano y se puede colocar y almacenar boca abajo para asegurar que se use todo el producto.', 'El extracto de menta acuática es conocido por sus propiedades refrescantes y estimulantes.\r\nLos minerales marinos son conocidos por sus efectos estimulantes y astringentes.\r\nAyuda a mantener el cuerpo con un olor fresco con su suave y exclusiva fragancia.\r\nContiene agentes acondicionadores que proporcionan un suave acondicionamiento al cabello.\r\nDermatológicamente probado, adecuado para cualquier tipo de piel, incluida la piel sensible.', 'AQUA, SODIUM LAURETH SULFATE, SODIUM CHLORIDE, COCAMIDOPROPYL BETAINE, TOCOPHERYL ACETATE, ALOE BARBADENSIS GEL, CHAMOMILLA RECUTITA EXTRACT, MENTHA AQUATICA EXTRACT,  MARIS SAL, COCO-GLUCOSIDE, GLYCERYL OLEATE, DECYL GLUCOSIDE, SODIUM LAUROYL GLUTAMATE, PROPYLENE GLYCOL, HYDROXYPROPYL GUAR HYDROXYPROPYLTRIMONIUM CHLORIDE, PEG-40 HYDROGENATED CASTOR OIL, GLUCOSE, PARFUM,  LINALOOL, LIMONENE, SODIUM BENZOATE, POTASSIUM SORBATE, CITRIC ACID,  LACTIC ACID, SODIUM HYDROXIDE, CI 42090, CI 47005', 'Para limpiar el cuerpo: servir en las manos o una esponja, crear una espesa espuma bajo la ducha y aplicar libremente sobre el cuerpo. Aclarar con agua.\r\nPara limpiar el cabello: aplicar al cabello húmedo, masajear suavemente el cabello hasta alcanzar el cuero cabelludo, formando una espesa espuma y a continuación aclarar con agua.\r\nRecomendamos usar a continuación el Desodorante Roll-On HYMM para preservar un olor fresco en el cuerpo el día entero.\r\nEvitar el contacto con los ojos. En caso de entrar en contacto con los ojos, aclarar inmediatamente con agua abundante.', 'static\\images\\aseo_personal_masculino\\champu2en1Hymm.jpg', 'static\\images\\aseo_personal_masculino\\champu2en1Hymm.jpg', 250, 29),
(8, '119628', 'Cuchillas de Repuesto HYMM™', 12.17, 4, ' Máximo rendimiento: la nueva maquinilla con hojas un 25 % más finas* y una superficie de afeitado más amplia* proporciona un excelente afeitado y un mejor deslizamiento por la piel. Barra protectora más grande que estira suavemente la piel, preparando los pelos para el afeitado. Puedes definir a la perfección patillas, perillas y bigote con el recortador de precisión.\r\n\r\n\r\n* En comparación con la Maquinilla de Afeitar con 3 Hojas HYMM.', 'Sistema de 5 hojas con cuchillas un 25 % más finas* y una superficie de deslizamiento más amplia* que captura hasta los pelos más diminutos con menos presión, logrando un afeitado más reconfortante y con menor irritación.\r\n    El cabezal giratorio se adapta a los contornos del rostro y permite lograr un apurado perfecto.\r\n\r\n\r\n* En comparación con la Maquinilla de Afeitar con 3 Hojas HYMM', 'La tira lubricante con Aloe Vera y vitamina E permite que la maquinilla se deslice con facilidad por la piel, aportando un mayor confort.\r\nRecortador de precisiónpara las zonas difíciles de afeitar (patillas, perilla, debajo de la nariz) con patas protectoras para impedir cortes.\r\nDura una media de 19 usos.*\r\nDermatológicamente probadas, adecuadas para cualquier tipo de piel, incluida la piel sensible.\r\n\r\n* De acuerdo con una Investigación de Productos para el Consumidor realizada en Alemania.', '', 'Para cargar o cambiar las cuchillas, presiona el botón que hay en la parte frontal del mango.\r\nRecomendamos usar la maquinilla con el Gel de Afeitar HYMM para lograr un afeitado apurado y una protección ideal para tu piel ante la irritación.\r\nPara las áreas difíciles de afeitar (patillas, perilla, debajo de la nariz) usa la recortadora de precisión que viene en el lado opuesto de la cuchilla.\r\nEvitar el contacto con los ojos.', 'static\\images\\aseo_personal_masculino\\CuchillasRepuestoHYMM.jpg', 'static\\images\\aseo_personal_masculino\\CuchillasRepuestoHYMM.jpg', 250, 29),
(9, '121206', '\r\nEspuma de Afeitar HYMM™ ', 12.69, 200, 'La fórmula de la Espuma de Afeitar HYMM se ha creado para proporcionar un afeitado cómodo de principio a fin. El gel se transforma en una suntuosa y abundante espuma diseñada para ayudar a que la cuchilla de afeitar se deslice fácilmente por la piel, además de ayudar a acondicionarla. La fórmula de la Espuma de Afeitar cuenta con extracto de raíz de regaliz, que ayuda a calmar la piel. Fórmula con surfactantes que suavizan el pelo de la barba y proporcionan un afeitado fácil.', 'Un gel que genera una suntuosa espuma para ayudar a la cuchilla a deslizarse por la piel\r\nLa fórmula cuenta con extracto de raíz de regaliz que calma la piel y ayuda a evitar irritaciones\r\nDeja tu piel con un olor fresco y limpio', 'La fórmula cuenta con extracto de raíz de regaliz que ayuda frente a la irritación de la piel\r\nContiene alantoína, que ayuda a calmar la piel\r\nContiene ingredientes botánicos conocidos por sus propiedades calmantes para la piel: extractos de aloe vera y camomila\r\nLa textura de la espuma aumenta la capacidad de deslizamiento de la cuchilla\r\nFórmula con surfactantes que suavizan el pelo de la barba y proporcionan un afeitado fácil\r\nLa fórmula contiene lubricantes para lograr un máximo deslizamiento de la cuchilla y un buen acondicionamiento de la piel\r\nDermatológicamente probado, adecuado para cualquier tipo de piel, incluida la piel sensible', 'AQUA, PALMITIC ACID, TRIETHANOLAMINE, OLETH-20, SORBITOL, ISOPENTANE, SORBETH-30, MYRISTIC ACID, DECYL OLEATE, PARFUM, GLYCERIN, BETAINE, ALOE BARBADENSIS GEL, GLYCYRRHIZA GLABRA EXTRACT, CHAMOMILLA RECUTITA EXTRACT, TOCOPHERYL ACETATE, ALLANTOIN, HYDROXYETHYLCELLULOSE, PEG-14M, PROPYLENE GLYCOL, BUTYLENE GLYCOL, BUTANE, ISOBUTANE, BENZYL SALICYLATE, LINALOOL, LIMONENE, PHENOXYETHANOL, METHYLPARABEN, ETHYLPARABEN, SODIUM BENZOATE, POTASSIUM SORBATE, CITRIC ACID, CI 42090, CI 47005.', 'Aplicar una pequeña cantidad de producto sobre la cara húmeda o mojada, cubriendo el área que se desea afeitar. Desliza la cuchilla sobre el área, logrando un afeitado perfectamente apurado.\r\nAféitate de forma habitual, usando la Maquinilla de Afeitar con 5 Hojas HYMM. Aclarar con agua caliente o tibia después del afeitado.\r\nEvitar el contacto con los ojos. En caso de entrar en contacto con los ojos, aclarar inmediatamente con agua abundante.\r\nAplicar a continuación el Bálsamo Después del Afeitado HYMM para ayudar a calmar la piel y protegerla ante la posible irritación producida por el afeitado.', 'static\\images\\aseo_personal_masculino\\EspumaAfeitarHYMM.jpg', 'static\\images\\aseo_personal_masculino\\EspumaAfeitarHYMM.jpg', 250, 29),
(10, '119627', 'Maquinilla de Afeitar con 5 Hojas HYMM™ ', 14.6, 1, 'Un aspecto 100 % rasurado con solo una pasada: la Maquinilla de Afeitar con 5 Hojas de alta calidad se adapta a todos los contornos faciales, además de ser totalmente ergonómica gracias a su agarre de goma, asegurando un afeitado ideal. Incluye un útil botón para cambiar las cuchillas y una tira lubricante con vitamina E y Aloe vera que permite que la hoja se deslice libremente por la piel, proporcionando un mayor confort. La recortadora especial para patillas, perillas y para la zona debajo de la nariz cuenta con patas protectoras para dar una mayor seguridad al afeitar.', 'Nueva tecnología y resultados superiores.*\r\nSistema de 5 hojas con cuchillas un 25 % más finas* y una superficie de deslizamiento más amplia* que captura hasta los pelos más diminutos con menos presión, logrando un afeitado más reconfortante y con menor irritación.\r\nEl cabezal giratorio se adapta a los contornos del rostro y permite lograr un apurado perfecto.\r\nFácil extracción y carga de cuchillas gracias al botón incorporado.\r\nViene con una Cuchilla de Repuesto HYMM lista para usar\r\n\r\n*En comparación con la Maquinilla de 3 Hojas HYMM.', 'La tira lubricante con Aloe Vera y vitamina E permite que la maquinilla se deslice con facilidad por la piel, aportando un mayor confort.\r\nRecortadora especial para las zonas difíciles de afeitar (patillas, perilla, debajo de la nariz) con patas protectoras para impedir cortes.\r\nDura una media de 19 usos.*\r\nDermatológicamente probada, adecuada para cualquier tipo de piel, incluida la piel sensible.\r\n\r\n* De acuerdo con una Investigación de Productos para el Consumidor realizada en Alemania.', '', 'Para cargar o cambiar las cuchillas, presiona el botón que hay en la parte frontal del mango.\r\nRecomendamos usar la maquinilla con el Gel de Afeitar HYMM para lograr un afeitado apurado y una protección ideal para tu piel ante la irritación.\r\nPara las áreas difíciles de afeitar (patillas, perilla, debajo de la nariz) usa la recortadora de precisión que viene en el lado opuesto de la cuchilla.\r\n\r\nEvitar el contacto con los ojos.', 'images\\aseo_personal_masculino\\MaquinillaAfeitar5HojasHYMM.jpg', 'images\\aseo_personal_masculino\\MaquinillaAfeitar5HojasHYMM.jpg', 250, 29),
(11, '118871 ', 'Fragancia HYMM™ Αqua Eau De Toilette ', 40.26, 50, 'Un perfume masculino con notas de sal y un distintivo aroma a agua marina, que crea una sensación duradera de frescor.\r\nLo que te aporta\r\nUn aroma de frescor con toques cítricos vigorizantes y notas acuáticas\r\nFresca, pura y estimulante.\r\nContiene elevadas concentraciones de aceites aromáticos, ayudando así a que el aroma tenga una duración más prolongada en la piel\r\n\r\nPor qué te gustará\r\nLa fragancia HYMM Αqua Eau De Toilette es un aroma moderno inspirada en el océano, con una simplicidad natural y una auténtica masculinidad. La fragancia se inicia con una espumosa nota de agua marina, pomelo vigorizante y limón. El corazón consiste en un frescor marino natural y auténtico con una mezcla de sal marina, lavanda y hojas de violeta. Las notas de fondo de pachuli, Lorenox y madera de cedro enriquecen la creación con una informal sensualidad masculina. Deja despertar tus sentidos, siente la libertad y el frescor duradero.\r\nDatos que debes saber\r\n\r\nLa fragancia HYMM Αqua Eau De Toilette ha sido desarrollada exclusivamente para Amway por la prestigiosa casa de perfumería francesa Mane.\r\nNuestra fragancia es el resultado de combinar una mezcla de materias primas extraídas mediante técnicas tradicionales y conocimientos técnicos.\r\nLa fragancia incluye un componente exclusivo: Lorenox, que añade profundidad y deja un cálido rastro amaderado y masculino.', 'Características clave\r\nCrea una sensación duradera de frescor,\r\n    gracias a sus elevadas concentraciones de aceites aromáticos, tiene una duración más prolongada en la piel,\r\n Su práctico frasco entra perfectamente en el Neceser para Hombre HYMM\r\n', '', 'Ingredientes\r\nNotas principales: AGUA MARINA, POMELO, LIMÓN\r\nNotas medias: SAL MARINA, LAVANDA, HOJAS DE VIOLETA\r\nNotas de fondo: PACHULI, LORENOX, MADERA DE CEDRO\r\nINGREDIENTS: ALCOHOL DENAT., PARFUM, AQUA, LIMONENE, LINALOOL, BHT, ALPHA-ISOMETHYL IONONE, CITRAL, GERANIOL, METHYL 2-OCTYNOATE.', 'Rocía la fragancia HYMM Αqua Eau De Toilette sobre tu piel, en el interior de los codos o alrededor del cuello, desde donde se irá liberando al moverte.\r\nPara un aroma aún más duradero, rocía la fragancia en la ropa. Según te vayas moviendo, el aroma se irá renovando, dándote pequeños toques de fragancia durante todo el día.\r\n Evita el contacto con los ojos. En caso de contacto con los ojos, aclara inmediatamente con abundante agua.', 'images\\aseo_personal_masculino\\MaquinillaAfeitar5HojasHYMM.jpg', 'images\\aseo_personal_masculino\\MaquinillaAfeitar5HojasHYMM.jpg', 250, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(10) UNSIGNED NOT NULL,
  `rol` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`, `descripcion`) VALUES
(1, 'Admin', 'Puede acceder a los pedidos realizados para procesarlos.'),
(2, 'Cliente', 'Solo puede acceder a los productos para hacer pedidos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id_subcat` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(125) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_cat` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id_subcat`, `nombre`, `descripcion`, `id_cat`) VALUES
(1, 'Complementos especificos', '', 1),
(2, 'Complementos fundamentales', '', 1),
(3, 'Belleza interior', '', 1),
(4, 'Alimentos y bebidas', '', 1),
(5, 'Control de peso', '', 1),
(6, 'Soluciones personalizadas', '', 1),
(7, 'Nutrición deportiva', '', 1),
(8, 'Estilo de vida activo', '', 1),
(9, 'Soluciones XS', '', 1),
(10, 'Todos los productos', '', 1),
(11, 'Maquillaje', '', 2),
(12, 'Cuidado de la piel', '', 2),
(13, 'Cuerpo', '', 2),
(14, 'Accesorio de belleza', '', 2),
(15, 'Todos los productos', '', 2),
(16, 'Cuidado de la ropa', '', 3),
(17, 'Cuidado de las superficies', '', 3),
(18, 'Cuidado de la vajilla', '', 3),
(19, 'Limpieza auxiliar', '', 3),
(20, 'Utensilios y cuberteria', '', 3),
(21, 'Sistema de tratamiento de agua', '', 3),
(22, 'Sistema de tratamiento del aire', '', 3),
(23, 'Accesorios del hogar', '', 3),
(24, 'Piezas de recambio para Sistema de Tratamiento de Agua', '', 3),
(25, 'Todos los productos', '', 3),
(26, 'Cuidado del cabello', '', 4),
(27, 'Baño y cuerpo', '', 4),
(28, 'Fragancias', '', 4),
(29, 'Aseo personal masculina', '', 4),
(30, 'Cuidado bucal', '', 4),
(31, 'Todos los produtos', '', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `FK_CLIENTE_ROL` (`id_rol`);

--
-- Indices de la tabla `linea_pedido`
--
ALTER TABLE `linea_pedido`
  ADD PRIMARY KEY (`id_linea_pedido`),
  ADD KEY `FK_PEDIDO_LINEA_PEDIDO` (`id_pedido`),
  ADD KEY `FK_LINEA_PEDIDO_PRODUCTOS` (`id_producto`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD KEY `FK_PEDIDO_CLIENTE` (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `FK_PROD_SUBCAT` (`id_subcat`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id_subcat`),
  ADD KEY `FK_subcat_cat` (`id_cat`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `linea_pedido`
--
ALTER TABLE `linea_pedido`
  MODIFY `id_linea_pedido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id_subcat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `FK_CLIENTE_ROL` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `linea_pedido`
--
ALTER TABLE `linea_pedido`
  ADD CONSTRAINT `FK_LINEA_PEDIDO_PRODUCTOS` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `FK_PEDIDO_LINEA_PEDIDO` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedidos`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_PEDIDO_CLIENTE` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_PROD_SUBCAT` FOREIGN KEY (`id_subcat`) REFERENCES `subcategorias` (`id_subcat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `FK_subcat_cat` FOREIGN KEY (`id_cat`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
