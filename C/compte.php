<?php

function actualiser() {
    $mail=  isset($_POST['mail'])?($_POST['mail']):'';
	$nom =  isset($_POST['nom'])?($_POST['nom']):'';
    $prenom=  isset($_POST['prenom'])?($_POST['prenom']):'';
    $tel=  isset($_POST['tel'])?($_POST['tel']):'';
    $pseudo =  isset($_POST['pseudo'])?($_POST['pseudo']):'';
    $photo = $_FILES['userfile']['name'];
    $uploaddir = './Content/img/photos_user/photos/';

	require("./M/connect_bd.php");
    if ($photo == "") 
        $photo = getPhoto($_SESSION['id']);
    else {
        $photo = $uploaddir . basename($_FILES['userfile']['name']);
        $uploadfile = $uploaddir . basename($_FILES['userfile']['name']);
        move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile);
    }
    
        $sql="UPDATE utilisateur SET mailUser=:mail, nomUser=:nom, prenomUser=:prenom, tel=:tel, pseudo=:pseudo, photo=:photo WHERE idUser=:id";
        try {
            $commande = $pdo->prepare($sql);
            $commande->bindParam(':mail', $mail);
            $commande->bindParam(':nom', $nom);
            $commande->bindParam(':prenom', $prenom);
            $commande->bindParam(':tel', $tel);
            $commande->bindParam(':pseudo', $_pseudo);
            $commande->bindParam(':photo', $photo);
            $commande->bindParam(':id', $_SESSION['id']);
            $bool = $commande->execute(); 
            if ($bool) {
                refresh();
                redirect("index.php");
            }
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de modification : " . $e->getMessage() . "\n");
            die(); 
        }
    // } else {
    //     redirect("index.php");
    //     echo "<script>alert('Un problème est survenu lors de la copie de la photo.');</script>";
    // }
}

function refresh() {
    require('./C/connexion.php');
    $pw = $_SESSION['pw'];
    $mail = $_SESSION['mailUser'];
    session_destroy();
    session_start();
    loadSession($mail, $pw);
}

function getPhoto($id) {
    require('./M/connect_bd.php');
    $sql="SELECT photo FROM `utilisateur` WHERE idUser=:id";
	try {
		$commande = $pdo->prepare($sql);
		$commande->bindParam(':id', $id);
		$bool = $commande->execute();
		$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); 
	}
	catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die(); 
    }
    if (count($resultat) != 0) {
		foreach ($resultat as $tuple) {
            return $tuple['photo'];
        }
    }
}

?>