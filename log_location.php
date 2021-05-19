<?php

// Require database connection
require('config.php');

// Real escape variables to prevent SQL injection (security measure)
    $location = $con->real_escape_string($_POST["location"]);
    $uuid = $con->real_escape_string($_POST["sessionId"]);
    
    $con->query("UPDATE callLog SET location = '$location'  WHERE uuid = '$uuid'") or trigger_error("Query Failed! - Error: ".mysqli_error($con), E_USER_ERROR);
?>