<?php

if(isset($_REQUEST['year']))
{
    session_start();
    include "conn.php";

    $upit = "SELECT * FROM `grades` JOIN `subjects` ON subjects.id = subject_id WHERE user_id=".$_SESSION['id'];

    if($_REQUEST['year']!=0)
        $upit .= " AND subjects.year = ".$_REQUEST['year'];

    $result = $conn->query($upit);
    ?>
    <table class="ocjene">
        <tr>
            <th>Predmet</th>
            <th>Godina</th>
            <th>Ocjena</th>
        </tr>
        <?php
        while($row=mysqli_fetch_assoc($result))
        {
            ?>
            <tr>
                <td> <?=$row['name'] ?></td>
                <td> <?=$row['year'] ?></td>
                <td> <?=$row['grade'] ?></td>
            </tr>
            <?php
        }
        ?>
    </table>
<?php
}
?>
