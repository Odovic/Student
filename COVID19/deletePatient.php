<?php
    include "./connection.php";

    if(isset($_REQUEST['id'])) {
        $id=$_REQUEST['id'];

        $query = "DELETE FROM patients WHERE patients.id = ".$id;
        $result = $connection->query($query);

        if($result === true) {
            header("Location: /COVID19/tablePatient.php");
        } else {
            die("Delete failed");
        }
    }
?>