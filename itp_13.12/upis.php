<?php
include "konekcija.php";

$ime="Djordje";
$prezime="Odovic";
$br_indeksa="1740";

$upit="INSERT INTO `studenti`(`ID`, `ime`, `prezime`, `br_indeksa`) VALUES (null,'$ime','$prezime','$br_indeksa');";

$connection->query($upit);
?>