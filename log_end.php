<?php

// Require database connection
require('config.php');

    $number = $con->real_escape_string($_POST["phoneNumber"]);
    $endtime = date("Y-m-d H:i:s");
    $uuid = $con->real_escape_string($_POST["sessionId"]);
    
    $con->query("UPDATE callLog SET endtime = '$endtime'  WHERE uuid = '$uuid'") or trigger_error("Query Failed! - Error: ".mysqli_error($con), E_USER_ERROR);;
?>