<?php
include_once '../entity/CovoitUser.php';

function getUnCovoitUser($id){
   	$pdo = PDO2::getInstance();

	$requete = $pdo->prepare("SELECT id, nom, prenom, tel, mail, mdp, mdp_Clair FROM CovoitUser WHERE id = :id");
	$requete ->bindvalue(":id",$id, PDO::PARAM_STR);
	$requete->execute();
        
        //Apr�s ex�cution de la requ�te, r�cup�ration d'un objet de la classe CovoitUser
	$requete->setFetchMode(PDO::FETCH_CLASS, 'CovoitUser');
	$unCovoitUser = $requete->fetch();
	  
	$requete->closeCursor();
	return $unCovoitUser;
}

function getLesCovoitUser(){
	$pdo = PDO2::getInstance();
        $requete = $pdo->prepare("SELECT id, nom, prenom, tel, mail, mdp, mdp_Clair FROM CovoitUser");     
        $requete->execute();
         $tab = $requete->fetchAll(PDO::FETCH_CLASS, "CovoitUser");
         $requete->closeCursor();
	 return $tab;
}



function addCovoitUser($unCovoitUser){
	$pdo = PDO2::getInstance();
 
   
    $sql = "INSERT INTO CovoitUser (nom, prenom, tel, mail, mdp, mdp_Clair)
            VALUES (:nom, :prenom, :tel, :mail, :mdp, :mdp_Clair)";
 
    $monObjPdoStatement = $pdo->prepare($sql);
 
    $mdpHash = password_hash($unCovoitUser->getMdp(),PASSWORD_DEFAULT);
    $mdpClair = $unCovoitUser->getMdp();
   
    $bvc1 = $monObjPdoStatement->bindValue(':nom', $unCovoitUser->getNom(), PDO::PARAM_STR);
    $bvc2 = $monObjPdoStatement->bindValue(':prenom', $unCovoitUser->getPrenom(), PDO::PARAM_STR);
    $bvc3 = $monObjPdoStatement->bindValue(':tel', $unCovoitUser->getTel(), PDO::PARAM_STR);
    $bvc4 = $monObjPdoStatement->bindValue(':mail', $unCovoitUser->getMail(), PDO::PARAM_STR);
    $bvc5 = $monObjPdoStatement->bindValue(':mdp', $mdpHash, PDO::PARAM_STR);
    $bvc6 = $monObjPdoStatement->bindValue(':mdp_Clair', $mdpClair, PDO::PARAM_STR);
 
    $executionOK = $monObjPdoStatement->execute();

    return $executionOK;
 
       
 }



 function updateUnCovoitUser($unCovoitUser){
        $pdo = PDO2::getInstance();
        $sql = "UPDATE CovoitUser SET nom = :nom, mail = :mail WHERE id = :id";
        $stmt = $pdo->prepare($sql);
        $nom = $unCovoitUser->getNom();
        $email = $unCovoitUser->getMail();
        $id = $unCovoitUser->getId();

        $stmt->execute(['nom'=> $nom, "mail" => $email, "id" => $id]);


 }


 function deleteUnCovoitUser($id){
        $pdo = PDO2::getInstance();
        $sql = "DELETE FROM CovoitUser WHERE id = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->execute(['id'=> $id]); 
 }

?>
