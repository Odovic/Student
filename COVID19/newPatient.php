<?php
    include "./connection.php";
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/newPatient.css">
    <script src="js/script.js"></script>
    <title>SZO – Dodaj osobu</title>
</head>
<body>
    <?php
        include "./notification.php";
    ?>
    <div class="container">
        <form action="validatePatient.php" method="post" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td class="left-side" colspan="3">
                        <img src="img/logo.png" alt="who_logo">
                    </td>
                </tr>
                <tr>
                    <td class="right-side">
                        <label for="first_name">First name: </label>
                    </td>
                    <td class="left-side" colspan="2">
                        <input class="input-width" type="text" name="first_name" id="first_name">
                    </td>
                </tr>
                <tr>
                    <td class="right-side">
                        <label for="last_name">Last name: </label>
                    </td>
                    <td class="left-side" colspan="2">
                        <input class="input-width" type="text" name="last_name" id="last_name">
                    </td>
                </tr>
                <tr>
                    <td class="right-side">
                        <label for="birth_date">Birth date: </label>
                    </td>
                    <td class="left-side" colspan="2">
                        <input class="input-width" type="date" name="birth_date" id="birth_date">
                    </td>
                </tr>
                <tr>
                    <td class="right-side">
                        <label for="country">Country: </label>
                    </td>
                    <td class="left-side" colspan="2">
                        <select class="input-width" name="country" id="country">
                            <option value="0"> --- Select country --- </option>
                            <?php
                                include "./selectCountry.php";
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="right-side">
                        <label for="infected">Infected: </label>
                    </td>
                    <td class="left-side" colspan="2">
                        <label for="isInfected">
                            <input type="radio" onclick="changeColor()" name="infected" id="isInfected" value="1">
                            Yes
                        </label>
                        <label for="notInfected">
                            <input type="radio" onclick="changeColor()" name="infected" id="notInfected" value="0">
                            No
                        </label>
                    </td>
                </tr>
                <tr>
                    <td class="empty"></td>
                    <td class="add-button">
                        <input class="custom-button" type="submit" value="Add" id="addButton">
                    </td>
                    <td>
                        <input class="custom-button" onclick="resetForm()" type="button" value="Reset form">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>