<?php
	$hostname = "localhost";
	$base= "db_B220";
	$loginBD= "root";
	$passBD="root";
	try {
		$dsn = "mysql:server=$hostname ; dbname=$base";
		$pdo = new PDO ($dsn, $loginBD, $passBD,
		array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch (PDOException $e) {
		echo utf8_encode("Echec de connexion à la base: " . $e->getMessage() . "\n");
		die();
	}
?>
