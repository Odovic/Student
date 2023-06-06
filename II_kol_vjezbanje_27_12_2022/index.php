<?php
session_start();

if(!isset($_SESSION['name']))
{
    header("Location: login.php");
}
?>

<html>
<head>
    <title>IIKol Site - Index</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div id="zaglavlje">
    <div id="naslov"><h2>IIKOL Site Index</h2></div>
    <div id="korisnik">Welcome <b><?=$_SESSION['name'] ?></b>, <a href="logout.php">Log out</a> </div>
</div>

<?php
    include "selectList.php";
?>

<div id="tabelapolozeni" ></div>

<script src="functions.js"></script>
</body>
</html>
