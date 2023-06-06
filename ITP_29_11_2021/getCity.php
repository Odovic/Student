<?php
    if(isset($_REQUEST['country'])) {
        $country = $_REQUEST['country'];

        include "./connection.php";

        $query = "SELECT * FROM cities WHERE cities.country_id = ".$country;
        $result = $connection->query($query);

        if($result->num_rows>0) {
            ?>
                <option value="0"> --- Izaberite grad --- </option>
            <?php
            while($row = mysqli_fetch_assoc($result)) {
                ?>
                <option value="<?=$row['city_id']?>"><?=$row['name']?></option>
                <?php
            }
        }
        else {
            ?>
                <option value="0"> --- Izaberite grad --- </option>
            <?php
        }
    }
?>
