# phpMyAdmin SQL Dump
# version 2.5.6
# http://www.phpmyadmin.net
#
# ����: localhost
# ����� ��������: Jan 28 2021 �., 08:19
# ������ �������: 3.23.53
# ������ PHP: 7.3.6
# 
# �� : `db_shop`
# 

# --------------------------------------------------------

#
# ��������� ������� `cart`
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
# ���� ������ ������� `cart`
#


# --------------------------------------------------------

#
# ��������� ������� `category`
#

CREATE TABLE `category` (
  `id` int(10) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default '',
  `brand` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=25 ;

#
# ���� ������ ������� `category`
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
# ��������� ������� `news`
#

CREATE TABLE `news` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `text` text NOT NULL,
  `date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

#
# ���� ������ ������� `news`
#

INSERT INTO `news` VALUES (1, '� ��������� ��������� Lenovo Y510 � ������� ������� ���� �� 2 T�!', '������ ���������� ��������� ��������� Lenovo Y510 �������� � ������� ������� ���� �� 2 T�!\r\n', '2014-03-03');
INSERT INTO `news` VALUES (2, '�������! ������ ��� 0,01% �� Nokia Lumia 1320!', '������ ���������� ��������� ���������� Nokia Lumia ����� ����������� �������� ������ ��� 0,01% �������!\r\n���������: http://rozetka.com.ua/', '2014-03-04');
INSERT INTO `news` VALUES (3, '�����: ����� ����� � �������', 'Palmann DVR-25 S\r\n�����: ����� ����� � �������', '2014-02-01');
INSERT INTO `news` VALUES (4, ' ����� ������������� � �� �������!', '������������ ����-����� �������� ��������� �������� ���, �� ������ �� �������� ��������, ������, SMS �� MMS ��������� ��������� ������ �� �������� ��� ������ ������!', '2014-01-01');

# --------------------------------------------------------

#
# ��������� ������� `reg_user`
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
# ���� ������ ������� `reg_user`
#

INSERT INTO `reg_user` VALUES (1, 'admin', '1', '1', '1', '1', '1', '1', '1', '2014-03-12 00:00:00', '1');

# --------------------------------------------------------

#
# ��������� ������� `table_products`
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
# ���� ������ ������� `table_products`
#

INSERT INTO `table_products` VALUES (1, '�������� Samsung I9192 Galaxy S4 mini DUOS 8Gb (������)', 1699, 'Samsung', '', '', '�������� Explay Five ���������� ������������ �����������, ���������������� "��������" � �������� ������������� ������� � ���� ��������. ����� ����, ������ �������� �������� ���������, ������ ������������������ ������� � ����� IPS-�������. ', 'img1.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-18 03:13:16', 0, 0, 0, 1, 1, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (2, '�������� Samsung I9500 Galaxy S4 16Gb (������)', 2499, 'Samsung', '', '', '�������� Explay Five ���������� ������������ �����������, ���������������� "��������" � �������� ������������� ������� � ���� ��������. ����� ����, ������ �������� �������� ���������, ������ ������������������ ������� � ����� IPS-�������. ', 'img2.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-18 06:22:32', 1, 0, 0, 1, 1, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (3, '�������� HTC Desire 600 dual sim (�����)', 1599, 'HTC', '', '', '�������� HTC Desire 600 dual sim � ������������ ������ � ���������� ���� ���-���� ��� ��������� �������������. ', 'img3.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-22 09:21:21', 1, 0, 0, 1, 0, 'mobile', 4, 0, '0');
INSERT INTO `table_products` VALUES (6, 'Nokia Lumia 625 (������)', 1199, 'Nokia', '', '', '�������� Nokia Lumia 625 ������ ����������� �������� ��� ��������� ������������. ������ � �������� ������ ������ �������� � ���� ��������� ����� �������: ����� ���� � ���������, � ����������. ', 'img4.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-23 00:00:00', 1, 0, 0, 1, 0, 'mobile', 7, 0, '0');
INSERT INTO `table_products` VALUES (8, '�������� Apple iPhone 5 16Gb (�����)', 2799, 'Apple', '', 'Apple iPhone ���� ��� ������� � ������ � ��� �������. ������� Apple iPhone 5 � ����� 7,6 ����������, � ��� � ����� 112 �������, ��� �� 18% ������ � �� 20% ����� �� ��������� � iPhone 4S.', '', 'img6.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 00:00:00', 0, 1, 0, 1, 0, 'mobile', 1, 0, '0');
INSERT INTO `table_products` VALUES (9, '�������� Samsung I8190 Galaxy S III Mini La Fleur 8Gb (�����)', 1099, 'Samsung', '', '', '�������� I8190 Galaxy S III Mini La Fleur �������� � ������������ ������� � ���������� �������� �������� � ������������ �����������������. ������ �������� 4-�������� ��������������� Super AMOLED', 'img7.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 07:20:28', 1, 0, 0, 1, 0, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (10, '�������� LG E612 Optimus L5 (������)', 5990, 'LG', '', '', '�������� LG E612 Optimus L5 ����� ������������ �������� �������������, ���������� �����������������, ���������� ����������� ���������� � �������� ��������.', 'img8.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 05:20:28', 1, 1, 0, 1, 1, 'mobile', 5, 0, '0');
INSERT INTO `table_products` VALUES (11, '�������� Sony Xperia miro (������)', 6990, 'Sony', '', '', '�������� Sony Xperia miro ������������ �� ��������� ������� � ���������� �����, � ���������, � Facebook. ������ ��������� ���������� �� ����� � �������� 24 ���� � ����� � � ��������� �������������� � ��������� �������', 'img9.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 07:22:24', 1, 0, 0, 1, 0, 'mobile', 10, 0, '0');
INSERT INTO `table_products` VALUES (12, '�������� Samsung S5360 Galaxy Y La Fleur (�����)', 3990, 'Samsung', '', '', '�������� Samsung S5360 Galaxy Y La Fleur � ��� ���������� ������� �� ������������� ����. ����� ���� ��� ��� ��������� � ������������ ������������ � ������, ����������, ������������� �������� �����. ', 'img10.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 05:14:24', 1, 0, 0, 1, 0, 'mobile', 9, 0, '0');
INSERT INTO `table_products` VALUES (13, '�������� Explay Five (������)', 7990, 'Explay', '', '', '�������� Explay Five ���������� ������������ �����������, ���������������� "��������" � �������� ������������� ������� � ���� ��������. ����� ����, ������ �������� �������� ���������, ������ ������������������ ������� � ����� IPS-�������. ', 'img11.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-29 08:16:28', 1, 0, 0, 1, 2, 'mobile', 2, 0, '0');
INSERT INTO `table_products` VALUES (14, '�������� Philips Xenium W732 (�����)', 7490, 'Philips', '', '', '�������� �������� Philips W732 �������� ������� �����������������. ������ ������������ ������ ���� ���-����, ��������� ���� ���������� ����������� �������� ������ ������ �� �������', 'img12.jpg', '', '<ul>\r\n<li>��������� UMTS   : 900, 1900, 2100</li>\r\n<li>������ � ��������   : GPRS, EDGE, 3G</li>\r\n<li>�����   : ��</li>\r\n<li>Bluetooth   : 4.0</li>\r\n</ul>', '', '2013-08-24 06:24:28', 1, 0, 0, 1, 9, 'mobile', 8, 0, '0');
INSERT INTO `table_products` VALUES (16, '�������', 50000, 'LG', '�������', '�������', '<p>����� ����� ����� �����&nbsp;����������������������������</p>\r\n', 'mobile-1631.jpg', '<p>����� ����� ����� �����&nbsp;���������������������</p>\r\n', '<p>����� ����� ����� �����&nbsp;���������������������</p>\r\n', '<p>����� ����� ����� �����&nbsp;���������������������</p>\r\n', '0000-00-00 00:00:00', 0, 1, 0, 1, 4, 'mobile', 5, 0, '0');
INSERT INTO `table_products` VALUES (17, '�������� Philips Xenium W732 (�����)', 5000, 'LG', 'Philips Xenium, �������� Philips, Philips Xenium W732 (�����)', '', '<p>�������� �������� Philips W732 �������� ������� �����������������. ������ ������������ ������ ���� ���-����, ��������� ���� ���������� ����������� �������� ������ ������ �� �������</p>\r\n', 'mobile-1721.jpg', '<p>�������� <strong>Samsung I9500 Galaxy S4 16Gb</strong> ������������ ����� ����������� ���������� ��� ����� � �������. ������� ����� �������������� ������� ��������� ������� �������� ������������ ����� ��������� ���������, ��������� ���������� ���������, ���-������� � ������������ ������.</p>\r\n\r\n<p>������� ����� ������� �����. ��� ������ � �������� �������� ���������� ������ Wi-Fi � 3G-�����. ������ ����������� ����� �������� � ������������ � �������� ��������� &ndash; ��� ������������ ����������� ������������ ������ � ����� � ��������� ������ �������� �������. ����� �������� ���������� ����������� Bluetooth. ��� ������ � ����������� ������ �������� ����� ����������� E-mail-����������.</p>\r\n\r\n<p>������� ���������� � ���������� �����. �������� Samsung I9500 Galaxy S4 16Gb ������� GPS-�����������, ������� ������� ������� ����������� ������� � ������ ����� ���������� ������ ������.</p>\r\n\r\n<p>������ ������. ���������� � ����������� ������� 13 �� ��������� ������� ������ �������� ��������. ����� �������������� ����� ����������� � ������� Full HD. ������������ ������� � ��������� ������ �������� �������� ������� ���������.</p>\r\n', '<ul>\r\n	<li>&nbsp;&nbsp; &nbsp;��� �������: Super AMOLED ����������(��): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;���������� ������(��): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;������������ �������: Android v4.2</li>\r\n</ul>\r\n', '<ul>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;��� �������: Super AMOLED ����������(��): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;���������� ������(��): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;������������ �������: Android v4.2</li>\r\n	<li>&nbsp;&nbsp; &nbsp;��� �������: Super AMOLED ����������(��): 13</li>\r\n	<li>&nbsp;&nbsp; &nbsp;���������� ������(��): 16000</li>\r\n	<li>&nbsp;&nbsp; &nbsp;������������ �������: Android v4.2</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '0000-00-00 00:00:00', 0, 0, 0, 1, 5, 'mobile', 5, 0, '0');
