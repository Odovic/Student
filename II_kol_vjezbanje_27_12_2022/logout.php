<?php

session_start();
session_unset();
session_destroy();

header("Location: login.php");
setcookie("notification", "You have been successfully logged out!", time()+24*60*60, "/");

?>
