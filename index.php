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

<a href="Vagabon.php">Vagabon</a><br>
<a href="Jojo.php">Jojo's Bizarre Adventure</a><br>
<a href="Monster.php">Monster</a><br>
<a href="One.php">One piece</a><br>
<a href="berserk.php">Berserk</a><br>



