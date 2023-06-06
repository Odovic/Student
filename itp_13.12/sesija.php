<?php
session_start();
?>

<!DOCTYPE>
<html>
<html>
<head>
    <title>ITP PHP SESSIONS</title>
</head>
<body>
<?php
session_unset();
echo "Omiljena boja je:".$_SESSION["favcolor"]."<br>";
echo "Omiljena zivotinja je:".$_SESSION["favanimal"]."<br>";
session_destroy();
?>
</body>
</html>