<?php
    include "./connection.php";

    $query = "SELECT * FROM countries;";

    $result = $connection->query($query);
?>

<select name="country" id="country" onchange="selectedCountryChanged(this)">
    <option value="0"> --- Izaberite državu --- </option>
    <?php
        if($result->num_rows>0) {
            while($row = mysqli_fetch_assoc($result)) {
                ?>
                <option value="<?=$row['id']?>"><?=$row['country_name']?></option>
                <?php
                
            }
        }
    ?>
</select>
