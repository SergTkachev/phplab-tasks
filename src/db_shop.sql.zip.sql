# phpMyAdmin SQL Dump
# version 2.5.6
# http://www.phpmyadmin.net
#
# Хост: localhost
# Время создания: Jan 28 2021 г., 08:19
# Версия сервера: 3.23.53
# Версия PHP: 7.3.6
# 
# БД : `db_shop`
# 

# --------------------------------------------------------

#
# Структура таблицы `cart`
#

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL auto_increment,
  `cart_id_products` int(10) NOT NULL default '0',
  `cart_price` int(10) NOT NULL default '0',
  `cart_count` int(10) NOT NULL default '1',
  `cart_datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `cart_ip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`cart_id`)
) TYPE=MyISAM AUTO_INCREMENT=10 ;

#
# Дамп данных таблицы `cart`
#


# --------------------------------------------------------

#
# Структура таблицы `category`
#

CREATE TABLE `category` (
  `id` int(10) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default '',
  `brand` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=25 ;

#
# Дамп данных таблицы `category`
#

INSERT INTO `category` VALUES (1, 'mobile', 'Apple');
INSERT INTO `category` VALUES (2, 'mobile', 'Explay');
INSERT INTO `category` VALUES (3, 'mobile', 'Fly');
INSERT INTO `category` VALUES (4, 'mobile', 'HTC');
INSERT INTO `category` VALUES (5, 'mobile', 'LG');
INSERT INTO `category` VALUES (6, 'mobile', 'Motorola');
INSERT INTO `category` VALUES (7, 'mobile', 'Nokia');
INSERT INTO `category` VALUES (8, 'mobile', 'Philips');
INSERT INTO `category` VALUES (9, 'mobile', 'Samsung');
INSERT INTO `category` VALUES (10, 'mobile', 'Sony');
INSERT INTO `category` VALUES (12, 'notebook', 'Acer');
INSERT INTO `category` VALUES (15, 'notebook', 'HP');
INSERT INTO `category` VALUES (16, 'notebook', 'Lenovo');
INSERT INTO `category` VALUES (17, 'notebook', 'MSI');
INSERT INTO `category` VALUES (18, 'notebook', 'Packard Bell');
INSERT INTO `category` VALUES (20, 'notebook', 'Samsung Apple');
INSERT INTO `category` VALUES (21, 'notebook', 'Apple');
INSERT INTO `category` VALUES (22, 'notepad', 'Samsung');
INSERT INTO `category` VALUES (23, 'notepad', 'Apple');
INSERT INTO `category` VALUES (24, 'notepad', 'Sony');

# --------------------------------------------------------

#
# Структура таблицы `news`
#

CREATE TABLE `news` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `text` text NOT NULL,
  `date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

#
# Дамп данных таблицы `news`
#

INSERT INTO `news` VALUES (1, 'К акционным ноутбукам Lenovo Y510 в подарок жесткий диск на 2 TБ!', 'Каждый покупатель акционных ноутбуков Lenovo Y510 получает в подарок жесткий диск на 2 TБ!\r\n', '2014-03-03');
INSERT INTO `news` VALUES (2, 'Новинка! Кредит под 0,01% на Nokia Lumia 1320!', 'Каждый покупатель акционных смартфонов Nokia Lumia имеет возможность оформить кредит под 0,01% годовых!\r\nПодробнее: http://rozetka.com.ua/', '2014-03-04');
INSERT INTO `news` VALUES (3, 'Акция: Хомяк вояка в подарок', 'Palmann DVR-25 S\r\nАкция: Хомяк вояка в подарок', '2014-02-01');
INSERT INTO `news` VALUES (4, ' Акція «Користуйтесь і не платіть»!', 'Користуйтеся будь-якими платними послугами протягом дня, не платіть за мобільний Інтернет, дзвінки, SMS та MMS абонентам операторів України та забудьте про щоденні платежі!', '2014-01-01');

# --------------------------------------------------------

#
# Структура таблицы `reg_user`
#

CREATE TABLE `reg_user` (
  `id` int(5) NOT NULL auto_increment,
  `login` varchar(100) NOT NULL default '',
  `pass` varchar(100) NOT NULL default '',
  `surname` varchar(100) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `patronymic` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `phone` varchar(100) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

#
# Дамп данных таблицы `reg_user`
#

INSERT INTO `reg_user` VALUES (1, 'admin', '1', '1', '1', '1', '1', '1', '1', '2014-03-12 00:00:00', '1');

# --------------------------------------------------------

#
# Структура таблицы `table_products`
#

CREATE TABLE `table_products` (
  `products_id` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `price` int(10) NOT NULL default '0',
  `brand` varchar(255) NOT NULL default '',
  `seo_words` text NOT NULL,
  `seo_description` text NOT NULL,
  `mini_description` text NOT NULL,
  `image` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `mini_features` text NOT NULL,
  `features` text NOT NULL,
  `datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `new` int(11) NOT NULL default '0',
  `leader` int(11) NOT NULL default '0',
  `sale` int(11) NOT NULL default '0',
  `visible` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `type_tovara` varchar(255) NOT NULL default '',
  `brand_id` int(11) NOT NULL default '0',
  `vote` int(11) NOT NULL default '0',
  `votes` float NOT NULL default '0',
  PRIMARY KEY  (`products_id`)
) TYPE=MyISAM AUTO_INCREMENT=18 ;

#
# Дамп данных таблицы `table_products`
#

INSERT INTO `table_products` VALUES (1, 'Смартфон Samsung I9192 Galaxy S4 mini DUOS 8Gb (черный)', 1699, 'Samsung', '', '', 'Смартфон Explay Five отличается великолепным исполнением, производительной "начинкой" и широкими возможностями доступа к сети Интернет. Кроме того, модель обладает системой навигации, мощной восьмимипиксельной камерой и ярким IPS-экраном. ', 'img1.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-18 03:13:16', 0, 0, 0, 1, 1, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (2, 'Смартфон Samsung I9500 Galaxy S4 16Gb (черный)', 2499, 'Samsung', '', '', 'Смартфон Explay Five отличается великолепным исполнением, производительной "начинкой" и широкими возможностями доступа к сети Интернет. Кроме того, модель обладает системой навигации, мощной восьмимипиксельной камерой и ярким IPS-экраном. ', 'img2.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-18 06:22:32', 1, 0, 0, 1, 1, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (3, 'Смартфон HTC Desire 600 dual sim (белый)', 1599, 'HTC', '', '', 'Смартфон HTC Desire 600 dual sim – классическая модель с поддержкой двух сим-карт для экономных пользователей. ', 'img3.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-22 09:21:21', 1, 0, 0, 1, 0, 'mobile', 4, 0, '0');
INSERT INTO `table_products` VALUES (6, 'Nokia Lumia 625 (черный)', 1199, 'Nokia', '', '', 'Смартфон Nokia Lumia 625 станет оптимальным решением для активного пользователя. Легкий и стильный корпус модели скрывает в себе серьезный набор функций: здесь есть и навигатор, и медиаплеер. ', 'img4.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-23 00:00:00', 1, 0, 0, 1, 0, 'mobile', 7, 0, '0');
INSERT INTO `table_products` VALUES (8, 'Смартфон Apple iPhone 5 16Gb (белый)', 2799, 'Apple', '', 'Apple iPhone стал еще быстрее и вместе с тем изящнее. Толщина Apple iPhone 5 – всего 7,6 миллиметра, а вес – около 112 граммов, что на 18% тоньше и на 20% легче по сравнению с iPhone 4S.', '', 'img6.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 00:00:00', 0, 1, 0, 1, 0, 'mobile', 1, 0, '0');
INSERT INTO `table_products` VALUES (9, 'Смартфон Samsung I8190 Galaxy S III Mini La Fleur 8Gb (белый)', 1099, 'Samsung', '', '', 'Смартфон I8190 Galaxy S III Mini La Fleur выполнен в эргономичном корпусе и отличается стильным дизайном и великолепной функциональностью. Модель оснащена 4-дюймовым мультисенсорным Super AMOLED', 'img7.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 07:20:28', 1, 0, 0, 1, 0, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (10, 'Смартфон LG E612 Optimus L5 (черный)', 5990, 'LG', '', '', 'Смартфон LG E612 Optimus L5 может похвастаться широкими возможностями, прекрасной функциональностью, поддержкой современных технологий и стильным корпусом.', 'img8.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 05:20:28', 1, 1, 0, 1, 1, 'mobile', 5, 0, '0');
INSERT INTO `table_products` VALUES (11, 'Смартфон Sony Xperia miro (черный)', 6990, 'Sony', '', '', 'Смартфон Sony Xperia miro ориентирован на любителей общения в социальных сетях, в частности, в Facebook. Модель позволяет оставаться на связи с друзьями 24 часа в сутки и с удобством комментировать и создавать статусы', 'img9.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 07:22:24', 1, 0, 0, 1, 0, 'mobile', 10, 0, '0');
INSERT INTO `table_products` VALUES (12, 'Смартфон Samsung S5360 Galaxy Y La Fleur (белый)', 3990, 'Samsung', '', '', 'Смартфон Samsung S5360 Galaxy Y La Fleur – это компактный аппарат по демократичной цене. Здесь есть все для активного и современного пользователя – камера, медиаплеер, разнообразные средства связи. ', 'img10.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 05:14:24', 1, 0, 0, 1, 0, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (13, 'Смартфон Explay Five (черный)', 7990, 'Explay', '', '', 'Смартфон Explay Five отличается великолепным исполнением, производительной "начинкой" и широкими возможностями доступа к сети Интернет. Кроме того, модель обладает системой навигации, мощной восьмимипиксельной камерой и ярким IPS-экраном. ', 'img11.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-29 08:16:28', 1, 0, 0, 1, 2, 'mobile', 2, 0, '0');
INSERT INTO `table_products` VALUES (14, 'Смартфон Philips Xenium W732 (белый)', 7490, 'Philips', '', '', 'Стильный смартфон Philips W732 порадует широкой функциональностью. Модель поддерживает работу двух сим-карт, благодаря чему появляется возможность отделить личные звонки от рабочих', 'img12.jpg', '', '<ul>\r\n<li>Диапазоны UMTS   : 900, 1900, 2100</li>\r\n<li>Доступ в Интернет   : GPRS, EDGE, 3G</li>\r\n<li>Модем   : да</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 06:24:28', 1, 0, 0, 1, 9, 'mobile', 8, 0, '0');
INSERT INTO `table_products` VALUES (16, 'Телефон', 50000, 'LG', 'Телефон', 'Телефон', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефонТелефон</p>\r\n', 'mobile-1631.jpg', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефон</p>\r\n', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефон</p>\r\n', '<p>Товар Товар Товар Товар&nbsp;ТелефонТелефонТелефон</p>\r\n', '0000-00-00 00:00:00', 0, 1, 0, 1, 4, 'mobile', 5, 0, '0');
INSERT INTO `table_products` VALUES (17, 'Смартфон Philips Xenium W732 (белый)', 5000, 'LG', 'Philips Xenium, Смартфон Philips, Philips Xenium W732 (белый)', '', '<p>Стильный смартфон Philips W732 порадует широкой функциональностью. Модель поддерживает работу двух сим-карт, благодаря чему появляется возможность отделить личные звонки от рабочих</p>\r\n', 'mobile-1721.jpg', '<p>Смартфон <strong>Samsung I9500 Galaxy S4 16Gb</strong> представляет собой современное устройство для связи и общения. Широкий набор дополнительных функций позволяет девайсу заменить пользователю сразу несколько устройств, обеспечив комфортную навигацию, веб-серфинг и качественную съемку.</p>\r\n\r\n<p>Широкий выбор средств связи. Для выхода в Интернет смартфон предлагает модуль Wi-Fi и 3G-модем. Способ подключения можно выбирать в соответствии с текущими условиями &ndash; это обеспечивает практически повсеместный доступ к связи и экономный расход денежных средств. Также доступно соединение посредством Bluetooth. Для работы с электронной почтой смартфон имеет собственное E-mail-приложение.</p>\r\n\r\n<p>Быстрая ориентация в незнакомом месте. Смартфон Samsung I9500 Galaxy S4 16Gb оснащен GPS-навигатором, который поможет выбрать оптимальный маршрут и быстро найти поблизости нужный объект.</p>\r\n\r\n<p>Мощная камера. Фотокамера с разрешением матрицы 13 Мп позволяет сделать снимки высокого качества. Также поддерживается режим видеосъемки в формате Full HD. Светодиодная вспышка и автофокус всегда позволят получить хороший результат.</p>\r\n', '<ul>\r\n	<li>&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li>\r\n</ul>\r\n', '<ul>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Тип дисплея: Super AMOLED Фотокамера(Мп): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Встроенная память(Мб): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;Операционная система: Android v4.2</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '0000-00-00 00:00:00', 0, 0, 0, 1, 5, 'mobile', 5, 0, '0');
