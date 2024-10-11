<?php
include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../'.CHEMIN_ENTITY.'CovoitUser.php';

// Fonction de test pour afficher les valeurs
function afficherUtilisateur($utilisateur) {
    echo "ID: " . $utilisateur->getId() . PHP_EOL;
    echo "Nom: " . $utilisateur->getNom() . PHP_EOL;
    echo "Prénom: " . $utilisateur->getPrenom() . PHP_EOL;
    echo "Téléphone: " . $utilisateur->getTel() . PHP_EOL;
    echo "Email: " . $utilisateur->getMail() . PHP_EOL;
    echo "Mot de passe: " . $utilisateur->getMdp() . PHP_EOL;
    echo "-----------------------------" . PHP_EOL;
}

// 1. Test avec le constructeur vide
echo "Test du constructeur vide : " . PHP_EOL;
$user1 = new CovoitUser();
afficherUtilisateur($user1);

// 2. Test avec le constructeur complet
echo "Test du constructeur avec arguments : " . PHP_EOL;
$user2 = new CovoitUser(1, "Dupont", "Jean", "0601020304", "jean.dupont@mail.com", "password123");
afficherUtilisateur($user2);

// 3. Test des setters
echo "Test des setters : " . PHP_EOL;
$user2->setId(2)
      ->setNom("Martin")
      ->setPrenom("Paul")
      ->setTel("0705060403")
      ->setMail("paul.martin@mail.com")
      ->setMdp("newpassword");
afficherUtilisateur($user2);

// 4. Test individuel des setters
echo "Test individuel des setters : " . PHP_EOL;
$user1->setId(3);
$user1->setNom("Durand");
$user1->setPrenom("Alice");
$user1->setTel("0908070605");
$user1->setMail("alice.durand@mail.com");
$user1->setMdp("securepassword");
afficherUtilisateur($user1);

?>


 
?>
