<?php
/**
 * TODO
 *  Write DPO statements to create following tables:
 *
 *  # airports
 *   - id (unsigned int, autoincrement)
 *   - name (varchar)
 *   - code (varchar)
 *   - city_id (relation to the cities table)
 *   - state_id (relation to the states table)
 *   - address (varchar)
 *   - timezone (varchar)
 *
 *  # cities
 *   - id (unsigned int, autoincrement)
 *   - name (varchar)
 *
 *  # states
 *   - id (unsigned int, autoincrement)
 *   - name (varchar)
 */

/** @var \PDO $pdo */
require_once './pdo_ini.php';

// cities
$sql = <<<'SQL'
CREATE TABLE `cities` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`id`)
);

SQL;
$pdo->exec($sql);

// TODO states
$sql = <<<'SQL'
CREATE TABLE `states` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`id`)
);

SQL;
$pdo->exec($sql);



// TODO airports
$sql = <<<'SQL'
CREATE TABLE `airports` (
	`id` int(11) NOT NULL,
	`name` varchar(255) NOT NULL,
	`code` varchar(255) NOT NULL,
	`city_id` int(100) NOT NULL,
	`state_id` int(100) NOT NULL,
	`address` varchar(255) NOT NULL,
	`timezone` varchar(255) NOT NULL,
	PRIMARY KEY (`id`) 
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

  SQL;
  $pdo->exec($sql);