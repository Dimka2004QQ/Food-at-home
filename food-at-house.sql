-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 20 2023 г., 16:28
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `food-at-house`
--

-- --------------------------------------------------------

--
-- Структура таблицы `discount`
--

CREATE TABLE `discount` (
  `id` int NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price-1` varchar(55) NOT NULL,
  `price-2` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `discount`
--

INSERT INTO `discount` (`id`, `img`, `title`, `text`, `price-1`, `price-2`) VALUES
(1, 'Капуста.jpg', 'Капуста маринованная 400ГР', NULL, '119', '74,5'),
(2, 'Колбаса.jpg', 'Колбаса сервелат Крымский 600 гр', NULL, '164', '229'),
(3, 'Рагу.jpg', 'Рагу из утки 1 кг', 'Потрошеная гост 145-563', '220', '269'),
(4, 'Кофе.jpg', 'Кофе Маккофе Голд 30 гр м/у', NULL, '69', '119'),
(5, 'Брюшки.jpg', 'Брюшки семги 1 кг', NULL, '658', '980'),
(6, 'Горчица.jpg', 'Горчица зерновая 190 гр с/б', NULL, '49,5', '79'),
(7, 'Цыплята.jpg', 'Цыплята Корнишон 1 кг', NULL, '159', '189'),
(8, 'Сельдь.png', 'Сельдь / 1 кг СВ/М', 'Ограничение', '69,5', '99'),
(9, 'Рулька.jpg', 'Рулька свиная 1 кг', NULL, '76,5', '119'),
(10, 'КормДляСобак.jpg', 'Корм для собак в ассортимент / 100 г', NULL, '19,5', '39'),
(11, 'Кости.png', 'Кости Свиные с/м вес / 1 кг', NULL, '69,99', '110'),
(12, 'Сыр.png', 'Сыр Витязь 50% БМК / весовой', 'БЗРЖ', '399', '549'),
(13, 'Масло.png', 'Масло оливковое ПРОШУ К СТОЛУ POMACE пэт / 0,25 л', NULL, '229', '279');

-- --------------------------------------------------------

--
-- Структура таблицы `food`
--

CREATE TABLE `food` (
  `id` int NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `text` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`id`, `img`, `title`, `text`, `price`) VALUES
(1, 'Мохито.png', 'БОЧКАРИ мохито-клубника ПЭТ / 1.5 л', NULL, '98'),
(2, 'Ситро.png', 'Напиток СИТРО-ЭКСТРА волчиха ПЭТ / 1.5 л', NULL, '89'),
(3, 'Квас.png', 'Квас АНДРЕИЧ / 1.5 л', NULL, '89'),
(4, 'Вода07.png', 'Вода питьевая АЛТАЙСКИЙ ИСТОЧНИК ПЭТ дозатор негаз. / 0.7 л', NULL, '32'),
(5, 'Вода15.png', 'Вода питьевая АЛТАЙСКИЙ ИСТОЧНИК ПЭТ негаз. / 1.5 л', NULL, '42'),
(6, 'Сок.png', 'Сок ГУРМАСТЕР мультифрукт / 1 л', NULL, '79'),
(7, 'Гранат.png', 'Гранат ТУРЦИЯ / 1 кг', NULL, '218'),
(8, 'Грейпфрут.png', 'Грейпфрут ТУРЦИЯ / 1 кг', NULL, '249'),
(9, 'Груша.png', 'Груша Талгарка/ 1 кг', NULL, '178'),
(10, 'Киви.png', 'Киви ЧИЛИ/ 1 кг', NULL, '239'),
(11, 'Горбуша.png', 'Горбуша потрошеная с головой / 1 кг', NULL, '369'),
(12, 'Минтай.jpg', 'Филе минтая 1 кг', NULL, '320'),
(13, 'Брокколи.png', 'Брокколи ЯГОД МАРКЕТ с/м / 400 г', NULL, '113'),
(14, 'Овощи.png', 'Овощи весенние ЯГОД МАРКЕТ с/м / 400 г', NULL, '119'),
(15, 'Посадская_вареная.png', 'Посадская варёная СПК / 470 г', NULL, '145'),
(16, 'Карбонат.jpg', 'Карбонат Юбилейный 1 кг', 'Весом', '599'),
(17, 'Щековина.jpg', 'Щековина копченая 1 кг', NULL, '349'),
(18, 'Ветчина.jpg', 'Ветчина куриная 380гр Амз', NULL, '189'),
(19, 'Голень.png', 'Голень куриная с/м вес / 1 кг', NULL, '269'),
(20, 'Бедро.png', 'Бедро куриное с/м вес / 834 гр', NULL, '220'),
(21, 'Ребра.jpg', 'Ребра свиные 1 кг', NULL, '289'),
(22, 'Гринфилд-брекфас.png', 'Чай ГРИНФИЛД брекфаст / 25 уп', NULL, '92,5'),
(23, 'Гринфилд-кениан.png', 'Чай ГРИНФИЛД кениан санрайс / 20 уп', NULL, '89'),
(24, 'Якобс.png', 'Кофе ЯКОБС / 150 г', NULL, '297'),
(25, 'Нескафе.png', 'Кофе НЕСКАФЕ голд / 150 г', NULL, '289'),
(26, 'Дирол-мята.png', 'Жевательная резинка DIROL мята и мелисса без сахара / 13.6 г', NULL, '36'),
(27, 'Дирол-фрукты.png', 'Жевательная резинка DIROL мята и фрукты без сахара / 13.6 г', NULL, '36'),
(28, 'Вафли-ореховые.png', 'Вафли Ореховые ЯШКИНО / 300 г', NULL, '119'),
(29, 'Вафли-сгущенка.png', 'Вафли с Варёной сгущёнкой ЯШКИНО / 300 г', NULL, '119');

-- --------------------------------------------------------

--
-- Структура таблицы `form`
--

CREATE TABLE `form` (
  `id` int NOT NULL,
  `email` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(55) NOT NULL,
  `name` varchar(255) NOT NULL,
  `massage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `form`
--

INSERT INTO `form` (`id`, `email`, `phone`, `name`, `massage`) VALUES
(3, 'Fedor@mail.ru', '89586453212', 'Иванов Иван Иванович', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `food`
--
ALTER TABLE `food`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `form`
--
ALTER TABLE `form`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
