

<!-- <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Inscription</button> -->

<div id="id02" class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <form class="modal-content animate" action="index.php?controle=inscription&action=inscription" method="post">

    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img id="avatar" src="" alt="Avatar" class="avatar">
    </div>
    <!-- Génération aléatoire de l'icon -->
    <script src="./Content/js/randomUserIcon.js"></script>

    <div class="box_container">
       
          <label class="description_form" for="uname"><b>Prénom</b></label>
          <input type="text" placeholder="Entrez votre prénom" name="prenom" required>
  
          <label class="description_form" for="uname"><b>Nom</b></label>
          <input type="text" placeholder="Entrez votre nom" name="nom" required>

          <label class="description_form" for="uname"><b>Email</b></label>
          <input type="text" placeholder="Entrez votre adresse email" name="mail" required>

          <label class="description_form" for="psw"><b>Mot de passe</b></label>
          <input type="password" placeholder="Entrez votre mot de passe" name="pw1" required>

          <label class="description_form" for="psw"><b>Confirmez le mot de passe</b></label>
          <input type="password" placeholder="Entrez votre mot de passe" name="pw2" required>
        
      <button id="inscription" type="submit">Inscription</button>
      &nbsp;
      <label>
        <input type="checkbox" checked="checked" name="newsletter"> S'inscrire à la newsletter
      </label>
    </div>

    <?php
        if (isset($_GET['erhttps://addserie.com/american-horror-story-saison-8-episode-8-vostfrror_inscription'])) { 
            echo "<p class='text text-danger' style='margin-left:20px;font-size:18px;font-weight: bold;'>" . $_GET['error_inscription'] . "</p>";
        } 
        if (isset($_GET['success_inscription'])) { 
            echo "<p class='text text-success' style='margin-left:20px;font-size:18px;font-weight: bold;'>" . $_GET['success_inscription'] . "</p>";
        } 
     ?>  

    <div style="padding:20px;background-color:#f1f1f1">
      <button onclick="document.getElementById('id02').style.display='none'" type="button" class="cancelbtn">Fermer</button>
      <span class="psw"><a href="index.php?connect_click">Connexion</a></span>
    </div>
  </form>
</div>

<?php
    if (isset($_GET['inscription_click'])) {
        echo "
        <script>
            document.getElementById('id02').style.display='block';
        </script>";
    }
?>