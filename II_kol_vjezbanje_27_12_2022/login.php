<?php
session_start();

if(isset($_SESSION['name']))
{
    header("Location: index.php");
}
?>

<html>
<head>
    <title>IIKol Site - Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
        include "cookie.php";
    ?>
    <form action="checkLogin.php" method="post">
        <h2>IIKOL Site</h2>
        <label for="username">Username:</label><br/>
        <input type="text" id="username" name="username"><br/><br/>
        <label for="password">Password:</label><br/>
        <input type="password" id="password" name="password"><br/><br/>

        <input type="submit" value="login">
    </form>

</body>
</html>
