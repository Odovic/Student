<div id="lista">
    <label>Godina:</label>
    <select onchange="izlistaj(this.value)">
        <option value="0"></option>
        <?php
        include "conn.php";

        $upit = "SELECT DISTINCT subjects.year FROM `subjects` JOIN grades ON grades.subject_id = subjects.id WHERE grades.user_id =".$_SESSION['id'];

        $result=$conn->query($upit);
        if($result->num_rows>0)
        {
            while($row=mysqli_fetch_assoc($result))
            {
                ?>
                <option value="<?=$row['year']?>" > <?=$row['year']?> </option>
                <?php
            }
        }
        ?>

    </select>
</div>



