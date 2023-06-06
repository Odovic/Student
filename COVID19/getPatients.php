<?php
    include "./connection.php";
    $country = 0;

    if(isset($_REQUEST['country'])) {
        $country = $_REQUEST['country'];
    }

    $query = "SELECT patients.id as PatientId, patients.country_id, patients.first_name, patients.last_name, 
        patients.birth_year, patients.infected, countries.id as CountryId, countries.country_code, countries.country_name 
        FROM patients JOIN countries ON countries.id = patients.country_id ";
    if($country>0) {
        $query.=" WHERE patients.country_id = ".$country;
        $queryInfected = "SELECT count(*) FROM patients LEFT JOIN countries ON countries.id = patients.country_id WHERE patients.infected = 1 AND patients.country_id = ".$country;
        $queryUninfected = "SELECT count(*) FROM patients LEFT JOIN countries ON countries.id = patients.country_id WHERE patients.infected = 0 AND patients.country_id = ".$country;
        $queryCountryName = "SELECT * FROM countries WHERE countries.id = ".$country;

        $resultInfected = $connection->query($queryInfected);
        $resultUninfected = $connection->query($queryUninfected);
        $resultCountryName = $connection->query($queryCountryName);

        $numberInfected = $resultInfected->fetch_assoc()['count(*)'];
        $numberUninfected = $resultUninfected->fetch_assoc()['count(*)'];
        $countryName = $resultCountryName->fetch_assoc()['country_name'];
    }
    $query.=" ORDER BY patients.id DESC LIMIT 5";

    $result = $connection->query($query);
?>
    <table class="table-container">
        <thead>
        <tr>
            <th>First and last name</th>
            <th>Birth year</th>
            <th>Country</th>
            <th>Infected</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
<?php
    if($result->num_rows>0) {
        while($row = mysqli_fetch_assoc($result)) {
            ?>
            <tr>
                <td><?=$row['first_name']." ".$row['last_name']?></td>
                <td><?=$row['birth_year']?></td>
                <td><?=$row['country_name']?></td>
                <td>
                    <?php
                        if($row['infected']==0) {
                            echo "No";
                        } else {
                            echo "Yes";
                        }
                    ?>
                </td>
                <td><a class="delete" href="./deletePatient.php?id=<?=$row['PatientId']?>" onclick="return confirm('Are you sure you want to delete this patient?')">Delete</a></td>
            </tr>
            <?php
        }
    } else {
        ?>
        <tr>
            <td colspan="5">No data.</td>
        </tr>
        <?php
    }
    ?>
        </tbody>
    </table>
    <?php
    if(!$country == 0) {
        ?>
        <div class="table-container">
            <div class="number">
                <div>
                    All infected in <?=$countryName?>:
                </div>
                <div class="add-header">
                    <b><?=$numberInfected?></b>
                </div>
            </div>
            <div class="number">
                <div>
                    All uninfected in <?=$countryName?>:
                </div>
                <div class="add-header">
                    <b><?=$numberUninfected?></b>
                </div>
            </div>
        </div>
        <?php
    }
?>
