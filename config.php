<?php

// Create connection based on Mysqli for safety purposes
// File is made as includeable for sake of future back-end development

$servername = "localhost";
$username = "colourfultaste_sauve";
$password = "Illegalchopping101";
$dbname = "colourfultaste_sauve";

// Create actual connection
$con = new mysqli($servername, $username, $password, $dbname);

// Check if connection succesfull
if ($con->connect_error) {
  die("Connection failed: " . $con->connect_error);
}
?>