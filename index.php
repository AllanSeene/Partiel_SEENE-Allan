<?php

    require_once 'Model/pdo.php';

?>
<h1>Top Manga : </h1>
<ul>
    <?php $resultat = $dbPDO->prepare("SELECT * FROM mangas ORDER BY Publication DESC;"
);
    $resultat->execute();
    while($ligne = $resultat->fetch(PDO::FETCH_ASSOC)) {
        echo "<li>".$ligne['Titre']."<br>".$ligne['Publication']."</li>";
    }
    ?>
</ul>

<a href="manga.php">Page mangas</a>

