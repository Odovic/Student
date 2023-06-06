<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/tablePatient.css">
    <script src="js/script.js"></script>
    <title>SZO - Tabela pacijenata</title>
</head>
<body>
    <div class="header">
        <div>
            <img src="img/logo.png" alt="who_logo">
        </div>
        <div class="add-header">
            <input onclick="redirectToAdd()" class="add" type="button" value="Add">
        </div>
    </div>
    <div>
        <div class="select-container">
            <select class="input-width" name="country" id="country" onchange="selectionChanged(this)">
                <option value="0"> --- Select country --- </option>
                <?php
                include "./selectCountry.php";
                ?>
            </select>
        </div>
        <div id="tablePatient">
            <?php
            include "./getPatients.php";
            ?>
        </div>
    </div>
</body>
</html>