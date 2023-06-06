<?php
$hostname = "localhost";
$username = "root";
$password = "";
$db = "iikol";

$conn = mysqli_connect($hostname, $username, $password, $db);

if(!$conn)
    echo "Konekcija nije uspjela";
/* else
    echo "Konekcija je uspjela"; */

?>
