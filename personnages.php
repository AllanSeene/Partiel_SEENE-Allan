<?php

    require_once 'Model/pdo.php';

?>

<h1>Personnages : </h1>
    <?php $resultat = $dbPDO->prepare("SELECT * FROM personnages;");
    $resultat->execute();
    while($ligne = $resultat->fetch(PDO::FETCH_ASSOC)) {
        echo "<h2>".$ligne['Nom']."</h2>"."<br>"."<p>".$ligne['Description']."</p>";
    }
    ?>

<a href="index.php">Retour à l'accueil</a>