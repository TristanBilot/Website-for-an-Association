// Pour connexion
var rand = Math.random() * 100;
var icon = document.getElementById('avatar1');
var chemin = "./Content/img/user-icons/";

if (rand <= 50) {
    icon.src = chemin + "student1.png";
} 
if (rand > 50 && rand <= 100) {
    icon.src = chemin + "student2.png";
}