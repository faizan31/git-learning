<?php
$dbHost= "localhost";
$dbUsername= "root";
$dbPassword= "";
$dbName= "test";


$con = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
?>


