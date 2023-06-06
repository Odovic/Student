<?php
    include "./connection.php";

    $query = "SELECT * FROM protests JOIN countries ON protests.country_id = countries.id JOIN cities ON protests.city_id = cities.city_id;";
    $result = $connection->query($query);

    $number = 0;
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/tableProtest.css">
    <title>Tabela protesta</title>
</head>
<body>
    <div class="center-table">
        <table>
            <thead>
            <tr>
                <th>Redni broj</th>
                <th>Organizator</th>
                <th>Država</th>
                <th>Grad</th>
                <th>Broj učesnika</th>
                <th>Datum</th>
                <th>Napomena</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <?php
            if($result->num_rows>0) {
                while($row = mysqli_fetch_assoc($result)) {
                    $number++;
                    ?>
                    <tr>
                        <td><?=$number."."?></td>
                        <td><?=$row['organizer']?></td>
                        <td><?=$row['country_name']?></td>
                        <td><?=$row['name']?></td>
                        <td><?=$row['participiants_number']?></td>
                        <td><?=date("d.m.Y.", strtotime($row['date']))?></td>
                        <td><?=$row['note']?></td>
                        <td>Izmijeni, Obriši</td>
                    </tr>
                    <?php
                }
            }
            ?>
            </tbody>
        </table>
    </div>
</body>
</html>

