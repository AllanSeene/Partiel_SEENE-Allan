<?php

    require_once 'Model/pdo.php';

?>
<?php $resultat = $dbPDO->prepare("SELECT * FROM mangas WHERE Titre = 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run';");
    $resultat->execute();
    while($ligne = $resultat->fetch(PDO::FETCH_ASSOC)) {
        echo "<h1>".$ligne['Titre']."</h1>";
        echo "<br> <br>".$ligne['Description']."<br> <br>".$ligne['Publication'];
    }
    ?>