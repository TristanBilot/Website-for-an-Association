<?php
function displayMainPage() {
    require("./V/elements/main_page.php");
}

function displayArticle($id_article) {
    require("./V/articles/article" . $id_article . ".php");
}

function displayConnexionForm() {
    require("./V/elements/connexion_form.tpl");
}

function displayLoginForm() {
	require("./V/elements/login.tpl");
}

function displayDons() {
    require("./V/elements/dons.tpl");
}

function displayEvents() {
    require("./V/elements/events.php");
}

function displayEmplois() {
    require("./V/elements/emplois.tpl");
}

?>