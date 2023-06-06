<?php
session_start();
include "conn.php";

if(isset($_REQUEST['username']) && isset($_REQUEST['password']))
{
    $username = $_REQUEST['username'];
    $password = md5($_REQUEST['password']);

    $upit = "SELECT * FROM `users` WHERE `username`='".$username."' AND `password`='".$password."'";

    $result = $conn->query($upit);
    if($result->num_rows>0)
    {
        header("Location: index.php");
        $row = mysqli_fetch_assoc($result);
        $_SESSION['name'] = $row['firstname'];
        $_SESSION['id'] = $row['ID'];
    }
    else
    {
        header("Location: login.php");
        setcookie("notification", "Login failed. Wrong username or password!", time()+24*60*60, "/");
    }
}
