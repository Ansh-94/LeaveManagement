<?php
$ServerName = "localhost";
$username = "root";
$password = "";
$DbName = "leavemgmt";
$conn = mysqli_connect($ServerName, $username, $password, $DbName);
if (!$conn) {
    die("Could not connect:" . mqsql_error());
} else {

}



?>