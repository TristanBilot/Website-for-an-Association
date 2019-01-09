<?php

function redirect($page) {
	echo "<script>window.location = '" . $page . "'</script>";
}

function connexion() { // Connexion d'un utilisateur (GET)
	$mail=  isset($_POST['mail'])?($_POST['mail']):'';
	$pw=  isset($_POST['pw'])?($_POST['pw']):'';
	$remember=  isset($_POST['remember'])?($_POST['remember']):'';

	require('./M/connect_bd.php'); 
		$sql="SELECT * FROM `utilisateur` WHERE mailUser=:mail AND passUser=:pw";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':mail', $mail);
			$commande->bindParam(':pw', $pw);
			
			$bool = $commande->execute(); 
			if ($bool) {
				$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); 
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
			die(); 
		}
		if (count($resultat) == 0) {
			redirect("index.php?connect_click&error_connexion=Vos identifiants sont introuvables !");
			return false;
		}
		else {
			loadSession($mail, $pw);
			redirect("index.php?controle=page_controller&action=displayMainPage");
			return true;
		}
}

function loadSession($mail, $pw) { // Enregistrement des informations en Session
    require('./M/connect_bd.php'); 
	$sql="SELECT * FROM `utilisateur` WHERE mailUser=:mail AND passUser=:pw";
	try {
		$commande = $pdo->prepare($sql);
		$commande->bindParam(':mail', $mail);
		$commande->bindParam(':pw', $pw);
		$bool = $commande->execute(); 
		if ($bool) {
			$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); 
		}
	}
	catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die();
	}
	if (count($resultat) != 0) {
		foreach ($resultat as $tuple) {
			$_SESSION['id'] = $tuple['idUser'];
			$_SESSION['pw'] = $tuple['passUser'];
			$_SESSION['prenom'] = $tuple['prenomUser'];
			$_SESSION['nom'] = $tuple['nomUser'];
			$_SESSION['isAdh'] = $tuple['isAdh'];
			$_SESSION['statutUser'] = $tuple['statutUser'];
			$_SESSION['roleUser'] = $tuple['roleUser'];
			$_SESSION['mailUser'] = $tuple['mailUser'];
			$_SESSION['passUser'] = $tuple['passUser'];
			$_SESSION['photo'] = $tuple['photo'];
			$_SESSION['nom_complet'] = $tuple['prenom'] . " " . $tuple['nom'];
			$_SESSION['connected'] = 1;	
		}
		return true;
	}
	return false;
}

function deconnexion() {
	session_destroy();
	redirect("index.php");
}

?>