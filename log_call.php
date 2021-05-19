<?php

// Require database connection
require('config.php');

// Real escape variables to prevent SQL injection (security measure)
    $number = $con->real_escape_string($_POST["phoneNumber"]);
    $starttime = date("Y-m-d H:i:s");
    $uuid = $con->real_escape_string($_POST["sessionId"]);
    
// Send initial logs to DB, return error if found  
    $con->query("INSERT INTO callLog (uuid, callerNumber, startTime) VALUES ('$uuid', '$number', '$starttime')") or trigger_error("Query Failed! - Error: ".mysqli_error($con), E_USER_ERROR);;
?>