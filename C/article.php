<?php
    function displayArticles() {
        require("./M/connect_bd.php");
        $sql="SELECT * FROM article;";
		try {
			$commande = $pdo->prepare($sql);
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
                displayOneArticle($tuple['idArticle']);
            }
        }
       
    }

    function displayOneArticle($id_article) {
        require("./M/connect_bd.php");
        $sql="SELECT * FROM article WHERE idArticle=:id;";
		try {
            $commande = $pdo->prepare($sql);
            $commande->bindParam(':id', $id_article);
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
            echo "<div>";
            foreach ($resultat as $tuple) {
                echo $tuple['titre'];
                echo $tuple['contenu'];
            }
            echo "</div>";
        }
    }

?>