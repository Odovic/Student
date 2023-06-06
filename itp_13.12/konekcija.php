<?php
$host =  "localhost";
$dbname = "itp";
$username = "root";
$password = "";

$connection =new mysqli($host,$username,$password,$dbname);
if($connection->connect_errno)
{
    echo"Konekcija nije uspjela";
}
else
{
    echo"Konekcija je uspjela";
}
?>