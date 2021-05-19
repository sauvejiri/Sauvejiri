<?php
define("DB_SERVER", "localhost");
define("DB_USER", "colourfultaste_sauve");
define("DB_PASS", "Illegalchopping101");
define("DB_NAME", "colourfultaste_sauve");
$con = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
if(mysqli_connect_errno()) {
die("Database Failed: " . mysqli_connect_error() . " (" . mysqli_connect_errno() .")" );}
?>
