<?php
    include "./connection.php";

    $query = "SELECT * FROM countries;";
    $result = $connection->query($query);

    if($result->num_rows>0) {
        while($row = mysqli_fetch_assoc($result)) {
            ?>
            <option value="<?=$row['id']?>"><?=$row['country_name']?></option>
            <?php
        }
    }
?>