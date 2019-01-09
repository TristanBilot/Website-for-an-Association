<link rel="stylesheet" href="Content/css/login.css" />
<link rel="stylesheet" href="Content/css/header.css" />
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->

<!-- BOOTSTRAP 4 !!! -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<!-- BOOTSTRAP 4 !!! -->

<?php // les fenêtres modales
	require("./V/elements/login.tpl");
	require("./V/elements/inscription.tpl");
	require("./V/elements/compte.tpl");
?>

<script src ='./Content/js/connexion_inscription.js'> </script>


<nav id="top" class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
  <a href="#"><img class="logo_b220_yellow" src="./Content/img/logos/logo.png"/></a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="navbar-with-padding">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.php">
            <i class="fa fa-home"></i>
            Home
            <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item">
          <div class="dropdown">
            <a class="nav-link" href="#assoc_ancre">
              <img src="./Content/img/logos/B220.png" class="fa fa-b220"/>
              L'association
            </a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">
            <i class="fa fa-users"></i>
            Réseaux
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.php?controle=page_controller&action=displayEvents">
            <i class="fa fa-calendar"></i>
            Evènements
          </a>
        </li>
        <li class="nav-item">
        <div class="dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navdrop3" role="button" data-toggle="dropdown" data-hover="dropdown">
            <i class="fa fa-book">
              <span class="badge badge-danger">11</span>
            </i>
            Articles
          </a>
          <div class="dropdown-menu" aria-labelledby="navdrop3">
                <a href="#" class="dropdown-item">Forum</a>
                <a href="#" class="dropdown-item">Articles des anciens</a>
            </div>
            </div>
        </li>
        <li class="nav-item">
            <a  class="nav-link" href="index.php?controle=page_controller&action=displayDons">
              <i class="fa fa-credit-card"></i>
              Dons
            </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.php?controle=page_controller&action=displayEmplois">
            <i class="fa fa-briefcase"></i>
            Emplois
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.php#contact_ancre">
            <i class="fa fa-envelope-o"></i>
            Contact
          </a>
        </li>
      </ul>
      <div class="dropdown">
        <a class="nav-link nav-connect-lg dropdown-toggle" href="#" id="navdrop4" role="button" data-toggle="dropdown" data-hover="dropdown"><i class="fas fa-user" style="color:#9a9da0;font-size: 35px;"></i></a>
        <div class="dropdown-menu" aria-labelledby="navdrop4" style="left: -150% !important;text-align: center;">
							<!-- AFFICHAGE DE LA CONNEXION + INSCRIPTION -->
						<?php
						if (!isset($_SESSION['connected'])) {
						?>
						<li class="nav-item dropdown_elem" style="display: flex;align-items: center;justify-content: center;/*margin-left: auto;*/">
							<a onclick="document.getElementById('id01').style.display='block'" class="nav-link center-vertical-margin dropdown-elem">Connexion&nbsp;<i class="fas fa-sign-out-alt"></i></a>
						</li>
						<li class="nav-item dropdown_elem" style="display: flex;align-items: center;justify-content: center;/*margin-left: auto;*/">
							<a onclick="document.getElementById('id02').style.display='block'" class="nav-link center-vertical-margin dropdown-elem" >Inscription&nbsp;<i class="fas fa-user"></i></a>
						</li>
						<?php } ?>
						<!-- AFFICHAGE DE LA DECONNEXION + COMPTE -->
						<?php
							if (isset($_SESSION['connected'])) {
							?>
						<li class="nav-item dropdown_elem" style="display: flex;align-items: center;justify-content: center;">
							<a onclick="document.getElementById('compte').style.display='block'" class="nav-link center-vertical-margin dropdown-elem">Mon compte&nbsp;<i class="fas fa-user"></i></a>
						</li>
						<li class="nav-item dropdown_elem" style="display: flex;align-items: center;justify-content: center;">
							<a href="index.php?controle=connexion&action=deconnexion" class="nav-link center-vertical-margin dropdown-elem">Déconnexion&nbsp;<i class="fas fa-sign-out-alt"></i></a>
						</li>
						<?php } ?>
        </div>
      </div>
    </div>
  </div>
</nav>
