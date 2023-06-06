<?php
    if($_REQUEST['first_name'] == "" || $_REQUEST['last_name'] == "" ||
        $_REQUEST['birth_date'] == "" || $_REQUEST['country'] == "" || $_REQUEST['infected'] == NULL) {
        setcookie("notification", "All fields are required!", time()+60*60*24, "/");
        header("Location: /COVID19/newPatient.php");
    }

    include "./connection.php";

    $first_name = $_REQUEST['first_name'];
    $last_name = $_REQUEST['last_name'];
    $birth_date = $_REQUEST['birth_date'];
    $birth_year = date("Y",strtotime($birth_date));
    $country = $_REQUEST['country'];
    $infected = $_REQUEST['infected'];

    $id = 0;
    $queryId = "SELECT * FROM patients ORDER BY patients.id DESC;";
    $resultId = $connection->query($queryId);

    if($resultId->num_rows>0) {
        $id = $resultId->fetch_assoc()['id'];
        $id++;
    }

    $queryInsert = "INSERT INTO patients (id, country_id, first_name, last_name, birth_year, infected) VALUES ('{$id}','{$country}','{$first_name}','{$last_name}','{$birth_year}','{$infected}');";
    $resultInsert = $connection->query($queryInsert);

    if($resultInsert == TRUE) {
        header("Location: /COVID19/tablePatient.php");
    } else {
        die("Record failed!");
    }
?>