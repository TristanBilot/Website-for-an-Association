

<!-- BOUTON DE CONNEXION --> 
<!-- <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Connexion</button> -->

<div id="id01" class="modal">
  <form class="modal-content animate" action="index.php?controle=connexion&action=connexion" method="post">

    <!-- BANDEAU DE CONNEXION -->


    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img id="avatar1" src="" alt="Avatar" class="avatar">
    </div>
    <!-- Génération aléatoire de l'icon -->
    <script src="./Content/js/randomUserIcon.1.js"></script>

    <div class="box_container">
       
          <label class="description_form" for="uname"><b>Email</b></label>
          <input type="text" placeholder="Entrez votre adresse email" name="mail" required>

          <label class="description_form" for="psw"><b>Mot de passe</b></label>
          <input type="password" placeholder="Entrez votre mot de passe" name="pw" required>
        
      <button type="submit">Connexion</button>
      &nbsp;
      <label>
        <input type="checkbox" checked="checked" name="remember"> Se rappeler de moi
      </label>
    </div>

    <?php
         if (isset($_GET['error_connexion'])) { 
            echo "<p class='text text-danger' style='margin-left:20px;font-size:18px;font-weight: bold;'>" . $_GET['error_connexion'] . "</p>";
        }
     ?>

    <div style="padding:20px;background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Fermer</button>
      <span style="margin-left: 10px;" class="psw"><a href="index.php?inscription_click">Créer un compte</a></span>
      <span class="psw"><a href="#">Mot de passe</a> oublié ? </span>
    </div>
  </form>
</div>

<!-- Lorsque les idenifiants rentrés sont faux, on revient sur l'index puis on clique sur le bouton Connexion pour 
    redonner la main au user (on utilise le paramètre click) -->
<?php
    if (isset($_GET['connect_click'])) {
        echo "
        <script>
            document.getElementById('id01').style.display='block';
        </script>";
    }
?>

