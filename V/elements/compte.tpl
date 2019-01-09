<link rel="stylesheet" href="Content/css/compte.css" />

<!-- <button onclick="document.getElementById('compte').style.display='block'" style="width:auto;">Mon compte</button> -->

<div id="compte" class="modal">
  <form enctype="multipart/form-data" class="modal-content-compte animate" action="index.php?controle=compte&action=actualiser" method="post">

    <div class="imgcontainer" style="backgroung-image: url(./Content/img/bckg.jpg);">
            <span onclick="document.getElementById('compte').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img id="avatar" src="<?php echo $_SESSION['photo']; ?>" alt="Avatar" class="avatar">
      
    </div>
    

    <div class="box_container_compte">

       <div class="col-lg-12 col-md-12 col-xs-12">
            <label class="descriptionLabel">Email de connexion :</label>
            <p title="Cet email ne peut pas être modifié." style="color: rgba(237, 205, 31, 1);font-size:15px;text-decoration:underline"><?php echo $_SESSION['mailUser']; ?> </p>
        </div>

        <div class="col-lg-6 col-md-6 col-xs-6">
          <label class="descriptionLabel" for="uname"><b>Prénom</b></label>
          <div class="input-group">
            <input value = "<?php echo $_SESSION['prenom']; ?>" type="text" name="prenom">
          </div>
  
          <label class="descriptionLabel" for="uname"><b>Nom</b></label>
          <div class="input-group">
            <input value = "<?php echo $_SESSION['nom']; ?>" type="text" name="nom">
          </div>
          
        
          <label class="descriptionLabel" for="uname"><b>Email de contact</b></label>
          <div class="input-group">
            <input value = "<?php echo $_SESSION['mailUser']; ?>" type="text" name="mail">
          </div>
       </div>

        <div class="col-lg-6 col-md-6 col-xs-6" style="margin-bottom:20px;">
          <label class="descriptionLabel" for="uname"><b>Téléphone</b></label>
          <div class="input-group">
            <input placeholder = "Par exemple: +33639507219" type="text" name="tel">
          </div>
  
          <label class="descriptionLabel" for="uname"><b>Pseudo</b></label>
          <div class="input-group">
            <input value = "<?php echo $_SESSION['nom']; ?>" type="text" name="pseudo">
        </div>

          <div><label class="descriptionLabel" for="uname"><b>Ma photo</b></label></div>
          <input class="form-control-file" type="hidden" name="15000000" value="30000" aria-describedby="fileHelp"/>
          <input name="userfile" type="file" /><br><br>

       </div>
          
    
      <button style="margin-left:30px;" id="inscription" type="submit">Actualiser mes infos</button>
      
    </div>

    <?php
        if (isset($_GET['error_inscription'])) { 
            echo "<p class='text text-danger' style='margin-left:20px;font-size:18px;font-weight: bold;'>" . $_GET['error_inscription'] . "</p>";
        } 
        if (isset($_GET['success_inscription'])) { 
            echo "<p class='text text-success' style='margin-left:20px;font-size:18px;font-weight: bold;'>" . $_GET['success_inscription'] . "</p>";
        } 
     ?>  

    <div style="padding:20px;background-color:#f1f1f1">
      <button onclick="document.getElementById('compte').style.display='none'" type="button" class="cancelbtn">Fermer</button>
    </div>
  </form>
</div>

<!-- LOAD des données -->
<script src="./Content/js/compte/loadDatasOfUser.js"></script>

<?php
    if (isset($_GET['inscription_click'])) {
        echo "
        <script>
            document.getElementById('compte').style.display='block';
        </script>";
    }
?>