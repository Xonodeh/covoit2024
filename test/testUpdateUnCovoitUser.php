<?php
include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../'.CHEMIN_ENTITY.'CovoitUser.php';
include '../modeles/DAOCovoitUser.php';

$user = new CovoitUser();
$user->setId(21);
$user->setNom("ahmed");
$user->setMail("test@gmail.com");

$result = updateUnCovoitUser($user); 
?>
