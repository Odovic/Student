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
    <link rel="stylesheet" href="css/index.css">
    <script src="js/script.js"></script>
    <title>Protesti 2020</title>
</head>
<body>
    <?php
        include "./notification.php";
    ?>
    <div class="container">
        <table>
            <tr>
                <td>
                    <div class="space">
                        <img class="logo" onclick="redirectToTable()" src="img/logo.png" alt="logo_protesti">
                        <h1>Protesti 2020</h1>
                    </div>
                </td>
                <td>
                    <form action="validateProtest.php" method="post" onsubmit="return validationForm()">
                        <table>
                            <tr>
                                <td colspan="3">
                                    <h2>Evidentiraj okupljanje</h2>
                                </td>
                            </tr>
                            <tr>
                                <td class="right-label">
                                    <label for="organizer">Organizator:</label>
                                </td>
                                <td colspan="2">
                                    <input class="input-width" type="text" name="organizer" id="organizer">
                                </td>
                            </tr>
                            <tr>
                                <td class="right-label">
                                    <label for="country">Država: </label>
                                </td>
                                <td colspan="2" class="input-width">
                                    <?php
                                    include "./getCountry.php";
                                    ?>
                                </td>
                            </tr>
                            <tr>
                                <td class="right-label">
                                    <label for="city">Grad: </label>
                                </td>
                                <td colspan="2" >
                                    <select class="input-width" name="city" id="city">
                                        <?php
                                        include "./getCity.php";
                                        ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="right-label">
                                    <label style="font-size: 12px" for="number_participants">Broj učesnika: </label>
                                </td>
                                <td colspan="2" class="input-width">
                                    <input class="input-width" type="text" name="number_participants" id="number_participants">
                                </td>
                            </tr>
                            <tr>
                                <td class="right-label">
                                    <label for="date">Datum: </label>
                                </td>
                                <td colspan="2" class="input-width">
                                    <input class="input-width" type="date" name="date" id="date">
                                </td>
                            </tr>
                            <tr>
                                <td class="right-label-note">
                                    <label for="note">Napomena: </label>
                                </td>
                                <td colspan="2" class="input-width">
                                    <textarea class="input-width" name="note" id="note" cols="30" rows="3"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input class="submit-button" type="submit" value="Evidentiraj">
                                </td>
                                <td>
                                    <input class="reset-button" onclick="resetForm()" type="button" value="Poništi">
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>