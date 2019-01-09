// Récupération de l'élément
var connexion = document.getElementById('id01');
var inscription = document.getElementById('id02');
var compte = document.getElementById('compte');

// On ferme le modal lors du clic hors de la fenêtre
window.onclick = function(event) {
    if (event.target == connexion) {
        connexion.style.display = "none";
    }
    if (event.target == inscription) {
        inscription.style.display = "none";
    }
    if (event.target == compte) {
        compte.style.display = "none";
    }
}