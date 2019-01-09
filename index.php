<!-- Latest compiled and minified CSS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="Content/css/main_style.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<meta charset="UTF-8">

<?php
if(!isset($_SESSION)) 
{
    session_start();
} 
if (isset($_GET['controle']) && isset($_GET['action'])) {
    $controle = $_GET['controle'];
    $action = $_GET['action'];
}
else {
    $controle = "page_controller";
    $action = "displayMainPage"; // affiche la page d'accueil
}

require("./V/elements/header.tpl");

require("./C/" . $controle . ".php");   
if (isset($_GET['parametre'])) {
    $action($_GET['parametre']);
} else {
    $action();
}


require("./V/elements/footer.tpl");
?>
