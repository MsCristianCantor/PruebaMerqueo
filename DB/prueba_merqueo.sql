-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2019 a las 20:55:36
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_merqueo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2019-03-01', '2019-07-14 20:42:48', '2019-07-14 20:42:48'),
(2, 2, 3, '2019-03-01', '2019-07-14 20:42:48', '2019-07-14 20:42:48'),
(3, 3, 7, '2019-03-01', '2019-07-14 20:42:48', '2019-07-14 20:42:48'),
(4, 4, 8, '2019-03-01', '2019-07-14 20:42:48', '2019-07-14 20:42:48'),
(5, 5, 10, '2019-03-01', '2019-07-14 20:42:48', '2019-07-14 20:42:48'),
(6, 6, 15, '2019-03-01', '2019-07-14 20:42:48', '2019-07-14 20:42:48'),
(7, 7, 26, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(8, 8, 11, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(9, 9, 1, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(10, 10, 8, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(11, 11, 7, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(12, 12, 8, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(13, 13, 2, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(14, 14, 1, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(15, 15, 1, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(16, 16, 9, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(17, 17, 17, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(18, 18, 8, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(19, 19, 9, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(20, 20, 9, '2019-03-01', '2019-07-14 20:42:49', '2019-07-14 20:42:49'),
(21, 21, 3, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(22, 22, 6, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(23, 23, 9, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(24, 24, 9, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(25, 25, 10, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(26, 26, 40, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(27, 27, 2, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(28, 28, 3, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(29, 29, 2, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(30, 30, 1, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(31, 31, 9, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(32, 32, 10, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(33, 33, 2, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(34, 34, 3, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(35, 35, 3, '2019-03-01', '2019-07-14 20:42:50', '2019-07-14 20:42:50'),
(36, 36, 6, '2019-03-01', '2019-07-14 20:42:51', '2019-07-14 20:42:51'),
(37, 1, 10, '2019-03-01', '2019-07-14 20:47:23', '2019-07-14 20:47:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_12_083259_create_products_table', 1),
(4, '2019_07_12_083424_create_orders_table', 1),
(5, '2019_07_12_083447_create_providers_table', 1),
(6, '2019_07_12_084321_create_inventory_table', 1),
(7, '2019_07_12_084725_create_order_product_table', 1),
(8, '2019_07_12_084912_create_product_provider_table', 1),
(9, '2019_07_12_085053_create_transporters_table', 1),
(10, '2019_07_13_162329_create_order_transporter_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryDate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `priority`, `address`, `user`, `state`, `deliveryDate`, `created_at`, `updated_at`) VALUES
(1, 1, 'KR 14 # 87 - 20', 'Sofia', 'Creado', '2019-03-01', '2019-07-14 20:56:47', '2019-07-14 20:56:47'),
(2, 1, 'KR 20 # 164A - 5', 'Angel', 'Creado', '2019-03-01', '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(3, 3, 'KR 13 # 74 - 38', 'Hocks', 'Creado', '2019-03-01', '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(4, 1, 'CL 93 # 12 - 9', 'Michael', 'Creado', '2019-03-01', '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(5, 1, 'CL 71 # 3 - 74', 'Bar de Alex', 'Creado', '2019-03-01', '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(6, 2, 'KR 20 # 134A - 5', 'Sabor Criollo', 'Creado', '2019-03-01', '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(7, 2, 'CL 80 # 14 - 38', 'El Pollo Rojo', 'Creado', '2019-03-01', '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(8, 7, 'KR 14 # 98 - 74', 'All Salad', 'Creado', '2019-03-01', '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(9, 1, 'KR 58 # 93 - 1', 'Parrilla y sabor', 'Creado', '2019-03-01', '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(10, 9, 'KR 14 # 87 - 20', 'Sofia', 'Creado', '2019-03-01', '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(11, 1, 'CL 93B # 17 - 12', 'restaurante yerbabuena', 'Creado', '2019-03-01', '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(12, 10, 'KR 68D # 98A - 11', 'Luis David', 'Creado', '2019-03-01', '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(13, 2, 'AC 72 # 20 - 45', 'David Carruyo', 'Creado', '2019-03-01', '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(14, 3, 'KR 22 # 122 - 57', 'MARIO', 'Creado', '2019-03-01', '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(15, 8, 'KR 88 # 72A - 26', 'Harold', 'Creado', '2019-03-01', '2019-07-14 20:56:51', '2019-07-14 20:56:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2019-07-14 20:56:47', '2019-07-14 20:56:47'),
(2, 1, 2, 21, '2019-07-14 20:56:47', '2019-07-14 20:56:47'),
(3, 1, 37, 7, '2019-07-14 20:56:47', '2019-07-14 20:56:47'),
(4, 1, 3, 10, '2019-07-14 20:56:47', '2019-07-14 20:56:47'),
(5, 1, 4, 5, '2019-07-14 20:56:47', '2019-07-14 20:56:47'),
(6, 2, 5, 100, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(7, 2, 6, 60, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(8, 3, 7, 4, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(9, 3, 8, 3, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(10, 3, 9, 4, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(11, 3, 10, 8, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(12, 3, 11, 5, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(13, 4, 12, 3, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(14, 4, 13, 2, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(15, 4, 14, 4, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(16, 4, 4, 2, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(17, 4, 15, 3, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(18, 5, 16, 1500, '2019-07-14 20:56:48', '2019-07-14 20:56:48'),
(19, 6, 17, 2, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(20, 6, 18, 3, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(21, 6, 15, 2, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(22, 6, 19, 2, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(23, 6, 20, 3, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(24, 7, 21, 3, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(25, 7, 22, 2, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(26, 7, 23, 2, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(27, 7, 39, 4, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(28, 7, 24, 15, '2019-07-14 20:56:49', '2019-07-14 20:56:49'),
(29, 8, 25, 3, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(30, 8, 26, 2, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(31, 8, 22, 4, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(32, 8, 27, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(33, 8, 5, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(34, 9, 22, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(35, 10, 28, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(36, 11, 7, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(37, 12, 41, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(38, 12, 19, 6, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(39, 12, 29, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(40, 12, 17, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(41, 12, 30, 1, '2019-07-14 20:56:50', '2019-07-14 20:56:50'),
(42, 13, 7, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(43, 13, 25, 2, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(44, 13, 5, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(45, 13, 31, 25, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(46, 14, 43, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(47, 14, 30, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(48, 14, 32, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(49, 14, 33, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(50, 14, 28, 2, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(51, 15, 16, 3, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(52, 15, 34, 3, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(53, 15, 35, 3, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(54, 15, 12, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51'),
(55, 15, 36, 1, '2019-07-14 20:56:51', '2019-07-14 20:56:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_transporter`
--

CREATE TABLE `order_transporter` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `transporter_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_transporter`
--

INSERT INTO `order_transporter` (`id`, `order_id`, `transporter_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, NULL),
(4, 5, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Leche', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(2, 'Huevos', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(3, 'Manzana Verde', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(4, 'Pepino Cohombro', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(5, 'Pimenton Rojo', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(6, 'Kiwi', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(7, 'Cebolla Cabezona Blanca Limpia', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(8, 'Habichuela', 10000, '2019-07-14 20:41:49', '2019-07-14 20:41:49'),
(9, 'Mango Tommy Maduro', 10000, '2019-07-14 20:41:50', '2019-07-14 20:41:50'),
(10, 'Tomate Chonto Pintón', 10000, '2019-07-14 20:41:50', '2019-07-14 20:41:50'),
(11, 'Zanahoria Grande', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(12, 'Aguacate Maduro', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(13, 'Kale o Col Rizada', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(14, 'Cebolla Cabezona Roja Limpia', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(15, 'Tomate Chonto Maduro', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(16, 'Acelga', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(17, 'Espinaca Bogotana x 500grs', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(18, 'Ahuyama', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(19, 'Cebolla Cabezona Blanca Sin Pelar', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(20, 'Melón', 10000, '2019-07-14 20:41:51', '2019-07-14 20:41:51'),
(21, 'Cebolla Cabezona Roja Sin Pelar', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(22, 'Cebolla Larga Junca x 500grs', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(23, 'Hierbabuena x 500grs', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(24, 'Lechuga Crespa Verde', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(25, 'Limón Tahited', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(26, 'Mora de Castilla', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(27, 'Pimentón Verde', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(28, 'Tomate Larga Vida Maduro', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(29, 'Cilantro x 500grs', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(30, 'Fresa Jugo', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(31, 'Papa R-12 Mediana', 10000, '2019-07-14 20:41:52', '2019-07-14 20:41:52'),
(32, 'Curuba', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(33, 'Brócoli', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(34, 'Aguacate Hass Pintón', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(35, 'Aguacate Hass Maduro', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(36, 'Aguacate Pintón', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(37, 'Pan Bimbo', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(38, 'Producto 38', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(39, 'Lechuga Crespa Morada', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(40, 'Producto 40', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(41, 'Banano', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(42, 'Producto 42', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(43, 'Banano', 10000, '2019-07-14 20:41:53', '2019-07-14 20:41:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_provider`
--

CREATE TABLE `product_provider` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `provider_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_provider`
--

INSERT INTO `product_provider` (`id`, `product_id`, `provider_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(2, 2, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(3, 3, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(4, 4, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(5, 5, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(6, 24, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(7, 25, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(8, 26, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(9, 27, 1, '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(10, 28, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(11, 29, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(12, 30, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(13, 31, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(14, 32, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(15, 33, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(16, 34, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(17, 35, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(18, 36, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(19, 16, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(20, 17, 2, '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(21, 6, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(22, 7, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(23, 8, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(24, 9, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(25, 10, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(26, 11, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(27, 12, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(28, 13, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(29, 14, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(30, 15, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(31, 18, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(32, 19, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(33, 20, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(34, 21, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(35, 22, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45'),
(36, 23, 3, '2019-07-14 20:54:45', '2019-07-14 20:54:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `providers`
--

INSERT INTO `providers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ruby', '2019-07-14 20:54:43', '2019-07-14 20:54:43'),
(2, 'Raul', '2019-07-14 20:54:44', '2019-07-14 20:54:44'),
(3, 'Angelica', '2019-07-14 20:54:45', '2019-07-14 20:54:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporters`
--

CREATE TABLE `transporters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transporters`
--

INSERT INTO `transporters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Jose Perez', '2019-07-14 20:41:53', '2019-07-14 20:41:53'),
(2, 'Monica Lopez', '2019-07-14 20:41:54', '2019-07-14 20:41:54'),
(3, 'Cristian Ivan', '2019-07-14 20:41:54', '2019-07-14 20:41:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `order_transporter`
--
ALTER TABLE `order_transporter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transporter_order_id_foreign` (`order_id`),
  ADD KEY `order_transporter_transporter_id_foreign` (`transporter_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_provider`
--
ALTER TABLE `product_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_provider_product_id_foreign` (`product_id`),
  ADD KEY `product_provider_provider_id_foreign` (`provider_id`);

--
-- Indices de la tabla `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transporters`
--
ALTER TABLE `transporters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `order_transporter`
--
ALTER TABLE `order_transporter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `product_provider`
--
ALTER TABLE `product_provider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transporters`
--
ALTER TABLE `transporters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `order_transporter`
--
ALTER TABLE `order_transporter`
  ADD CONSTRAINT `order_transporter_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_transporter_transporter_id_foreign` FOREIGN KEY (`transporter_id`) REFERENCES `transporters` (`id`);

--
-- Filtros para la tabla `product_provider`
--
ALTER TABLE `product_provider`
  ADD CONSTRAINT `product_provider_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_provider_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
