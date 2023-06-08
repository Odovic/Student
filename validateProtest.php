<?php
    include "./connection.php";

    $organizer = $_REQUEST['organizer'];
    $country = $_REQUEST['country'];
    $city = $_REQUEST['city'];
    $number_participants = $_REQUEST['number_participants'];
    $date = $_REQUEST['date'];
    $note = $_REQUEST['note'];

    if($organizer == "" || $country == "0" || $city == "0" || $number_participants == "" || $date == "0") {
        setcookie("notification", "Forma nije ispravno popunjena!", time()+60*60*24, "/");
        header("Location: /ITP_29_11_2021/index.php");
    }

    $id=0;
    $query = "SELECT * FROM protests ORDER BY protests.protest_id DESC;";
    $result = $connection->query($query);

    if($result->num_rows>0) {
        $id = $result->fetch_assoc()['protest_id'];
        $id++;
    }

    $insertQuery = "INSERT INTO protests(protest_id, organizer, country_id, city_id, participiants_number, date, note) VALUES ('{$id}','{$organizer}','{$country}','{$city}','{$number_participants}','{$date}','{$note}');";
    $insertResult = $connection->query($insertQuery);

    if($insertResult === true) {
        header("Location: /ITP_29_11_2021/index.php");
    } else {
        die("Record failed!");
    }
?>
