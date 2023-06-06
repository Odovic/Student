<?php
include "konekcija.php";

$upit = "SELECT * FROM `studenti`";

$result=$connection->query($upit);
if($result->num_rows>0)
{
    while($row=mysqli_fetch_assoc($result))
    {
        echo $row["ime"]." ".$row["prezime"]."<br>";
    }
}
?>