<?php
/**
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting
 * source code which is considered copyrighted (c) material of the
 * original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @copyright :         {@link https://xoops.org 2001-2017 XOOPS Project}
 * @license   :           {@link http://www.fsf.org/copyleft/gpl.html GNU public license 2.0 or later}
 * @packet    :            Modules
 * @sub-packet:        Smallworld
 * @since     :             Xoops 2.5.4
 * @Author    :            Michael Albertsen (http://culex.dk) <culex@culex.dk>
 * @copyright :         2011 Culex
 * @Last      committed:    $Revision: 11992 $
 * @Last      changed by:   $Author: djculex $
 * @Last      changed date: $Date: 2013-08-31 20:06:22 +0200 (lø, 31 aug 2013) $
 * @ID        :                $Id: modinfo.php 11992 2013-08-31 18:06:22Z djculex $
 **/

define('_MI_SMALLWORLD_MODULE_NAME', 'Smallworld');
define('_MI_SMALLWORLD_MODULE_DESC', 'Module de réseau social, avec mur et profil utilisateur');
define('_MI_SMALLWORLD_ADMENU', 'Administration');
define('_MI_SMALLWORLDMENU_INDEX', 'Accueil');
define('_MI_SMALLWORLDMENU_STATS', 'Statistiques');
define('_MI_SMALLWORLDMENU_USERADMIN', 'Administration utilisateurs');
define('_MI_SMALLWORLDMENU_HELP', 'Aide');
define('_MI_SMALLWORLDMENU_ABOUT', 'À propos');

/* -------- Configs ---------- */

// Map apis
define('_MI_SMALLWORLD_USEGOOGLEMAPS', "Utiliser l'Api de géolocalisation de Google Maps&thinsp;?");
define('_MI_SMALLWORLD_USEGOOGLEMAPS_DESC', 'Par défaut, ce sera la base de données toponymique. Choisissez Oui pour utiliser Google Maps.');

// Messages per page
define('_MI_SMALLWORLD_MSGTOSHOW', 'Messages à afficher&thinsp;?');
define('_MI_SMALLWORLD_MSGTOSHOW_DESC', "Nombres de messages (mis à jour) à afficher au début du profil et de la page d'accueil.");

// Use validation
define('_MI_SMALLWORLD_VALIDATIONSTRENGTH', 'Validation par étapes');
define('_MI_SMALLWORLD_VALIDATIONSTRENGTH_DESC', "Demander la validation pour l'enregistrement et les modifications du profil.<br><br>Les options sont&thinsp;:<br><br>Non&thinsp;:&thinsp;Pas besoin de validation<br>Oui&thinsp;:&thinsp;Les champs les plus * importants * doivent être validés.");

// Smallworld take-over user name links ?
define('_MI_SMALLWORLD_TAKEOVERLINKS', "Convertir les liens des noms d'utilisateurs pour Smallworld");
define('_MI_SMALLWORLD_TAKEOVERLINKS_DESC', "Smallworld utilisera un petit javascript pour modifier les liens au chargement et les pointer vers le profil utilisateur, plutôt que vers userinfo.php<br><br>La valeur par défaut est 'non'.");

define('_MI_SMALLWORLD_USERSOWNMSGCOUNTS', 'Vérifier le nombre de messages des utilisateurs&thinsp;? ');
define(
    '_MI_SMALLWORLD_USERSOWNMSGCOUNTS_DESC',
    "Toutes les 10 secondes, les messages des utilisateurs qui vous suivent sont comptés et un bouton d'actualisation s'affichera, si le résultat n'est pas 0.<br>Si vous choisissez Oui, ce bouton s'affichera aussi lorsque vous écrirez ou supprimerez des messages."
);

define('_MI_SMALLWORLD_BOOKMARSAVATARS', 'Utiliser le logo de Smallworld lors de la création de signets&thinsp;? ');
define(
    '_MI_SMALLWORLD_BOOKMARKSAVATARS_DESC',
    "Quand les messages sont publics et que vous souhaitez partager sur les réseaux sociaux, vous pouvez décider d'utiliser l'image du logo Smallworld ou<br>« non » = affichage de l'avatar des utilisateurs. <br > La valeur par défaut est «oui» = logo Smallworld."
);

define('_MI_SMALLWORLD_USEMAILNOTIFICATION', 'Notifications par courrier électronique&thinsp;? ');
define(
    '_MI_SMALLWORLD_USEMAILNOTIFICATION_DESC',
    "Quand un nouvel utilisateur s'inscrit, un message est envoyé à l'Administrateur par courrier éléctronique.<br>Quand un commentaire a été ajouté à un message dont un utilisateur a participé, un courrier électronique lui est envoyé.<br><br>La valeur par défaut est 'Oui'."
);

// Select fields & Mandetory fields
define('_MI_SMALLWORLD_VIEWFIELDS', 'Champs pour l\'enregistrement et le profil');
define('_MI_SMALLWORLD_VIEWFIELDS_DESC', 'Sélectionnez les champs à utiliser dans le formulaire d\'inscription, qui seront ensuite affichés dans le profil.<br> Utilisez la touche CTRL du clavier et cliquez avec la souris pour en sélectionner plusieurs.');
define('_MI_SMALLWORLD_VERIFYFIELDS', 'Vérifier les champs lors de l\'enregistrement.');
define('_MI_SMALLWORLD_VERIFYFIELDS_DESC', 'Sélectionnez les champs qui seront obligatoires (*) dans le formulaire d\'inscription.<br> Utilisez la touche CTRL du clavier et cliquez avec la souris pour en sélectionner plusieurs.');

define('_MI_SMALLWORLD_REALNAME', 'Nom de famille');
define('_MI_SMALLWORLD_GENDER', 'Sexe');
define('_MI_SMALLWORLD_INTERESTEDIN', 'Intéressé à');
define('_MI_SMALLWORLD_RELATIONSHIPSTATUS', 'Statut de la relation');
define('_MI_SMALLWORLD_PARTNER', 'Partenaire');
define('_MI_SMALLWORLD_LOOKINGFOR', 'Vous cherchez');
define('_MI_SMALLWORLD_BIRTHDAY', 'Anniversaire');
define('_MI_SMALLWORLD_BIRTHPLACE', 'Lieu de naissance');
define('_MI_SMALLWORLD_POLITICALVIEWS', 'Opinions politiques');
define('_MI_SMALLWORLD_RELIGIOUSVIEWS', 'Point de vue religieux');
define('_MI_SMALLWORLD_EMAILS', 'Adresse électronique');
define('_MI_SMALLWORLD_SCREENNAMES', 'Pseudonyme');
define('_MI_SMALLWORLD_MOBILE', 'Téléphone portable');
define('_MI_SMALLWORLD_LANDPHONE', 'Téléphone fixe');
define('_MI_SMALLWORLD_STREETADRESS', 'Adresse');
define('_MI_SMALLWORLD_PRESENTCITY', 'Ville actuelle');
define('_MI_SMALLWORLD_COUNTRY', 'Pays');
define('_MI_SMALLWORLD_WEBSITE', 'Site internet');
define('_MI_SMALLWORLD_INTERESTS', 'Intérêts');
define('_MI_SMALLWORLD_FAVOURITEMUSIC', 'Musiques préférées');
define('_MI_SMALLWORLD_FAVOURITETVSHOWS', 'Séries télévisées préférées');
define('_MI_SMALLWORLD_FAVOURITEMOVIES', 'Films préférés');
define('_MI_SMALLWORLD_FAVOURITEBOOKS', 'Livres préférés');
define('_MI_SMALLWORLD_ABOUTME', 'À propos de moi');
define('_MI_SMALLWORLD_EDUCATION', 'Education');
define('_MI_SMALLWORLD_EMPLOYMENT', 'Emploi');

//Private or public module
define('_MI_SMALLWORLD_PRIVATEMODULE', 'Show public posts ?');
define('_MI_SMALLWORLD_PRIVATEMODULE_DESC', 'If "yes" then all visiters can read posts marked "public" by authorized author. Commenting/posting/editing etc are all still inactive until logged in.');

// Limit users access to public posting

define('_MI_SHOWPUBLICPAGE', 'Limit the posting to public to these users.');
define(
    '_MI_SHOWPUBLICPAGE_DESC',
    'Default is "All users" wich means that all users will have their "public" posts shown on publicindex.php.<br>
    If you use a limiter and not newer users are shown here, do a smallworld module update in administration to <br>
    show the latest users.
        '
);
define('_MI_SMALLWORLD_ALL', 'All users');
//Traduit par Cesagonchu (frxoops.org) le 1er Octobre 2015
