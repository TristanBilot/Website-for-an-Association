<?php

function redirect($page) {
	echo "<script>window.location = '" . $page . "'</script>";
}

function inscription() {
    $mail=  isset($_POST['mail'])?($_POST['mail']):'';
    $pw1=  isset($_POST['pw1'])?($_POST['pw1']):'';
	$pw2=  isset($_POST['pw2'])?($_POST['pw2']):'';
	$nom=  isset($_POST['nom'])?($_POST['nom']):'';
	$prenom=  isset($_POST['prenom'])?($_POST['prenom']):'';

	$champsOK = false;
    if ($pw1 != $pw2) {
		redirect("index.php?inscription_click&error_inscription=Les deux mots de passe sont différents !");
        die();
	}
	if (!(preg_match('#^[\w.-]+@[\w.-]+\.[a-z]{2,6}$#i', $mail))) { // EXPRESSION REGULIERE
		redirect("index.php?inscription_click&error_inscription=Veuillez entrer une adresse mail correcte");
        die();
	}
	if (($pw1 == $pw2) && (preg_match('#^[\w.-]+@[\w.-]+\.[a-z]{2,6}$#i', $mail))) 
		$champsOK = true;

	if ($champsOK) { // Inscription possible
		require('./M/connect_bd.php'); 
		$sql="INSERT INTO utilisateur (nomUser,prenomUser, isAdh, statutUser, roleUser, mailUser, passuser, photo) VALUES (:nom, :prenom, 0, 'Etudiant', 'U', :mail, :pw, './Content/img/photos_user/default.png');";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':nom', $nom);
		    $commande->bindParam(':prenom', $prenom);
			$commande->bindParam(':mail', $mail);
			$commande->bindParam(':pw', $pw1);
			$bool = $commande->execute(); 
			if ($bool) {
				redirect("index.php?inscription_click&success_inscription=Votre inscription est un succès !");
				die();
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("L'inscription a échoué : " . $e->getMessage() . "\n");
			die(); 
		}
	}
}
	
?>