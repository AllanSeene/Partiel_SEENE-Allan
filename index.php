<?php

    require_once 'Model/pdo.php';

?>
<h1>Top Manga : </h1>
<ul>
    <?php $resultat = $dbPDO->prepare("SELECT * FROM mangas ORDER BY Publication DESC;");
    $resultat->execute();
    while($ligne = $resultat->fetch(PDO::FETCH_ASSOC)) {
        echo "<li>".$ligne['Titre']."<br>".$ligne['Publication']."</li>";
    }
    ?>
</ul>

<?php 
    echo "<a href='Vagabon.php?id=6'>Vagabon</a>"."<br>";
    echo "<a href='Jojo.php?id=5'>Jojo's Bizarre Adventure</a>"."<br>";
    echo "<a href='Monster.php?id=8'>Monster</a>"."<br>";
    echo "<a href='One.php?id=7'>One piece</a>"."<br>";
    echo "<a href='berserk.php?id=4'>Berserk</a>"."<br>";
    echo "<a href='personnages.php?id=3'>Personnages</a>"."<br>";
    
?>



