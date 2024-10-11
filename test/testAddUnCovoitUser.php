<?php
include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../'.CHEMIN_ENTITY.'CovoitUser.php';
include '../modeles/DAOCovoitUser.php';

$user = new CovoitUser("","Haddadi","Nael","0647916126","test@mail.com","testmdppp");
//var_dump($user);
var_dump(addCovoitUser($user));
