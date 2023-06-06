<?php
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $database = "corona";

    $connection = mysqli_connect($hostname, $username, $password, $database);

    if(!$connection) {
        die("Connection failed!");
    }
?>