-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 09 2025 г., 11:28
-- Версия сервера: 8.0.42-0ubuntu0.24.04.1
-- Версия PHP: 8.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `grigorev-ek_m1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE `materials` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `material_type_id` int NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int NOT NULL,
  `quantityM` int NOT NULL,
  `quantityP` decimal(18,2) NOT NULL,
  `unit_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`id`, `name`, `material_type_id`, `price`, `quantity`, `quantityM`, `quantityP`, `unit_id`) VALUES
(1, 'Цельный массив дерева Дуб 1000х600 мм', 5, 7450.00, 1500, 500, 7.00, 1),
(2, 'Клееный массив дерева Дуб 1000х600 мм', 1, 4520.00, 300, 500, 7.00, 1),
(3, 'Шпон облицовочный Дуб натуральный 2750х480 мм', 1, 2500.00, 2000, 1500, 20.00, 1),
(4, 'Фанера 2200х1000 мм', 2, 2245.00, 450, 1000, 53.00, 1),
(5, 'ДСП 2750х1830 мм', 2, 530.00, 1010, 1200, 181.00, 1),
(6, 'МДФ 2070х1400 мм', 2, 417.00, 1550, 1000, 87.00, 1),
(7, 'ДВП 1400х693', 2, 187.00, 1310, 1000, 190.00, 1),
(8, 'ХДФ 2800x2070 мм', 2, 371.00, 1400, 1200, 90.00, 1),
(9, 'Экокожа 140 см', 3, 1600.00, 1200, 1500, 100.00, 2),
(10, 'Велюр 140 см', 3, 1300.00, 1300, 1500, 100.00, 2),
(11, 'Шенилл 140 см', 3, 620.00, 950, 1500, 100.00, 2),
(12, 'Рогожка 140 см', 3, 720.00, 960, 1500, 100.00, 2),
(13, 'Закаленное стекло 2600х1800 мм', 4, 1148.00, 1000, 500, 197.00, 1),
(14, 'Металлокаркас для стула', 5, 1100.00, 300, 250, 5.00, 3),
(15, 'Металлокаркас каркас из профиля с траверсами для стола', 5, 6700.00, 100, 100, 1.00, 3),
(16, 'Колесо для мебели поворотное', 6, 11.00, 1500, 1000, 500.00, 3),
(17, 'Газ-лифт', 5, 730.00, 500, 250, 5.00, 3),
(18, 'Металлическая крестовина для офисных кресел', 5, 2700.00, 500, 250, 5.00, 3),
(19, 'Пластиковый комплект для стула', 6, 900.00, 300, 250, 100.00, 3),
(20, 'Кромка ПВХ', 6, 36.00, 1500, 1000, 100.00, 4),
(21, 'Test', 3, 3232.00, 22, 1, 3.00, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `material_products`
--

CREATE TABLE `material_products` (
  `id` int NOT NULL,
  `material_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_products`
--

INSERT INTO `material_products` (`id`, `material_id`, `product_id`, `quantity`) VALUES
(1, 4, 1, 1.00),
(2, 10, 1, 2.00),
(3, 11, 1, 2.00),
(4, 12, 1, 2.00),
(5, 14, 1, 1.00),
(6, 16, 1, 5.00),
(7, 17, 1, 1.00),
(8, 18, 1, 1.00),
(9, 19, 1, 1.00),
(10, 4, 2, 1.00),
(11, 9, 2, 3.00),
(12, 11, 2, 2.00),
(13, 12, 2, 3.00),
(14, 14, 2, 1.00),
(15, 16, 2, 5.00),
(16, 17, 2, 1.00),
(17, 18, 2, 1.00),
(18, 19, 2, 1.00),
(19, 4, 3, 2.00),
(20, 9, 3, 4.00),
(21, 10, 3, 2.00),
(22, 14, 3, 1.00),
(23, 16, 3, 5.00),
(24, 17, 3, 1.00),
(25, 18, 3, 1.00),
(26, 19, 3, 1.00),
(27, 5, 4, 3.00),
(28, 20, 4, 6.00),
(29, 2, 5, 3.00),
(30, 3, 5, 2.00),
(31, 6, 5, 3.00),
(32, 8, 5, 2.00),
(33, 2, 6, 2.00),
(34, 3, 6, 2.00),
(35, 8, 6, 2.00),
(36, 5, 7, 2.00),
(37, 7, 7, 1.00),
(38, 20, 7, 7.00),
(39, 6, 8, 6.00),
(40, 15, 8, 1.00),
(41, 5, 9, 4.00),
(42, 20, 9, 9.00),
(43, 6, 10, 8.00),
(44, 8, 10, 1.00),
(45, 15, 10, 1.00),
(46, 5, 11, 6.00),
(47, 20, 11, 6.00),
(48, 4, 12, 3.00),
(49, 5, 12, 5.00),
(50, 5, 12, 5.00),
(51, 7, 12, 4.00),
(52, 20, 12, 9.00),
(53, 1, 13, 4.00),
(54, 3, 13, 2.00),
(55, 8, 13, 2.00),
(56, 13, 13, 1.00),
(57, 1, 14, 8.00),
(58, 3, 14, 7.00),
(59, 5, 14, 5.00),
(60, 6, 14, 6.00),
(61, 8, 14, 2.00),
(62, 9, 14, 2.00),
(63, 5, 15, 4.00),
(64, 7, 15, 2.00),
(65, 16, 15, 4.00),
(66, 20, 15, 7.00),
(67, 2, 16, 0.00),
(68, 16, 16, 4.00),
(69, 3, 17, 1.00),
(70, 5, 17, 8.00),
(71, 7, 17, 1.00),
(72, 20, 17, 6.00),
(73, 3, 18, 3.00),
(74, 4, 18, 4.00),
(75, 7, 18, 2.00),
(76, 13, 18, 2.00),
(77, 3, 19, 1.00),
(78, 5, 19, 8.00),
(79, 8, 19, 1.00),
(80, 1, 20, 2.00),
(81, 3, 20, 4.00),
(82, 8, 20, 2.00),
(83, 13, 20, 2.00);

-- --------------------------------------------------------

--
-- Структура таблицы `material_types`
--

CREATE TABLE `material_types` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `losse` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_types`
--

INSERT INTO `material_types` (`id`, `name`, `losse`) VALUES
(1, 'Дерево', 1.00),
(2, 'Древесная плита', 0.00),
(3, 'Текстиль', 0.00),
(4, 'Стекло', 0.00),
(5, 'Металл', 0.00),
(6, 'Пластик', 0.00);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_type_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `article` varchar(255) NOT NULL,
  `price` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `product_type_id`, `name`, `article`, `price`) VALUES
(1, 1, 'Кресло детское цвет Белый и Розовый', '3028272', 15325.00),
(2, 1, 'Кресло офисное цвет Черный', '3018556', 21444.00),
(3, 1, 'Кресло эргономичное цвет Темно-коричневый  ', '3549922', 24760.00),
(4, 2, 'Полка настольная', '7028048', 2671.00),
(5, 3, 'Стеллаж для документов цвет Дуб светлый 854х445х2105 мм', '5759324', 24899.00),
(6, 3, 'Стеллаж цвет Белый с ящиками 854х445х2105 мм', '5259474', 16150.00),
(7, 3, 'Стеллаж цвет Орех 400х370х2000 мм', '5118827', 2860.00),
(8, 4, 'Стол для ноутбука на металлокаркасе 800х600х123 мм', '1029784', 14690.00),
(9, 4, 'Стол компьютерный 700х600х500 мм', '1028248', 4106.00),
(10, 4, 'Стол компьютерный на металлокаркасе 1400х600х750 мм', '1130981', 13899.00),
(11, 4, 'Стол письменный 1100x750x600 мм', '1188827', 5148.00),
(12, 4, 'Стол письменный с тумбочкой 4 ящика 1100x750x600 мм', '1029272', 15325.00),
(13, 4, 'Стол руководителя письменный цвет Венге 1600x800x764 мм', '1016662', 43501.00),
(14, 4, 'Стол руководителя письменный цвет Орех темный 2300x1000x750 мм', '1658953', 132500.00),
(15, 5, 'Тумба выкатная 3 ящика', '6033136', 3750.00),
(16, 5, 'Тумба офисная для оргтехники', '6115947', 2450.00),
(17, 3, 'Узкий пенал стеллаж 5 полок цвет Орех 364х326x2000 мм ', '5559898', 8348.00),
(18, 6, 'Шкаф для книг 800x420x2000 мм', '4159043', 23391.00),
(19, 6, 'Шкаф для одежды цвет Венге 602x420x2000 мм', '4758375', 12035.00),
(20, 6, 'Шкаф-витрина 2 ящика 800x420x2000 мм', '4588376', 31991.00);

-- --------------------------------------------------------

--
-- Структура таблицы `product_types`
--

CREATE TABLE `product_types` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `coefficient` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `coefficient`) VALUES
(1, 'Кресла', 2),
(2, 'Полки', 3),
(3, 'Стеллажи', 4),
(4, 'Столы', 6),
(5, 'Тумбы', 8),
(6, 'Шкафы', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `units`
--

CREATE TABLE `units` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `units`
--

INSERT INTO `units` (`id`, `name`) VALUES
(1, 'м²'),
(2, 'пог.м'),
(3, 'шт'),
(4, 'м');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `materials_index_0` (`material_type_id`),
  ADD KEY `materials_index_1` (`unit_id`);

--
-- Индексы таблицы `material_products`
--
ALTER TABLE `material_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `material_products_index_0` (`material_id`),
  ADD KEY `material_products_index_1` (`product_id`);

--
-- Индексы таблицы `material_types`
--
ALTER TABLE `material_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `products_index_0` (`product_type_id`);

--
-- Индексы таблицы `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `material_products`
--
ALTER TABLE `material_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT для таблицы `material_types`
--
ALTER TABLE `material_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `units`
--
ALTER TABLE `units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `materials_ibfk_2` FOREIGN KEY (`material_type_id`) REFERENCES `material_types` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `material_products`
--
ALTER TABLE `material_products`
  ADD CONSTRAINT `material_products_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `material_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
