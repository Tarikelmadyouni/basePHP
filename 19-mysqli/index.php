<?php
/*
 *
 * Front Controller
 *
 */

/*
 * Chargement des dépendances
 */
require_once "config.php";
require_once "fonctions.php";

/*
 * Connexion procédurale à notre DB
 */
$db = @mysqli_connect(DB_HOST,DB_LOGIN, DB_PWD, DB_NAME,DB_PORT);

/*
 * Gestion d'erreur de connexion en mysqli procédural
 */
if(!$db){
    // affichage de l'erreur et arrêt du scritp : die()
    die("Erreur n° ".mysqli_connect_errno()." Description : ".mysqli_connect_error());
}

/*
 * Partie routage du contrôleur frontal
 */

// si on a envoyé le formulaire
if(isset($_POST['titre'])){

    // importation de l'insertion dans la DB
    require_once "insert.php";
    
// sinon, affichage de la vue
}else {

// chargement du modèle et de la vue
    require_once "affiche.php";
}
